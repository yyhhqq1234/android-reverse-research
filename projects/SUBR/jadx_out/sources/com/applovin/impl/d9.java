package com.applovin.impl;

import android.net.Uri;
import java.util.Map;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public final class d9 implements j8 {
    public static final n8 q = new n8() { // from class: com.applovin.impl.d9$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return d9.d();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private l8 f;
    private boolean h;
    private long i;
    private int j;
    private int k;
    private int l;
    private long m;
    private boolean n;
    private s1 o;
    private yq p;
    private final ah a = new ah(4);
    private final ah b = new ah(9);
    private final ah c = new ah(11);
    private final ah d = new ah();
    private final ej e = new ej();
    private int g = 1;

    @Override // com.applovin.impl.j8
    public void a() {
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.f = l8Var;
    }

    private void f(k8 k8Var) {
        k8Var.a(this.j);
        this.j = 0;
        this.g = 3;
    }

    private boolean e(k8 k8Var) {
        if (!k8Var.a(this.c.c(), 0, 11, true)) {
            return false;
        }
        this.c.f(0);
        this.k = this.c.w();
        this.l = this.c.z();
        this.m = this.c.z();
        this.m = (((long) (this.c.w() << 24)) | this.m) * 1000;
        this.c.g(3);
        this.g = 4;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    private boolean d(k8 k8Var) {
        boolean zA;
        boolean z;
        long j;
        long jC = c();
        int i = this.k;
        if (i == 8 && this.o != null) {
            b();
            zA = this.o.a(b(k8Var), jC);
        } else if (i == 9 && this.p != null) {
            b();
            zA = this.p.a(b(k8Var), jC);
        } else {
            if (i == 18 && !this.n) {
                zA = this.e.a(b(k8Var), jC);
                long jA = this.e.a();
                if (jA != -9223372036854775807L) {
                    this.f.a(new lb(this.e.b(), this.e.c(), jA));
                    this.n = true;
                }
            } else {
                k8Var.a(this.l);
                zA = false;
                z = false;
            }
            if (!this.h && zA) {
                this.h = true;
                if (this.e.a() == -9223372036854775807L) {
                    j = -this.m;
                } else {
                    j = 0;
                }
                this.i = j;
            }
            this.j = 4;
            this.g = 2;
            return z;
        }
        z = true;
        if (!this.h) {
            this.h = true;
            if (this.e.a() == -9223372036854775807L) {
                j = -this.m;
            } else {
                j = 0;
            }
            this.i = j;
        }
        this.j = 4;
        this.g = 2;
        return z;
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) {
        b1.b(this.f);
        while (true) {
            int i = this.g;
            if (i != 1) {
                if (i == 2) {
                    f(k8Var);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    }
                    if (d(k8Var)) {
                        return 0;
                    }
                } else if (!e(k8Var)) {
                    return -1;
                }
            } else if (!c(k8Var)) {
                return -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] d() {
        return new j8[]{new d9()};
    }

    private void b() {
        if (this.n) {
            return;
        }
        this.f.a(new ij.b(-9223372036854775807L));
        this.n = true;
    }

    private long c() {
        if (this.h) {
            return this.i + this.m;
        }
        if (this.e.a() == -9223372036854775807L) {
            return 0L;
        }
        return this.m;
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        if (j == 0) {
            this.g = 1;
            this.h = false;
        } else {
            this.g = 3;
        }
        this.j = 0;
    }

    private boolean c(k8 k8Var) {
        if (!k8Var.a(this.b.c(), 0, 9, true)) {
            return false;
        }
        this.b.f(0);
        this.b.g(4);
        int iW = this.b.w();
        boolean z = (iW & 4) != 0;
        boolean z2 = (iW & 1) != 0;
        if (z && this.o == null) {
            this.o = new s1(this.f.a(8, 1));
        }
        if (z2 && this.p == null) {
            this.p = new yq(this.f.a(9, 2));
        }
        this.f.c();
        this.j = this.b.j() - 5;
        this.g = 2;
        return true;
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        k8Var.c(this.a.c(), 0, 3);
        this.a.f(0);
        if (this.a.z() != 4607062) {
            return false;
        }
        k8Var.c(this.a.c(), 0, 2);
        this.a.f(0);
        if ((this.a.C() & IronSourceConstants.INTERSTITIAL_DAILY_CAPPED) != 0) {
            return false;
        }
        k8Var.c(this.a.c(), 0, 4);
        this.a.f(0);
        int iJ = this.a.j();
        k8Var.b();
        k8Var.c(iJ);
        k8Var.c(this.a.c(), 0, 4);
        this.a.f(0);
        return this.a.j() == 0;
    }

    private ah b(k8 k8Var) {
        if (this.l > this.d.b()) {
            ah ahVar = this.d;
            ahVar.a(new byte[Math.max(ahVar.b() * 2, this.l)], 0);
        } else {
            this.d.f(0);
        }
        this.d.e(this.l);
        k8Var.d(this.d.c(), 0, this.l);
        return this.d;
    }
}
