package com.netease.mpay;

/* loaded from: classes.dex */
public interface BackgroundAuthenticationCallback {
    void onLoginFail(String str);

    void onLoginSuccess(User user);
}
