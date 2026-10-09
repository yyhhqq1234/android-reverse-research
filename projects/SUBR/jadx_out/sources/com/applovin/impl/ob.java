package com.applovin.impl;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class ob {
    private static boolean a;

    public static void b(final com.applovin.impl.sdk.j jVar) {
        Long l = (Long) jVar.a(ue.D7);
        if (l.longValue() <= 0) {
            return;
        }
        jVar.i0().a(new jn(jVar, true, "submitIntegrationErrorReport", new Runnable() { // from class: com.applovin.impl.ob$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ob.a(jVar);
            }
        }), tm.b.OTHER, TimeUnit.SECONDS.toMillis(l.longValue()));
    }

    public static void a() {
        a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.j jVar) {
        if (a) {
            return;
        }
        jVar.D().a(ka.V, "no_ads_loaded");
    }
}
