package com.netease.mpay;

/* loaded from: classes.dex */
public interface PrepareAlitvpayCallback {
    void onFailed(String str);

    void onSucessed(String str, String str2, String str3, String str4);
}
