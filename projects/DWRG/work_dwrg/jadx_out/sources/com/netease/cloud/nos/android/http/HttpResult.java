package com.netease.cloud.nos.android.http;

import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpResult {
    private Exception exception;
    private JSONObject msg;
    private int statusCode;

    public HttpResult(int statusCode, JSONObject msg, Exception e) {
        this.statusCode = statusCode;
        this.msg = msg;
        this.exception = e;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public JSONObject getMsg() {
        return this.msg;
    }

    public void setMsg(JSONObject msg) {
        this.msg = msg;
    }

    public Exception getException() {
        return this.exception;
    }

    protected void setException(Exception exception) {
        this.exception = exception;
    }
}
