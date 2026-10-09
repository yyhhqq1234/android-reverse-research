package com.applovin.impl;

import android.net.Uri;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class q2 implements zh {
    private final n8 a;
    private j8 b;
    private k8 c;

    public q2(n8 n8Var) {
        this.a = n8Var;
    }

    @Override // com.applovin.impl.zh
    public void a(f5 f5Var, Uri uri, Map map, long j, long j2, l8 l8Var) throws rp {
        a6 a6Var = new a6(f5Var, j, j2);
        this.c = a6Var;
        if (this.b != null) {
            return;
        }
        j8[] j8VarArrA = this.a.a(uri, map);
        if (j8VarArrA.length == 1) {
            this.b = j8VarArrA[0];
        } else {
            for (j8 j8Var : j8VarArrA) {
                try {
                    if (j8Var.a(a6Var)) {
                        this.b = j8Var;
                        b1.b(true);
                        a6Var.b();
                        break;
                    }
                    b1.b(this.b != null || a6Var.f() == j);
                    a6Var.b();
                } catch (EOFException unused) {
                    b1.b(this.b != null || a6Var.f() == j);
                    a6Var.b();
                } catch (Throwable th) {
                    b1.b(this.b != null || a6Var.f() == j);
                    a6Var.b();
                    throw th;
                }
            }
            if (this.b == null) {
                throw new rp("None of the available extractors (" + xp.b(j8VarArrA) + ") could read the stream.", (Uri) b1.a(uri));
            }
        }
        this.b.a(l8Var);
    }

    @Override // com.applovin.impl.zh
    public void c() {
        j8 j8Var = this.b;
        if (j8Var instanceof nf) {
            ((nf) j8Var).c();
        }
    }

    @Override // com.applovin.impl.zh
    public long b() {
        k8 k8Var = this.c;
        if (k8Var != null) {
            return k8Var.f();
        }
        return -1L;
    }

    @Override // com.applovin.impl.zh
    public int a(th thVar) {
        return ((j8) b1.a(this.b)).a((k8) b1.a(this.c), thVar);
    }

    @Override // com.applovin.impl.zh
    public void a() {
        j8 j8Var = this.b;
        if (j8Var != null) {
            j8Var.a();
            this.b = null;
        }
        this.c = null;
    }

    @Override // com.applovin.impl.zh
    public void a(long j, long j2) {
        ((j8) b1.a(this.b)).a(j, j2);
    }
}
