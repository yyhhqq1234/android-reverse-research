package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.MusicObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.VideoObject;
import com.sina.weibo.sdk.api.VoiceObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.api.share.BaseRequest;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.Base64;
import com.sina.weibo.sdk.utils.MD5;
import com.sina.weibo.sdk.utils.Utility;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShareRequestParam extends BrowserRequestParamBase {
    public static final String REQ_PARAM_AID = "aid";
    public static final String REQ_PARAM_KEY_HASH = "key_hash";
    public static final String REQ_PARAM_PACKAGENAME = "packagename";
    public static final String REQ_PARAM_PICINFO = "picinfo";
    public static final String REQ_PARAM_SOURCE = "source";
    public static final String REQ_PARAM_TITLE = "title";
    public static final String REQ_PARAM_TOKEN = "access_token";
    public static final String REQ_PARAM_VERSION = "version";
    public static final String REQ_UPLOAD_PIC_PARAM_IMG = "img";
    public static final String RESP_UPLOAD_PIC_PARAM_CODE = "code";
    public static final String RESP_UPLOAD_PIC_PARAM_DATA = "data";
    public static final int RESP_UPLOAD_PIC_SUCC_CODE = 1;
    private static final String SHARE_URL = "http://service.weibo.com/share/mobilesdk.php";
    public static final String UPLOAD_PIC_URL = "http://service.weibo.com/share/mobilesdk_uppic.php";
    private String mAppKey;
    private String mAppPackage;
    private WeiboAuthListener mAuthListener;
    private String mAuthListenerKey;
    private byte[] mBase64ImgData;
    private BaseRequest mBaseRequest;
    private String mHashKey;
    private String mShareContent;
    private String mToken;

    public ShareRequestParam(Context context) {
        super(context);
        this.mLaucher = BrowserLauncher.SHARE;
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestParamBase
    protected void onSetupRequestParam(Bundle data) {
        this.mAppKey = data.getString("source");
        this.mAppPackage = data.getString("packagename");
        this.mHashKey = data.getString("key_hash");
        this.mToken = data.getString("access_token");
        this.mAuthListenerKey = data.getString(AuthRequestParam.EXTRA_KEY_LISTENER);
        if (!TextUtils.isEmpty(this.mAuthListenerKey)) {
            this.mAuthListener = WeiboCallbackManager.getInstance(this.mContext).getWeiboAuthListener(this.mAuthListenerKey);
        }
        handleSharedMessage(data);
        this.mUrl = buildUrl("");
    }

    private void handleSharedMessage(Bundle bundle) {
        WeiboMultiMessage multiMessage = new WeiboMultiMessage();
        multiMessage.toObject(bundle);
        StringBuilder content = new StringBuilder();
        if (multiMessage.textObject instanceof TextObject) {
            TextObject textObject = multiMessage.textObject;
            content.append(textObject.text);
        }
        if (multiMessage.imageObject instanceof ImageObject) {
            ImageObject imageObject = multiMessage.imageObject;
            handleMblogPic(imageObject.imagePath, imageObject.imageData);
        }
        if (multiMessage.mediaObject instanceof TextObject) {
            TextObject textObject2 = (TextObject) multiMessage.mediaObject;
            content.append(textObject2.text);
        }
        if (multiMessage.mediaObject instanceof ImageObject) {
            ImageObject imageObject2 = (ImageObject) multiMessage.mediaObject;
            handleMblogPic(imageObject2.imagePath, imageObject2.imageData);
        }
        if (multiMessage.mediaObject instanceof WebpageObject) {
            WebpageObject webPageObject = (WebpageObject) multiMessage.mediaObject;
            content.append(" ").append(webPageObject.actionUrl);
        }
        if (multiMessage.mediaObject instanceof MusicObject) {
            MusicObject musicObject = (MusicObject) multiMessage.mediaObject;
            content.append(" ").append(musicObject.actionUrl);
        }
        if (multiMessage.mediaObject instanceof VideoObject) {
            VideoObject videoObject = (VideoObject) multiMessage.mediaObject;
            content.append(" ").append(videoObject.actionUrl);
        }
        if (multiMessage.mediaObject instanceof VoiceObject) {
            VoiceObject voiceObject = (VoiceObject) multiMessage.mediaObject;
            content.append(" ").append(voiceObject.actionUrl);
        }
        this.mShareContent = content.toString();
    }

    private void handleMblogPic(String picPath, byte[] thumbData) {
        FileInputStream fis;
        try {
            if (!TextUtils.isEmpty(picPath)) {
                File picFile = new File(picPath);
                if (picFile.exists() && picFile.canRead() && picFile.length() > 0) {
                    byte[] tmpPic = new byte[(int) picFile.length()];
                    FileInputStream fis2 = null;
                    try {
                        fis = new FileInputStream(picFile);
                    } catch (IOException e) {
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        fis.read(tmpPic);
                        this.mBase64ImgData = Base64.encodebyte(tmpPic);
                        if (fis != null) {
                            try {
                                fis.close();
                                return;
                            } catch (Exception e2) {
                                return;
                            }
                        }
                        return;
                    } catch (IOException e3) {
                        fis2 = fis;
                        if (fis2 != null) {
                            try {
                                fis2.close();
                            } catch (Exception e4) {
                            }
                        }
                        if (thumbData == null) {
                        } else {
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fis2 = fis;
                        if (fis2 != null) {
                            try {
                                fis2.close();
                            } catch (Exception e5) {
                            }
                        }
                        throw th;
                    }
                }
            }
        } catch (SecurityException e6) {
        }
        if (thumbData == null && thumbData.length > 0) {
            this.mBase64ImgData = Base64.encodebyte(thumbData);
        }
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestParamBase
    public void onCreateRequestParamBundle(Bundle data) {
        if (this.mBaseRequest != null) {
            this.mBaseRequest.toBundle(data);
        }
        if (!TextUtils.isEmpty(this.mAppPackage)) {
            this.mHashKey = MD5.hexdigest(Utility.getSign(this.mContext, this.mAppPackage));
        }
        data.putString("access_token", this.mToken);
        data.putString("source", this.mAppKey);
        data.putString("packagename", this.mAppPackage);
        data.putString("key_hash", this.mHashKey);
        data.putString(WBConstants.Base.APP_PKG, this.mAppPackage);
        data.putString(WBConstants.Base.APP_KEY, this.mAppKey);
        data.putInt(WBConstants.SDK.FLAG, WBConstants.WEIBO_FLAG_SDK);
        data.putString(WBConstants.SIGN, this.mHashKey);
        if (this.mAuthListener != null) {
            WeiboCallbackManager manager = WeiboCallbackManager.getInstance(this.mContext);
            this.mAuthListenerKey = manager.genCallbackKey();
            manager.setWeiboAuthListener(this.mAuthListenerKey, this.mAuthListener);
            data.putString(AuthRequestParam.EXTRA_KEY_LISTENER, this.mAuthListenerKey);
        }
    }

    @Override // com.sina.weibo.sdk.component.BrowserRequestParamBase
    public void execRequest(Activity act, int action) {
        if (action == 3) {
            sendSdkCancleResponse(act);
            WeiboSdkBrowser.closeBrowser(act, this.mAuthListenerKey, null);
        }
    }

    public boolean hasImage() {
        return this.mBase64ImgData != null && this.mBase64ImgData.length > 0;
    }

    public WeiboParameters buildUploadPicParam(WeiboParameters param) {
        if (hasImage()) {
            String imgDataBase64Str = new String(this.mBase64ImgData);
            param.put("img", imgDataBase64Str);
        }
        return param;
    }

    public String buildUrl(String picid) {
        Uri uri = Uri.parse(SHARE_URL);
        Uri.Builder builder = uri.buildUpon();
        builder.appendQueryParameter("title", this.mShareContent);
        builder.appendQueryParameter("version", WBConstants.WEIBO_SDK_VERSION_CODE);
        if (!TextUtils.isEmpty(this.mAppKey)) {
            builder.appendQueryParameter("source", this.mAppKey);
        }
        if (!TextUtils.isEmpty(this.mToken)) {
            builder.appendQueryParameter("access_token", this.mToken);
        }
        String aid = Utility.getAid(this.mContext, this.mAppKey);
        if (!TextUtils.isEmpty(aid)) {
            builder.appendQueryParameter("aid", aid);
        }
        if (!TextUtils.isEmpty(this.mAppPackage)) {
            builder.appendQueryParameter("packagename", this.mAppPackage);
        }
        if (!TextUtils.isEmpty(this.mHashKey)) {
            builder.appendQueryParameter("key_hash", this.mHashKey);
        }
        if (!TextUtils.isEmpty(picid)) {
            builder.appendQueryParameter(REQ_PARAM_PICINFO, picid);
        }
        return builder.build().toString();
    }

    private void sendSdkResponse(Activity activity, int errCode, String errMsg) {
        Bundle bundle = activity.getIntent().getExtras();
        if (bundle != null) {
            Intent intent = new Intent(WBConstants.ACTIVITY_REQ_SDK);
            intent.setFlags(131072);
            intent.setPackage(bundle.getString(WBConstants.Base.APP_PKG));
            intent.putExtras(bundle);
            intent.putExtra(WBConstants.Base.APP_PKG, activity.getPackageName());
            intent.putExtra(WBConstants.Response.ERRCODE, errCode);
            intent.putExtra(WBConstants.Response.ERRMSG, errMsg);
            try {
                activity.startActivityForResult(intent, WBConstants.SDK_ACTIVITY_FOR_RESULT_CODE);
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    public void sendSdkCancleResponse(Activity activity) {
        sendSdkResponse(activity, 1, "send cancel!!!");
    }

    public void sendSdkOkResponse(Activity activity) {
        sendSdkResponse(activity, 0, "send ok!!!");
    }

    public void sendSdkErrorResponse(Activity activity, String msg) {
        sendSdkResponse(activity, 2, msg);
    }

    public void setBaseRequest(BaseRequest request) {
        this.mBaseRequest = request;
    }

    public String getAppPackage() {
        return this.mAppPackage;
    }

    public void setAppPackage(String mAppPackage) {
        this.mAppPackage = mAppPackage;
    }

    public String getToken() {
        return this.mToken;
    }

    public void setToken(String mToken) {
        this.mToken = mToken;
    }

    public String getAppKey() {
        return this.mAppKey;
    }

    public void setAppKey(String mAppKey) {
        this.mAppKey = mAppKey;
    }

    public String getHashKey() {
        return this.mHashKey;
    }

    public String getShareContent() {
        return this.mShareContent;
    }

    public byte[] getBase64ImgData() {
        return this.mBase64ImgData;
    }

    public WeiboAuthListener getAuthListener() {
        return this.mAuthListener;
    }

    public String getAuthListenerKey() {
        return this.mAuthListenerKey;
    }

    public void setAuthListener(WeiboAuthListener mAuthListener) {
        this.mAuthListener = mAuthListener;
    }

    /* loaded from: classes.dex */
    public static class UploadPicResult {
        private int code = -2;
        private String picId;

        private UploadPicResult() {
        }

        public int getCode() {
            return this.code;
        }

        public String getPicId() {
            return this.picId;
        }

        public static UploadPicResult parse(String resp) {
            if (TextUtils.isEmpty(resp)) {
                return null;
            }
            UploadPicResult result = new UploadPicResult();
            try {
                JSONObject obj = new JSONObject(resp);
                result.code = obj.optInt("code", -2);
                result.picId = obj.optString("data", "");
                return result;
            } catch (JSONException e) {
                return result;
            }
        }
    }
}
