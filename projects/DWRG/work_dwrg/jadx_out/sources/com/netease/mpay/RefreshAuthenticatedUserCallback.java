package com.netease.mpay;

/* loaded from: classes.dex */
public interface RefreshAuthenticatedUserCallback {
    void onFail(String str);

    void onSuccess(User user);
}
