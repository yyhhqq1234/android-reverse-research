package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class bi extends c2 implements ai.b {
    private final sd g;
    private final sd.g h;
    private final h5.a i;
    private final zh.a j;
    private final a7 k;
    private final lc l;
    private final int m;
    private boolean n;
    private long o;
    private boolean p;
    private boolean q;
    private xo r;

    @Override // com.applovin.impl.ae
    public void b() {
    }

    public static final class b implements ce {
        private final h5.a a;
        private zh.a b;
        private b7 c;
        private lc d;
        private int e;
        private String f;
        private Object g;

        public b(h5.a aVar) {
            this(aVar, new b6());
        }

        public b(h5.a aVar, final n8 n8Var) {
            this(aVar, new zh.a() { // from class: com.applovin.impl.bi$b$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.zh.a
                public final zh a() {
                    return bi.b.a(n8Var);
                }
            });
        }

        public bi a(sd sdVar) {
            b1.a(sdVar.b);
            sd.g gVar = sdVar.b;
            boolean z = gVar.g == null && this.g != null;
            boolean z2 = gVar.e == null && this.f != null;
            if (z && z2) {
                sdVar = sdVar.a().a(this.g).a(this.f).a();
            } else if (z) {
                sdVar = sdVar.a().a(this.g).a();
            } else if (z2) {
                sdVar = sdVar.a().a(this.f).a();
            }
            sd sdVar2 = sdVar;
            return new bi(sdVar2, this.a, this.b, this.c.a(sdVar2), this.d, this.e, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ zh a(n8 n8Var) {
            return new q2(n8Var);
        }

        public b(h5.a aVar, zh.a aVar2) {
            this.a = aVar;
            this.b = aVar2;
            this.c = new y5();
            this.d = new f6();
            this.e = 1048576;
        }
    }

    private bi(sd sdVar, h5.a aVar, zh.a aVar2, a7 a7Var, lc lcVar, int i) {
        this.h = (sd.g) b1.a(sdVar.b);
        this.g = sdVar;
        this.i = aVar;
        this.j = aVar2;
        this.k = a7Var;
        this.l = lcVar;
        this.m = i;
        this.n = true;
        this.o = -9223372036854775807L;
    }

    @Override // com.applovin.impl.ae
    public vd a(ae.a aVar, n0 n0Var, long j) {
        h5 h5VarA = this.i.a();
        xo xoVar = this.r;
        if (xoVar != null) {
            h5VarA.a(xoVar);
        }
        return new ai(this.h.a, h5VarA, this.j.a(), this.k, a(aVar), this.l, b(aVar), this, n0Var, this.h.e, this.m);
    }

    @Override // com.applovin.impl.c2
    protected void h() {
        this.k.a();
    }

    /* synthetic */ bi(sd sdVar, h5.a aVar, zh.a aVar2, a7 a7Var, lc lcVar, int i, a aVar3) {
        this(sdVar, aVar, aVar2, a7Var, lcVar, i);
    }

    private void i() {
        fo gkVar = new gk(this.o, this.p, false, this.q, null, this.g);
        if (this.n) {
            gkVar = new a(gkVar);
        }
        a(gkVar);
    }

    class a extends h9 {
        a(fo foVar) {
            super(foVar);
        }

        @Override // com.applovin.impl.h9, com.applovin.impl.fo
        public fo.b a(int i, fo.b bVar, boolean z) {
            super.a(i, bVar, z);
            bVar.g = true;
            return bVar;
        }

        @Override // com.applovin.impl.h9, com.applovin.impl.fo
        public fo.d a(int i, fo.d dVar, long j) {
            super.a(i, dVar, j);
            dVar.m = true;
            return dVar;
        }
    }

    @Override // com.applovin.impl.ae
    public sd a() {
        return this.g;
    }

    @Override // com.applovin.impl.ai.b
    public void a(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.o;
        }
        if (!this.n && this.o == j && this.p == z && this.q == z2) {
            return;
        }
        this.o = j;
        this.p = z;
        this.q = z2;
        this.n = false;
        i();
    }

    @Override // com.applovin.impl.c2
    protected void a(xo xoVar) {
        this.r = xoVar;
        this.k.b();
        i();
    }

    @Override // com.applovin.impl.ae
    public void a(vd vdVar) {
        ((ai) vdVar).t();
    }
}
