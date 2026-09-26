package com.sina.weibo.sdk.auth;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.constant.WBConstants;
import com.sina.weibo.sdk.utils.Utility;

/* loaded from: classes.dex */
public class AuthInfo {
    private String mAppKey;
    private String mKeyHash;
    private String mPackageName;
    private String mRedirectUrl;
    private String mScope;

    public AuthInfo(Context context, String appKey, String redirectUrl, String scope) {
        this.mAppKey = "";
        this.mRedirectUrl = "";
        this.mScope = "";
        this.mPackageName = "";
        this.mKeyHash = "";
        this.mAppKey = appKey;
        this.mRedirectUrl = redirectUrl;
        this.mScope = scope;
        this.mPackageName = context.getPackageName();
        this.mKeyHash = Utility.getSign(context, this.mPackageName);
    }

    public String getAppKey() {
        return this.mAppKey;
    }

    public String getRedirectUrl() {
        return this.mRedirectUrl;
    }

    public String getScope() {
        return this.mScope;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public String getKeyHash() {
        return this.mKeyHash;
    }

    public Bundle getAuthBundle() {
        Bundle mBundle = new Bundle();
        mBundle.putString(WBConstants.SSO_APP_KEY, this.mAppKey);
        mBundle.putString(WBConstants.SSO_REDIRECT_URL, this.mRedirectUrl);
        mBundle.putString("scope", this.mScope);
        mBundle.putString("packagename", this.mPackageName);
        mBundle.putString("key_hash", this.mKeyHash);
        return mBundle;
    }

    public static AuthInfo parseBundleData(Context context, Bundle data) {
        String appKey = data.getString(WBConstants.SSO_APP_KEY);
        String redirectUrl = data.getString(WBConstants.SSO_REDIRECT_URL);
        String scope = data.getString("scope");
        return new AuthInfo(context, appKey, redirectUrl, scope);
    }
}
