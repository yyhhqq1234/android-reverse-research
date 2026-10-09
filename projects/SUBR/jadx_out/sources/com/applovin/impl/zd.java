package com.applovin.impl;

import android.os.Handler;
import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
final class zd {
    private final fo.b a = new fo.b();
    private final fo.d b = new fo.d();
    private final r0 c;
    private final Handler d;
    private long e;
    private int f;
    private boolean g;
    private wd h;
    private wd i;
    private wd j;
    private int k;
    private Object l;
    private long m;

    private boolean a(long j, long j2) {
        return j == -9223372036854775807L || j == j2;
    }

    public zd(r0 r0Var, Handler handler) {
        this.c = r0Var;
        this.d = handler;
    }

    public boolean h() {
        wd wdVar = this.j;
        return wdVar == null || (!wdVar.f.i && wdVar.j() && this.j.f.e != -9223372036854775807L && this.k < 100);
    }

    public wd d() {
        return this.j;
    }

    public wd e() {
        return this.h;
    }

    public wd f() {
        return this.i;
    }

    public wd b() {
        wd wdVar = this.i;
        b1.b((wdVar == null || wdVar.d() == null) ? false : true);
        this.i = this.i.d();
        g();
        return this.i;
    }

    public wd a() {
        wd wdVar = this.h;
        if (wdVar == null) {
            return null;
        }
        if (wdVar == this.i) {
            this.i = wdVar.d();
        }
        this.h.l();
        int i = this.k - 1;
        this.k = i;
        if (i == 0) {
            this.j = null;
            wd wdVar2 = this.h;
            this.l = wdVar2.b;
            this.m = wdVar2.f.a.d;
        }
        this.h = this.h.d();
        g();
        return this.h;
    }

    public void c() {
        if (this.k == 0) {
            return;
        }
        wd wdVarD = (wd) b1.b(this.h);
        this.l = wdVarD.b;
        this.m = wdVarD.f.a.d;
        while (wdVarD != null) {
            wdVarD.l();
            wdVarD = wdVarD.d();
        }
        this.h = null;
        this.j = null;
        this.i = null;
        this.k = 0;
        g();
    }

    private void g() {
        if (this.c != null) {
            final db.a aVarF = db.f();
            for (wd wdVarD = this.h; wdVarD != null; wdVarD = wdVarD.d()) {
                aVarF.b(wdVarD.f.a);
            }
            wd wdVar = this.i;
            final ae.a aVar = wdVar == null ? null : wdVar.f.a;
            this.d.post(new Runnable() { // from class: com.applovin.impl.zd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(aVarF, aVar);
                }
            });
        }
    }

    private boolean a(yd ydVar, yd ydVar2) {
        return ydVar.b == ydVar2.b && ydVar.a.equals(ydVar2.a);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    public wd a(ri[] riVarArr, vo voVar, n0 n0Var, ee eeVar, yd ydVar, wo woVar) {
        long jF;
        wd wdVar = this.j;
        if (wdVar == null) {
            if (ydVar.a.a()) {
                jF = ydVar.c;
                if (jF == -9223372036854775807L) {
                    jF = 0;
                }
            } else {
                jF = 0;
            }
        } else {
            jF = (wdVar.f() + this.j.f.e) - ydVar.b;
        }
        wd wdVar2 = new wd(riVarArr, jF, voVar, n0Var, eeVar, ydVar, woVar);
        wd wdVar3 = this.j;
        if (wdVar3 != null) {
            wdVar3.a(wdVar2);
        } else {
            this.h = wdVar2;
            this.i = wdVar2;
        }
        this.l = null;
        this.j = wdVar2;
        this.k++;
        g();
        return wdVar2;
    }

    private yd a(oh ohVar) {
        return a(ohVar.a, ohVar.b, ohVar.c, ohVar.s);
    }

    private yd a(fo foVar, wd wdVar, long j) {
        long j2;
        yd ydVar = wdVar.f;
        long jF = (wdVar.f() + ydVar.e) - j;
        if (ydVar.g) {
            long j3 = 0;
            int iA = foVar.a(foVar.a(ydVar.a.a), this.a, this.b, this.f, this.g);
            if (iA == -1) {
                return null;
            }
            int i = foVar.a(iA, this.a, true).c;
            Object obj = this.a.b;
            long j4 = ydVar.a.d;
            if (foVar.a(i, this.b).p == iA) {
                Pair pairA = foVar.a(this.b, this.a, i, -9223372036854775807L, Math.max(0L, jF));
                if (pairA == null) {
                    return null;
                }
                obj = pairA.first;
                long jLongValue = ((Long) pairA.second).longValue();
                wd wdVarD = wdVar.d();
                if (wdVarD != null && wdVarD.b.equals(obj)) {
                    j4 = wdVarD.f.a.d;
                } else {
                    j4 = this.e;
                    this.e = 1 + j4;
                }
                j2 = jLongValue;
                j3 = -9223372036854775807L;
            } else {
                j2 = 0;
            }
            return a(foVar, a(foVar, obj, j2, j4, this.a), j3, j2);
        }
        ae.a aVar = ydVar.a;
        foVar.a(aVar.a, this.a);
        if (aVar.a()) {
            int i2 = aVar.b;
            int iA2 = this.a.a(i2);
            if (iA2 == -1) {
                return null;
            }
            int iB = this.a.b(i2, aVar.c);
            if (iB < iA2) {
                return a(foVar, aVar.a, i2, iB, ydVar.c, aVar.d);
            }
            long jLongValue2 = ydVar.c;
            if (jLongValue2 == -9223372036854775807L) {
                fo.d dVar = this.b;
                fo.b bVar = this.a;
                Pair pairA2 = foVar.a(dVar, bVar, bVar.c, -9223372036854775807L, Math.max(0L, jF));
                if (pairA2 == null) {
                    return null;
                }
                jLongValue2 = ((Long) pairA2.second).longValue();
            }
            return a(foVar, aVar.a, Math.max(a(foVar, aVar.a, aVar.b), jLongValue2), ydVar.c, aVar.d);
        }
        int iD = this.a.d(aVar.e);
        if (iD == this.a.a(aVar.e)) {
            return a(foVar, aVar.a, a(foVar, aVar.a, aVar.e), ydVar.e, aVar.d);
        }
        return a(foVar, aVar.a, aVar.e, iD, ydVar.e, aVar.d);
    }

    private yd a(fo foVar, ae.a aVar, long j, long j2) {
        foVar.a(aVar.a, this.a);
        if (aVar.a()) {
            return a(foVar, aVar.a, aVar.b, aVar.c, j, aVar.d);
        }
        return a(foVar, aVar.a, j2, j, aVar.d);
    }

    private yd a(fo foVar, Object obj, int i, int i2, long j, long j2) {
        ae.a aVar = new ae.a(obj, i, i2, j2);
        long jA = foVar.a(aVar.a, this.a).a(aVar.b, aVar.c);
        long jB = i2 == this.a.d(i) ? this.a.b() : 0L;
        return new yd(aVar, (jA == -9223372036854775807L || jB < jA) ? jB : Math.max(0L, jA - 1), j, -9223372036854775807L, jA, this.a.f(aVar.b), false, false, false);
    }

    private yd a(fo foVar, Object obj, long j, long j2, long j3) {
        long jMax = j;
        foVar.a(obj, this.a);
        int iA = this.a.a(jMax);
        ae.a aVar = new ae.a(obj, j3, iA);
        boolean zA = a(aVar);
        boolean zA2 = a(foVar, aVar);
        boolean zA3 = a(foVar, aVar, zA);
        boolean z = iA != -1 && this.a.f(iA);
        long jB = iA != -1 ? this.a.b(iA) : -9223372036854775807L;
        long j4 = (jB == -9223372036854775807L || jB == Long.MIN_VALUE) ? this.a.d : jB;
        if (j4 != -9223372036854775807L && jMax >= j4) {
            jMax = Math.max(0L, j4 - 1);
        }
        return new yd(aVar, jMax, j2, jB, j4, z, zA, zA2, zA3);
    }

    private long a(fo foVar, Object obj, int i) {
        foVar.a(obj, this.a);
        long jB = this.a.b(i);
        if (jB == Long.MIN_VALUE) {
            return this.a.d;
        }
        return jB + this.a.c(i);
    }

    public yd a(long j, oh ohVar) {
        wd wdVar = this.j;
        if (wdVar == null) {
            return a(ohVar);
        }
        return a(ohVar.a, wdVar, j);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:23:0x006c  */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    public yd a(fo foVar, yd ydVar) {
        long jC;
        long j;
        int i;
        boolean zF;
        int i2;
        ae.a aVar = ydVar.a;
        boolean zA = a(aVar);
        boolean zA2 = a(foVar, aVar);
        boolean zA3 = a(foVar, aVar, zA);
        foVar.a(ydVar.a.a, this.a);
        long jB = (aVar.a() || (i2 = aVar.e) == -1) ? -9223372036854775807L : this.a.b(i2);
        if (aVar.a()) {
            jC = this.a.a(aVar.b, aVar.c);
        } else {
            if (jB == -9223372036854775807L || jB == Long.MIN_VALUE) {
                jC = this.a.c();
            } else {
                j = jB;
            }
            if (aVar.a()) {
                zF = this.a.f(aVar.b);
            } else {
                i = aVar.e;
                if (i == -1 && this.a.f(i)) {
                    zF = true;
                } else {
                    zF = false;
                }
            }
            return new yd(aVar, ydVar.b, ydVar.c, jB, j, zF, zA, zA2, zA3);
        }
        j = jC;
        if (aVar.a()) {
            zF = this.a.f(aVar.b);
        } else {
            i = aVar.e;
            if (i == -1) {
                zF = false;
            } else {
                zF = false;
            }
        }
        return new yd(aVar, ydVar.b, ydVar.c, jB, j, zF, zA, zA2, zA3);
    }

    private boolean a(ae.a aVar) {
        return !aVar.a() && aVar.e == -1;
    }

    private boolean a(fo foVar, ae.a aVar, boolean z) {
        int iA = foVar.a(aVar.a);
        return !foVar.a(foVar.a(iA, this.a).c, this.b).j && foVar.b(iA, this.a, this.b, this.f, this.g) && z;
    }

    private boolean a(fo foVar, ae.a aVar) {
        if (a(aVar)) {
            return foVar.a(foVar.a(aVar.a, this.a).c, this.b).q == foVar.a(aVar.a);
        }
        return false;
    }

    public boolean a(vd vdVar) {
        wd wdVar = this.j;
        return wdVar != null && wdVar.a == vdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(db.a aVar, ae.a aVar2) {
        this.c.a(aVar.a(), aVar2);
    }

    public void a(long j) {
        wd wdVar = this.j;
        if (wdVar != null) {
            wdVar.b(j);
        }
    }

    public boolean a(wd wdVar) {
        boolean z = false;
        b1.b(wdVar != null);
        if (wdVar.equals(this.j)) {
            return false;
        }
        this.j = wdVar;
        while (wdVar.d() != null) {
            wdVar = wdVar.d();
            if (wdVar == this.i) {
                this.i = this.h;
                z = true;
            }
            wdVar.l();
            this.k--;
        }
        this.j.a((wd) null);
        g();
        return z;
    }

    public ae.a a(fo foVar, Object obj, long j) {
        return a(foVar, obj, j, a(foVar, obj), this.a);
    }

    private static ae.a a(fo foVar, Object obj, long j, long j2, fo.b bVar) {
        foVar.a(obj, bVar);
        int iB = bVar.b(j);
        if (iB == -1) {
            return new ae.a(obj, j2, bVar.a(j));
        }
        return new ae.a(obj, iB, bVar.d(iB), j2);
    }

    private long a(fo foVar, Object obj) {
        int iA;
        int i = foVar.a(obj, this.a).c;
        Object obj2 = this.l;
        if (obj2 != null && (iA = foVar.a(obj2)) != -1 && foVar.a(iA, this.a).c == i) {
            return this.m;
        }
        for (wd wdVarD = this.h; wdVarD != null; wdVarD = wdVarD.d()) {
            if (wdVarD.b.equals(obj)) {
                return wdVarD.f.a.d;
            }
        }
        for (wd wdVarD2 = this.h; wdVarD2 != null; wdVarD2 = wdVarD2.d()) {
            int iA2 = foVar.a(wdVarD2.b);
            if (iA2 != -1 && foVar.a(iA2, this.a).c == i) {
                return wdVarD2.f.a.d;
            }
        }
        long j = this.e;
        this.e = 1 + j;
        if (this.h == null) {
            this.l = obj;
            this.m = j;
        }
        return j;
    }

    private boolean a(fo foVar) {
        wd wdVarD = this.h;
        if (wdVarD == null) {
            return true;
        }
        int iA = foVar.a(wdVarD.b);
        while (true) {
            iA = foVar.a(iA, this.a, this.b, this.f, this.g);
            while (wdVarD.d() != null && !wdVarD.f.g) {
                wdVarD = wdVarD.d();
            }
            wd wdVarD2 = wdVarD.d();
            if (iA == -1 || wdVarD2 == null || foVar.a(wdVarD2.b) != iA) {
                break;
            }
            wdVarD = wdVarD2;
        }
        boolean zA = a(wdVarD);
        wdVarD.f = a(foVar, wdVarD.f);
        return !zA;
    }

    public boolean a(fo foVar, long j, long j2) {
        boolean zA;
        yd ydVarA;
        wd wdVarD = this.h;
        wd wdVar = null;
        while (wdVarD != null) {
            yd ydVar = wdVarD.f;
            if (wdVar == null) {
                ydVarA = a(foVar, ydVar);
            } else {
                yd ydVarA2 = a(foVar, wdVar, j);
                if (ydVarA2 == null) {
                    zA = a(wdVar);
                } else if (a(ydVar, ydVarA2)) {
                    ydVarA = ydVarA2;
                } else {
                    zA = a(wdVar);
                }
                return !zA;
            }
            wdVarD.f = ydVarA.a(ydVar.c);
            if (!a(ydVar.e, ydVarA.e)) {
                wdVarD.m();
                long j3 = ydVarA.e;
                return (a(wdVarD) || (wdVarD == this.i && !wdVarD.f.f && ((j2 > Long.MIN_VALUE ? 1 : (j2 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j2 > ((j3 > (-9223372036854775807L) ? 1 : (j3 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : wdVarD.e(j3)) ? 1 : (j2 == ((j3 > (-9223372036854775807L) ? 1 : (j3 == (-9223372036854775807L) ? 0 : -1)) == 0 ? Long.MAX_VALUE : wdVarD.e(j3)) ? 0 : -1)) >= 0))) ? false : true;
            }
            wdVar = wdVarD;
            wdVarD = wdVarD.d();
        }
        return true;
    }

    public boolean a(fo foVar, int i) {
        this.f = i;
        return a(foVar);
    }

    public boolean a(fo foVar, boolean z) {
        this.g = z;
        return a(foVar);
    }
}
