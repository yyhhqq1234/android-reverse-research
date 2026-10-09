package com.applovin.impl;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class an extends yl {
    private final WeakReference h;
    private final Object i;

    public static void a(long j, fi fiVar, Object obj, String str, com.applovin.impl.sdk.j jVar) {
        if (j <= 0) {
            return;
        }
        jVar.i0().a(new an(fiVar, obj, str, jVar), tm.b.TIMEOUT, j);
    }

    protected an(fi fiVar, Object obj, String str, com.applovin.impl.sdk.j jVar) {
        super(str, jVar);
        this.h = new WeakReference(fiVar);
        this.i = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        fi fiVar = (fi) this.h.get();
        if (fiVar == null || fiVar.c()) {
            return;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().d(this.b, "Attempting to timeout pending task " + fiVar.b() + " with " + this.i);
        }
        fiVar.a(this.i);
    }
}
