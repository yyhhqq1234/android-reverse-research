package com.netease.epay.sdk.controller;

import android.support.v4.app.FragmentActivity;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ControllerResult {
    public static final String SUCCESS = "000000";
    public FragmentActivity activity;
    public String code;
    public boolean isSuccess;
    public String msg;
    public JSONObject otherParams;

    public ControllerResult(String code, String msg) {
        this.code = code;
        this.msg = msg;
        this.isSuccess = "000000".equals(code);
    }

    public ControllerResult(String code, String msg, JSONObject result, FragmentActivity activity) {
        this(code, msg);
        this.activity = activity;
        this.otherParams = result;
    }
}
