package com.applovin.impl;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.SurfaceView;
import android.view.TextureView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
final class b8 extends d2 {
    private jj A;
    private wj B;
    private boolean C;
    private qh.b D;
    private ud E;
    private ud F;
    private oh G;
    private int H;
    private int I;
    private long J;
    final wo b;
    final qh.b c;
    private final qi[] d;
    private final vo e;
    private final ia f;
    private final d8.f g;
    private final d8 h;
    private final gc i;
    private final CopyOnWriteArraySet j;
    private final fo.b k;
    private final List l;
    private final boolean m;
    private final ce n;
    private final r0 o;
    private final Looper p;
    private final y1 q;
    private final long r;
    private final long s;
    private final l3 t;
    private int u;
    private boolean v;
    private int w;
    private int x;
    private boolean y;
    private int z;

    private fo R() {
        return new sh(this.l, this.B);
    }

    @Override // com.applovin.impl.qh
    public to A() {
        return new to(this.G.i.c);
    }

    @Override // com.applovin.impl.qh
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public db x() {
        return db.h();
    }

    @Override // com.applovin.impl.qh
    public void a(SurfaceView surfaceView) {
    }

    @Override // com.applovin.impl.qh
    public void a(TextureView textureView) {
    }

    @Override // com.applovin.impl.qh
    public void b(SurfaceView surfaceView) {
    }

    @Override // com.applovin.impl.qh
    public void b(TextureView textureView) {
    }

    @Override // com.applovin.impl.qh
    public long q() {
        return 3000L;
    }

    @Override // com.applovin.impl.qh
    public xq z() {
        return xq.f;
    }

    public b8(qi[] qiVarArr, vo voVar, ce ceVar, kc kcVar, y1 y1Var, r0 r0Var, boolean z, jj jjVar, long j, long j2, jc jcVar, long j3, boolean z2, l3 l3Var, Looper looper, qh qhVar, qh.b bVar) {
        oc.c("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.15.1] [" + xp.e + com.ironsource.y8.i.e);
        b1.b(qiVarArr.length > 0);
        this.d = (qi[]) b1.a(qiVarArr);
        this.e = (vo) b1.a(voVar);
        this.n = ceVar;
        this.q = y1Var;
        this.o = r0Var;
        this.m = z;
        this.A = jjVar;
        this.r = j;
        this.s = j2;
        this.C = z2;
        this.p = looper;
        this.t = l3Var;
        this.u = 0;
        final qh qhVar2 = qhVar != null ? qhVar : this;
        this.i = new gc(looper, l3Var, new gc.b() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda6
            @Override // com.applovin.impl.gc.b
            public final void a(Object obj, a9 a9Var) {
                b8.a(qhVar2, (qh.c) obj, a9Var);
            }
        });
        this.j = new CopyOnWriteArraySet();
        this.l = new ArrayList();
        this.B = new wj.a(0);
        wo woVar = new wo(new si[qiVarArr.length], new g8[qiVarArr.length], null);
        this.b = woVar;
        this.k = new fo.b();
        qh.b bVarA = new qh.b.a().a(1, 2, 12, 13, 14, 15, 16, 17, 18, 19).a(28, voVar.b()).a(bVar).a();
        this.c = bVarA;
        this.D = new qh.b.a().a(bVarA).a(3).a(9).a();
        ud udVar = ud.H;
        this.E = udVar;
        this.F = udVar;
        this.H = -1;
        this.f = l3Var.a(looper, null);
        d8.f fVar = new d8.f() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda7
            @Override // com.applovin.impl.d8.f
            public final void a(d8.e eVar) {
                this.f$0.c(eVar);
            }
        };
        this.g = fVar;
        this.G = oh.a(woVar);
        if (r0Var != null) {
            r0Var.a(qhVar2, looper);
            b((qh.e) r0Var);
            y1Var.a(new Handler(looper), r0Var);
        }
        this.h = new d8(qiVarArr, voVar, woVar, kcVar, y1Var, this.u, this.v, r0Var, jjVar, jcVar, j3, z2, looper, l3Var, fVar);
    }

    public void c(long j) {
        this.h.a(j);
    }

    public boolean S() {
        return this.G.p;
    }

    @Override // com.applovin.impl.qh
    public Looper p() {
        return this.p;
    }

    @Override // com.applovin.impl.qh
    public void b(qh.e eVar) {
        a((qh.c) eVar);
    }

    public void a(a8 a8Var) {
        this.j.add(a8Var);
    }

    @Override // com.applovin.impl.qh
    public qh.b i() {
        return this.D;
    }

    @Override // com.applovin.impl.qh
    public int o() {
        return this.G.e;
    }

    @Override // com.applovin.impl.qh
    public int j() {
        return this.G.m;
    }

    @Override // com.applovin.impl.qh
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public z7 c() {
        return this.G.f;
    }

    @Override // com.applovin.impl.qh
    public boolean l() {
        return this.G.l;
    }

    @Override // com.applovin.impl.qh
    public int m() {
        return this.u;
    }

    public void a(qh.c cVar) {
        this.i.a(cVar);
    }

    @Override // com.applovin.impl.qh
    public boolean r() {
        return this.v;
    }

    @Override // com.applovin.impl.qh
    public long F() {
        return this.r;
    }

    @Override // com.applovin.impl.qh
    public long e() {
        return this.s;
    }

    public void W() {
        oc.c("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [ExoPlayerLib/2.15.1] [" + xp.e + "] [" + e8.a() + com.ironsource.y8.i.e);
        if (!this.h.x()) {
            this.i.b(10, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda12
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.c((qh.c) obj);
                }
            });
        }
        this.i.b();
        this.f.a((Object) null);
        r0 r0Var = this.o;
        if (r0Var != null) {
            this.q.a(r0Var);
        }
        oh ohVarA = this.G.a(1);
        this.G = ohVarA;
        oh ohVarA2 = ohVarA.a(ohVarA.b);
        this.G = ohVarA2;
        ohVarA2.q = ohVarA2.s;
        this.G.r = 0L;
    }

    @Override // com.applovin.impl.qh
    public int v() {
        if (this.G.a.c()) {
            return this.I;
        }
        oh ohVar = this.G;
        return ohVar.a.a(ohVar.b.a);
    }

    @Override // com.applovin.impl.qh
    public int t() {
        int iU = U();
        if (iU == -1) {
            return 0;
        }
        return iU;
    }

    @Override // com.applovin.impl.qh
    public long getDuration() {
        if (d()) {
            oh ohVar = this.G;
            ae.a aVar = ohVar.b;
            ohVar.a.a(aVar.a, this.k);
            return t2.b(this.k.a(aVar.b, aVar.c));
        }
        return G();
    }

    @Override // com.applovin.impl.qh
    public long getCurrentPosition() {
        return t2.b(a(this.G));
    }

    @Override // com.applovin.impl.qh
    public long h() {
        return t2.b(this.G.r);
    }

    @Override // com.applovin.impl.qh
    public int E() {
        if (d()) {
            return this.G.b.b;
        }
        return -1;
    }

    @Override // com.applovin.impl.qh
    public int f() {
        if (d()) {
            return this.G.b.c;
        }
        return -1;
    }

    @Override // com.applovin.impl.qh
    public long g() {
        if (d()) {
            oh ohVar = this.G;
            ohVar.a.a(ohVar.b.a, this.k);
            oh ohVar2 = this.G;
            if (ohVar2.c == -9223372036854775807L) {
                return ohVar2.a.a(t(), this.a).b();
            }
            return this.k.d() + t2.b(this.G.c);
        }
        return getCurrentPosition();
    }

    @Override // com.applovin.impl.qh
    public long s() {
        if (this.G.a.c()) {
            return this.J;
        }
        oh ohVar = this.G;
        if (ohVar.k.d != ohVar.b.d) {
            return ohVar.a.a(t(), this.a).d();
        }
        long j = ohVar.q;
        if (this.G.k.a()) {
            oh ohVar2 = this.G;
            fo.b bVarA = ohVar2.a.a(ohVar2.k.a, this.k);
            long jB = bVarA.b(this.G.k.b);
            j = jB == Long.MIN_VALUE ? bVarA.d : jB;
        }
        oh ohVar3 = this.G;
        return t2.b(a(ohVar3.a, ohVar3.k, j));
    }

    @Override // com.applovin.impl.qh
    public po k() {
        return this.G.h;
    }

    @Override // com.applovin.impl.qh
    public ud C() {
        return this.E;
    }

    @Override // com.applovin.impl.qh
    public fo n() {
        return this.G.a;
    }

    private int U() {
        if (this.G.a.c()) {
            return this.H;
        }
        oh ohVar = this.G;
        return ohVar.a.a(ohVar.b.a, this.k).c;
    }

    private qh.f d(long j) {
        Object obj;
        sd sdVar;
        Object obj2;
        int iA;
        int iT = t();
        if (this.G.a.c()) {
            obj = null;
            sdVar = null;
            obj2 = null;
            iA = -1;
        } else {
            oh ohVar = this.G;
            Object obj3 = ohVar.b.a;
            ohVar.a.a(obj3, this.k);
            iA = this.G.a.a(obj3);
            obj2 = obj3;
            obj = this.G.a.a(iT, this.a).a;
            sdVar = this.a.c;
        }
        long jB = t2.b(j);
        long jB2 = this.G.b.a() ? t2.b(b(this.G)) : jB;
        ae.a aVar = this.G.b;
        return new qh.f(obj, iT, sdVar, obj2, iA, jB, jB2, aVar.b, aVar.c);
    }

    private void X() {
        qh.b bVar = this.D;
        qh.b bVarA = a(this.c);
        this.D = bVarA;
        if (bVarA.equals(bVar)) {
            return;
        }
        this.i.a(13, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda8
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                this.f$0.d((qh.c) obj);
            }
        });
    }

    private static long b(oh ohVar) {
        fo.d dVar = new fo.d();
        fo.b bVar = new fo.b();
        ohVar.a.a(ohVar.b.a, bVar);
        if (ohVar.c == -9223372036854775807L) {
            return ohVar.a.a(bVar.c, dVar).c();
        }
        return bVar.e() + ohVar.c;
    }

    private static final class a implements de {
        private final Object a;
        private fo b;

        public a(Object obj, fo foVar) {
            this.a = obj;
            this.b = foVar;
        }

        @Override // com.applovin.impl.de
        public fo b() {
            return this.b;
        }

        @Override // com.applovin.impl.de
        public Object a() {
            return this.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(oh ohVar, qh.c cVar) {
        cVar.b(ohVar.e);
    }

    private Pair a(oh ohVar, oh ohVar2, boolean z, int i, boolean z2) {
        fo foVar = ohVar2.a;
        fo foVar2 = ohVar.a;
        if (foVar2.c() && foVar.c()) {
            return new Pair(Boolean.FALSE, -1);
        }
        int i2 = 3;
        if (foVar2.c() != foVar.c()) {
            return new Pair(Boolean.TRUE, 3);
        }
        if (foVar.a(foVar.a(ohVar2.b.a, this.k).c, this.a).a.equals(foVar2.a(foVar2.a(ohVar.b.a, this.k).c, this.a).a)) {
            if (z && i == 0 && ohVar2.b.d < ohVar.b.d) {
                return new Pair(Boolean.TRUE, 0);
            }
            return new Pair(Boolean.FALSE, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            throw new IllegalStateException();
        }
        return new Pair(Boolean.TRUE, Integer.valueOf(i2));
    }

    private static boolean c(oh ohVar) {
        return ohVar.e == 3 && ohVar.l && ohVar.m == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(oh ohVar, qh.c cVar) {
        cVar.a(ohVar.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(oh ohVar, qh.c cVar) {
        cVar.a(ohVar.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(oh ohVar, qh.c cVar) {
        cVar.d(c(ohVar));
    }

    public void e(qh.c cVar) {
        this.i.b(cVar);
    }

    @Override // com.applovin.impl.qh
    public boolean d() {
        return this.G.b.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(final d8.e eVar) {
        this.f.a(new Runnable() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(qh.c cVar) {
        cVar.a(this.E);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(qh.c cVar) {
        cVar.a(z7.a(new f8(1), 1003));
    }

    private long a(oh ohVar) {
        if (ohVar.a.c()) {
            return t2.a(this.J);
        }
        if (ohVar.b.a()) {
            return ohVar.s;
        }
        return a(ohVar.a, ohVar.b, ohVar.s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(qh.c cVar) {
        cVar.a(this.D);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(oh ohVar, qh.c cVar) {
        cVar.a(ohVar.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(oh ohVar, qh.c cVar) {
        cVar.e(ohVar.g);
        cVar.c(ohVar.g);
    }

    private Pair a(fo foVar, fo foVar2) {
        long jG = g();
        if (!foVar.c() && !foVar2.c()) {
            Pair pairA = foVar.a(this.a, this.k, t(), t2.a(jG));
            Object obj = ((Pair) xp.a(pairA)).first;
            if (foVar2.a(obj) != -1) {
                return pairA;
            }
            Object objA = d8.a(this.a, this.k, this.u, this.v, obj, foVar, foVar2);
            if (objA != null) {
                foVar2.a(objA, this.k);
                int i = this.k.c;
                return a(foVar2, i, foVar2.a(i, this.a).b());
            }
            return a(foVar2, -1, -9223372036854775807L);
        }
        boolean z = !foVar.c() && foVar2.c();
        int iU = z ? -1 : U();
        if (z) {
            jG = -9223372036854775807L;
        }
        return a(foVar2, iU, jG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(oh ohVar, qh.c cVar) {
        cVar.b(ohVar.l, ohVar.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(oh ohVar, int i, qh.c cVar) {
        cVar.a(ohVar.a, i);
    }

    @Override // com.applovin.impl.qh
    public void b() {
        oh ohVar = this.G;
        if (ohVar.e != 1) {
            return;
        }
        oh ohVarA = ohVar.a((z7) null);
        oh ohVarA2 = ohVarA.a(ohVarA.a.c() ? 4 : 2);
        this.w++;
        this.h.v();
        a(ohVarA2, 1, 1, false, false, 5, -9223372036854775807L, -1);
    }

    private Pair a(fo foVar, int i, long j) {
        if (foVar.c()) {
            this.H = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.J = j;
            this.I = 0;
            return null;
        }
        if (i == -1 || i >= foVar.b()) {
            i = foVar.a(this.v);
            j = foVar.a(i, this.a).b();
        }
        return foVar.a(this.a, this.k, i, t2.a(j));
    }

    private void b(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.l.remove(i3);
        }
        this.B = this.B.a(i, i2);
    }

    @Override // com.applovin.impl.qh
    public ph a() {
        return this.G.n;
    }

    @Override // com.applovin.impl.qh
    public void b(final boolean z) {
        if (this.v != z) {
            this.v = z;
            this.h.f(z);
            this.i.a(9, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda13
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    ((qh.c) obj).b(z);
                }
            });
            X();
            this.i.a();
        }
    }

    private qh.f a(int i, oh ohVar, int i2) {
        int i3;
        Object obj;
        sd sdVar;
        Object obj2;
        int i4;
        long jB;
        long jA;
        long jB2;
        long j;
        fo.b bVar = new fo.b();
        if (ohVar.a.c()) {
            i3 = i2;
            obj = null;
            sdVar = null;
            obj2 = null;
            i4 = -1;
        } else {
            Object obj3 = ohVar.b.a;
            ohVar.a.a(obj3, bVar);
            int i5 = bVar.c;
            int iA = ohVar.a.a(obj3);
            Object obj4 = ohVar.a.a(i5, this.a).a;
            sdVar = this.a.c;
            obj2 = obj3;
            i4 = iA;
            obj = obj4;
            i3 = i5;
        }
        if (i == 0) {
            jB = bVar.f + bVar.d;
            if (ohVar.b.a()) {
                ae.a aVar = ohVar.b;
                jA = bVar.a(aVar.b, aVar.c);
                jB2 = b(ohVar);
                long j2 = jB2;
                j = jA;
                jB = j2;
            } else {
                if (ohVar.b.e != -1 && this.G.b.a()) {
                    jB = b(this.G);
                }
                j = jB;
            }
        } else if (ohVar.b.a()) {
            jA = ohVar.s;
            jB2 = b(ohVar);
            long j3 = jB2;
            j = jA;
            jB = j3;
        } else {
            jB = bVar.f + ohVar.s;
            j = jB;
        }
        long jB3 = t2.b(j);
        long jB4 = t2.b(jB);
        ae.a aVar2 = ohVar.b;
        return new qh.f(obj, i3, sdVar, obj2, i4, jB3, jB4, aVar2.b, aVar2.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(d8.e eVar) {
        long j;
        boolean z;
        long jA;
        int i = this.w - eVar.c;
        this.w = i;
        boolean z2 = true;
        if (eVar.d) {
            this.x = eVar.e;
            this.y = true;
        }
        if (eVar.f) {
            this.z = eVar.g;
        }
        if (i == 0) {
            fo foVar = eVar.b.a;
            if (!this.G.a.c() && foVar.c()) {
                this.H = -1;
                this.J = 0L;
                this.I = 0;
            }
            if (!foVar.c()) {
                List listD = ((sh) foVar).d();
                b1.b(listD.size() == this.l.size());
                for (int i2 = 0; i2 < listD.size(); i2++) {
                    ((a) this.l.get(i2)).b = (fo) listD.get(i2);
                }
            }
            if (this.y) {
                if (eVar.b.b.equals(this.G.b) && eVar.b.d == this.G.s) {
                    z2 = false;
                }
                if (z2) {
                    if (!foVar.c() && !eVar.b.b.a()) {
                        oh ohVar = eVar.b;
                        jA = a(foVar, ohVar.b, ohVar.d);
                    } else {
                        jA = eVar.b.d;
                    }
                    j = jA;
                } else {
                    j = -9223372036854775807L;
                }
                z = z2;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.y = false;
            a(eVar.b, 1, this.z, false, z, this.x, j, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(qh qhVar, qh.c cVar, a9 a9Var) {
        cVar.a(qhVar, new qh.d(a9Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i, qh.f fVar, qh.f fVar2, qh.c cVar) {
        cVar.e(i);
        cVar.a(fVar, fVar2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(oh ohVar, qh.c cVar) {
        cVar.b(ohVar.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(oh ohVar, to toVar, qh.c cVar) {
        cVar.a(ohVar.h, toVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(oh ohVar, int i, qh.c cVar) {
        cVar.a(ohVar.l, i);
    }

    private oh a(oh ohVar, fo foVar, Pair pair) {
        oh ohVarA;
        long jA;
        b1.a(foVar.c() || pair != null);
        fo foVar2 = ohVar.a;
        oh ohVarA2 = ohVar.a(foVar);
        if (foVar.c()) {
            ae.a aVarA = oh.a();
            long jA2 = t2.a(this.J);
            oh ohVarA3 = ohVarA2.a(aVarA, jA2, jA2, jA2, 0L, po.d, this.b, db.h()).a(aVarA);
            ohVarA3.q = ohVarA3.s;
            return ohVarA3;
        }
        Object obj = ohVarA2.b.a;
        boolean z = !obj.equals(((Pair) xp.a(pair)).first);
        ae.a aVar = z ? new ae.a(pair.first) : ohVarA2.b;
        long jLongValue = ((Long) pair.second).longValue();
        long jA3 = t2.a(g());
        if (!foVar2.c()) {
            jA3 -= foVar2.a(obj, this.k).e();
        }
        if (z || jLongValue < jA3) {
            b1.b(!aVar.a());
            oh ohVarA4 = ohVarA2.a(r0, jLongValue, jLongValue, jLongValue, 0L, z ? po.d : ohVarA2.h, z ? this.b : ohVarA2.i, z ? db.h() : ohVarA2.j).a(aVar);
            ohVarA4.q = jLongValue;
            return ohVarA4;
        }
        if (jLongValue == jA3) {
            int iA = foVar.a(ohVarA2.k.a);
            if (iA != -1 && foVar.a(iA, this.k).c == foVar.a(aVar.a, this.k).c) {
                return ohVarA2;
            }
            foVar.a(aVar.a, this.k);
            if (aVar.a()) {
                jA = this.k.a(aVar.b, aVar.c);
            } else {
                jA = this.k.d;
            }
            ohVarA = ohVarA2.a(aVar, ohVarA2.s, ohVarA2.s, ohVarA2.d, jA - ohVarA2.s, ohVarA2.h, ohVarA2.i, ohVarA2.j).a(aVar);
            ohVarA.q = jA;
        } else {
            b1.b(!aVar.a());
            long jMax = Math.max(0L, ohVarA2.r - (jLongValue - jA3));
            long j = ohVarA2.q;
            if (ohVarA2.k.equals(ohVarA2.b)) {
                j = jLongValue + jMax;
            }
            ohVarA = ohVarA2.a(aVar, jLongValue, jLongValue, jLongValue, jMax, ohVarA2.h, ohVarA2.i, ohVarA2.j);
            ohVarA.q = j;
        }
        return ohVarA;
    }

    public void a(af afVar) {
        ud udVarA = this.E.a().a(afVar).a();
        if (udVarA.equals(this.E)) {
            return;
        }
        this.E = udVarA;
        this.i.b(14, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda9
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                this.f$0.b((qh.c) obj);
            }
        });
    }

    private long a(fo foVar, ae.a aVar, long j) {
        foVar.a(aVar.a, this.k);
        return j + this.k.e();
    }

    @Override // com.applovin.impl.qh
    public void a(qh.e eVar) {
        e(eVar);
    }

    private oh a(int i, int i2) {
        b1.a(i >= 0 && i2 >= i && i2 <= this.l.size());
        int iT = t();
        fo foVarN = n();
        int size = this.l.size();
        this.w++;
        b(i, i2);
        fo foVarR = R();
        oh ohVarA = a(this.G, foVarR, a(foVarN, foVarR));
        int i3 = ohVarA.e;
        if (i3 != 1 && i3 != 4 && i < i2 && i2 == size && iT >= ohVarA.a.b()) {
            ohVarA = ohVarA.a(4);
        }
        this.h.b(i, i2, this.B);
        return ohVarA;
    }

    @Override // com.applovin.impl.qh
    public void a(int i, long j) {
        fo foVar = this.G.a;
        if (i >= 0 && (foVar.c() || i < foVar.b())) {
            this.w++;
            if (d()) {
                oc.d("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                d8.e eVar = new d8.e(this.G);
                eVar.a(1);
                this.g.a(eVar);
                return;
            }
            int i2 = o() != 1 ? 2 : 1;
            int iT = t();
            oh ohVarA = a(this.G.a(i2), foVar, a(foVar, i, j));
            this.h.a(foVar, i, t2.a(j));
            a(ohVarA, 0, 1, true, true, 1, a(ohVarA), iT);
            return;
        }
        throw new ab(foVar, i, j);
    }

    public void a(ae aeVar) {
        a(Collections.singletonList(aeVar));
    }

    public void a(List list) {
        a(list, true);
    }

    public void a(List list, boolean z) {
        a(list, -1, -9223372036854775807L, z);
    }

    private void a(List list, int i, long j, boolean z) {
        int iA;
        long j2;
        int iU = U();
        long currentPosition = getCurrentPosition();
        this.w++;
        if (!this.l.isEmpty()) {
            b(0, this.l.size());
        }
        List listA = a(0, list);
        fo foVarR = R();
        if (!foVarR.c() && i >= foVarR.b()) {
            throw new ab(foVarR, i, j);
        }
        if (z) {
            j2 = -9223372036854775807L;
            iA = foVarR.a(this.v);
        } else if (i == -1) {
            iA = iU;
            j2 = currentPosition;
        } else {
            iA = i;
            j2 = j;
        }
        oh ohVarA = a(this.G, foVarR, a(foVarR, iA, j2));
        int i2 = ohVarA.e;
        if (iA != -1 && i2 != 1) {
            i2 = (foVarR.c() || iA >= foVarR.b()) ? 4 : 2;
        }
        oh ohVarA2 = ohVarA.a(i2);
        this.h.a(listA, iA, t2.a(j2), this.B);
        a(ohVarA2, 0, 1, false, (this.G.b.a.equals(ohVarA2.b.a) || this.G.a.c()) ? false : true, 4, a(ohVarA2), -1);
    }

    @Override // com.applovin.impl.qh
    public void a(boolean z) {
        a(z, 0, 1);
    }

    public void a(boolean z, int i, int i2) {
        oh ohVar = this.G;
        if (ohVar.l == z && ohVar.m == i) {
            return;
        }
        this.w++;
        oh ohVarA = ohVar.a(z, i);
        this.h.a(z, i);
        a(ohVarA, 0, i2, false, false, 5, -9223372036854775807L, -1);
    }

    @Override // com.applovin.impl.qh
    public void a(final int i) {
        if (this.u != i) {
            this.u = i;
            this.h.a(i);
            this.i.a(8, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda10
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    ((qh.c) obj).c(i);
                }
            });
            X();
            this.i.a();
        }
    }

    public void a(boolean z, z7 z7Var) {
        oh ohVarA;
        if (z) {
            ohVarA = a(0, this.l.size()).a((z7) null);
        } else {
            oh ohVar = this.G;
            ohVarA = ohVar.a(ohVar.b);
            ohVarA.q = ohVarA.s;
            ohVarA.r = 0L;
        }
        oh ohVarA2 = ohVarA.a(1);
        if (z7Var != null) {
            ohVarA2 = ohVarA2.a(z7Var);
        }
        oh ohVar2 = ohVarA2;
        this.w++;
        this.h.G();
        a(ohVar2, 0, 1, false, ohVar2.a.c() && !this.G.a.c(), 4, a(ohVar2), -1);
    }

    private void a(final oh ohVar, final int i, final int i2, boolean z, boolean z2, final int i3, long j, int i4) {
        oh ohVar2 = this.G;
        this.G = ohVar;
        Pair pairA = a(ohVar, ohVar2, z2, i3, !ohVar2.a.equals(ohVar.a));
        boolean zBooleanValue = ((Boolean) pairA.first).booleanValue();
        final int iIntValue = ((Integer) pairA.second).intValue();
        ud udVarA = this.E;
        final sd sdVar = null;
        if (zBooleanValue) {
            if (!ohVar.a.c()) {
                sdVar = ohVar.a.a(ohVar.a.a(ohVar.b.a, this.k).c, this.a).c;
            }
            udVarA = sdVar != null ? sdVar.d : ud.H;
        }
        if (!ohVar2.j.equals(ohVar.j)) {
            udVarA = udVarA.a().a(ohVar.j).a();
        }
        boolean z3 = !udVarA.equals(this.E);
        this.E = udVarA;
        if (!ohVar2.a.equals(ohVar.a)) {
            this.i.a(0, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.b(ohVar, i, (qh.c) obj);
                }
            });
        }
        if (z2) {
            final qh.f fVarA = a(i3, ohVar2, i4);
            final qh.f fVarD = d(j);
            this.i.a(11, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda19
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.a(i3, fVarA, fVarD, (qh.c) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.i.a(1, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda20
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    ((qh.c) obj).a(sdVar, iIntValue);
                }
            });
        }
        if (ohVar2.f != ohVar.f) {
            this.i.a(10, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda21
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.a(ohVar, (qh.c) obj);
                }
            });
            if (ohVar.f != null) {
                this.i.a(10, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda22
                    @Override // com.applovin.impl.gc.a
                    public final void a(Object obj) {
                        b8.b(ohVar, (qh.c) obj);
                    }
                });
            }
        }
        wo woVar = ohVar2.i;
        wo woVar2 = ohVar.i;
        if (woVar != woVar2) {
            this.e.a(woVar2.d);
            final to toVar = new to(ohVar.i.c);
            this.i.a(2, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda1
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.a(ohVar, toVar, (qh.c) obj);
                }
            });
        }
        if (z3) {
            final ud udVar = this.E;
            this.i.a(14, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda2
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    ((qh.c) obj).a(udVar);
                }
            });
        }
        if (ohVar2.g != ohVar.g) {
            this.i.a(3, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda3
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.c(ohVar, (qh.c) obj);
                }
            });
        }
        if (ohVar2.e != ohVar.e || ohVar2.l != ohVar.l) {
            this.i.a(-1, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda4
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.d(ohVar, (qh.c) obj);
                }
            });
        }
        if (ohVar2.e != ohVar.e) {
            this.i.a(4, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda5
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.e(ohVar, (qh.c) obj);
                }
            });
        }
        if (ohVar2.l != ohVar.l) {
            this.i.a(5, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda11
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.a(ohVar, i2, (qh.c) obj);
                }
            });
        }
        if (ohVar2.m != ohVar.m) {
            this.i.a(6, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda15
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.f(ohVar, (qh.c) obj);
                }
            });
        }
        if (c(ohVar2) != c(ohVar)) {
            this.i.a(7, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda16
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.g(ohVar, (qh.c) obj);
                }
            });
        }
        if (!ohVar2.n.equals(ohVar.n)) {
            this.i.a(12, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda17
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    b8.h(ohVar, (qh.c) obj);
                }
            });
        }
        if (z) {
            this.i.a(-1, new gc.a() { // from class: com.applovin.impl.b8$$ExternalSyntheticLambda18
                @Override // com.applovin.impl.gc.a
                public final void a(Object obj) {
                    ((qh.c) obj).b();
                }
            });
        }
        X();
        this.i.a();
        if (ohVar2.o != ohVar.o) {
            Iterator it = this.j.iterator();
            while (it.hasNext()) {
                ((a8) it.next()).f(ohVar.o);
            }
        }
        if (ohVar2.p != ohVar.p) {
            Iterator it2 = this.j.iterator();
            while (it2.hasNext()) {
                ((a8) it2.next()).g(ohVar.p);
            }
        }
    }

    public rh a(rh.b bVar) {
        return new rh(this.h, bVar, this.G.a, t(), this.t, this.h.g());
    }

    private List a(int i, List list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ee.c cVar = new ee.c((ae) list.get(i2), this.m);
            arrayList.add(cVar);
            this.l.add(i2 + i, new a(cVar.b, cVar.a.i()));
        }
        this.B = this.B.b(i, arrayList.size());
        return arrayList;
    }
}
