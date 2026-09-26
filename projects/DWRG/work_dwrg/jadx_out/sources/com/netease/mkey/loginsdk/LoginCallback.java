package com.netease.mkey.loginsdk;

/* loaded from: classes.dex */
public interface LoginCallback {
    void onCancel();

    void onError(int i, String str);

    void onSuccess();
}
