package com.netease.ntsharesdk.platform;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareArgs;
import com.tencent.mm.opensdk.modelbase.BaseResp;
import com.tencent.mm.opensdk.modelmsg.SendMessageToWX;
import com.tencent.mm.opensdk.modelmsg.WXImageObject;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.mm.opensdk.modelmsg.WXTextObject;
import com.tencent.mm.opensdk.modelmsg.WXWebpageObject;
import com.tencent.mm.opensdk.openapi.IWXAPI;
import com.tencent.mm.opensdk.openapi.WXAPIFactory;
import java.io.ByteArrayOutputStream;

/* loaded from: classes.dex */
public class Weixin extends Platform {
    private IWXAPI api;

    public Weixin(Context ctx) {
        super(ctx);
    }

    @Override // com.netease.ntsharesdk.Platform
    protected Object genMessage(ShareArgs args) {
        WXMediaMessage.IMediaObject md;
        dLog("imgPath:" + args.getValue(ShareArgs.IMG_PATH) + ",imgUrl:" + args.getValue(ShareArgs.IMG_URL) + ",imgData:" + args.getValue(ShareArgs.IMG_DATA));
        WXMediaMessage ym = new WXMediaMessage();
        Bitmap thumb_data = null;
        if (args.getValue(ShareArgs.THUMB_DATA) != null) {
            dLog("args.getValue(ShareArgs.THUMB_DATA) != null");
            thumb_data = (Bitmap) args.getValue(ShareArgs.THUMB_DATA);
        }
        if (args.hasImage().booleanValue()) {
            WXImageObject imd = new WXImageObject();
            if (args.getValue(ShareArgs.IMG_PATH) != null) {
                imd.setImagePath(args.getValue(ShareArgs.IMG_PATH).toString());
            } else if (args.getValue(ShareArgs.IMG_URL) != null) {
                dLog("do not support url image");
            } else {
                imd = new WXImageObject((Bitmap) args.getValue(ShareArgs.IMG_DATA));
                if (thumb_data == null) {
                    Bitmap bm = (Bitmap) args.getValue(ShareArgs.IMG_DATA);
                    dLog("scale ShareArgs.IMG_DATA to thumb");
                    thumb_data = Bitmap.createScaledBitmap(bm, 80, 80, true);
                }
            }
            md = imd;
        } else if (args.getValue("url") != null) {
            md = new WXWebpageObject(args.getValue("url").toString());
        } else {
            md = new WXTextObject(args.getValue(ShareArgs.TEXT).toString());
        }
        if (thumb_data != null) {
            dLog("thumb width:" + thumb_data.getWidth() + ", height:" + thumb_data.getHeight());
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            thumb_data.compress(Bitmap.CompressFormat.PNG, 100, baos);
            ym.thumbData = baos.toByteArray();
        }
        ym.mediaObject = md;
        ym.title = args.getValue("title").toString();
        ym.description = args.getValue(ShareArgs.TEXT).toString();
        return ym;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void share(ShareArgs args) {
        if (!this.api.isWXAppInstalled()) {
            args.setFailMsg("App not installed");
            dLog("app not installed");
            this.shareEndListener.onShareEnd(getPlatformName(), 3, args);
            return;
        }
        if (!checkArgs(args).booleanValue()) {
            dLog("checkArgs(args) false");
            this.shareEndListener.onShareEnd(getPlatformName(), 2, args);
            return;
        }
        WXMediaMessage ym = (WXMediaMessage) genMessage(args);
        SendMessageToWX.Req req = new SendMessageToWX.Req();
        req.message = ym;
        req.transaction = String.valueOf(System.currentTimeMillis());
        if (args.getValue(ShareArgs.TO_BLOG) != null && args.getValue(ShareArgs.TO_BLOG).toString().length() > 0) {
            dLog("SendMessageToWX.Req.WXSceneTimeline");
            req.scene = 1;
        }
        Boolean sendOut = Boolean.valueOf(this.api.sendReq(req));
        dLog("share result " + sendOut);
        pushShareTranscation(req.transaction, args);
    }

    @Override // com.netease.ntsharesdk.Platform
    public Boolean checkArgs(ShareArgs args) {
        String err = "";
        WXMediaMessage ym = (WXMediaMessage) genMessage(args);
        SendMessageToWX.Req req = new SendMessageToWX.Req();
        req.message = ym;
        if (!req.checkArgs()) {
            err = "ShareArgs wrong!";
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
    protected String getPlatformName() {
        return Platform.WEIXIN;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.ntsharesdk.Platform
    public void initSdk() {
        dLog("platform: " + getPlatformName() + " init sdk app_id:" + getConfig("app_id"));
        this.api = WXAPIFactory.createWXAPI(this.myCtx, null);
        this.api.registerApp(getConfig("app_id"));
    }

    @Override // com.netease.ntsharesdk.Platform
    public Object getAPIInst() {
        return this.api;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleResponse(Object r) {
        int result;
        BaseResp resp = (BaseResp) r;
        dLog("handleResponse:" + resp.toString() + ", errCode:" + resp.errCode + ",errStr:" + resp.errStr);
        ShareArgs args = popShareTransaction(resp.transaction);
        if (args != null) {
            String errMsg = null;
            switch (resp.errCode) {
                case -4:
                    result = 2;
                    dLog("OnShareEndListener.FAILED, ErrCode.ERR_AUTH_DENIED");
                    errMsg = resp.errStr;
                    break;
                case -3:
                case -1:
                default:
                    result = 2;
                    dLog("OnShareEndListener.FAILED");
                    errMsg = "unknown error";
                    break;
                case -2:
                    result = 1;
                    dLog("OnShareEndListener.CANCEL");
                    break;
                case 0:
                    result = 0;
                    dLog("OnShareEndListener.OK");
                    break;
            }
            if (errMsg != null) {
                args.setFailMsg(errMsg);
            }
            this.shareEndListener.onShareEnd(getPlatformName(), result, args);
        }
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleIntent(Intent intent) {
    }

    @Override // com.netease.ntsharesdk.Platform
    public void updateApi(String key) {
        this.api.unregisterApp();
        this.api = WXAPIFactory.createWXAPI(this.myCtx, null);
        this.api.registerApp(key);
    }
}
