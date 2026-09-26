package com.netease.epay.sdk.base.network;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.netease.epay.sdk.base.model.RiskChallengeType;
import com.netease.epay.sdk.base.util.ErrorCode;

/* loaded from: classes.dex */
public class NewBaseResponse<T> {
    public T result;

    @SerializedName("operationResp")
    public String retcode;

    @SerializedName("detailMsg")
    public String retdesc;

    @SerializedName(alternate = {"challengeError"}, value = "newRiskChallengeType")
    public RiskChallengeType riskType;

    public NewBaseResponse() {
    }

    public NewBaseResponse(String code, String msg) {
        this.retcode = code;
        this.retdesc = msg;
    }

    public NewBaseResponse(ErrorCode.CUSTOM_CODE code) {
        this.retcode = code.getCode();
        this.retdesc = code.getMsg();
    }

    public boolean isSuccess() {
        return TextUtils.equals("000000", this.retcode);
    }
}
