package com.netease.epay.sdk.base.network;

import android.support.v4.app.FragmentActivity;

/* loaded from: classes.dex */
public interface INetCallback<T> {
    void onLaterDeal(FragmentActivity fragmentActivity, NewBaseResponse newBaseResponse);

    void onResponseArrived();

    void onRiskBlock(FragmentActivity fragmentActivity, NewBaseResponse newBaseResponse);

    void onUIChanged(FragmentActivity fragmentActivity, NewBaseResponse newBaseResponse);

    void onUnhandledFail(FragmentActivity fragmentActivity, NewBaseResponse newBaseResponse);

    boolean parseFailureBySelf(NewBaseResponse newBaseResponse);

    void success(FragmentActivity fragmentActivity, T t);
}
