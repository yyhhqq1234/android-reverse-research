package com.netease.epay.sdk.model;

import android.text.TextUtils;
import com.netease.epay.sdk.base.BuildConfig;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.util.LogUtil;
import com.netease.epay.sdk.controller.RegisterCenter;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonBuilder {
    public static final String APPPLATFORM_ID = "appPlatformId";
    public static final String ORDER_ID = "orderId";
    public static final String PLATFORM_ID = "platformId";
    public static final String SESSION_ID = "sessionId";
    private boolean isForgetPwd;
    private boolean isNeedBizType;

    public JsonBuilder addBizType() {
        this.isNeedBizType = true;
        this.isForgetPwd = false;
        return this;
    }

    public JsonBuilder addBizType(boolean isForgetPwd) {
        this.isNeedBizType = true;
        this.isForgetPwd = isForgetPwd;
        return this;
    }

    public JSONObject build() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("platformId", BaseData.orderPlatformId);
            jSONObject.put("sdkVersion", BuildConfig.VERSION_NAME);
            jSONObject.put("appName", BaseData.appNameFromSelf);
            jSONObject.put("appVersion", BaseData.appVersionFromSelf);
            jSONObject.put(APPPLATFORM_ID, BaseData.appPlatformId);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("appId", BaseData.appId);
            jSONObject2.put("appName", BaseData.appNameFromSelf);
            jSONObject2.put("appVersion", BaseData.appVersionFromSelf);
            jSONObject.put("appMeta", jSONObject2);
            jSONObject.put(SESSION_ID, BaseData.sessionId);
            if (!TextUtils.isEmpty(BaseData.orderId)) {
                jSONObject.put(ORDER_ID, BaseData.orderId);
            }
            String str = null;
            if (this.isNeedBizType) {
                str = getRequestBizTypeJsonValue();
            }
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("bizType", str);
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("deviceId", BaseData.deviceId);
            jSONObject3.put("antiSpamInfo", BaseData.riskInfo);
            jSONObject3.put("model", BaseConstants.PHONE_MODEL_NAME);
            jSONObject.put("deviceInfo", jSONObject3);
            jSONObject.put("antiSpamInfo", BaseData.riskInfo);
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return new JSONObject();
        }
    }

    public String getRequestBizTypeJsonValue() {
        if (this.isForgetPwd) {
            return RegisterCenter.MODIFY_PWD;
        }
        switch (CoreData.bizType) {
            case 1:
            case BizType.ADD_CARD_PAY /* 802 */:
                return "order";
            case 2:
                return "charge";
            case 3:
                return "withdraw";
            case BizType.ADD_CARD /* 803 */:
                return "quickPaySign";
            case 901:
            case 902:
            case 903:
                return RegisterCenter.MODIFY_PWD;
            case BizType.UPGRADE_IDENTITY /* 909 */:
                return "upgrade";
            case BizType.IDENTIFY /* 910 */:
                return "login";
            case BizType.CREDITPAY_ACTIVATE /* 914 */:
                return "apply_quhua";
            default:
                LogUtil.e("未找到合适的biztype");
                return null;
        }
    }
}
