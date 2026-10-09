package com.applovin.impl;

import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public class nd extends id {
    public final int c;
    public final boolean d;

    public nd(Throwable th, jd jdVar, Surface surface) {
        super(th, jdVar);
        this.c = System.identityHashCode(surface);
        this.d = surface == null || surface.isValid();
    }
}
