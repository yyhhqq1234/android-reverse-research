package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.mpay.b.m;
import com.netease.mpay.f.an;

/* loaded from: classes.dex */
/* synthetic */ class fg {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b;
    static final /* synthetic */ int[] c = new int[an.a.values().length];

    static {
        try {
            c[an.a.MOBILE_PRIVACY_RULE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            c[an.a.MOBILE_SERVICE_RULE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            c[an.a.OFFLINE_MOBILE_CENTER.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            c[an.a.OFFLINE_ACCOUNT_CHANGE.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            c[an.a.OFFLINE_ACCOUNT_APPEAL.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            c[an.a.OFFLINE_ACCOUNT_UNLOCK.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        try {
            c[an.a.ONLINE_MOBILE_CENTER.ordinal()] = 7;
        } catch (NoSuchFieldError e7) {
        }
        try {
            c[an.a.ONLINE_ACCOUNT_INDEX.ordinal()] = 8;
        } catch (NoSuchFieldError e8) {
        }
        b = new int[m.b.values().length];
        try {
            b[m.b.LOGIN.ordinal()] = 1;
        } catch (NoSuchFieldError e9) {
        }
        try {
            b[m.b.PREPAY.ordinal()] = 2;
        } catch (NoSuchFieldError e10) {
        }
        try {
            b[m.b.USER_CENTER.ordinal()] = 3;
        } catch (NoSuchFieldError e11) {
        }
        a = new int[m.a.values().length];
        try {
            a[m.a.FORCE_VERIFY_SMS.ordinal()] = 1;
        } catch (NoSuchFieldError e12) {
        }
        try {
            a[m.a.SET_PASSWORD.ordinal()] = 2;
        } catch (NoSuchFieldError e13) {
        }
        try {
            a[m.a.GUIDE_SET_SECURITY.ordinal()] = 3;
        } catch (NoSuchFieldError e14) {
        }
        try {
            a[m.a.MOBILE_LOGIN.ordinal()] = 4;
        } catch (NoSuchFieldError e15) {
        }
        try {
            a[m.a.MOBILE_BIND.ordinal()] = 5;
        } catch (NoSuchFieldError e16) {
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
