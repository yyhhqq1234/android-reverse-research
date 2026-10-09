package com.applovin.impl;

import android.net.Uri;
import android.os.Handler;
import androidx.work.WorkRequest;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class ai implements vd, l8, nc.b, nc.f, bj.d {
    private static final Map N = l();
    private static final e9 O = new e9.b().c("icy").f("application/x-icy").a();
    private boolean B;
    private boolean D;
    private boolean E;
    private int F;
    private long H;
    private boolean J;
    private int K;
    private boolean L;
    private boolean M;
    private final Uri a;
    private final h5 b;
    private final a7 c;
    private final lc d;
    private final be.a f;
    private final z6.a g;
    private final b h;
    private final n0 i;
    private final String j;
    private final long k;
    private final zh m;
    private vd.a r;
    private ua s;
    private boolean v;
    private boolean w;
    private boolean x;
    private e y;
    private ij z;
    private final nc l = new nc("ProgressiveMediaPeriod");
    private final c4 n = new c4();
    private final Runnable o = new Runnable() { // from class: com.applovin.impl.ai$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.r();
        }
    };
    private final Runnable p = new Runnable() { // from class: com.applovin.impl.ai$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.q();
        }
    };
    private final Handler q = xp.a();
    private d[] u = new d[0];
    private bj[] t = new bj[0];
    private long I = -9223372036854775807L;
    private long G = -1;
    private long A = -9223372036854775807L;
    private int C = 1;

    interface b {
        void a(long j, boolean z, boolean z2);
    }

    private static Map l() {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(map);
    }

    private void u() {
        a aVar = new a(this.a, this.b, this.m, this, this.n);
        if (this.w) {
            b1.b(p());
            long j = this.A;
            if (j != -9223372036854775807L && this.I > j) {
                this.L = true;
                this.I = -9223372036854775807L;
                return;
            }
            aVar.a(((ij) b1.a(this.z)).b(this.I).a.b, this.I);
            for (bj bjVar : this.t) {
                bjVar.c(this.I);
            }
            this.I = -9223372036854775807L;
        }
        this.K = m();
        this.f.c(new mc(aVar.a, aVar.k, this.l.a(aVar, this, this.d.a(this.C))), 1, -1, null, 0, null, aVar.j, this.A);
    }

    @Override // com.applovin.impl.vd
    public void c(long j) {
    }

    public ai(Uri uri, h5 h5Var, zh zhVar, a7 a7Var, z6.a aVar, lc lcVar, be.a aVar2, b bVar, n0 n0Var, String str, int i) {
        this.a = uri;
        this.b = h5Var;
        this.c = a7Var;
        this.g = aVar;
        this.d = lcVar;
        this.f = aVar2;
        this.h = bVar;
        this.i = n0Var;
        this.j = str;
        this.k = i;
        this.m = zhVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        if (this.M) {
            return;
        }
        ((vd.a) b1.a(this.r)).a((pj) this);
    }

    public void t() {
        if (this.w) {
            for (bj bjVar : this.t) {
                bjVar.k();
            }
        }
        this.l.a(this);
        this.q.removeCallbacksAndMessages(null);
        this.r = null;
        this.M = true;
    }

    @Override // com.applovin.impl.vd
    public void f() throws IOException {
        s();
        if (this.L && !this.w) {
            throw ch.a("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.applovin.impl.vd
    public long g() {
        if (this.F == 0) {
            return Long.MIN_VALUE;
        }
        return e();
    }

    @Override // com.applovin.impl.vd
    public long h() {
        if (!this.E) {
            return -9223372036854775807L;
        }
        if (!this.L && m() <= this.K) {
            return -9223372036854775807L;
        }
        this.E = false;
        return this.H;
    }

    @Override // com.applovin.impl.vd
    public boolean b(long j) {
        if (this.L || this.l.c() || this.J) {
            return false;
        }
        if (this.w && this.F == 0) {
            return false;
        }
        boolean zE = this.n.e();
        if (this.l.d()) {
            return zE;
        }
        u();
        return true;
    }

    @Override // com.applovin.impl.vd
    public long e() {
        long jN;
        k();
        boolean[] zArr = this.y.b;
        if (this.L) {
            return Long.MIN_VALUE;
        }
        if (p()) {
            return this.I;
        }
        if (this.x) {
            int length = this.t.length;
            jN = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                if (zArr[i] && !this.t[i].i()) {
                    jN = Math.min(jN, this.t[i].c());
                }
            }
        } else {
            jN = Long.MAX_VALUE;
        }
        if (jN == Long.MAX_VALUE) {
            jN = n();
        }
        return jN == Long.MIN_VALUE ? this.H : jN;
    }

    void s() throws IOException {
        this.l.a(this.d.a(this.C));
    }

    void d(int i) throws IOException {
        this.t[i].j();
        s();
    }

    private boolean v() {
        return this.E || p();
    }

    @Override // com.applovin.impl.vd
    public po b() {
        k();
        return this.y.a;
    }

    qo o() {
        return a(new d(0, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        af afVarA;
        if (this.M || this.w || !this.v || this.z == null) {
            return;
        }
        for (bj bjVar : this.t) {
            if (bjVar.f() == null) {
                return;
            }
        }
        this.n.c();
        int length = this.t.length;
        oo[] ooVarArr = new oo[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            e9 e9VarA = (e9) b1.a(this.t[i].f());
            String str = e9VarA.m;
            boolean zG = hf.g(str);
            boolean z = zG || hf.i(str);
            zArr[i] = z;
            this.x = z | this.x;
            ua uaVar = this.s;
            if (uaVar != null) {
                if (zG || this.u[i].b) {
                    af afVar = e9VarA.k;
                    if (afVar == null) {
                        afVarA = new af(uaVar);
                    } else {
                        afVarA = afVar.a(uaVar);
                    }
                    e9VarA = e9VarA.a().a(afVarA).a();
                }
                if (zG && e9VarA.g == -1 && e9VarA.h == -1 && uaVar.a != -1) {
                    e9VarA = e9VarA.a().b(uaVar.a).a();
                }
            }
            ooVarArr[i] = new oo(e9VarA.a(this.c.a(e9VarA)));
        }
        this.y = new e(new po(ooVarArr), zArr);
        this.w = true;
        ((vd.a) b1.a(this.r)).a((vd) this);
    }

    @Override // com.applovin.impl.l8
    public void c() {
        this.v = true;
        this.q.post(this.o);
    }

    @Override // com.applovin.impl.nc.f
    public void d() {
        for (bj bjVar : this.t) {
            bjVar.l();
        }
        this.m.a();
    }

    private int m() {
        int iG = 0;
        for (bj bjVar : this.t) {
            iG += bjVar.g();
        }
        return iG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long n() {
        long jMax = Long.MIN_VALUE;
        for (bj bjVar : this.t) {
            jMax = Math.max(jMax, bjVar.c());
        }
        return jMax;
    }

    private boolean p() {
        return this.I != -9223372036854775807L;
    }

    private void k() {
        b1.b(this.w);
        b1.a(this.y);
        b1.a(this.z);
    }

    private final class c implements cj {
        private final int a;

        public c(int i) {
            this.a = i;
        }

        @Override // com.applovin.impl.cj
        public boolean d() {
            return ai.this.a(this.a);
        }

        @Override // com.applovin.impl.cj
        public void a() throws IOException {
            ai.this.d(this.a);
        }

        @Override // com.applovin.impl.cj
        public int a(f9 f9Var, o5 o5Var, int i) {
            return ai.this.a(this.a, f9Var, o5Var, i);
        }

        @Override // com.applovin.impl.cj
        public int a(long j) {
            return ai.this.a(this.a, j);
        }
    }

    final class a implements nc.e, sa.a {
        private final Uri b;
        private final fl c;
        private final zh d;
        private final l8 e;
        private final c4 f;
        private volatile boolean h;
        private long j;
        private qo m;
        private boolean n;
        private final th g = new th();
        private boolean i = true;
        private long l = -1;
        private final long a = mc.a();
        private k5 k = a(0);

        public a(Uri uri, h5 h5Var, zh zhVar, l8 l8Var, c4 c4Var) {
            this.b = uri;
            this.c = new fl(h5Var);
            this.d = zhVar;
            this.e = l8Var;
            this.f = c4Var;
        }

        @Override // com.applovin.impl.nc.e
        public void b() {
            this.h = true;
        }

        @Override // com.applovin.impl.nc.e
        public void a() {
            int iA = 0;
            while (iA == 0 && !this.h) {
                try {
                    long j = this.g.a;
                    k5 k5VarA = a(j);
                    this.k = k5VarA;
                    long jA = this.c.a(k5VarA);
                    this.l = jA;
                    if (jA != -1) {
                        this.l = jA + j;
                    }
                    ai.this.s = ua.a(this.c.e());
                    f5 saVar = this.c;
                    if (ai.this.s != null && ai.this.s.g != -1) {
                        saVar = new sa(this.c, ai.this.s.g, this);
                        qo qoVarO = ai.this.o();
                        this.m = qoVarO;
                        qoVarO.a(ai.O);
                    }
                    long jB = j;
                    this.d.a(saVar, this.b, this.c.e(), j, this.l, this.e);
                    if (ai.this.s != null) {
                        this.d.c();
                    }
                    if (this.i) {
                        this.d.a(jB, this.j);
                        this.i = false;
                    }
                    while (true) {
                        long j2 = jB;
                        while (true) {
                            if (iA != 0 || this.h) {
                                break;
                            }
                            try {
                                this.f.a();
                                iA = this.d.a(this.g);
                                jB = this.d.b();
                                if (jB > ai.this.k + j2) {
                                    this.f.c();
                                    ai.this.q.post(ai.this.p);
                                }
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                    }
                    if (iA == 1) {
                        iA = 0;
                    } else if (this.d.b() != -1) {
                        this.g.a = this.d.b();
                    }
                    xp.a((h5) this.c);
                } catch (Throwable th) {
                    if (iA != 1 && this.d.b() != -1) {
                        this.g.a = this.d.b();
                    }
                    xp.a((h5) this.c);
                    throw th;
                }
            }
        }

        @Override // com.applovin.impl.sa.a
        public void a(ah ahVar) {
            long jMax = !this.n ? this.j : Math.max(ai.this.n(), this.j);
            int iA = ahVar.a();
            qo qoVar = (qo) b1.a(this.m);
            qoVar.a(ahVar, iA);
            qoVar.a(jMax, 1, iA, 0, null);
            this.n = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j, long j2) {
            this.g.a = j;
            this.j = j2;
            this.i = true;
            this.n = false;
        }

        private k5 a(long j) {
            return new k5.b().a(this.b).a(j).a(ai.this.j).a(6).a(ai.N).a();
        }
    }

    private boolean a(a aVar, int i) {
        ij ijVar;
        if (this.G == -1 && ((ijVar = this.z) == null || ijVar.d() == -9223372036854775807L)) {
            if (this.w && !v()) {
                this.J = true;
                return false;
            }
            this.E = this.w;
            this.H = 0L;
            this.K = 0;
            for (bj bjVar : this.t) {
                bjVar.n();
            }
            aVar.a(0L, 0L);
            return true;
        }
        this.K = i;
        return true;
    }

    private static final class e {
        public final po a;
        public final boolean[] b;
        public final boolean[] c;
        public final boolean[] d;

        public e(po poVar, boolean[] zArr) {
            this.a = poVar;
            this.b = zArr;
            int i = poVar.a;
            this.c = new boolean[i];
            this.d = new boolean[i];
        }
    }

    private static final class d {
        public final int a;
        public final boolean b;

        public d(int i, boolean z) {
            this.a = i;
            this.b = z;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.a == dVar.a && this.b == dVar.b;
        }

        public int hashCode() {
            return (this.a * 31) + (this.b ? 1 : 0);
        }
    }

    private void c(int i) {
        k();
        boolean[] zArr = this.y.b;
        if (this.J && zArr[i]) {
            if (this.t[i].a(false)) {
                return;
            }
            this.I = 0L;
            this.J = false;
            this.E = true;
            this.H = 0L;
            this.K = 0;
            for (bj bjVar : this.t) {
                bjVar.n();
            }
            ((vd.a) b1.a(this.r)).a((pj) this);
        }
    }

    private void a(a aVar) {
        if (this.G == -1) {
            this.G = aVar.l;
        }
    }

    private void b(int i) {
        k();
        e eVar = this.y;
        boolean[] zArr = eVar.d;
        if (zArr[i]) {
            return;
        }
        e9 e9VarA = eVar.a.a(i).a(0);
        this.f.a(hf.e(e9VarA.m), e9VarA, 0, (Object) null, this.H);
        zArr[i] = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void b(ij ijVar) {
        this.z = this.s == null ? ijVar : new ij.b(-9223372036854775807L);
        this.A = ijVar.d();
        boolean z = this.G == -1 && ijVar.d() == -9223372036854775807L;
        this.B = z;
        this.C = z ? 7 : 1;
        this.h.a(this.A, ijVar.b(), this.B);
        if (this.w) {
            return;
        }
        r();
    }

    @Override // com.applovin.impl.vd
    public void a(long j, boolean z) {
        k();
        if (p()) {
            return;
        }
        boolean[] zArr = this.y.c;
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            this.t[i].b(j, z, zArr[i]);
        }
    }

    @Override // com.applovin.impl.vd
    public long a(long j, jj jjVar) {
        k();
        if (!this.z.b()) {
            return 0L;
        }
        ij.a aVarB = this.z.b(j);
        return jjVar.a(j, aVarB.a.a, aVarB.b.a);
    }

    @Override // com.applovin.impl.vd
    public boolean a() {
        return this.l.d() && this.n.d();
    }

    boolean a(int i) {
        return !v() && this.t[i].a(this.L);
    }

    @Override // com.applovin.impl.nc.b
    public void a(a aVar, long j, long j2, boolean z) {
        fl flVar = aVar.c;
        mc mcVar = new mc(aVar.a, aVar.k, flVar.h(), flVar.i(), j, j2, flVar.g());
        this.d.a(aVar.a);
        this.f.a(mcVar, 1, -1, null, 0, null, aVar.j, this.A);
        if (z) {
            return;
        }
        a(aVar);
        for (bj bjVar : this.t) {
            bjVar.n();
        }
        if (this.F > 0) {
            ((vd.a) b1.a(this.r)).a((pj) this);
        }
    }

    @Override // com.applovin.impl.nc.b
    public void a(a aVar, long j, long j2) {
        ij ijVar;
        if (this.A == -9223372036854775807L && (ijVar = this.z) != null) {
            boolean zB = ijVar.b();
            long jN = n();
            long j3 = jN == Long.MIN_VALUE ? 0L : jN + WorkRequest.MIN_BACKOFF_MILLIS;
            this.A = j3;
            this.h.a(j3, zB, this.B);
        }
        fl flVar = aVar.c;
        mc mcVar = new mc(aVar.a, aVar.k, flVar.h(), flVar.i(), j, j2, flVar.g());
        this.d.a(aVar.a);
        this.f.b(mcVar, 1, -1, null, 0, null, aVar.j, this.A);
        a(aVar);
        this.L = true;
        ((vd.a) b1.a(this.r)).a((pj) this);
    }

    @Override // com.applovin.impl.nc.b
    public nc.c a(a aVar, long j, long j2, IOException iOException, int i) {
        nc.c cVarA;
        a(aVar);
        fl flVar = aVar.c;
        mc mcVar = new mc(aVar.a, aVar.k, flVar.h(), flVar.i(), j, j2, flVar.g());
        long jA = this.d.a(new lc.a(mcVar, new td(1, -1, null, 0, null, t2.b(aVar.j), t2.b(this.A)), iOException, i));
        if (jA == -9223372036854775807L) {
            cVarA = nc.g;
        } else {
            int iM = m();
            boolean z = iM > this.K;
            if (a(aVar, iM)) {
                cVarA = nc.a(z, jA);
            } else {
                cVarA = nc.f;
            }
        }
        boolean z2 = !cVarA.a();
        this.f.a(mcVar, 1, -1, null, 0, null, aVar.j, this.A, iOException, z2);
        if (z2) {
            this.d.a(aVar.a);
        }
        return cVarA;
    }

    @Override // com.applovin.impl.bj.d
    public void a(e9 e9Var) {
        this.q.post(this.o);
    }

    @Override // com.applovin.impl.vd
    public void a(vd.a aVar, long j) {
        this.r = aVar;
        this.n.e();
        u();
    }

    private qo a(d dVar) {
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            if (dVar.equals(this.u[i])) {
                return this.t[i];
            }
        }
        bj bjVarA = bj.a(this.i, this.q.getLooper(), this.c, this.g);
        bjVarA.a(this);
        int i2 = length + 1;
        d[] dVarArr = (d[]) Arrays.copyOf(this.u, i2);
        dVarArr[length] = dVar;
        this.u = (d[]) xp.a((Object[]) dVarArr);
        bj[] bjVarArr = (bj[]) Arrays.copyOf(this.t, i2);
        bjVarArr[length] = bjVarA;
        this.t = (bj[]) xp.a((Object[]) bjVarArr);
        return bjVarA;
    }

    int a(int i, f9 f9Var, o5 o5Var, int i2) {
        if (v()) {
            return -3;
        }
        b(i);
        int iA = this.t[i].a(f9Var, o5Var, i2, this.L);
        if (iA == -3) {
            c(i);
        }
        return iA;
    }

    private boolean a(boolean[] zArr, long j) {
        int length = this.t.length;
        for (int i = 0; i < length; i++) {
            if (!this.t[i].b(j, false) && (zArr[i] || !this.x)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.applovin.impl.l8
    public void a(final ij ijVar) {
        this.q.post(new Runnable() { // from class: com.applovin.impl.ai$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(ijVar);
            }
        });
    }

    @Override // com.applovin.impl.vd
    public long a(long j) {
        k();
        boolean[] zArr = this.y.b;
        if (!this.z.b()) {
            j = 0;
        }
        int i = 0;
        this.E = false;
        this.H = j;
        if (p()) {
            this.I = j;
            return j;
        }
        if (this.C != 7 && a(zArr, j)) {
            return j;
        }
        this.J = false;
        this.I = j;
        this.L = false;
        if (this.l.d()) {
            bj[] bjVarArr = this.t;
            int length = bjVarArr.length;
            while (i < length) {
                bjVarArr[i].b();
                i++;
            }
            this.l.a();
        } else {
            this.l.b();
            bj[] bjVarArr2 = this.t;
            int length2 = bjVarArr2.length;
            while (i < length2) {
                bjVarArr2[i].n();
                i++;
            }
        }
        return j;
    }

    @Override // com.applovin.impl.vd
    public long a(g8[] g8VarArr, boolean[] zArr, cj[] cjVarArr, boolean[] zArr2, long j) {
        g8 g8Var;
        k();
        e eVar = this.y;
        po poVar = eVar.a;
        boolean[] zArr3 = eVar.c;
        int i = this.F;
        int i2 = 0;
        for (int i3 = 0; i3 < g8VarArr.length; i3++) {
            cj cjVar = cjVarArr[i3];
            if (cjVar != null && (g8VarArr[i3] == null || !zArr[i3])) {
                int i4 = ((c) cjVar).a;
                b1.b(zArr3[i4]);
                this.F--;
                zArr3[i4] = false;
                cjVarArr[i3] = null;
            }
        }
        boolean z = !this.D ? j == 0 : i != 0;
        for (int i5 = 0; i5 < g8VarArr.length; i5++) {
            if (cjVarArr[i5] == null && (g8Var = g8VarArr[i5]) != null) {
                b1.b(g8Var.b() == 1);
                b1.b(g8Var.b(0) == 0);
                int iA = poVar.a(g8Var.a());
                b1.b(!zArr3[iA]);
                this.F++;
                zArr3[iA] = true;
                cjVarArr[i5] = new c(iA);
                zArr2[i5] = true;
                if (!z) {
                    bj bjVar = this.t[iA];
                    z = (bjVar.b(j, true) || bjVar.e() == 0) ? false : true;
                }
            }
        }
        if (this.F == 0) {
            this.J = false;
            this.E = false;
            if (this.l.d()) {
                bj[] bjVarArr = this.t;
                int length = bjVarArr.length;
                while (i2 < length) {
                    bjVarArr[i2].b();
                    i2++;
                }
                this.l.a();
            } else {
                bj[] bjVarArr2 = this.t;
                int length2 = bjVarArr2.length;
                while (i2 < length2) {
                    bjVarArr2[i2].n();
                    i2++;
                }
            }
        } else if (z) {
            j = a(j);
            while (i2 < cjVarArr.length) {
                if (cjVarArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.D = true;
        return j;
    }

    int a(int i, long j) {
        if (v()) {
            return 0;
        }
        b(i);
        bj bjVar = this.t[i];
        int iA = bjVar.a(j, this.L);
        bjVar.f(iA);
        if (iA == 0) {
            c(i);
        }
        return iA;
    }

    @Override // com.applovin.impl.l8
    public qo a(int i, int i2) {
        return a(new d(i, false));
    }
}
