package com.applovin.impl;

import android.net.Uri;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class nf implements j8 {
    public static final n8 u = new n8() { // from class: com.applovin.impl.nf$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return nf.d();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private static final wa.a v = new wa.a() { // from class: com.applovin.impl.nf$$ExternalSyntheticLambda1
        @Override // com.applovin.impl.wa.a
        public final boolean a(int i, int i2, int i3, int i4, int i5) {
            return nf.a(i, i2, i3, i4, i5);
        }
    };
    private final int a;
    private final long b;
    private final ah c;
    private final sf.a d;
    private final y9 e;
    private final ya f;
    private final qo g;
    private l8 h;
    private qo i;
    private qo j;
    private int k;
    private af l;
    private long m;
    private long n;
    private long o;
    private int p;
    private lj q;
    private boolean r;
    private boolean s;
    private long t;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    private static boolean a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    @Override // com.applovin.impl.j8
    public void a() {
    }

    public nf() {
        this(0);
    }

    public void c() {
        this.r = true;
    }

    private int e(k8 k8Var) throws ch {
        if (this.k == 0) {
            try {
                b(k8Var, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.q == null) {
            lj ljVarB = b(k8Var);
            this.q = ljVarB;
            this.h.a(ljVarB);
            this.j.a(new e9.b().f(this.d.b).i(4096).c(this.d.e).n(this.d.d).e(this.e.a).f(this.e.b).a((this.a & 8) != 0 ? null : this.l).a());
            this.o = k8Var.f();
        } else if (this.o != 0) {
            long jF = k8Var.f();
            long j = this.o;
            if (jF < j) {
                k8Var.a((int) (j - jF));
            }
        }
        return f(k8Var);
    }

    private int f(k8 k8Var) {
        if (this.p == 0) {
            k8Var.b();
            if (d(k8Var)) {
                return -1;
            }
            this.c.f(0);
            int iJ = this.c.j();
            if (a(iJ, this.k) && sf.b(iJ) != -1) {
                this.d.a(iJ);
                if (this.m == -9223372036854775807L) {
                    this.m = this.q.a(k8Var.f());
                    if (this.b != -9223372036854775807L) {
                        this.m += this.b - this.q.a(0L);
                    }
                }
                sf.a aVar = this.d;
                this.p = aVar.c;
                lj ljVar = this.q;
                if (ljVar instanceof mb) {
                    mb mbVar = (mb) ljVar;
                    mbVar.a(a(this.n + ((long) aVar.g)), k8Var.f() + ((long) this.d.c));
                    if (this.s && mbVar.c(this.t)) {
                        this.s = false;
                        this.j = this.i;
                    }
                }
            } else {
                k8Var.a(1);
                this.k = 0;
                return 0;
            }
        }
        int iA = this.j.a((f5) k8Var, this.p, true);
        if (iA == -1) {
            return -1;
        }
        int i = this.p - iA;
        this.p = i;
        if (i > 0) {
            return 0;
        }
        this.j.a(a(this.n), 1, this.d.c, 0, null);
        this.n += (long) this.d.g;
        this.p = 0;
        return 0;
    }

    public nf(int i) {
        this(i, -9223372036854775807L);
    }

    private long a(long j) {
        return this.m + ((j * 1000000) / ((long) this.d.d));
    }

    private boolean d(k8 k8Var) {
        lj ljVar = this.q;
        if (ljVar != null) {
            long jC = ljVar.c();
            if (jC != -1 && k8Var.d() > jC - 4) {
                return true;
            }
        }
        try {
            return !k8Var.b(this.c.c(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] d() {
        return new j8[]{new nf()};
    }

    public nf(int i, long j) {
        this.a = (i & 2) != 0 ? i | 1 : i;
        this.b = j;
        this.c = new ah(10);
        this.d = new sf.a();
        this.e = new y9();
        this.m = -9223372036854775807L;
        this.f = new ya();
        h7 h7Var = new h7();
        this.g = h7Var;
        this.j = h7Var;
    }

    private void b() {
        b1.b(this.i);
        xp.a(this.h);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002a  */
    private lj c(k8 k8Var) {
        int i;
        ah ahVar = new ah(this.d.c);
        k8Var.c(ahVar.c(), 0, this.d.c);
        sf.a aVar = this.d;
        if ((aVar.a & 1) != 0) {
            if (aVar.e != 1) {
                i = 36;
            } else {
                i = 21;
            }
        } else if (aVar.e != 1) {
            i = 21;
        } else {
            i = 13;
        }
        int iA = a(ahVar, i);
        if (iA != 1483304551 && iA != 1231971951) {
            if (iA == 1447187017) {
                pq pqVarA = pq.a(k8Var.a(), k8Var.f(), this.d, ahVar);
                k8Var.a(this.d.c);
                return pqVarA;
            }
            k8Var.b();
            return null;
        }
        ds dsVarA = ds.a(k8Var.a(), k8Var.f(), this.d, ahVar);
        if (dsVarA != null && !this.e.a()) {
            k8Var.b();
            k8Var.c(i + 141);
            k8Var.c(this.c.c(), 0, 3);
            this.c.f(0);
            this.e.a(this.c.z());
        }
        k8Var.a(this.d.c);
        return (dsVarA == null || dsVarA.b() || iA != 1231971951) ? dsVarA : a(k8Var, false);
    }

    private lj a(k8 k8Var, boolean z) {
        k8Var.c(this.c.c(), 0, 4);
        this.c.f(0);
        this.d.a(this.c.j());
        return new p4(k8Var.a(), k8Var.f(), this.d, z);
    }

    private lj b(k8 k8Var) {
        long jA;
        long jC;
        lj ljVarC = c(k8Var);
        jf jfVarA = a(this.l, k8Var.f());
        if (this.r) {
            return new lj.a();
        }
        if ((this.a & 4) != 0) {
            if (jfVarA != null) {
                jA = jfVarA.d();
                jC = jfVarA.c();
            } else if (ljVarC != null) {
                jA = ljVarC.d();
                jC = ljVarC.c();
            } else {
                jA = a(this.l);
                jC = -1;
            }
            ljVarC = new mb(jA, k8Var.f(), jC);
        } else if (jfVarA != null) {
            ljVarC = jfVarA;
        } else if (ljVarC == null) {
            ljVarC = null;
        }
        if (ljVarC == null || !(ljVarC.b() || (this.a & 1) == 0)) {
            return a(k8Var, (this.a & 2) != 0);
        }
        return ljVarC;
    }

    private boolean b(k8 k8Var, boolean z) throws ch, EOFException {
        int i;
        int iD;
        int iB;
        int i2 = z ? 32768 : 131072;
        k8Var.b();
        if (k8Var.f() == 0) {
            af afVarA = this.f.a(k8Var, (this.a & 8) == 0 ? null : v);
            this.l = afVarA;
            if (afVarA != null) {
                this.e.a(afVarA);
            }
            iD = (int) k8Var.d();
            if (!z) {
                k8Var.a(iD);
            }
            i = 0;
        } else {
            i = 0;
            iD = 0;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (d(k8Var)) {
                if (i3 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.c.f(0);
            int iJ = this.c.j();
            if ((i == 0 || a(iJ, i)) && (iB = sf.b(iJ)) != -1) {
                i3++;
                if (i3 != 1) {
                    if (i3 == 4) {
                        break;
                    }
                } else {
                    this.d.a(iJ);
                    i = iJ;
                }
                k8Var.c(iB - 4);
            } else {
                int i5 = i4 + 1;
                if (i4 == i2) {
                    if (z) {
                        return false;
                    }
                    throw ch.a("Searched too many bytes.", null);
                }
                if (z) {
                    k8Var.b();
                    k8Var.c(iD + i5);
                } else {
                    k8Var.a(1);
                }
                i4 = i5;
                i = 0;
                i3 = 0;
            }
        }
        if (z) {
            k8Var.a(iD + i4);
        } else {
            k8Var.b();
        }
        this.k = i;
        return true;
    }

    private static long a(af afVar) {
        if (afVar == null) {
            return -9223372036854775807L;
        }
        int iC = afVar.c();
        for (int i = 0; i < iC; i++) {
            af.b bVarA = afVar.a(i);
            if (bVarA instanceof zn) {
                zn znVar = (zn) bVarA;
                if (znVar.a.equals("TLEN")) {
                    return t2.a(Long.parseLong(znVar.c));
                }
            }
        }
        return -9223372036854775807L;
    }

    private static int a(ah ahVar, int i) {
        if (ahVar.e() >= i + 4) {
            ahVar.f(i);
            int iJ = ahVar.j();
            if (iJ == 1483304551 || iJ == 1231971951) {
                return iJ;
            }
        }
        if (ahVar.e() < 40) {
            return 0;
        }
        ahVar.f(36);
        return ahVar.j() == 1447187017 ? 1447187017 : 0;
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.h = l8Var;
        qo qoVarA = l8Var.a(0, 1);
        this.i = qoVarA;
        this.j = qoVarA;
        this.h.c();
    }

    private static jf a(af afVar, long j) {
        if (afVar == null) {
            return null;
        }
        int iC = afVar.c();
        for (int i = 0; i < iC; i++) {
            af.b bVarA = afVar.a(i);
            if (bVarA instanceof Cif) {
                return jf.a(j, (Cif) bVarA, a(afVar));
            }
        }
        return null;
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        b();
        int iE = e(k8Var);
        if (iE == -1 && (this.q instanceof mb)) {
            long jA = a(this.n);
            if (this.q.d() != jA) {
                ((mb) this.q).d(jA);
                this.h.a(this.q);
            }
        }
        return iE;
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        this.k = 0;
        this.m = -9223372036854775807L;
        this.n = 0L;
        this.p = 0;
        this.t = j2;
        lj ljVar = this.q;
        if (!(ljVar instanceof mb) || ((mb) ljVar).c(j2)) {
            return;
        }
        this.s = true;
        this.j = this.g;
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        return b(k8Var, true);
    }
}
