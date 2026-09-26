package com.sina.weibo.sdk.auth.sso;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.netease.download.Const;
import com.sina.sso.RemoteSSO;
import com.sina.weibo.sdk.WeiboAppManager;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.cmd.WbAppActivator;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.exception.WeiboDialogException;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.register.mobile.MobileRegisterActivity;
import com.sina.weibo.sdk.statistic.WBAgent;
import com.sina.weibo.sdk.utils.AidTask;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.SecurityHelper;
import com.sina.weibo.sdk.utils.Utility;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class SsoHandler {
    public static final String AUTH_FAILED_MSG = "auth failed!!!!!";
    public static final String AUTH_FAILED_NOT_INSTALL_MSG = "not install weibo client!!!!!";
    private static final String DEFAULT_WEIBO_REMOTE_SSO_SERVICE_NAME = "com.sina.weibo.remotessoservice";
    private static final int REQUEST_CODE_MOBILE_REGISTER = 40000;
    private static final int REQUEST_CODE_SSO_AUTH = 32973;
    private static final String TAG = "Weibo_SSO_login";
    private Activity mAuthActivity;
    private AuthInfo mAuthInfo;
    private WeiboAuthListener mAuthListener;
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.sina.weibo.sdk.auth.sso.SsoHandler.1
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            SsoHandler.this.mWebAuthHandler.anthorize(SsoHandler.this.mAuthListener);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            RemoteSSO remoteSSOservice = RemoteSSO.Stub.asInterface(service);
            try {
                String ssoPackageName = remoteSSOservice.getPackageName();
                String ssoActivityName = remoteSSOservice.getActivityName();
                SsoHandler.this.mAuthActivity.getApplicationContext().unbindService(SsoHandler.this.mConnection);
                if (!SsoHandler.this.startSingleSignOn(ssoPackageName, ssoActivityName)) {
                    SsoHandler.this.mWebAuthHandler.anthorize(SsoHandler.this.mAuthListener);
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    };
    private int mSSOAuthRequestCode;
    private WebAuthHandler mWebAuthHandler;
    private WeiboAppManager.WeiboInfo mWeiboInfo;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum AuthType {
        ALL,
        SsoOnly,
        WebOnly;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static AuthType[] valuesCustom() {
            AuthType[] valuesCustom = values();
            int length = valuesCustom.length;
            AuthType[] authTypeArr = new AuthType[length];
            System.arraycopy(valuesCustom, 0, authTypeArr, 0, length);
            return authTypeArr;
        }
    }

    public SsoHandler(Activity activity, AuthInfo weiboAuthInfo) {
        this.mAuthActivity = activity;
        this.mAuthInfo = weiboAuthInfo;
        this.mWebAuthHandler = new WebAuthHandler(activity, weiboAuthInfo);
        this.mWeiboInfo = WeiboAppManager.getInstance(activity).getWeiboInfo();
        AidTask.getInstance(this.mAuthActivity).aidTaskInit(weiboAuthInfo.getAppKey());
    }

    public void authorize(WeiboAuthListener listener) {
        authorize(REQUEST_CODE_SSO_AUTH, listener, AuthType.ALL);
        WbAppActivator.getInstance(this.mAuthActivity, this.mAuthInfo.getAppKey()).activateApp();
    }

    public void authorizeClientSso(WeiboAuthListener listener) {
        authorize(REQUEST_CODE_SSO_AUTH, listener, AuthType.SsoOnly);
        WbAppActivator.getInstance(this.mAuthActivity, this.mAuthInfo.getAppKey()).activateApp();
    }

    public void authorizeWeb(WeiboAuthListener listener) {
        authorize(REQUEST_CODE_SSO_AUTH, listener, AuthType.WebOnly);
        WbAppActivator.getInstance(this.mAuthActivity, this.mAuthInfo.getAppKey()).activateApp();
    }

    private void authorize(int requestCode, WeiboAuthListener listener, AuthType authType) {
        this.mSSOAuthRequestCode = requestCode;
        this.mAuthListener = listener;
        boolean onlyClientSso = false;
        if (authType == AuthType.SsoOnly) {
            onlyClientSso = true;
        }
        if (authType == AuthType.WebOnly) {
            if (listener != null) {
                this.mWebAuthHandler.anthorize(listener);
                return;
            }
            return;
        }
        boolean bindSucced = bindRemoteSSOService(this.mAuthActivity.getApplicationContext());
        if (!bindSucced) {
            if (onlyClientSso) {
                if (this.mAuthListener != null) {
                    this.mAuthListener.onWeiboException(new WeiboException(AUTH_FAILED_NOT_INSTALL_MSG));
                    return;
                }
                return;
            }
            this.mWebAuthHandler.anthorize(this.mAuthListener);
        }
    }

    public void authorizeCallBack(int requestCode, int resultCode, Intent data) {
        LogUtil.d(TAG, "requestCode: " + requestCode + ", resultCode: " + resultCode + ", data: " + data);
        if (requestCode == this.mSSOAuthRequestCode) {
            if (resultCode == -1) {
                if (SecurityHelper.checkResponseAppLegal(this.mAuthActivity, this.mWeiboInfo, data)) {
                    String error = data.getStringExtra("error");
                    if (error == null) {
                        error = data.getStringExtra("error_type");
                    }
                    if (error != null) {
                        if (error.equals("access_denied") || error.equals("OAuthAccessDeniedException")) {
                            LogUtil.d(TAG, "Login canceled by user.");
                            this.mAuthListener.onCancel();
                            return;
                        }
                        String description = data.getStringExtra("error_description");
                        if (description != null) {
                            error = String.valueOf(error) + Const.RESP_CONTENT_SPIT2 + description;
                        }
                        LogUtil.d(TAG, "Login failed: " + error);
                        this.mAuthListener.onWeiboException(new WeiboDialogException(error, resultCode, description));
                        return;
                    }
                    Bundle bundle = data.getExtras();
                    Oauth2AccessToken accessToken = Oauth2AccessToken.parseAccessToken(bundle);
                    if (accessToken != null && accessToken.isSessionValid()) {
                        LogUtil.d(TAG, "Login Success! " + accessToken.toString());
                        this.mAuthListener.onComplete(bundle);
                        return;
                    } else {
                        LogUtil.d(TAG, "Failed to receive access token by SSO");
                        this.mWebAuthHandler.anthorize(this.mAuthListener);
                        return;
                    }
                }
                return;
            }
            if (resultCode == 0) {
                if (data != null) {
                    LogUtil.d(TAG, "Login failed: " + data.getStringExtra("error"));
                    this.mAuthListener.onWeiboException(new WeiboDialogException(data.getStringExtra("error"), data.getIntExtra("error_code", -1), data.getStringExtra("failing_url")));
                    return;
                } else {
                    LogUtil.d(TAG, "Login canceled by user.");
                    this.mAuthListener.onCancel();
                    return;
                }
            }
            return;
        }
        if (requestCode == REQUEST_CODE_MOBILE_REGISTER) {
            if (resultCode == -1) {
                Bundle bundle2 = data.getExtras();
                Oauth2AccessToken accessToken2 = Oauth2AccessToken.parseAccessToken(bundle2);
                if (accessToken2 != null && accessToken2.isSessionValid()) {
                    LogUtil.d(TAG, "Login Success! " + accessToken2.toString());
                    this.mAuthListener.onComplete(bundle2);
                    return;
                }
                return;
            }
            if (resultCode == 0) {
                if (data != null) {
                    LogUtil.d(TAG, "Login failed: " + data.getStringExtra("error"));
                    String error2 = data.getStringExtra("error");
                    if (error2 == null) {
                        error2 = data.getStringExtra("error_type");
                    }
                    if (error2 != null) {
                        this.mAuthListener.onWeiboException(new WeiboDialogException(data.getStringExtra("error"), data.getIntExtra("error_code", -1), data.getStringExtra("error_description")));
                        return;
                    }
                    return;
                }
                LogUtil.d(TAG, "Login canceled by user.");
                this.mAuthListener.onCancel();
            }
        }
    }

    public static ComponentName isServiceExisted(Context context, String packageName) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningServiceInfo> serviceList = activityManager.getRunningServices(Integer.MAX_VALUE);
        for (ActivityManager.RunningServiceInfo runningServiceInfo : serviceList) {
            ComponentName serviceName = runningServiceInfo.service;
            if (serviceName.getPackageName().equals(packageName) && serviceName.getClassName().equals(String.valueOf(packageName) + ".business.RemoteSSOService")) {
                return serviceName;
            }
        }
        return null;
    }

    private boolean bindRemoteSSOService(Context context) {
        if (!isWeiboAppInstalled()) {
            return false;
        }
        String pkgName = this.mWeiboInfo.getPackageName();
        Intent intent = new Intent(DEFAULT_WEIBO_REMOTE_SSO_SERVICE_NAME);
        intent.setPackage(pkgName);
        return context.bindService(intent, this.mConnection, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean startSingleSignOn(String ssoPackageName, String ssoActivityName) {
        boolean bSucceed = true;
        Intent intent = new Intent();
        intent.setClassName(ssoPackageName, ssoActivityName);
        intent.putExtras(this.mWebAuthHandler.getAuthInfo().getAuthBundle());
        intent.putExtra(WBConstants.COMMAND_TYPE_KEY, 3);
        String mstartTime = String.valueOf(System.currentTimeMillis());
        intent.putExtra(WBConstants.TRAN, mstartTime);
        addEventLog(this.mAuthActivity, mstartTime, WBConstants.ACTION_LOG_TYPE_SSO);
        intent.putExtra("aid", Utility.getAid(this.mAuthActivity, this.mAuthInfo.getAppKey()));
        if (!SecurityHelper.validateAppSignatureForIntent(this.mAuthActivity, intent)) {
            return false;
        }
        String aid = Utility.getAid(this.mAuthActivity, this.mAuthInfo.getAppKey());
        if (!TextUtils.isEmpty(aid)) {
            intent.putExtra("aid", aid);
        }
        try {
            this.mAuthActivity.startActivityForResult(intent, this.mSSOAuthRequestCode);
        } catch (ActivityNotFoundException e) {
            bSucceed = false;
        }
        return bSucceed;
    }

    public boolean isWeiboAppInstalled() {
        return this.mWeiboInfo != null && this.mWeiboInfo.isLegal();
    }

    public void registerOrLoginByMobile(String title, WeiboAuthListener listener) {
        this.mAuthListener = listener;
        Intent intentTemp = new Intent(this.mAuthActivity, (Class<?>) MobileRegisterActivity.class);
        Bundle param = this.mAuthInfo.getAuthBundle();
        param.putString(MobileRegisterActivity.REGISTER_TITLE, title);
        intentTemp.putExtras(param);
        this.mAuthActivity.startActivityForResult(intentTemp, REQUEST_CODE_MOBILE_REGISTER);
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
