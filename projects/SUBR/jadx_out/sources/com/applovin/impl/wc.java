package com.applovin.impl;

import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public final class wc extends b4 {
    private final ae j;
    private final boolean k;
    private final fo.d l;
    private final fo.b m;
    private a n;
    private vc o;
    private boolean p;
    private boolean q;
    private boolean r;

    public static final class b extends fo {
        private final sd c;

        @Override // com.applovin.impl.fo
        public int a() {
            return 1;
        }

        @Override // com.applovin.impl.fo
        public int b() {
            return 1;
        }

        @Override // com.applovin.impl.fo
        public Object b(int i) {
            return a.g;
        }

        public b(sd sdVar) {
            this.c = sdVar;
        }

        @Override // com.applovin.impl.fo
        public int a(Object obj) {
            return obj == a.g ? 0 : -1;
        }

        @Override // com.applovin.impl.fo
        public fo.b a(int i, fo.b bVar, boolean z) {
            bVar.a(z ? 0 : null, z ? a.g : null, 0, -9223372036854775807L, 0L, u.h, true);
            return bVar;
        }

        @Override // com.applovin.impl.fo
        public fo.d a(int i, fo.d dVar, long j) {
            dVar.a(fo.d.s, this.c, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, false, true, null, 0L, -9223372036854775807L, 0, 0, 0L);
            dVar.m = true;
            return dVar;
        }
    }

    @Override // com.applovin.impl.ae
    public void b() {
    }

    public wc(ae aeVar, boolean z) {
        this.j = aeVar;
        this.k = z && aeVar.c();
        this.l = new fo.d();
        this.m = new fo.b();
        fo foVarD = aeVar.d();
        if (foVarD != null) {
            this.n = a.a(foVarD, (Object) null, (Object) null);
            this.r = true;
        } else {
            this.n = a.a(aeVar.a());
        }
    }

    public fo i() {
        return this.n;
    }

    @Override // com.applovin.impl.ae
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public vc a(ae.a aVar, n0 n0Var, long j) {
        vc vcVar = new vc(aVar, n0Var, j);
        vcVar.a(this.j);
        if (this.q) {
            vcVar.a(aVar.b(b(aVar.a)));
        } else {
            this.o = vcVar;
            if (!this.p) {
                this.p = true;
                a((Object) null, this.j);
            }
        }
        return vcVar;
    }

    @Override // com.applovin.impl.b4, com.applovin.impl.c2
    public void h() {
        this.q = false;
        this.p = false;
        super.h();
    }

    private static final class a extends h9 {
        public static final Object g = new Object();
        private final Object d;
        private final Object f;

        private a(fo foVar, Object obj, Object obj2) {
            super(foVar);
            this.d = obj;
            this.f = obj2;
        }

        @Override // com.applovin.impl.h9, com.applovin.impl.fo
        public Object b(int i) {
            Object objB = this.c.b(i);
            return xp.a(objB, this.f) ? g : objB;
        }

        @Override // com.applovin.impl.h9, com.applovin.impl.fo
        public int a(Object obj) {
            Object obj2;
            fo foVar = this.c;
            if (g.equals(obj) && (obj2 = this.f) != null) {
                obj = obj2;
            }
            return foVar.a(obj);
        }

        @Override // com.applovin.impl.h9, com.applovin.impl.fo
        public fo.b a(int i, fo.b bVar, boolean z) {
            this.c.a(i, bVar, z);
            if (xp.a(bVar.b, this.f) && z) {
                bVar.b = g;
            }
            return bVar;
        }

        @Override // com.applovin.impl.h9, com.applovin.impl.fo
        public fo.d a(int i, fo.d dVar, long j) {
            this.c.a(i, dVar, j);
            if (xp.a(dVar.a, this.d)) {
                dVar.a = fo.d.s;
            }
            return dVar;
        }

        public static a a(sd sdVar) {
            return new a(new b(sdVar), fo.d.s, g);
        }

        public static a a(fo foVar, Object obj, Object obj2) {
            return new a(foVar, obj, obj2);
        }

        public a a(fo foVar) {
            return new a(foVar, this.d, this.f);
        }
    }

    private Object a(Object obj) {
        return (this.n.f == null || !this.n.f.equals(obj)) ? obj : a.g;
    }

    private Object b(Object obj) {
        return (this.n.f == null || !obj.equals(a.g)) ? obj : this.n.f;
    }

    @Override // com.applovin.impl.ae
    public sd a() {
        return this.j.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.b4
    public ae.a a(Void r1, ae.a aVar) {
        return aVar.b(a(aVar.a));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:19:0x0074  */
    /* JADX WARN: Code duplicated, block: B:30:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.applovin.impl.b4
    public void a(Void r13, ae aeVar, fo foVar) {
        long j;
        a aVarA;
        ae.a aVarB;
        a aVarA2;
        if (this.q) {
            this.n = this.n.a(foVar);
            vc vcVar = this.o;
            if (vcVar != null) {
                a(vcVar.c());
            }
        } else if (foVar.c()) {
            if (this.r) {
                aVarA2 = this.n.a(foVar);
            } else {
                aVarA2 = a.a(foVar, fo.d.s, a.g);
            }
            this.n = aVarA2;
        } else {
            foVar.a(0, this.l);
            long jC = this.l.c();
            Object obj = this.l.a;
            vc vcVar2 = this.o;
            if (vcVar2 != null) {
                long jD = vcVar2.d();
                this.n.a(this.o.a.a, this.m);
                long jE = this.m.e() + jD;
                if (jE != this.n.a(0, this.l).c()) {
                    j = jE;
                } else {
                    j = jC;
                }
            } else {
                j = jC;
            }
            Pair pairA = foVar.a(this.l, this.m, 0, j);
            Object obj2 = pairA.first;
            long jLongValue = ((Long) pairA.second).longValue();
            if (this.r) {
                aVarA = this.n.a(foVar);
            } else {
                aVarA = a.a(foVar, obj, obj2);
            }
            this.n = aVarA;
            vc vcVar3 = this.o;
            if (vcVar3 != null) {
                a(jLongValue);
                ae.a aVar = vcVar3.a;
                aVarB = aVar.b(b(aVar.a));
            }
            this.r = true;
            this.q = true;
            a((fo) this.n);
            if (aVarB != null) {
                ((vc) b1.a(this.o)).a(aVarB);
            }
        }
        aVarB = null;
        this.r = true;
        this.q = true;
        a((fo) this.n);
        if (aVarB != null) {
            ((vc) b1.a(this.o)).a(aVarB);
        }
    }

    @Override // com.applovin.impl.b4, com.applovin.impl.c2
    public void a(xo xoVar) {
        super.a(xoVar);
        if (this.k) {
            return;
        }
        this.p = true;
        a((Object) null, this.j);
    }

    @Override // com.applovin.impl.ae
    public void a(vd vdVar) {
        ((vc) vdVar).i();
        if (vdVar == this.o) {
            this.o = null;
        }
    }

    private void a(long j) {
        vc vcVar = this.o;
        int iA = this.n.a(vcVar.a.a);
        if (iA == -1) {
            return;
        }
        long j2 = this.n.a(iA, this.m).d;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        vcVar.e(j);
    }
}
