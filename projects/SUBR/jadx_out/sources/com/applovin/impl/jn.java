package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public class jn extends yl {
    private final Runnable h;

    public jn(com.applovin.impl.sdk.j jVar, String str, Runnable runnable) {
        this(jVar, false, str, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.h.run();
    }

    public jn(com.applovin.impl.sdk.j jVar, boolean z, String str, Runnable runnable) {
        super("TaskRunnable:" + str, jVar, z);
        this.h = runnable;
    }
}
