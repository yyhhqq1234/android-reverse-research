package com.applovin.impl;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class g4 {
    public static List c(com.applovin.impl.sdk.j jVar) {
        if (jVar.u().j()) {
            return n4.c(jVar);
        }
        return null;
    }

    public static List a(com.applovin.impl.sdk.j jVar) {
        if (!jVar.u().j()) {
            return null;
        }
        boolean zR0 = jVar.r0();
        Boolean bool = (Boolean) jVar.a(uj.o, Boolean.FALSE);
        if (zR0) {
            if (bool.booleanValue()) {
                return b(jVar);
            }
            return null;
        }
        return b(jVar);
    }

    private static List b(com.applovin.impl.sdk.j jVar) {
        if (jVar.u().h() != null) {
            return n4.b(jVar);
        }
        return n4.a(jVar);
    }
}
