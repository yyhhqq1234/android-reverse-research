package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
/* synthetic */ class hb {
    static final /* synthetic */ int[] a = new int[b.a.values().length];

    static {
        try {
            a[b.a.ERR_SMS_VERIFY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[b.a.ERR_SET_PASS.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            a[b.a.ERR_LOGOUT.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            a[b.a.ERR_RETRY.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
