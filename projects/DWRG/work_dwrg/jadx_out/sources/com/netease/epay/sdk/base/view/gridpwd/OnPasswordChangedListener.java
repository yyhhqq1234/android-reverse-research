package com.netease.epay.sdk.base.view.gridpwd;

/* loaded from: classes.dex */
public interface OnPasswordChangedListener {
    void onMaxLength(String str);

    String randomKey16Byte();
}
