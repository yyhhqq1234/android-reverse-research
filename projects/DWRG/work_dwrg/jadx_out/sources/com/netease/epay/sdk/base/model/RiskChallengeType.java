package com.netease.epay.sdk.base.model;

import com.google.gson.annotations.SerializedName;
import com.netease.epay.sdk.base.core.BaseConstants;

/* loaded from: classes.dex */
public class RiskChallengeType {

    @SerializedName(BaseConstants.RISK_TYEP_FACE)
    public String faceType = null;

    @SerializedName(BaseConstants.RISK_TYEP_SMS)
    public String smsContent = null;

    @SerializedName(BaseConstants.RISK_TYEP_PASS_CARD)
    public String cardArray = null;

    @SerializedName(BaseConstants.RISK_TYEP_LONG_PWD)
    public String pwd = null;

    @SerializedName(BaseConstants.RISK_TYEP_VOICE_MOBLIE)
    public String voiceContent = null;

    @SerializedName(BaseConstants.RISK_TYEP_GENERAL)
    public General general = null;

    @SerializedName(BaseConstants.RISK_TYEP_VOICE_QP)
    public String voiceQPContent = null;
}
