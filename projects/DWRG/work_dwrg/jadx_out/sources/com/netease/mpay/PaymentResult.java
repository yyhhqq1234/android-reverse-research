package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public enum PaymentResult {
    SUCCESS(0, "ok"),
    ORDER_EMPTY(1, "order is empty"),
    CALLBACK_EMPTY(2, "callback is empty"),
    ASSETS_ERROR(3, "asset config error"),
    USER_ERROR(4, "pay user not found"),
    ORDER_ERROR(5, "order error"),
    NETWORK_ERROR(6, "network error"),
    PAY_CHANNEL_ERROR(7, "pay channel error"),
    USER_LOGOUT(8, "user has logged out"),
    USER_CANCEL(9, "user cancel the transaction"),
    PAY_CHANNEL_UNKNOWN(10, "pay channel unknown");

    private int a;
    private String b;

    PaymentResult(int i, String str) {
        this.a = i;
        this.b = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public int getCode() {
        return this.a;
    }

    public String getMessage() {
        return this.b;
    }

    public boolean isSuccess() {
        return SUCCESS == this;
    }

    public PaymentResult setMessage(String str) {
        this.b = str;
        return this;
    }
}
