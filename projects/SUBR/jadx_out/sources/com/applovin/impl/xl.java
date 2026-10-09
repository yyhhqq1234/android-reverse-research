package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
abstract class xl {
    protected final qo a;

    protected abstract boolean a(ah ahVar);

    protected abstract boolean b(ah ahVar, long j);

    public static final class a extends ch {
        public a(String str) {
            super(str, null, false, 1);
        }
    }

    protected xl(qo qoVar) {
        this.a = qoVar;
    }

    public final boolean a(ah ahVar, long j) {
        return a(ahVar) && b(ahVar, j);
    }
}
