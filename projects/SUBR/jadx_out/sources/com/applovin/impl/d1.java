package com.applovin.impl;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class d1 implements Callable {
    protected final com.applovin.impl.sdk.j a;
    protected final String b;
    protected final com.applovin.impl.sdk.n c;
    protected final AtomicBoolean e = new AtomicBoolean();
    private final Context d = com.applovin.impl.sdk.j.m();

    public Context a() {
        return this.d;
    }

    public d1(String str, com.applovin.impl.sdk.j jVar) {
        this.b = str;
        this.a = jVar;
        this.c = jVar.I();
    }

    public void a(boolean z) {
        this.e.set(z);
    }
}
