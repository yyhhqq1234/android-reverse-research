package com.applovin.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class a2 implements h5 {
    private final boolean a;
    private final ArrayList b = new ArrayList(1);
    private int c;
    private k5 d;

    @Override // com.applovin.impl.h5
    public /* synthetic */ Map e() {
        return Collections.emptyMap();
    }

    protected a2(boolean z) {
        this.a = z;
    }

    @Override // com.applovin.impl.h5
    public final void a(xo xoVar) {
        b1.a(xoVar);
        if (this.b.contains(xoVar)) {
            return;
        }
        this.b.add(xoVar);
        this.c++;
    }

    protected final void b(k5 k5Var) {
        for (int i = 0; i < this.c; i++) {
            ((xo) this.b.get(i)).b(this, k5Var, this.a);
        }
    }

    protected final void c(k5 k5Var) {
        this.d = k5Var;
        for (int i = 0; i < this.c; i++) {
            ((xo) this.b.get(i)).a(this, k5Var, this.a);
        }
    }

    protected final void d(int i) {
        k5 k5Var = (k5) xp.a(this.d);
        for (int i2 = 0; i2 < this.c; i2++) {
            ((xo) this.b.get(i2)).a(this, k5Var, this.a, i);
        }
    }

    protected final void g() {
        k5 k5Var = (k5) xp.a(this.d);
        for (int i = 0; i < this.c; i++) {
            ((xo) this.b.get(i)).c(this, k5Var, this.a);
        }
        this.d = null;
    }
}
