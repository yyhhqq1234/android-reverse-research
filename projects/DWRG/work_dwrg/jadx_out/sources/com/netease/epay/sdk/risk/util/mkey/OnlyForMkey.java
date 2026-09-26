package com.netease.epay.sdk.risk.util.mkey;

/* loaded from: classes.dex */
public class OnlyForMkey {
    private static OnlyForMkey instance;
    private GeneralMkeyEpayCalledListener xlistener;

    private OnlyForMkey() {
    }

    public static OnlyForMkey getInstance() {
        if (instance == null) {
            synchronized (OnlyForMkey.class) {
                instance = new OnlyForMkey();
            }
        }
        return instance;
    }

    public void registMkeyCalledListener(GeneralMkeyEpayCalledListener listener) {
        this.xlistener = listener;
    }

    public void unregistMkeyCalledListener() {
        this.xlistener = null;
    }

    public GeneralMkeyEpayCalledListener getMkeyCalledlistener() {
        return this.xlistener;
    }
}
