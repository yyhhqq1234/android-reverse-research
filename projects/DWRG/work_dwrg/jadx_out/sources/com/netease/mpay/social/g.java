package com.netease.mpay.social;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.netease.mpay.e.b.o;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;

/* loaded from: classes.dex */
public class g {
    public static Oauth2AccessToken a(Context context, String str, String str2) {
        if (context == null) {
            return null;
        }
        Oauth2AccessToken oauth2AccessToken = new Oauth2AccessToken();
        SharedPreferences sharedPreferences = context.getSharedPreferences("com_weibo_sdk_android", 32768);
        o b = new com.netease.mpay.e.b(context, str).c().b(str2);
        oauth2AccessToken.setUid(sharedPreferences.getString(a("uid", b.c), ""));
        oauth2AccessToken.setToken(sharedPreferences.getString(a("access_token", b.c), ""));
        oauth2AccessToken.setExpiresTime(sharedPreferences.getLong(a("expires_in", b.c), 0L));
        return oauth2AccessToken;
    }

    private static String a(String str, String str2) {
        return str + "_" + str2;
    }

    public static void a(Context context, String str, String str2, Oauth2AccessToken oauth2AccessToken) {
        if (context == null || oauth2AccessToken == null) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("com_weibo_sdk_android", 32768).edit();
        o b = new com.netease.mpay.e.b(context, str).c().b(str2);
        edit.putString(a("uid", b.c), oauth2AccessToken.getUid());
        edit.putString(a("access_token", b.c), oauth2AccessToken.getToken());
        edit.putLong(a("expires_in", b.c), oauth2AccessToken.getExpiresTime());
        edit.commit();
    }

    public static boolean a(Oauth2AccessToken oauth2AccessToken) {
        return (oauth2AccessToken == null || TextUtils.isEmpty(oauth2AccessToken.getUid()) || TextUtils.isEmpty(oauth2AccessToken.getToken()) || oauth2AccessToken.getExpiresTime() <= 0) ? false : true;
    }
}
