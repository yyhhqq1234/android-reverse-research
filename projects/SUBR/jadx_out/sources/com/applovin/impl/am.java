package com.applovin.impl;

import android.app.Activity;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinMediationProvider;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class am extends yl {
    private final List h;
    private final Activity i;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(oe oeVar) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Auto-initing adapter: " + oeVar);
        }
        this.a.K().b(oeVar, this.i);
    }

    public am(List list, Activity activity, com.applovin.impl.sdk.j jVar) {
        super("TaskAutoInitAdapters", jVar, true);
        this.h = list;
        this.i = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.h.size() > 0) {
            if (com.applovin.impl.sdk.n.a()) {
                com.applovin.impl.sdk.n nVar = this.c;
                String str = this.b;
                StringBuilder sb = new StringBuilder("Auto-initing ");
                sb.append(this.h.size());
                sb.append(" adapters");
                sb.append(this.a.k0().c() ? " in test mode" : "");
                sb.append("...");
                nVar.a(str, sb.toString());
            }
            if (TextUtils.isEmpty(this.a.N())) {
                this.a.f(AppLovinMediationProvider.MAX);
            } else if (!this.a.y0()) {
                com.applovin.impl.sdk.n.h("AppLovinSdk", "Auto-initing adapters for non-MAX mediation provider: " + this.a.N());
            }
            if (this.i == null) {
                com.applovin.impl.sdk.n.h("AppLovinSdk", "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n");
            }
            for (final oe oeVar : this.h) {
                if (oeVar.s()) {
                    this.a.i0().a(new Runnable() { // from class: com.applovin.impl.am$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(oeVar);
                        }
                    }, tm.b.MEDIATION);
                } else {
                    this.a.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        this.a.I().a(this.b, "Skipping eager auto-init for adapter " + oeVar);
                    }
                }
            }
        }
    }
}
