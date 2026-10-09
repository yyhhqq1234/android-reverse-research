package com.applovin.impl.mediation;

import com.applovin.impl.he;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.x1;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final j a;
    private final n b;
    private final a c;
    private x1 d;

    public interface a {
        void a(he heVar);
    }

    c(j jVar, a aVar) {
        this.a = jVar;
        this.b = jVar.I();
        this.c = aVar;
    }

    public void a(final he heVar, long j) {
        if (n.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Scheduling in " + j + "ms...");
        }
        this.d = x1.a(j, this.a, new Runnable() { // from class: com.applovin.impl.mediation.c$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(heVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(he heVar) {
        if (n.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Timing out...");
        }
        this.c.a(heVar);
    }

    public void a() {
        if (n.a()) {
            this.b.a("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        }
        x1 x1Var = this.d;
        if (x1Var != null) {
            x1Var.a();
            this.d = null;
        }
    }
}
