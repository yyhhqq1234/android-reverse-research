package com.netease.mpay.f;

import com.dodola.rocoo.Hack;
import com.netease.mpay.dd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public /* synthetic */ class g {
    static final /* synthetic */ int[] a = new int[dd.a.values().length];

    static {
        try {
            a[dd.a.WEIXIN.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            a[dd.a.TENPAY.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }
}
