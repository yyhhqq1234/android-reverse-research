package com.netease.mpay;

/* loaded from: classes.dex */
public interface UserTicketCallback {
    void onFailure(int i, String str);

    void onSuccess(String str);
}
