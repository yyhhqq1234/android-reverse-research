package com.netease.mpay;

/* loaded from: classes.dex */
public interface AuthenticationCallback {
    void onDialogFinish();

    void onEnterGame(String str, String str2);

    void onGuestBindSuccess(User user);

    void onLoginSuccess(User user);

    void onLogout(String str);
}
