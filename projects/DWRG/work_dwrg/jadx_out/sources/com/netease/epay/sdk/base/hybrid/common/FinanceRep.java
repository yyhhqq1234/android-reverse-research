package com.netease.epay.sdk.base.hybrid.common;

import com.alipay.sdk.util.k;
import com.tencent.connect.common.Constants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FinanceRep {
    public static final int REP_LOWVERSION = 5;
    public static final int REP_PARAMERR = 3;
    public static final int REP_REQUESTFAILED = 7;
    public static final int REP_SUCCESS = 0;
    public static final int REP_TIMEOUT = 4;
    public static final int REP_UNKNOWCMD = 1;
    public static final int REP_UNSUPPORTCLIENT = 6;
    public static final int REP_USER_CANCEL = 8;
    public static final int REP_VERIFYFAILED = 2;
    public String command;
    public String context;
    public JSONObject result;
    public String retCode;
    public String retDesc;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface RepState {
    }

    public String toJsonString() {
        try {
            return new JSONObject().put(JsConstant.COMMAND, this.command).put(JsConstant.CONTEXT, this.context).put("retCode", this.retCode).put("retDesc", this.retDesc).put(k.c, this.result).toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return "{\"command\":\"" + this.command + "\",\"retCode\":\"" + this.retCode + "\",\"retDesc\":\"" + this.retDesc + "\"}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FinanceRep(int repState, String command, String context, JSONObject t) {
        String[] resolveRepState = resolveRepState(repState);
        this.command = command;
        this.context = context;
        this.retCode = resolveRepState[0];
        this.retDesc = resolveRepState[1];
        this.result = t;
    }

    private static String[] resolveRepState(int state) {
        String str;
        String str2 = null;
        switch (state) {
            case 0:
                str = "0000";
                str2 = "成功";
                break;
            case 1:
                str = Constants.DEFAULT_UIN;
                str2 = "未知的命令";
                break;
            case 2:
                str = "1001";
                str2 = "验签失败";
                break;
            case 3:
                str = "1002";
                str2 = "参数错误";
                break;
            case 4:
                str = "1003";
                str2 = "请求超时";
                break;
            case 5:
                str = "1004";
                str2 = "版本过低";
                break;
            case 6:
                str = "1005";
                str2 = "客户端不支持，请升级客户端";
                break;
            case 7:
                str = "2001";
                str2 = "请求失败";
                break;
            case 8:
                str = "2002";
                str2 = "用户取消";
                break;
            default:
                str = null;
                break;
        }
        return new String[]{str, str2};
    }

    public static FinanceRep createRep(int state, String command) {
        return new FinanceRep(state, command, null, null);
    }
}
