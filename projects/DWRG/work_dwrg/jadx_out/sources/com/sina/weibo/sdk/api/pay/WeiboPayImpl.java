package com.sina.weibo.sdk.api.pay;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.api.share.IWeiboDownloadListener;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.exception.WeiboShareException;
import com.sina.weibo.sdk.utils.AidTask;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;
import com.sina.weibo.sdk.utils.Utility;

/* loaded from: classes.dex */
public class WeiboPayImpl {
    private static final String TAG = WeiboPayImpl.class.getName();
    private String mAppKey;
    private Context mContext;
    private IWeiboDownloadListener mDownloadListener;
    private WeiboAppManager.WeiboInfo mWeiboInfo;
    private boolean mNeedDownloadWeibo = true;
    private Dialog mDownloadConfirmDialog = null;

    public WeiboPayImpl(Context context, String appKey, boolean needDownloadWeibo) {
        this.mWeiboInfo = null;
        this.mContext = context;
        this.mAppKey = appKey;
        this.mWeiboInfo = WeiboAppManager.getInstance(context).getWeiboInfo();
        if (this.mWeiboInfo != null) {
            LogUtil.d(TAG, this.mWeiboInfo.toString());
        } else {
            LogUtil.d(TAG, "WeiboInfo is null");
        }
        AidTask.getInstance(context).aidTaskInit(appKey);
    }

    public boolean launchWeiboPay(Activity act, String payArgs) {
        Bundle bundle = new Bundle();
        bundle.putString("rawdata", payArgs);
        bundle.putInt(WBConstants.COMMAND_TYPE_KEY, 4);
        bundle.putString(WBConstants.TRAN, String.valueOf(System.currentTimeMillis()));
        return launchWeiboActivity(act, WBConstants.ACTIVITY_WEIBO_PAY, this.mWeiboInfo.getPackageName(), this.mAppKey, bundle);
    }

    private boolean launchWeiboActivity(Activity activity, String action, String pkgName, String appkey, Bundle data) {
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

    public int getWeiboAppSupportAPI() {
        if (this.mWeiboInfo == null || !this.mWeiboInfo.isLegal()) {
            return -1;
        }
        return this.mWeiboInfo.getSupportApi();
    }

    public boolean isWeiboAppInstalled() {
        return true;
    }

    public boolean isWeiboAppSupportAPI() {
        return getWeiboAppSupportAPI() >= 10350;
    }

    public boolean isSupportWeiboPay() {
        return getWeiboAppSupportAPI() >= 10353;
    }

    public void registerWeiboDownloadListener(IWeiboDownloadListener listener) {
        this.mDownloadListener = listener;
    }

    private boolean checkEnvironment(boolean bShowDownloadDialog) throws WeiboShareException {
        return true;
    }
}
