package com.applovin.impl;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class c2 implements ae {
    private final ArrayList a = new ArrayList(1);
    private final HashSet b = new HashSet(1);
    private final be.a c = new be.a();
    private final z6.a d = new z6.a();
    private Looper e;
    private fo f;

    protected abstract void a(xo xoVar);

    @Override // com.applovin.impl.ae
    public /* synthetic */ boolean c() {
        return ae.CC.$default$c(this);
    }

    @Override // com.applovin.impl.ae
    public /* synthetic */ fo d() {
        return ae.CC.$default$d(this);
    }

    protected void e() {
    }

    protected void f() {
    }

    protected abstract void h();

    protected final be.a b(ae.a aVar) {
        return this.c.a(0, aVar, 0L);
    }

    protected final boolean g() {
        return !this.b.isEmpty();
    }

    @Override // com.applovin.impl.ae
    public final void a(Handler handler, z6 z6Var) {
        b1.a(handler);
        b1.a(z6Var);
        this.d.a(handler, z6Var);
    }

    @Override // com.applovin.impl.ae
    public final void c(ae.b bVar) {
        this.a.remove(bVar);
        if (this.a.isEmpty()) {
            this.e = null;
            this.f = null;
            this.b.clear();
            h();
            return;
        }
        a(bVar);
    }

    @Override // com.applovin.impl.ae
    public final void b(ae.b bVar) {
        b1.a(this.e);
        boolean zIsEmpty = this.b.isEmpty();
        this.b.add(bVar);
        if (zIsEmpty) {
            f();
        }
    }

    @Override // com.applovin.impl.ae
    public final void a(Handler handler, be beVar) {
        b1.a(handler);
        b1.a(beVar);
        this.c.a(handler, beVar);
    }

    protected final z6.a a(int i, ae.a aVar) {
        return this.d.a(i, aVar);
    }

    protected final z6.a a(ae.a aVar) {
        return this.d.a(0, aVar);
    }

    protected final be.a a(int i, ae.a aVar, long j) {
        return this.c.a(i, aVar, j);
    }

    @Override // com.applovin.impl.ae
    public final void a(ae.b bVar) {
        boolean z = !this.b.isEmpty();
        this.b.remove(bVar);
        if (z && this.b.isEmpty()) {
            e();
        }
    }

    @Override // com.applovin.impl.ae
    public final void a(ae.b bVar, xo xoVar) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.e;
        b1.a(looper == null || looper == looperMyLooper);
        fo foVar = this.f;
        this.a.add(bVar);
        if (this.e == null) {
            this.e = looperMyLooper;
            this.b.add(bVar);
            a(xoVar);
        } else if (foVar != null) {
            b(bVar);
            bVar.a(this, foVar);
        }
    }

    protected final void a(fo foVar) {
        this.f = foVar;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ae.b) it.next()).a(this, foVar);
        }
    }

    @Override // com.applovin.impl.ae
    public final void a(z6 z6Var) {
        this.d.e(z6Var);
    }

    @Override // com.applovin.impl.ae
    public final void a(be beVar) {
        this.c.a(beVar);
    }
}
