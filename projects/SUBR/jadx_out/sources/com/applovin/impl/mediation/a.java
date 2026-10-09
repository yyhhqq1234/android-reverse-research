package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import com.applovin.impl.he;
import com.applovin.impl.p;
import com.applovin.impl.q;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.yp;

/* JADX INFO: loaded from: classes.dex */
public class a extends p {
    private final q a;
    private final n b;
    private final String c = yp.l(j.m());
    private InterfaceC0023a d;
    private he e;
    private boolean f;
    private int g;
    private boolean h;

    /* JADX INFO: renamed from: com.applovin.impl.mediation.a$a, reason: collision with other inner class name */
    public interface InterfaceC0023a {
        void b(he heVar);
    }

    a(j jVar) {
        this.b = jVar.I();
        this.a = jVar.e();
    }

    public void a(boolean z) {
        this.f = z;
    }

    @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity.getClass().getName().equals(this.c) && (this.e.t0() || this.f)) {
            if (n.a()) {
                this.b.a("AdActivityObserver", "App relaunched via launcher without an ad hidden callback, manually invoking ad hidden");
            }
            if (this.d != null) {
                if (n.a()) {
                    this.b.a("AdActivityObserver", "Invoking callback...");
                }
                this.d.b(this.e);
            }
            a();
            return;
        }
        if (!this.h) {
            this.h = true;
        }
        this.g++;
        if (n.a()) {
            this.b.a("AdActivityObserver", "Created Activity: " + activity + ", counter is " + this.g);
        }
    }

    @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.h) {
            this.g--;
            if (n.a()) {
                this.b.a("AdActivityObserver", "Destroyed Activity: " + activity + ", counter is " + this.g);
            }
            if (this.g <= 0) {
                if (n.a()) {
                    this.b.a("AdActivityObserver", "Last ad Activity destroyed");
                }
                if (this.d != null) {
                    if (n.a()) {
                        this.b.a("AdActivityObserver", "Invoking callback...");
                    }
                    this.d.b(this.e);
                }
                a();
            }
        }
    }

    public void a(he heVar, InterfaceC0023a interfaceC0023a) {
        if (n.a()) {
            this.b.a("AdActivityObserver", "Starting for ad " + heVar.getAdUnitId() + "...");
        }
        a();
        this.d = interfaceC0023a;
        this.e = heVar;
        this.a.a(this);
    }

    public void a() {
        if (n.a()) {
            this.b.a("AdActivityObserver", "Cancelling...");
        }
        this.a.b(this);
        this.d = null;
        this.e = null;
        this.g = 0;
        this.h = false;
    }
}
