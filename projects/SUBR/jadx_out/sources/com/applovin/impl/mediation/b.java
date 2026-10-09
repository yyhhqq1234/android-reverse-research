package com.applovin.impl.mediation;

import com.applovin.impl.fc;
import com.applovin.impl.he;
import com.applovin.impl.sdk.j;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class b implements a.InterfaceC0023a, c.a {
    private final j a;
    private final a b;
    private final c c;

    public b(j jVar) {
        this.a = jVar;
        this.b = new a(jVar);
        this.c = new c(jVar, this);
    }

    public void e(he heVar) {
        long jJ0 = heVar.j0();
        if (jJ0 >= 0) {
            this.c.a(heVar, jJ0);
        }
        boolean z = Boolean.parseBoolean(this.a.f0().getExtraParameters().get("should_schedule_ad_hidden_on_ad_destroy"));
        if (heVar.s0() || heVar.t0() || z) {
            this.b.a(z);
            this.b.a(heVar, this);
        }
    }

    @Override // com.applovin.impl.mediation.c.a
    public void a(he heVar) {
        c(heVar);
    }

    public void a() {
        this.c.a();
        this.b.a();
    }

    @Override // com.applovin.impl.mediation.a.InterfaceC0023a
    public void b(final he heVar) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.b$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c(heVar);
            }
        }, heVar.i0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(he heVar) {
        g gVarA;
        if (heVar == null || (gVarA = heVar.A()) == null || !heVar.w().compareAndSet(false, true)) {
            return;
        }
        fc.e(gVarA.c(), heVar);
    }
}
