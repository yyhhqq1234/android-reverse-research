package com.applovin.impl.sdk;

import com.applovin.impl.h0;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private final j a;
    private final n b;
    private final Map d = new HashMap();
    private final Map e = new HashMap();
    private final Object c = new Object();

    e(j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        for (h0 h0Var : h0.a()) {
            this.d.put(h0Var, new p());
            this.e.put(h0Var, new p());
        }
    }

    public AppLovinAdImpl e(h0 h0Var) {
        com.applovin.impl.sdk.ad.c cVar;
        synchronized (this.c) {
            p pVarD = d(h0Var);
            if (pVarD.b() > 0) {
                b(h0Var).a(pVarD.a());
                cVar = new com.applovin.impl.sdk.ad.c(h0Var, this.a);
            } else {
                cVar = null;
            }
        }
        if (cVar != null) {
            if (n.a()) {
                this.b.a("AdPreloadManager", "Retrieved ad of zone " + h0Var + "...");
            }
        } else if (n.a()) {
            this.b.a("AdPreloadManager", "Unable to retrieve ad of zone " + h0Var + "...");
        }
        return cVar;
    }

    public AppLovinAdImpl a(h0 h0Var) {
        AppLovinAdImpl appLovinAdImplA;
        synchronized (this.c) {
            appLovinAdImplA = c(h0Var).a();
        }
        return appLovinAdImplA;
    }

    void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.c) {
            d(appLovinAdImpl.getAdZone()).a(appLovinAdImpl);
            if (n.a()) {
                this.b.a("AdPreloadManager", "Ad enqueued: " + appLovinAdImpl);
            }
        }
    }

    public AppLovinAdBase f(h0 h0Var) {
        AppLovinAdImpl appLovinAdImplD;
        synchronized (this.c) {
            appLovinAdImplD = c(h0Var).d();
        }
        return appLovinAdImplD;
    }

    private p d(h0 h0Var) {
        p pVar;
        synchronized (this.c) {
            pVar = (p) this.d.get(h0Var);
            if (pVar == null) {
                pVar = new p();
                this.d.put(h0Var, pVar);
            }
        }
        return pVar;
    }

    private p b(h0 h0Var) {
        p pVar;
        synchronized (this.c) {
            pVar = (p) this.e.get(h0Var);
            if (pVar == null) {
                pVar = new p();
                this.e.put(h0Var, pVar);
            }
        }
        return pVar;
    }

    public void b(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.c) {
            c(appLovinAdImpl.getAdZone()).b(appLovinAdImpl);
        }
    }

    private p c(h0 h0Var) {
        synchronized (this.c) {
            p pVarB = b(h0Var);
            if (pVarB.b() > 0) {
                return pVarB;
            }
            return d(h0Var);
        }
    }
}
