package com.sina.weibo.sdk.api.share;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.ApiUtils;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.api.WeiboMessage;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.api.share.IWeiboHandler;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.cmd.WbAppActivator;
import com.sina.weibo.sdk.component.ShareRequestParam;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.constant.WBPageConstants;
import com.sina.weibo.sdk.exception.WeiboShareException;
import com.sina.weibo.sdk.statistic.WBAgent;
import com.sina.weibo.sdk.utils.AidTask;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;
import com.sina.weibo.sdk.utils.Utility;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WeiboShareAPIImpl implements IWeiboShareAPI {
    private static final String TAG = WeiboShareAPIImpl.class.getName();
    private String mAppKey;
    private Context mContext;
    private Dialog mDownloadConfirmDialog = null;
    private IWeiboDownloadListener mDownloadListener;
    private boolean mNeedDownloadWeibo;
    private WeiboAppManager.WeiboInfo mWeiboInfo;

    public WeiboShareAPIImpl(Context context, String appKey, boolean needDownloadWeibo) {
        this.mWeiboInfo = null;
        this.mNeedDownloadWeibo = true;
        this.mContext = context;
        this.mAppKey = appKey;
        this.mNeedDownloadWeibo = needDownloadWeibo;
        this.mWeiboInfo = WeiboAppManager.getInstance(context).getWeiboInfo();
        if (this.mWeiboInfo != null) {
            LogUtil.d(TAG, this.mWeiboInfo.toString());
        } else {
            LogUtil.d(TAG, "WeiboInfo is null");
        }
        AidTask.getInstance(context).aidTaskInit(appKey);
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public int getWeiboAppSupportAPI() {
        if (this.mWeiboInfo == null || !this.mWeiboInfo.isLegal()) {
            return -1;
        }
        return this.mWeiboInfo.getSupportApi();
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean isWeiboAppInstalled() {
        return this.mWeiboInfo != null && this.mWeiboInfo.isLegal();
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean isWeiboAppSupportAPI() {
        return getWeiboAppSupportAPI() >= 10350;
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean isSupportWeiboPay() {
        return getWeiboAppSupportAPI() >= 10353;
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean registerApp() {
        sendBroadcast(this.mContext, WBConstants.ACTION_WEIBO_REGISTER, this.mAppKey, null, null);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean handleWeiboResponse(Intent intent, IWeiboHandler.Response response) {
        String appPackage = intent.getStringExtra(WBConstants.Base.APP_PKG);
        String transaction = intent.getStringExtra(WBConstants.TRAN);
        if (TextUtils.isEmpty(appPackage)) {
            LogUtil.e(TAG, "handleWeiboResponse faild appPackage is null");
            return false;
        }
        if (!(response instanceof Activity)) {
            LogUtil.e(TAG, "handleWeiboResponse faild handler is not Activity");
            return false;
        }
        Activity act = (Activity) response;
        String callPkg = act.getCallingPackage();
        LogUtil.d(TAG, "handleWeiboResponse getCallingPackage : " + callPkg);
        if (TextUtils.isEmpty(transaction)) {
            LogUtil.e(TAG, "handleWeiboResponse faild intent _weibo_transaction is null");
            return false;
        }
        if (!ApiUtils.validateWeiboSign(this.mContext, appPackage) && !appPackage.equals(act.getPackageName())) {
            LogUtil.e(TAG, "handleWeiboResponse faild appPackage validateSign faild");
            return false;
        }
        SendMessageToWeiboResponse data = new SendMessageToWeiboResponse(intent.getExtras());
        response.onResponse(data);
        return true;
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean handleWeiboRequest(Intent intent, IWeiboHandler.Request handler) {
        if (intent == null || handler == null) {
            return false;
        }
        String appPackage = intent.getStringExtra(WBConstants.Base.APP_PKG);
        String transaction = intent.getStringExtra(WBConstants.TRAN);
        if (TextUtils.isEmpty(appPackage)) {
            LogUtil.e(TAG, "handleWeiboRequest faild appPackage validateSign faild");
            handler.onRequest(null);
            return false;
        }
        if (TextUtils.isEmpty(transaction)) {
            LogUtil.e(TAG, "handleWeiboRequest faild intent _weibo_transaction is null");
            handler.onRequest(null);
            return false;
        }
        if (!ApiUtils.validateWeiboSign(this.mContext, appPackage)) {
            LogUtil.e(TAG, "handleWeiboRequest faild appPackage validateSign faild");
            handler.onRequest(null);
            return false;
        }
        ProvideMessageForWeiboRequest data = new ProvideMessageForWeiboRequest(intent.getExtras());
        handler.onRequest(data);
        return true;
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean launchWeibo(Activity act) {
        if (!isWeiboAppInstalled()) {
            LogUtil.e(TAG, "launchWeibo faild WeiboInfo is null");
            return false;
        }
        try {
            act.startActivity(act.getPackageManager().getLaunchIntentForPackage(this.mWeiboInfo.getPackageName()));
            return true;
        } catch (Exception e) {
            LogUtil.e(TAG, e.getMessage());
            return false;
        }
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean sendRequest(Activity act, BaseRequest request) {
        if (request == null) {
            LogUtil.e(TAG, "sendRequest faild request is null");
            return false;
        }
        try {
            if (!checkEnvironment(this.mNeedDownloadWeibo)) {
                return false;
            }
            if (!request.check(this.mContext, this.mWeiboInfo, new VersionCheckHandler())) {
                LogUtil.e(TAG, "sendRequest faild request check faild");
                return false;
            }
            WbAppActivator.getInstance(this.mContext, this.mAppKey).activateApp();
            Bundle data = new Bundle();
            request.toBundle(data);
            return launchWeiboActivity(act, WBConstants.ACTIVITY_WEIBO, this.mWeiboInfo.getPackageName(), this.mAppKey, data, WBConstants.ACTION_LOG_TYPE_SHARE);
        } catch (Exception e) {
            LogUtil.e(TAG, e.getMessage());
            return false;
        }
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean sendRequest(Activity act, BaseRequest request, AuthInfo authInfo, String token, WeiboAuthListener authListener) {
        if (request == null) {
            LogUtil.e(TAG, "sendRequest faild request is null !");
            return false;
        }
        if (isWeiboAppInstalled() && isWeiboAppSupportAPI()) {
            int supportApi = getWeiboAppSupportAPI();
            if (supportApi >= 10351) {
                return sendRequest(act, request);
            }
            if (request instanceof SendMultiMessageToWeiboRequest) {
                SendMultiMessageToWeiboRequest multiMessageReq = (SendMultiMessageToWeiboRequest) request;
                SendMessageToWeiboRequest singleMessageReq = new SendMessageToWeiboRequest();
                singleMessageReq.packageName = multiMessageReq.packageName;
                singleMessageReq.transaction = multiMessageReq.transaction;
                singleMessageReq.message = adapterMultiMessage2SingleMessage(multiMessageReq.multiMessage);
                return sendRequest(act, singleMessageReq);
            }
            return sendRequest(act, request);
        }
        return startShareWeiboActivity(act, token, request, authListener);
    }

    private WeiboMessage adapterMultiMessage2SingleMessage(WeiboMultiMessage multiMessage) {
        if (multiMessage == null) {
            return new WeiboMessage();
        }
        Bundle data = new Bundle();
        multiMessage.toBundle(data);
        return new WeiboMessage(data);
    }

    private boolean startShareWeiboActivity(Activity act, String token, BaseRequest request, WeiboAuthListener authListener) {
        try {
            WbAppActivator.getInstance(this.mContext, this.mAppKey).activateApp();
            new Bundle();
            String appPackage = act.getPackageName();
            ShareRequestParam param = new ShareRequestParam(act);
            param.setToken(token);
            param.setAppKey(this.mAppKey);
            param.setAppPackage(appPackage);
            param.setBaseRequest(request);
            param.setSpecifyTitle("微博分享");
            param.setAuthListener(authListener);
            Intent intent = new Intent(act, (Class<?>) WeiboSdkBrowser.class);
            intent.putExtras(param.createRequestParamBundle());
            act.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean sendResponse(BaseResponse response) {
        if (response == null) {
            LogUtil.e(TAG, "sendResponse failed response null");
            return false;
        }
        if (!response.check(this.mContext, new VersionCheckHandler())) {
            LogUtil.e(TAG, "sendResponse check fail");
            return false;
        }
        Bundle data = new Bundle();
        response.toBundle(data);
        sendBroadcast(this.mContext, WBConstants.ACTION_WEIBO_RESPONSE, this.mAppKey, response.reqPackageName, data);
        return true;
    }

    private void registerWeiboDownloadListener(IWeiboDownloadListener listener) {
        this.mDownloadListener = listener;
    }

    private boolean checkEnvironment(boolean bShowDownloadDialog) throws WeiboShareException {
        if (!isWeiboAppInstalled()) {
            if (bShowDownloadDialog) {
                if (this.mDownloadConfirmDialog == null) {
                    this.mDownloadConfirmDialog = WeiboDownloader.createDownloadConfirmDialog(this.mContext, this.mDownloadListener);
                    this.mDownloadConfirmDialog.show();
                } else if (!this.mDownloadConfirmDialog.isShowing()) {
                    this.mDownloadConfirmDialog.show();
                }
                return false;
            }
            throw new WeiboShareException("Weibo is not installed!");
        }
        if (!isWeiboAppSupportAPI()) {
            throw new WeiboShareException("Weibo do not support share api!");
        }
        if (!ApiUtils.validateWeiboSign(this.mContext, this.mWeiboInfo.getPackageName())) {
            throw new WeiboShareException("Weibo signature is incorrect!");
        }
        return true;
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean launchWeiboPay(Activity act, String payArgs) {
        Bundle bundle = new Bundle();
        bundle.putString("rawdata", payArgs);
        bundle.putInt(WBConstants.COMMAND_TYPE_KEY, 4);
        bundle.putString(WBConstants.TRAN, String.valueOf(System.currentTimeMillis()));
        return launchWeiboActivity(act, WBConstants.ACTIVITY_WEIBO_PAY, this.mWeiboInfo.getPackageName(), this.mAppKey, bundle, "pay");
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public boolean launchWeiboPayLogin(Activity act, String payArgs) {
        if (!Utility.isWeiBoVersionSupportNewPay(act).booleanValue()) {
            return launchWeiboPay(act, payArgs);
        }
        if (act == null) {
            LogUtil.e(TAG, "launchWeiboActivity fail, invalid arguments");
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString("rawdata", payArgs);
        bundle.putInt(WBConstants.COMMAND_TYPE_KEY, 4);
        String mstartTime = String.valueOf(System.currentTimeMillis());
        bundle.putString(WBConstants.TRAN, mstartTime);
        Intent intent = new Intent();
        intent.setPackage(this.mWeiboInfo.getPackageName());
        intent.setData(Uri.parse(WBPageConstants.Scheme.SDK_DELIVER_SCHEME));
        String appPackage = act.getPackageName();
        intent.putExtra(WBConstants.Base.SDK_VER, WBConstants.WEIBO_SDK_VERSION_CODE);
        intent.putExtra(WBConstants.Base.APP_PKG, appPackage);
        intent.putExtra(WBConstants.Base.APP_KEY, this.mAppKey);
        intent.putExtra(WBConstants.SDK.FLAG, WBConstants.WEIBO_FLAG_SDK);
        intent.putExtra(WBConstants.SIGN, MD5.hexdigest(Utility.getSign(act, appPackage)));
        intent.putExtra(WBConstants.SDK_REAL_ACTION, WBConstants.ACTIVITY_WEIBO_PAY);
        intent.putExtra(WBConstants.SDK_IS_SCHEME, false);
        intent.putExtra(WBConstants.SDK_REQUESTCODE, WBConstants.SDK_ACTIVITY_FOR_RESULT_CODE);
        intent.putExtra(WBConstants.TRAN, mstartTime);
        addEventLog(act, mstartTime, "pay");
        intent.putExtras(bundle);
        try {
            LogUtil.d(TAG, "launchWeiboActivity intent=" + intent + ", extra=" + intent.getExtras());
            act.startActivityForResult(intent, WBConstants.SDK_ACTIVITY_FOR_RESULT_CODE);
            return true;
        } catch (ActivityNotFoundException e) {
            LogUtil.e(TAG, e.getMessage());
            return false;
        }
    }

    private boolean launchWeiboActivity(Activity activity, String action, String pkgName, String appkey, Bundle data, String type) {
        if (activity == null || TextUtils.isEmpty(action) || TextUtils.isEmpty(pkgName) || TextUtils.isEmpty(appkey)) {
            LogUtil.e(TAG, "launchWeiboActivity fail, invalid arguments");
            return false;
        }
        Intent intent = new Intent();
        intent.setPackage(pkgName);
        intent.setAction(action);
        String appPackage = activity.getPackageName();
        intent.putExtra(WBConstants.Base.SDK_VER, WBConstants.WEIBO_SDK_VERSION_CODE);
        intent.putExtra(WBConstants.Base.APP_PKG, appPackage);
        intent.putExtra(WBConstants.Base.APP_KEY, appkey);
        intent.putExtra(WBConstants.SDK.FLAG, WBConstants.WEIBO_FLAG_SDK);
        intent.putExtra(WBConstants.SIGN, MD5.hexdigest(Utility.getSign(activity, appPackage)));
        String mstartTime = String.valueOf(System.currentTimeMillis());
        intent.putExtra(WBConstants.TRAN, mstartTime);
        addEventLog(activity, mstartTime, type);
        if (data != null) {
            intent.putExtras(data);
        }
        try {
            LogUtil.d(TAG, "launchWeiboActivity intent=" + intent + ", extra=" + intent.getExtras());
            activity.startActivityForResult(intent, WBConstants.SDK_ACTIVITY_FOR_RESULT_CODE);
            return true;
        } catch (ActivityNotFoundException e) {
            LogUtil.e(TAG, e.getMessage());
            return false;
        }
    }

    private void sendBroadcast(Context context, String action, String key, String packageName, Bundle data) {
        Intent intent = new Intent(action);
        String appPackage = context.getPackageName();
        intent.putExtra(WBConstants.Base.SDK_VER, WBConstants.WEIBO_SDK_VERSION_CODE);
        intent.putExtra(WBConstants.Base.APP_PKG, appPackage);
        intent.putExtra(WBConstants.Base.APP_KEY, key);
        intent.putExtra(WBConstants.SDK.FLAG, WBConstants.WEIBO_FLAG_SDK);
        intent.putExtra(WBConstants.SIGN, MD5.hexdigest(Utility.getSign(context, appPackage)));
        if (!TextUtils.isEmpty(packageName)) {
            intent.setPackage(packageName);
        }
        if (data != null) {
            intent.putExtras(data);
        }
        LogUtil.d(TAG, "intent=" + intent + ", extra=" + intent.getExtras());
        context.sendBroadcast(intent, WBConstants.ACTION_WEIBO_SDK_PERMISSION);
    }

    @Override // com.sina.weibo.sdk.api.share.IWeiboShareAPI
    public void shareMessageToWeiyou(Context context, Bundle bundle) {
        Utility.shareMessagetoWeibo(context, WBPageConstants.Scheme.SHARETOWEIYOU, bundle);
    }

    public void addEventLog(Context context, String mstartTime, String type) {
        HashMap<String, String> extend = new HashMap<>();
        extend.put(WBConstants.ACTION_START_TIME, mstartTime);
        try {
            WBAgent.onEvent(context, type, extend);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
