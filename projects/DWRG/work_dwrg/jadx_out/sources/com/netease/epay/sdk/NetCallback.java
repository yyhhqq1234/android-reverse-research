package com.netease.epay.sdk;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.ToastUtil;

/* loaded from: classes.dex */
public abstract class NetCallback<T> implements INetCallback<T> {
    @Override // com.netease.epay.sdk.base.network.INetCallback
    public void onResponseArrived() {
    }

    @Override // com.netease.epay.sdk.base.network.INetCallback
    public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
        ToastUtil.show(activity, response.retdesc);
    }

    @Override // com.netease.epay.sdk.base.network.INetCallback
    public boolean parseFailureBySelf(NewBaseResponse response) {
        return false;
    }

    @Override // com.netease.epay.sdk.base.network.INetCallback
    public void onRiskBlock(FragmentActivity activity, NewBaseResponse response) {
        ExitUtil.failCallback(response.retcode, response.retdesc);
    }

    @Override // com.netease.epay.sdk.base.network.INetCallback
    public void onUIChanged(FragmentActivity activity, NewBaseResponse response) {
    }

    @Override // com.netease.epay.sdk.base.network.INetCallback
    public void onLaterDeal(FragmentActivity activity, NewBaseResponse response) {
    }
}
