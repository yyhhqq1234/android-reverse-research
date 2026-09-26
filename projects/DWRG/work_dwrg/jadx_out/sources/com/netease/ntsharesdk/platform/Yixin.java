package com.netease.ntsharesdk.platform;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareArgs;
import im.yixin.sdk.api.BaseResp;
import im.yixin.sdk.api.ExceptionInfo;
import im.yixin.sdk.api.IYXAPI;
import im.yixin.sdk.api.SendMessageToYX;
import im.yixin.sdk.api.YXAPIFactory;
import im.yixin.sdk.api.YXImageMessageData;
import im.yixin.sdk.api.YXMessage;
import im.yixin.sdk.api.YXTextMessageData;
import im.yixin.sdk.api.YXWebPageMessageData;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public class Yixin extends Platform {
    private IYXAPI api;

    public Yixin(Context ctx) {
        super(ctx);
    }

    @Override // com.netease.ntsharesdk.Platform
    protected Object genMessage(ShareArgs args) {
        YXMessage.YXMessageData md;
        YXMessage ym = new YXMessage();
        Bitmap thumb_data = (Bitmap) args.getValue(ShareArgs.THUMB_DATA);
        if (args.hasImage().booleanValue()) {
            YXImageMessageData imd = new YXImageMessageData();
            if (args.getValue(ShareArgs.IMG_PATH) != null) {
                dLog("args.getValue(ShareArgs.IMG_PATH) != null");
                imd.imagePath = args.getValue(ShareArgs.IMG_PATH).toString();
            } else if (args.getValue(ShareArgs.IMG_URL) != null) {
                dLog("args.getValue(ShareArgs.IMG_URL) != null");
                imd.imageUrl = args.getValue(ShareArgs.IMG_URL).toString();
            } else {
                dLog("args.getValue(ShareArgs.IMG_DATA)");
                imd = new YXImageMessageData((Bitmap) args.getValue(ShareArgs.IMG_DATA));
                if (thumb_data == null) {
                    dLog("scale ShareArgs.IMG_DATA to thumb");
                    Bitmap bm = (Bitmap) args.getValue(ShareArgs.IMG_DATA);
                    thumb_data = Bitmap.createScaledBitmap(bm, 150, 150, true);
                }
            }
            md = imd;
        } else if (args.getValue("url") != null) {
            md = new YXWebPageMessageData(args.getValue("url").toString());
        } else {
            md = new YXTextMessageData(args.getValue(ShareArgs.TEXT).toString());
        }
        if (thumb_data != null) {
            dLog("thumb width:" + thumb_data.getWidth() + ", height:" + thumb_data.getHeight());
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            thumb_data.compress(Bitmap.CompressFormat.PNG, 100, baos);
            ym.thumbData = baos.toByteArray();
        }
        ym.messageData = md;
        ym.title = args.getValue("title").toString();
        ym.description = args.getValue(ShareArgs.TEXT).toString();
        if (!TextUtils.isEmpty(args.getValue(ShareArgs.COMMENT, "").toString())) {
            dLog("args.getValue(ShareArgs.COMMENT) is not empty");
            ym.comment = args.getValue(ShareArgs.COMMENT, "").toString();
        }
        return ym;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void share(ShareArgs args) {
        if (!this.api.isYXAppInstalled()) {
            args.setFailMsg("app not installed");
            dLog("app not installed");
            this.shareEndListener.onShareEnd(getPlatformName(), 3, args);
            return;
        }
        if (!checkArgs(args).booleanValue()) {
            dLog("checkArgs(args) false");
            this.shareEndListener.onShareEnd(getPlatformName(), 2, args);
            return;
        }
        YXMessage ym = (YXMessage) genMessage(args);
        SendMessageToYX.Req req = new SendMessageToYX.Req();
        req.message = ym;
        req.transaction = String.valueOf(System.currentTimeMillis());
        if (args.getValue(ShareArgs.TO_BLOG) != null && args.getValue(ShareArgs.TO_BLOG).toString().length() > 0) {
            dLog("SendMessageToYX.Req.YXSceneTimeline");
            req.scene = 1;
        }
        Boolean sendOut = Boolean.valueOf(this.api.sendRequest(req));
        dLog("share result " + sendOut);
        pushShareTranscation(req.transaction, args);
    }

    @Override // com.netease.ntsharesdk.Platform
    public Boolean checkArgs(ShareArgs args) {
        String err = "";
        YXMessage ym = (YXMessage) genMessage(args);
        SendMessageToYX.Req req = new SendMessageToYX.Req();
        req.message = ym;
        ExceptionInfo info = new ExceptionInfo(req, null);
        if (!req.checkArgs(info)) {
            err = "ShareArgs wrong! " + info.getReason();
        }
        if (args.hasImage().booleanValue() && args.getValue(ShareArgs.IMG_URL) != null) {
            err = "ShareArgs wrong! Not support img_url";
        }
        if (err.length() <= 0) {
            return true;
        }
        dLog(err);
        args.setFailMsg(err);
        return false;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleIntent(Intent intent) {
    }

    @Override // com.netease.ntsharesdk.Platform
    protected String getPlatformName() {
        return Platform.YIXIN;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.ntsharesdk.Platform
    public void initSdk() {
        dLog("platform: " + getPlatformName() + " init sdk app_id:" + getConfig("app_id"));
        this.api = YXAPIFactory.createYXAPI(this.myCtx, getConfig("app_id"));
        this.api.registerApp();
    }

    @Override // com.netease.ntsharesdk.Platform
    public Object getAPIInst() {
        return this.api;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleResponse(Object r) {
        int result;
        super.handleResponse(r);
        BaseResp resp = (BaseResp) r;
        switch (resp.getType()) {
            case 1:
                SendMessageToYX.Resp resp1 = (SendMessageToYX.Resp) resp;
                ShareArgs args = popShareTransaction(resp1.transaction);
                if (args != null) {
                    String errMsg = null;
                    switch (resp1.errCode) {
                        case -3:
                        case -1:
                            result = 2;
                            errMsg = resp1.errStr;
                            break;
                        case -2:
                            result = 1;
                            break;
                        case 0:
                            result = 0;
                            break;
                        default:
                            result = 2;
                            errMsg = "未知错误";
                            break;
                    }
                    if (errMsg != null) {
                        args.setFailMsg(errMsg);
                    }
                    this.shareEndListener.onShareEnd(getPlatformName(), result, args);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.netease.ntsharesdk.Platform
    public void updateApi(String key) {
        this.api.unRegisterApp();
        this.api = YXAPIFactory.createYXAPI(this.myCtx, key);
        this.api.registerApp();
    }
}
