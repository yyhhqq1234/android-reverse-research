package com.netease.epay.sdk.base.view.gridpwd;

/* loaded from: classes.dex */
interface PasswordView {
    void clearPassword();

    String getPassWord(String str);

    void setOnPasswordChangedListener(OnPasswordChangedListener onPasswordChangedListener);

    void setPasswordVisibility(boolean z);

    void togglePasswordVisibility();
}
