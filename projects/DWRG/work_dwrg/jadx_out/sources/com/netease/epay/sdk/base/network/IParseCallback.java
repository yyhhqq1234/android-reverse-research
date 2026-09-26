package com.netease.epay.sdk.base.network;

import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface IParseCallback {
    <T> void parse(FragmentActivity fragmentActivity, boolean z, NewBaseResponse<T> newBaseResponse, @NonNull String str, @NonNull JSONObject jSONObject, @NonNull INetCallback<T> iNetCallback);

    void parseFailure(FragmentActivity fragmentActivity, boolean z, NewBaseResponse newBaseResponse, @NonNull String str, @NonNull JSONObject jSONObject, @NonNull INetCallback iNetCallback);
}
