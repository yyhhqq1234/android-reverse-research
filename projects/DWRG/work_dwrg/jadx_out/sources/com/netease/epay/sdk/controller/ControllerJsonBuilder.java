package com.netease.epay.sdk.controller;

import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ControllerJsonBuilder {
    public static JSONObject getRegisterJson(boolean isNeedUI) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "isNeedUI", Boolean.valueOf(isNeedUI));
        return jSONObject;
    }

    public static JSONObject getFaceJson(String bizType, String uuid) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "bizType", bizType);
        LogicUtil.jsonPut(jSONObject, "UUID", uuid);
        return jSONObject;
    }

    public static JSONObject getRiskJson(JSONObject interceptedParams, NewBaseResponse response) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "response", response);
        LogicUtil.jsonPut(jSONObject, "interceptedParams", interceptedParams);
        return jSONObject;
    }

    public static JSONObject getSetPwdJson(boolean isNeedPsw, boolean isForced, boolean isFragment, boolean isForgetPwd) {
        return getSetPwdJson(isNeedPsw, isForced, isFragment, isForgetPwd, null);
    }

    public static JSONObject getSetPwdJson(boolean isNeedPsw, boolean isForced, boolean isFragment, boolean isForgetPwd, String exitWarningInfos) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "isNeedPsw", Boolean.valueOf(isNeedPsw));
        LogicUtil.jsonPut(jSONObject, "isForced", Boolean.valueOf(isForced));
        LogicUtil.jsonPut(jSONObject, "isFragment", Boolean.valueOf(isFragment));
        LogicUtil.jsonPut(jSONObject, "isForgetPwd", Boolean.valueOf(isForgetPwd));
        LogicUtil.jsonPut(jSONObject, BaseConstants.KEY_SPP_EXIT_WARMING_INFOS, exitWarningInfos);
        return jSONObject;
    }

    public static JSONObject getResetPwdJson(boolean isNeedActivity, int type) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "isNeedActivity", Boolean.valueOf(isNeedActivity));
        LogicUtil.jsonPut(jSONObject, "type", Integer.valueOf(type));
        return jSONObject;
    }

    public static JSONObject getCardJson(boolean isNeedActivity, int type, String uuid) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "UUID", uuid);
        LogicUtil.jsonPut(jSONObject, "isNeedActivity", Boolean.valueOf(isNeedActivity));
        LogicUtil.jsonPut(jSONObject, "type", Integer.valueOf(type));
        return jSONObject;
    }

    public static JSONObject getVerifyPwdJson(int pwdType, int validateType, String uuid) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "pwdType", Integer.valueOf(pwdType));
        LogicUtil.jsonPut(jSONObject, BaseConstants.NET_KEY_uuid, uuid);
        LogicUtil.jsonPut(jSONObject, "validateType", Integer.valueOf(validateType));
        return jSONObject;
    }

    public static JSONObject getSMSJson(String uuid) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, BaseConstants.NET_KEY_uuid, uuid);
        return jSONObject;
    }

    public static JSONObject getPayJson(String quickPayId, boolean isShowPaymentDetail, boolean isFakeUnion, boolean isCreditPay, String attach) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "quickPayId", quickPayId);
        LogicUtil.jsonPut(jSONObject, "isShowPaymentDetail", Boolean.valueOf(isShowPaymentDetail));
        LogicUtil.jsonPut(jSONObject, "isFakeUnion", Boolean.valueOf(isFakeUnion));
        LogicUtil.jsonPut(jSONObject, "isCreditPay", Boolean.valueOf(isCreditPay));
        LogicUtil.jsonPut(jSONObject, "attach", attach);
        return jSONObject;
    }

    public static JSONObject getFingerJson(int type, boolean isCanSet, String uuid) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "type", Integer.valueOf(type));
        LogicUtil.jsonPut(jSONObject, "isCanSet", Boolean.valueOf(isCanSet));
        LogicUtil.jsonPut(jSONObject, BaseConstants.NET_KEY_uuid, uuid);
        return jSONObject;
    }

    public static JSONObject getDepositWithdrawJson(int type) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "type", Integer.valueOf(type));
        return jSONObject;
    }

    public static JSONObject getCloseRiskJson(int type) {
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, "type", Integer.valueOf(type));
        return jSONObject;
    }

    public static JSONObject getRsaJson(String challengeType, String payMethod) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(BaseData.appPlatformId);
        stringBuffer.append(BaseData.sessionId);
        stringBuffer.append(BaseData.orderId);
        stringBuffer.append(payMethod);
        stringBuffer.append(challengeType);
        JSONObject jSONObject = new JSONObject();
        LogicUtil.jsonPut(jSONObject, BaseConstants.JSON_KEY_PAY_RCA_SIGN_DATA, DigestUtil.getMD5(stringBuffer.toString()));
        return jSONObject;
    }
}
