package com.netease.mpay.codescanner;

import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.aa;

/* loaded from: classes.dex */
/* synthetic */ class l {
    static final /* synthetic */ int[] a = new int[aa.a.values().length];

    static {
        try {
            a[aa.a.QRCODE_LOGIN.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[aa.a.QRCODE_PAY.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
