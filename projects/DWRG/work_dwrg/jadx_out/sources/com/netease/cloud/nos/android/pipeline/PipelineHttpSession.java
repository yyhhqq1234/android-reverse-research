package com.netease.cloud.nos.android.pipeline;

import com.netease.cloud.nos.android.constants.Code;
import com.netease.cloud.nos.android.constants.Constants;
import com.netease.cloud.nos.android.core.Callback;
import com.netease.cloud.nos.android.core.UploadTask;
import com.netease.cloud.nos.android.core.WanAccelerator;
import com.netease.cloud.nos.android.core.WanNOSObject;
import com.netease.cloud.nos.android.exception.InvalidOffsetException;
import com.netease.cloud.nos.android.http.HttpResult;
import com.netease.cloud.nos.android.utils.LogUtil;
import com.netease.cloud.nos.android.utils.Util;
import com.sina.weibo.sdk.constant.WBPageConstants;
import io.netty.channel.ChannelFuture;
import io.netty.handler.codec.http.DefaultFullHttpRequest;
import io.netty.handler.codec.http.HttpHeaders;
import io.netty.handler.codec.http.HttpMethod;
import io.netty.handler.codec.http.HttpRequest;
import io.netty.handler.codec.http.HttpVersion;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PipelineHttpSession {
    private static final int EACH_PART_SIZE = 131072;
    private String MD5;
    private String bucketName;
    private Callback callback;
    private int chunkSize;
    private PipelineHttpClient client;
    private File file;
    private String fileName;
    private Object fileParam;
    private boolean isHttps;
    private WanNOSObject meta;
    private int timeout;
    private String token;
    private long totalLength;
    private volatile String uploadContext;
    private UploadTask uploadTask;
    private static boolean isStop = false;
    private static long stopTime = 0;
    private static final String LOGTAG = LogUtil.makeLogTag(PipelineHttpSession.class);
    private volatile long sendOffset = 0;
    private volatile long responseOffset = 0;
    private volatile long respNum = 0;
    private volatile boolean isComplete = false;
    private volatile int isSuccess = 0;
    private volatile boolean hasBreakQuery = false;
    private volatile long lastResponseTime = 0;
    private volatile boolean upCancelled = false;
    private volatile HttpResult rs = null;
    private Object completeCondition = new Object();

    public PipelineHttpSession(String token, String bucketName, String fileName, Object fileParam, File file, String uploadContext, boolean isHttps, WanNOSObject meta, String MD5, Callback callback, int chunkSize, UploadTask uploadTask) {
        this.fileName = null;
        this.token = null;
        this.meta = null;
        this.callback = null;
        this.totalLength = 0L;
        this.file = null;
        this.MD5 = null;
        this.uploadContext = null;
        this.uploadTask = null;
        this.client = null;
        this.chunkSize = 131072;
        this.timeout = 30000;
        this.isHttps = false;
        this.bucketName = bucketName;
        this.fileName = fileName;
        this.uploadContext = uploadContext;
        this.callback = callback;
        this.fileParam = fileParam;
        this.totalLength = file.length();
        this.file = file;
        this.token = token;
        this.meta = meta;
        this.isHttps = isHttps;
        this.MD5 = MD5;
        this.uploadTask = uploadTask;
        this.timeout = WanAccelerator.getConf().getSoTimeout();
        this.chunkSize = chunkSize;
        int port = isHttps ? 443 : 80;
        this.client = new PipelineHttpClient(port, isHttps, this);
    }

    private boolean uploadContextExist() {
        return (this.uploadContext == null || this.uploadContext.equals("")) ? false : true;
    }

    private void waitForContext() {
        try {
            synchronized (this.completeCondition) {
                this.lastResponseTime = System.currentTimeMillis();
                while (!uploadContextExist() && !this.isComplete && System.currentTimeMillis() < this.lastResponseTime + this.timeout) {
                    this.completeCondition.wait(this.timeout);
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (!uploadContextExist() && !this.isComplete) {
            LogUtil.e(LOGTAG, "no uploadContext received");
            HttpResult rs = new HttpResult(Code.HTTP_NO_RESPONSE, new JSONObject(), null);
            setSessionSuccess(6, rs);
        }
    }

    private void waitForComplete() {
        try {
            if (!this.isComplete) {
                synchronized (this.completeCondition) {
                    this.lastResponseTime = System.currentTimeMillis();
                    while (!this.isComplete && System.currentTimeMillis() < this.lastResponseTime + this.timeout) {
                        this.completeCondition.wait(this.timeout);
                    }
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (!this.isComplete) {
            HttpResult rs = new HttpResult(Code.HTTP_NO_RESPONSE, new JSONObject(), null);
            handlerError(rs, 6, "upload timeout for " + this.timeout + "ms, close channel");
        }
    }

    public HttpResult upload(String ip) throws IOException, InterruptedException {
        long count = 0;
        long totalSize = 0;
        FileInputStream inputStream = new FileInputStream(this.file);
        LogUtil.d(LOGTAG, "start pipeline upload to uploadServer ip: " + ip);
        long tStart = System.currentTimeMillis();
        while (!this.upCancelled) {
            long sendSize = oneUpload(ip, inputStream);
            totalSize += sendSize;
            if (this.upCancelled || (this.isSuccess != 13 && (this.isSuccess != 1 || (count != 0 && this.respNum == 0)))) {
                break;
            }
            LogUtil.w(LOGTAG, "retry to upload for reason:" + this.isSuccess + " count:" + count + ", current respNum:" + this.respNum);
            count++;
        }
        inputStream.close();
        long duration = System.currentTimeMillis() - tStart;
        float speed = (float) ((totalSize / 1024.0d) / (duration / 1000.0d));
        LogUtil.w(LOGTAG, "pipeline upload isSuccess:" + this.isSuccess + " duration:" + duration + " totalSize:" + totalSize + " speed:" + speed + "KB/S");
        if (this.rs == null) {
            this.rs = new HttpResult(this.isSuccess == 0 ? 200 : Code.HTTP_EXCEPTION, new JSONObject(), null);
        }
        return this.rs;
    }

    private long oneUpload(String ip, FileInputStream inputStream) throws IOException, InterruptedException {
        LogUtil.d(LOGTAG, "pipeline one upload start");
        this.isComplete = false;
        this.isSuccess = 14;
        this.hasBreakQuery = false;
        this.responseOffset = 0L;
        this.respNum = 0L;
        this.rs = null;
        if (this.client.connect(ip) == null) {
            LogUtil.d(LOGTAG, "failed to connect uploadServer:" + ip);
            this.rs = new HttpResult(Code.CONNECTION_TIMEOUT, new JSONObject(), null);
            return 0L;
        }
        if (this.upCancelled) {
            return 0L;
        }
        LogUtil.d(LOGTAG, "uploadContext:" + this.uploadContext + ", uploadContextExist:" + uploadContextExist());
        if (uploadContextExist()) {
            breakQuery();
            if (!this.hasBreakQuery) {
                return 0L;
            }
        } else {
            this.hasBreakQuery = true;
        }
        if (this.upCancelled) {
            return 0L;
        }
        long breakQueryOffset = this.responseOffset;
        if (!this.isComplete) {
            this.sendOffset = this.responseOffset;
            FileChannel fc = inputStream.getChannel();
            fc.position(this.sendOffset);
        }
        this.lastResponseTime = System.currentTimeMillis();
        int count = 0;
        while (true) {
            if (this.isComplete || ((this.sendOffset >= this.totalLength && (this.sendOffset != 0 || this.totalLength != 0)) || this.upCancelled)) {
                break;
            }
            count++;
            ChannelFuture cf = sendPost(inputStream, this.sendOffset, this.chunkSize);
            if (cf == null) {
                break;
            }
            try {
                cf.await(this.timeout, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                if (!this.upCancelled) {
                    e.printStackTrace();
                }
                LogUtil.w(LOGTAG, "pipeline upload is interrupted:" + e.getCause());
            }
            if (!this.upCancelled) {
                LogUtil.d(LOGTAG, "pipeline one block upload isDone:" + cf.isDone());
                if (!cf.isDone() && System.currentTimeMillis() > this.lastResponseTime + this.timeout + 800) {
                    HttpResult rs = new HttpResult(Code.HTTP_NO_RESPONSE, new JSONObject(), null);
                    handlerError(rs, 6, "upload timeout for " + this.timeout + "ms, close channel");
                    break;
                }
                if (this.totalLength != 0) {
                    if (!cf.channel().isWritable()) {
                        LogUtil.w(LOGTAG, "channel is not wirtable, sendCount:" + count);
                        waitForWriteDone(cf, count);
                    }
                    if (cf.channel().isActive()) {
                        if (1 == count && this.sendOffset < this.totalLength) {
                            waitForContext();
                        }
                        LogUtil.d(LOGTAG, "pipeline http post success, sendOffset: " + this.sendOffset + ", totalLength: " + this.totalLength + ", this is " + count + " block uploaded");
                    } else {
                        HttpResult rs2 = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), null);
                        handlerError(rs2, 1, "Channel is not active");
                        break;
                    }
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        waitForComplete();
        long sendSize = this.responseOffset > breakQueryOffset ? this.responseOffset - breakQueryOffset : 0L;
        LogUtil.d(LOGTAG, "pipeline one upload isSuccess:" + this.isSuccess + " sendSize:" + sendSize);
        return sendSize;
    }

    private void waitForBreakResp() {
        try {
            if (!this.hasBreakQuery && !this.isComplete) {
                synchronized (this.completeCondition) {
                    this.lastResponseTime = System.currentTimeMillis();
                    while (!this.hasBreakQuery && !this.isComplete && System.currentTimeMillis() < this.lastResponseTime + this.timeout) {
                        this.completeCondition.wait(this.timeout);
                    }
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (!this.hasBreakQuery && !this.isComplete) {
            LogUtil.e(LOGTAG, "no breakQuery response");
            HttpResult rs = new HttpResult(Code.HTTP_NO_RESPONSE, new JSONObject(), null);
            setSessionSuccess(3, rs);
        }
    }

    private HttpRequest buildBreakRequest(String url) {
        HttpRequest request = new DefaultFullHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.GET, url);
        request.headers().add("Host", (Object) this.client.ip);
        request.headers().add(Constants.HEADER_TOKEN, (Object) this.token);
        return request;
    }

    public void breakQuery() {
        try {
            String breakQueryUrl = String.valueOf(this.isHttps ? "https://" + this.client.ip + ":443" : "") + Util.pipeBuildQueryUrl(this.bucketName, this.fileName, this.uploadContext);
            LogUtil.d(LOGTAG, "break query upload server url: " + breakQueryUrl);
            long tStart = System.currentTimeMillis();
            this.client.get(buildBreakRequest(breakQueryUrl));
            waitForBreakResp();
            long tEnd = System.currentTimeMillis();
            long tDuration = tEnd - tStart;
            LogUtil.d(LOGTAG, "breakQuery duration: " + tDuration);
        } catch (Exception ex) {
            LogUtil.e(LOGTAG, "build breakQueryUrl exception", ex);
            this.rs = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), ex);
        }
    }

    private DefaultFullHttpRequest buildUploadRequest(InputStream inputStream, int length, String postUrl) {
        DefaultFullHttpRequest request = new DefaultFullHttpRequest(HttpVersion.HTTP_1_1, HttpMethod.POST, postUrl);
        request.headers().add("Host", (Object) this.client.ip).add(HttpHeaders.Names.CONTENT_LENGTH, (Object) Integer.valueOf(length));
        request.headers().add(Constants.HEADER_TOKEN, (Object) this.token);
        if (this.MD5 != null && !this.MD5.equals("")) {
            request.headers().add(HttpHeaders.Names.CONTENT_MD5, (Object) this.MD5);
        }
        if (this.meta != null) {
            Util.pipeAddHeaders(request, this.meta);
        }
        try {
            request.content().writeBytes(inputStream, length);
            return request;
        } catch (Exception e) {
            e.printStackTrace();
            setSessionSuccess(11, this.rs);
            LogUtil.e(LOGTAG, "failed to read file, readlength:" + length + ", totalLength:" + this.totalLength);
            return null;
        }
    }

    public ChannelFuture sendPost(FileInputStream inputStream, long offset, int part_size) throws IOException {
        if (this.isComplete) {
            LogUtil.d(LOGTAG, "iscomplete offset: " + offset + ", totalLength: " + this.totalLength);
            return null;
        }
        if (this.totalLength != 0 && offset == this.totalLength) {
            handlerComplete(this.rs);
            LogUtil.d(LOGTAG, "sendPost complete offset: " + offset + "= totalLength: " + this.totalLength);
            return null;
        }
        if (offset > this.totalLength) {
            setSessionSuccess(10, this.rs);
            LogUtil.e(LOGTAG, "sendPost Error offset: " + offset + ", totalLength: " + this.totalLength);
            return null;
        }
        int length = (int) Math.min(part_size, this.totalLength - offset);
        LogUtil.d(LOGTAG, "upload block size is: " + length + ", part_size:" + part_size);
        this.sendOffset = length + offset;
        boolean isLast = false;
        if (length + offset == this.totalLength) {
            isLast = true;
        }
        String url = String.valueOf(this.isHttps ? "https://" + this.client.ip + ":443" : "") + Util.pipeBuildPostDataUrl(this.bucketName, this.fileName, this.uploadContext, offset, isLast);
        LogUtil.d(LOGTAG, "post data url: " + url);
        ChannelFuture cf = this.client.post(buildUploadRequest(inputStream, length, url));
        if (cf == null) {
            HttpResult rs = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), null);
            handlerError(rs, 2, "pipeline exception: ChannelFuture is null");
            return cf;
        }
        return cf;
    }

    public void setSessionSuccess(int isSuccess, HttpResult rs) {
        this.client.reset();
        if (this.isSuccess == 14) {
            this.isSuccess = isSuccess;
        }
        if (this.rs == null) {
            this.rs = rs;
        }
        synchronized (this.completeCondition) {
            this.isComplete = true;
            this.completeCondition.notify();
        }
    }

    public void cancel() {
        LogUtil.d(LOGTAG, "pipeline uploading is canceling");
        this.upCancelled = true;
        if (this.client != null) {
            handlerError(this.rs, 12, "pipeline upload is cancelled");
        }
    }

    public void setUploadContext(String newUploadContext) {
        if (!newUploadContext.equals(this.uploadContext)) {
            this.callback.onUploadContextCreate(this.fileParam, this.uploadContext, newUploadContext);
            synchronized (this.completeCondition) {
                this.uploadContext = newUploadContext;
                this.completeCondition.notify();
            }
            LogUtil.d(LOGTAG, "received new uploadContext: " + newUploadContext);
        }
    }

    public void handleBreakInfo(int httpRespCode, JSONObject nosInfo) throws JSONException {
        if (httpRespCode == 404) {
            this.uploadContext = null;
        } else if (httpRespCode == 200) {
            if (nosInfo == null || !nosInfo.has(WBPageConstants.ParamKey.OFFSET)) {
                HttpResult offsetRs = new HttpResult(699, nosInfo, new InvalidOffsetException("offset is missing in breakQuery response"));
                handlerError(offsetRs, 5, "no offset in breakQuery response");
                this.responseOffset = 0L;
                return;
            }
            this.responseOffset = nosInfo.getInt(WBPageConstants.ParamKey.OFFSET);
        } else {
            HttpResult rs = new HttpResult(httpRespCode, nosInfo, null);
            handlerError(rs, 4, "HTTP Response Code:" + httpRespCode);
            return;
        }
        if ((this.responseOffset >= this.totalLength && this.totalLength != 0) || this.responseOffset < 0) {
            HttpResult breakRs = new HttpResult(699, new JSONObject(), new InvalidOffsetException("offset is invalid in server side, with offset: " + this.responseOffset + ", file length: " + this.totalLength));
            handlerError(breakRs, 5, "HTTP Response Code:" + httpRespCode);
            this.responseOffset = 0L;
        } else {
            synchronized (this.completeCondition) {
                this.hasBreakQuery = true;
                this.completeCondition.notify();
            }
        }
    }

    public void handleOffset(int offset, HttpResult rs) {
        this.lastResponseTime = System.currentTimeMillis();
        this.respNum++;
        if (offset == this.totalLength) {
            this.responseOffset = offset;
            handlerComplete(rs);
        } else if (offset > this.totalLength || offset < 0) {
            handlerError(rs, 9, "offset error");
        } else if (offset <= this.responseOffset) {
            LogUtil.w(LOGTAG, "pipeline backoff, offset: " + offset + ", current responseOffset: " + this.responseOffset);
            handlerError(rs, 13, "pipeline offset backoff");
        } else {
            this.responseOffset = offset;
        }
        this.uploadTask.getUploadProgress(offset, this.totalLength);
        LogUtil.d(LOGTAG, "pipeline http response, offset: " + offset + ", totalLength: " + this.totalLength + ", this is " + this.respNum + " block response");
    }

    private void handlerComplete(HttpResult rs) {
        LogUtil.d(LOGTAG, "pipeline http post Complete");
        setSessionSuccess(0, rs);
    }

    private void handlerError(HttpResult rs, int errCode, String cause) {
        LogUtil.e(LOGTAG, "handlerError cause: " + cause);
        this.client.channelClose();
        setSessionSuccess(errCode, rs);
    }

    public boolean hasBreakQuery() {
        return this.hasBreakQuery;
    }

    public String getUploadContext() {
        return this.uploadContext;
    }

    public void waitForWriteDone(ChannelFuture cf, int count) {
        try {
            if (!cf.channel().isWritable() && !this.isComplete) {
                synchronized (this.completeCondition) {
                    this.lastResponseTime = System.currentTimeMillis();
                    while (!cf.channel().isWritable() && !this.isComplete && System.currentTimeMillis() < this.lastResponseTime + this.timeout) {
                        this.completeCondition.wait(this.timeout);
                    }
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (!cf.channel().isWritable() && !this.isComplete) {
            LogUtil.e(LOGTAG, "wait for channel writable long time");
            HttpResult rs = new HttpResult(Code.HTTP_EXCEPTION, new JSONObject(), null);
            handlerError(rs, 2, "pipeline exception: channel is not writable");
        }
    }

    public void writeDone() {
        synchronized (this.completeCondition) {
            this.completeCondition.notify();
        }
    }

    public boolean isUpCancelled() {
        return this.upCancelled;
    }

    public static void stop() {
        isStop = true;
        stopTime = System.currentTimeMillis();
        LogUtil.w(LOGTAG, "pipeline stopped for a while");
    }

    public static boolean isStop() {
        if (isStop && stopTime + WanAccelerator.getConf().getPipelineFailoverPeriod() <= System.currentTimeMillis()) {
            isStop = false;
        }
        return isStop;
    }

    public static void reStart() {
        if (isStop) {
            isStop = false;
            LogUtil.w(LOGTAG, "pipeline restart");
        }
    }
}
