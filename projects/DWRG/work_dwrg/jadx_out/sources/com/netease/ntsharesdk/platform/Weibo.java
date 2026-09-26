package com.netease.ntsharesdk.platform;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import com.netease.ntsharesdk.Platform;
import com.netease.ntsharesdk.ShareArgs;
import com.netease.ntsharesdk.ShareMgr;
import com.netease.ntsharesdk.platform.WeiboAttention;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.api.share.BaseResponse;
import com.sina.weibo.sdk.api.share.IWeiboShareAPI;
import com.sina.weibo.sdk.api.share.SendMultiMessageToWeiboRequest;
import com.sina.weibo.sdk.api.share.WeiboShareSDK;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.utils.Utility;

/* loaded from: classes.dex */
public class Weibo extends Platform {
    private static final int TYPE_ATTENTION = 2;
    private static final int TYPE_SHARE = 1;
    private IWeiboShareAPI api;
    private boolean authorize;
    private boolean isFirstAuthorizeSuccess;
    private AuthInfo mAuthInfo;
    private String mKey;
    private SsoHandler mSsoHandler;

    public Weibo(Context ctx) {
        super(ctx);
        this.authorize = false;
        this.isFirstAuthorizeSuccess = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.ntsharesdk.Platform
    public void initSdk() {
        dLog("platform: " + getPlatformName() + " init sdk app_id:" + getConfig("app_id"));
        this.api = WeiboShareSDK.createWeiboAPI(this.myCtx, getConfig("app_id"));
        this.mAuthInfo = new AuthInfo(this.myCtx, getConfig("app_id"), getConfig("app_url", "http://www.sina.com"), "");
        this.mSsoHandler = new SsoHandler((Activity) this.myCtx, this.mAuthInfo);
        this.mKey = getConfig("app_id");
        if (ShareMgr.getInst().hasPlatform(Platform.WEIBO).booleanValue()) {
            this.api.registerApp();
        }
    }

    public Context getCtx() {
        return this.myCtx;
    }

    @Override // com.netease.ntsharesdk.Platform
    protected Object genMessage(ShareArgs args) {
        WeiboMultiMessage msg = new WeiboMultiMessage();
        msg.textObject = getTextObj(args);
        if (args.hasImage().booleanValue()) {
            dLog("args.hasImage() true");
            msg.imageObject = getImageObj(args);
        }
        if (args.getValue("url") != null) {
            dLog("args.getValue(ShareArgs.URL) not null");
            msg.mediaObject = getWebpageObj(args);
        }
        return msg;
    }

    private int getShareType(ShareArgs args) {
        return args.getValue(ShareArgs.TO_BLOG, null) == null ? 1 : 2;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void share(ShareArgs args) {
        if (!checkArgs(args).booleanValue()) {
            dLog("checkArgs(args) false");
            this.shareEndListener.onShareEnd(getPlatformName(), 2, args);
            return;
        }
        int type = getShareType(args);
        switch (type) {
            case 1:
                doShare(args);
                return;
            case 2:
                doAttention(args);
                return;
            default:
                return;
        }
    }

    private void doShare(final ShareArgs args) {
        if (ShareMgr.getInst().hasPlatform(Platform.WEIBO).booleanValue()) {
            Oauth2AccessToken accessToken = AccessTokenKeeper.readAccessToken(this.myCtx);
            if (accessToken != null && this.isFirstAuthorizeSuccess) {
                this.authorize = false;
                dLog("authorize success, direct share");
                appShare(args, accessToken);
                return;
            } else {
                this.authorize = true;
                dLog("mSsoHandler.authorize");
                this.mSsoHandler.authorize(new WeiboAuthListener() { // from class: com.netease.ntsharesdk.platform.Weibo.1
                    @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
                    public void onCancel() {
                        Weibo.dLog("http authorize cancel");
                        Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 1, new ShareArgs());
                    }

                    @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
                    public void onComplete(Bundle value) {
                        Oauth2AccessToken mAccessToken = Oauth2AccessToken.parseAccessToken(value);
                        if (mAccessToken.isSessionValid()) {
                            Weibo.this.isFirstAuthorizeSuccess = true;
                            Weibo.dLog("authorize success, call share");
                            Weibo.this.appShare(args, mAccessToken);
                        } else {
                            String code = value.getString("code");
                            Weibo.dLog("Weibo get Accesstoken failed, error code:" + code);
                            Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 2, new ShareArgs("Weibo get Accesstoken failed, error code:" + code));
                        }
                    }

                    @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
                    public void onWeiboException(WeiboException arg0) {
                        Weibo.dLog("Weibo get code exception " + arg0.getMessage());
                        Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 2, new ShareArgs("Weibo get code exception " + arg0.getMessage()));
                    }
                });
                return;
            }
        }
        this.api.registerApp();
        Oauth2AccessToken accessToken2 = AccessTokenKeeper.readAccessToken(this.myCtx);
        String token = "";
        if (accessToken2 != null && accessToken2.isSessionValid()) {
            token = accessToken2.getToken();
        }
        WeiboMultiMessage msg = (WeiboMultiMessage) genMessage(args);
        SendMultiMessageToWeiboRequest req = new SendMultiMessageToWeiboRequest();
        req.transaction = String.valueOf(System.currentTimeMillis());
        req.multiMessage = msg;
        Boolean sendOut = Boolean.valueOf(this.api.sendRequest((Activity) this.myCtx, req, this.mAuthInfo, token, new WeiboAuthListener() { // from class: com.netease.ntsharesdk.platform.Weibo.2
            @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
            public void onWeiboException(WeiboException arg0) {
                Weibo.dLog("Weibo get code exception " + arg0.getMessage());
                Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 2, new ShareArgs("Weibo get code exception " + arg0.getMessage()));
            }

            @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
            public void onComplete(Bundle bundle) {
                Oauth2AccessToken newToken = Oauth2AccessToken.parseAccessToken(bundle);
                AccessTokenKeeper.writeAccessToken(Weibo.this.myCtx, newToken);
                ShareArgs args2 = new ShareArgs();
                Weibo.dLog("http share complte OK");
                Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 0, args2);
            }

            @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
            public void onCancel() {
                Weibo.dLog("http authorize cancel");
                Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 1, new ShareArgs());
            }
        }));
        dLog("share result " + sendOut);
        pushShareTranscation(req.transaction, args);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void appShare(ShareArgs args, Oauth2AccessToken mAccessToken) {
        this.api.registerApp();
        WeiboMultiMessage msg = (WeiboMultiMessage) genMessage(args);
        SendMultiMessageToWeiboRequest req = new SendMultiMessageToWeiboRequest();
        req.transaction = String.valueOf(System.currentTimeMillis());
        req.multiMessage = msg;
        Boolean sendOut = Boolean.valueOf(this.api.sendRequest((Activity) this.myCtx, req, this.mAuthInfo, mAccessToken.getToken(), new WeiboAuthListener() { // from class: com.netease.ntsharesdk.platform.Weibo.3
            @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
            public void onWeiboException(WeiboException arg0) {
                Weibo.dLog("Weibo get code exception " + arg0.getMessage());
                Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 2, new ShareArgs("Weibo get code exception " + arg0.getMessage()));
            }

            @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
            public void onComplete(Bundle bundle) {
                ShareArgs args2 = new ShareArgs();
                Weibo.dLog("share complte OK");
                Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 0, args2);
            }

            @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
            public void onCancel() {
                Weibo.dLog("http authorize cancel");
                Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 1, new ShareArgs());
            }
        }));
        dLog("share result " + sendOut);
        pushShareTranscation(req.transaction, args);
    }

    private TextObject getTextObj(ShareArgs args) {
        TextObject textObject = new TextObject();
        textObject.text = args.getValue(ShareArgs.TEXT).toString();
        return textObject;
    }

    private ImageObject getImageObj(ShareArgs args) {
        ImageObject imageObject = new ImageObject();
        if (args.getValue(ShareArgs.IMG_PATH) != null) {
            imageObject.imagePath = args.getValue(ShareArgs.IMG_PATH).toString();
        } else if (args.getValue(ShareArgs.IMG_DATA) != null) {
            imageObject.setImageObject((Bitmap) args.getValue(ShareArgs.IMG_DATA));
        }
        if (args.getValue(ShareArgs.THUMB_DATA) != null) {
            imageObject.setThumbImage((Bitmap) args.getValue(ShareArgs.THUMB_DATA));
        }
        return imageObject;
    }

    private WebpageObject getWebpageObj(ShareArgs args) {
        WebpageObject mediaObject = new WebpageObject();
        mediaObject.identify = Utility.generateGUID();
        mediaObject.title = args.getValue("title").toString();
        if (args.getValue(ShareArgs.COMMENT) != null) {
            dLog("args.getValue(ShareArgs.COMMENT) not null");
            mediaObject.description = args.getValue(ShareArgs.COMMENT).toString();
        } else {
            dLog("args.getValue(ShareArgs.COMMENT) null, please set value");
        }
        if (args.getValue(ShareArgs.TEXT) != null) {
            mediaObject.defaultText = args.getValue(ShareArgs.TEXT).toString();
        }
        if (args.getValue(ShareArgs.THUMB_DATA) != null) {
            mediaObject.setThumbImage((Bitmap) args.getValue(ShareArgs.THUMB_DATA));
        }
        mediaObject.actionUrl = args.getValue("url").toString();
        return mediaObject;
    }

    @Override // com.netease.ntsharesdk.Platform
    public Boolean checkArgs(ShareArgs args) {
        String err = "";
        int type = getShareType(args);
        switch (type) {
            case 1:
                if (args.hasImage().booleanValue() && args.getValue(ShareArgs.IMG_URL) != null && ShareMgr.getInst().hasPlatform(Platform.WEIBO).booleanValue()) {
                    err = "ShareArgs wrong! Weibo app share doesn`t support img_url";
                    break;
                }
                break;
            case 2:
                if (TextUtils.isEmpty((String) args.getValue("title"))) {
                    err = "ShareArgs wrong! WeiboAttention should has title(userId)";
                    break;
                }
                break;
        }
        if (err.length() > 0) {
            dLog(err);
            args.setFailMsg(err);
            return false;
        }
        return true;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleResponse(Object arg0) {
        int result;
        BaseResponse resp = (BaseResponse) arg0;
        ShareArgs args = popShareTransaction(resp.transaction);
        if (args != null && ShareMgr.getInst().hasPlatform(Platform.WEIBO).booleanValue()) {
            String errMsg = null;
            switch (resp.errCode) {
                case 0:
                    result = 0;
                    break;
                case 1:
                    result = 1;
                    break;
                case 2:
                    result = 2;
                    errMsg = resp.errMsg;
                    break;
                default:
                    result = 2;
                    errMsg = "NtShareSdk未知错误";
                    break;
            }
            dLog("weibo app result:" + result + " err:" + (errMsg == null ? "no" : errMsg));
            if (errMsg != null) {
                args.setFailMsg(errMsg);
            }
            this.shareEndListener.onShareEnd(getPlatformName(), result, args);
        }
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleIntent(Intent intent) {
        dLog("handleIntent");
    }

    @Override // com.netease.ntsharesdk.Platform
    public void handleActivityResult(int requestCode, int resultCode, Intent data) {
        dLog("Weibo handleActivityResult, requestCode:" + requestCode + ", resultCode:" + resultCode);
        super.handleActivityResult(requestCode, resultCode, data);
        if (this.mSsoHandler != null && this.authorize) {
            dLog("mSsoHandler.authorizeCallBack");
            this.mSsoHandler.authorizeCallBack(requestCode, resultCode, data);
        }
    }

    @Override // com.netease.ntsharesdk.Platform
    protected String getPlatformName() {
        return Platform.WEIBO;
    }

    @Override // com.netease.ntsharesdk.Platform
    public Object getAPIInst() {
        return this.api;
    }

    @Override // com.netease.ntsharesdk.Platform
    public void updateApi(String key) {
        this.api = WeiboShareSDK.createWeiboAPI(this.myCtx, key);
        this.api.registerApp();
    }

    @Deprecated
    public void setHttpShare(Boolean flag) {
    }

    private void doAttention(final ShareArgs args) {
        final String uid = (String) args.getValue("title");
        final boolean viaApi = args.getValue(ShareArgs.COMMENT, null) == null;
        final WeiboAttention.AttentionCallback callback = new WeiboAttention.AttentionCallback() { // from class: com.netease.ntsharesdk.platform.Weibo.4
            @Override // com.netease.ntsharesdk.platform.WeiboAttention.AttentionCallback
            public void attentResult(boolean suc) {
                Weibo.dLog("attention suc: " + suc);
                Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), suc ? 0 : 2, args);
                if (suc) {
                    Weibo.this.pushShareTranscation("wa-" + (System.currentTimeMillis() / 1000), args);
                }
            }
        };
        if (ShareMgr.getInst().hasPlatform(Platform.WEIBO).booleanValue()) {
            this.authorize = true;
            this.mSsoHandler.authorize(new WeiboAuthListener() { // from class: com.netease.ntsharesdk.platform.Weibo.5
                @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
                public void onCancel() {
                    Weibo.dLog("http authorize cancel");
                    Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 1, new ShareArgs());
                }

                @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
                public void onComplete(Bundle value) {
                    Oauth2AccessToken mAccessToken = Oauth2AccessToken.parseAccessToken(value);
                    if (mAccessToken.isSessionValid()) {
                        Weibo.dLog("authorize success");
                        AccessTokenKeeper.writeAccessToken(Weibo.this.myCtx, mAccessToken);
                        Weibo.this.api.registerApp();
                        WeiboAttention.attention(Weibo.this.getCtx(), viaApi, Weibo.this.mKey, mAccessToken.getToken(), uid, callback);
                        return;
                    }
                    String code1 = value.getString("code");
                    Weibo.dLog("Weibo get Accesstoken failed, error code:" + code1);
                    Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 2, new ShareArgs("Weibo get Accesstoken failed, error code:" + code1));
                }

                @Override // com.sina.weibo.sdk.auth.WeiboAuthListener
                public void onWeiboException(WeiboException arg0) {
                    Weibo.dLog("Weibo get code exception " + arg0.getMessage());
                    Weibo.this.shareEndListener.onShareEnd(Weibo.this.getPlatformName(), 2, new ShareArgs("Weibo get code exception " + arg0.getMessage()));
                }
            });
            return;
        }
        this.api.registerApp();
        Oauth2AccessToken accessToken = AccessTokenKeeper.readAccessToken(this.myCtx);
        String token = "";
        if (accessToken != null && accessToken.isSessionValid()) {
            token = accessToken.getToken();
        } else if (viaApi) {
            this.shareEndListener.onShareEnd(getPlatformName(), 2, new ShareArgs("cached token invalid"));
        }
        WeiboAttention.attention(getCtx(), viaApi, this.mKey, token, uid, callback);
    }
}
