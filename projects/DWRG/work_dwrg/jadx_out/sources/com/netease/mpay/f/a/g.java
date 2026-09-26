package com.netease.mpay.f.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public /* synthetic */ class g {
    static final /* synthetic */ int[] a;
    static final /* synthetic */ int[] b = new int[d.c.values().length];

    static {
        try {
            b[d.c.LOGOUT_DEVICE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[d.c.LOGOUT_GUEST_UDID.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[d.c.LOGOUT_USER.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        a = new int[d.f.values().length];
        try {
            a[d.f.LOADING_PAGE.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[d.f.PROGRESS_DIALOG.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
