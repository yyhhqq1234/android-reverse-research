package com.netease.cloud.nos.android.pipeline;

import com.netease.cloud.nos.android.constants.Code;
import com.netease.cloud.nos.android.exception.InvalidOffsetException;
import com.netease.cloud.nos.android.http.HttpResult;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.epay.sdk.base.hybrid.common.JsConstant;
import com.sina.weibo.sdk.constant.WBPageConstants;
import io.netty.channel.ChannelDuplexHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.http.FullHttpResponse;
import io.netty.handler.codec.http.HttpResponseStatus;
import java.nio.charset.Charset;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PipelineHttpClientHandler extends ChannelDuplexHandler {
    private static final String LOGTAG = LogUtil.makeLogTag(PipelineHttpClientHandler.class);

    public String getLogPrefix() {
        return "PipelineHttpClientHandler";
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        JSONObject nosInfo;
        LogUtil.d(LOGTAG, "Do channelRead");
        FullHttpResponse res = (FullHttpResponse) msg;
        PipelineHttpSession s = (PipelineHttpSession) ctx.channel().attr(PipelineHttpClient.SESSION_KEY).get();
        if (s == null) {
            LogUtil.w(LOGTAG, "pipeline no httpSession");
            return;
        }
        if (res.content() != null) {
            nosInfo = new JSONObject(res.content().toString(Charset.defaultCharset()));
            LogUtil.d(LOGTAG, "received nosInfo: " + nosInfo);
        } else {
            nosInfo = new JSONObject();
            LogUtil.w(LOGTAG, "no content in response");
        }
        int httpRespCode = res.getStatus().code();
        HttpResult rs = new HttpResult(httpRespCode, nosInfo, null);
        if (!s.hasBreakQuery()) {
            s.handleBreakInfo(httpRespCode, nosInfo);
            return;
        }
        if (httpRespCode != HttpResponseStatus.OK.code()) {
            handlerError(ctx, rs, 7, "HTTP Response Code:" + httpRespCode);
            return;
        }
        if (nosInfo == null || !nosInfo.has(JsConstant.CONTEXT) || !nosInfo.has(WBPageConstants.ParamKey.OFFSET)) {
            HttpResult offsetRs = new HttpResult(Code.INVALID_RESPONSE_DATA, new JSONObject(), new InvalidOffsetException("context or offset is missing in response"));
            handlerError(ctx, offsetRs, 8, "no context or offset in response");
            return;
        }
        try {
            String newUploadContext = nosInfo.getString(JsConstant.CONTEXT);
            int offset = Integer.parseInt(nosInfo.getString(WBPageConstants.ParamKey.OFFSET));
            s.setUploadContext(newUploadContext);
            s.handleOffset(offset, rs);
        } catch (Exception jsonException) {
            jsonException.printStackTrace();
            throw new Exception("post response has not context or offset");
        }
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler, io.netty.channel.ChannelInboundHandler
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        HttpResult rs = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), (Exception) cause);
        handlerError(ctx, rs, 2, "pipeline exception Caught:" + cause.toString());
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        HttpResult rs = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), null);
        handlerError(ctx, rs, 1, "pipeline channelInactive");
    }

    @Override // io.netty.channel.ChannelInboundHandlerAdapter, io.netty.channel.ChannelInboundHandler
    public void channelWritabilityChanged(ChannelHandlerContext ctx) throws Exception {
        LogUtil.d(LOGTAG, "channelWritabilityChanged isWritable: " + ctx.channel().isWritable());
        PipelineHttpSession s = (PipelineHttpSession) ctx.channel().attr(PipelineHttpClient.SESSION_KEY).get();
        if (s != null) {
            LogUtil.d(LOGTAG, "get PipelineHttpSession from the channel");
            if (ctx.channel().isWritable()) {
                s.writeDone();
            }
        }
    }

    private void handlerError(ChannelHandlerContext ctx, HttpResult rs, int errCode, String cause) {
        LogUtil.e(LOGTAG, "handlerError cause: " + cause);
        if (ctx.channel().isOpen()) {
            ctx.channel().close();
        }
        notifySessionResult(ctx, rs, errCode);
    }

    private void notifySessionResult(ChannelHandlerContext ctx, HttpResult rs, int isSuccess) {
        PipelineHttpSession s = (PipelineHttpSession) ctx.channel().attr(PipelineHttpClient.SESSION_KEY).get();
        if (s != null) {
            s.setSessionSuccess(isSuccess, rs);
        }
    }
}
