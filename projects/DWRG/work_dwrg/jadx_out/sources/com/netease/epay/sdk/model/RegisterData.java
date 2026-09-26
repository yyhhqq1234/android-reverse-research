package com.netease.epay.sdk.model;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes.dex */
public class RegisterData {

    @SerializedName("accountId")
    public String accountId;

    @SerializedName(JsonBuilder.SESSION_ID)
    public String sessionId;

    @SerializedName("shortPwdEncodeFactor")
    public ShortPwdEncodeFactor shortPwdEncodeFactor;
}
