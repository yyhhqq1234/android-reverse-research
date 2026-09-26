package com.netease.epay.sdk.controller;

/* loaded from: classes.dex */
public abstract class ControllerCallback {
    private String key;

    public abstract void dealResult(ControllerResult controllerResult);

    public void sendResult(ControllerResult controllerResult) {
        removeSelf();
        dealResult(controllerResult);
    }

    public void setKey(String key) {
        this.key = key;
    }

    void removeSelf() {
        ControllerRouter.removeController(this.key);
    }
}
