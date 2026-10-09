package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public class em extends yl {
    private final a h;

    public interface a {
        void a(l0.a aVar);
    }

    public em(com.applovin.impl.sdk.j jVar, a aVar) {
        super("TaskCollectAdvertisingId", jVar, true);
        this.h = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.h.a(this.a.x().f());
    }
}
