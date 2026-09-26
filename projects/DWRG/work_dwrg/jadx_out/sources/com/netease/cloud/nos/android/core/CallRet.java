package com.netease.cloud.nos.android.core;

import android.util.Base64;

/* loaded from: classes.dex */
public class CallRet {
    private String callbackRetMsg;
    private Exception exception;
    private Object fileParam;
    private int httpCode;
    private String requestId;
    private String response;
    private String uploadContext;

    public CallRet(Object fileParam, String uploadContext, int httpCode, String requestId, String callbackRetMsg, String response, Exception exception) {
        this.fileParam = fileParam;
        this.uploadContext = uploadContext;
        this.httpCode = httpCode;
        this.requestId = requestId;
        this.callbackRetMsg = new String(Base64.decode(callbackRetMsg, 0));
        this.response = response;
        this.exception = exception;
    }

    public Object getFileParam() {
        return this.fileParam;
    }

    public void setFileParam(Object fileParam) {
        this.fileParam = fileParam;
    }

    public String getUploadContext() {
        return this.uploadContext;
    }

    public void setUploadContext(String uploadContext) {
        this.uploadContext = uploadContext;
    }

    public int getHttpCode() {
        return this.httpCode;
    }

    public void setHttpCode(int httpCode) {
        this.httpCode = httpCode;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }

    public String getCallbackRetMsg() {
        return this.callbackRetMsg;
    }

    public void setCallbackRetMsg(String callbackRetMsg) {
        this.callbackRetMsg = callbackRetMsg;
    }

    public String getResponse() {
        return this.response;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    public Exception getException() {
        return this.exception;
    }

    public void setException(Exception exception) {
        this.exception = exception;
    }

    public boolean isOK() {
        return this.httpCode == 200;
    }
}
