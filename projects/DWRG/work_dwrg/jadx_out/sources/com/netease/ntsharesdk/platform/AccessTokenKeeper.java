package com.netease.ntsharesdk.platform;

import android.content.Context;
import android.content.SharedPreferences;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;

/* loaded from: classes.dex */
public class AccessTokenKeeper {
    private static final String KEY_ACCESS_TOKEN = "access_token";
    private static final String KEY_EXPIRES_IN = "expires_in";
    private static final String KEY_REFRESH_TOKEN = "refresh_token";
    private static final String KEY_UID = "uid";
    private static final String PREFERENCES_NAME = "com_weibo_sdk_android";

    public static void writeAccessToken(Context context, Oauth2AccessToken token) {
        if (context != null && token != null) {
            SharedPreferences pref = context.getSharedPreferences(PREFERENCES_NAME, 32768);
            SharedPreferences.Editor editor = pref.edit();
            editor.putString("uid", token.getUid());
            editor.putString("access_token", token.getToken());
            editor.putString("refresh_token", token.getRefreshToken());
            editor.putLong("expires_in", token.getExpiresTime());
            editor.commit();
        }
    }

    public static Oauth2AccessToken readAccessToken(Context context) {
        if (context == null) {
            return null;
        }
        Oauth2AccessToken token = new Oauth2AccessToken();
        SharedPreferences pref = context.getSharedPreferences(PREFERENCES_NAME, 32768);
        token.setUid(pref.getString("uid", ""));
        token.setToken(pref.getString("access_token", ""));
        token.setRefreshToken(pref.getString("refresh_token", ""));
        token.setExpiresTime(pref.getLong("expires_in", 0L));
        return token;
    }

    public static void clear(Context context) {
        if (context != null) {
            SharedPreferences pref = context.getSharedPreferences(PREFERENCES_NAME, 32768);
            SharedPreferences.Editor editor = pref.edit();
            editor.clear();
            editor.commit();
        }
    }
}
