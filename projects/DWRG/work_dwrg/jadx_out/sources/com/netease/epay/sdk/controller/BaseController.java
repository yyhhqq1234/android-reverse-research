package com.netease.epay.sdk.controller;

import android.content.Context;
import com.netease.epay.sdk.ExitUtil;
import com.netease.epay.sdk.base.event.BaseEvent;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class BaseController<T extends BaseEvent> {
    public ControllerCallback callback;

    public BaseController(JSONObject obj, ControllerCallback callback) {
        this.callback = callback;
    }

    public void start(Context context) {
    }

    public void deal(T baseEvent) {
    }

    protected void exit(ControllerResult controllerResult) {
        if (this.callback != null) {
            this.callback.sendResult(controllerResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void exit(BaseEvent event) {
        exit(event, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void exit(BaseEvent event, String quickPayId) {
        if (event.isSuccess) {
            ExitUtil.successCallback(quickPayId);
        } else {
            ExitUtil.failCallback(event.code, event.msg);
        }
    }
}
