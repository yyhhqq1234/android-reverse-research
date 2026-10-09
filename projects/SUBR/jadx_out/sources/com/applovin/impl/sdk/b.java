package com.applovin.impl.sdk;

import com.applovin.impl.go;
import com.applovin.impl.i8;
import com.applovin.impl.sj;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private final j a;
    private final WeakReference b;
    private final WeakReference c;
    private go d;

    public static b a(i8 i8Var, a.InterfaceC0035a interfaceC0035a, j jVar) {
        b bVar = new b(i8Var, interfaceC0035a, jVar);
        bVar.a(i8Var.getTimeToLiveMillis());
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        d();
        this.a.f().a(this);
    }

    public void d() {
        a();
        i8 i8VarB = b();
        if (i8VarB == null) {
            return;
        }
        i8VarB.setExpired();
        a.InterfaceC0035a interfaceC0035a = (a.InterfaceC0035a) this.c.get();
        if (interfaceC0035a == null) {
            return;
        }
        interfaceC0035a.onAdExpired(i8VarB);
    }

    public void a(long j) {
        a();
        if (((Boolean) this.a.a(sj.c1)).booleanValue() || !this.a.e0().isApplicationPaused()) {
            this.d = go.a(j, this.a, new Runnable() { // from class: com.applovin.impl.sdk.b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            });
        }
    }

    public void a() {
        go goVar = this.d;
        if (goVar != null) {
            goVar.a();
            this.d = null;
        }
    }

    private b(i8 i8Var, a.InterfaceC0035a interfaceC0035a, j jVar) {
        this.b = new WeakReference(i8Var);
        this.c = new WeakReference(interfaceC0035a);
        this.a = jVar;
    }

    public i8 b() {
        return (i8) this.b.get();
    }
}
