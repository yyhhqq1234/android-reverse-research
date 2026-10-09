package com.applovin.impl;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import com.applovin.exoplayer2.common.base.Supplier;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
final class d8 implements Handler.Callback, vd.a, vo.a, ee.d, g6.a, rh.a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private boolean G;
    private boolean H;
    private boolean I;
    private boolean J;
    private int K;
    private h L;
    private long M;
    private int N;
    private boolean O;
    private z7 P;
    private long Q;
    private final qi[] a;
    private final Set b;
    private final ri[] c;
    private final vo d;
    private final wo f;
    private final kc g;
    private final y1 h;
    private final ia i;
    private final HandlerThread j;
    private final Looper k;
    private final fo.d l;
    private final fo.b m;
    private final long n;
    private final boolean o;
    private final g6 p;
    private final ArrayList q;
    private final l3 r;
    private final f s;
    private final zd t;
    private final ee u;
    private final jc v;
    private final long w;
    private jj x;
    private oh y;
    private e z;

    private static class c {
    }

    public interface f {
        void a(e eVar);
    }

    public static final class e {
        private boolean a;
        public oh b;
        public int c;
        public boolean d;
        public int e;
        public boolean f;
        public int g;

        public e(oh ohVar) {
            this.b = ohVar;
        }

        public void c(int i) {
            if (this.d && this.e != 5) {
                b1.a(i == 5);
                return;
            }
            this.a = true;
            this.d = true;
            this.e = i;
        }

        public void b(int i) {
            this.a = true;
            this.f = true;
            this.g = i;
        }

        public void a(int i) {
            this.a |= i > 0;
            this.c += i;
        }

        public void a(oh ohVar) {
            this.a |= this.b != ohVar;
            this.b = ohVar;
        }
    }

    public d8(qi[] qiVarArr, vo voVar, wo woVar, kc kcVar, y1 y1Var, int i, boolean z, r0 r0Var, jj jjVar, jc jcVar, long j, boolean z2, Looper looper, l3 l3Var, f fVar) {
        this.s = fVar;
        this.a = qiVarArr;
        this.d = voVar;
        this.f = woVar;
        this.g = kcVar;
        this.h = y1Var;
        this.F = i;
        this.G = z;
        this.x = jjVar;
        this.v = jcVar;
        this.w = j;
        this.Q = j;
        this.B = z2;
        this.r = l3Var;
        this.n = kcVar.d();
        this.o = kcVar.a();
        oh ohVarA = oh.a(woVar);
        this.y = ohVarA;
        this.z = new e(ohVarA);
        this.c = new ri[qiVarArr.length];
        for (int i2 = 0; i2 < qiVarArr.length; i2++) {
            qiVarArr[i2].b(i2);
            this.c[i2] = qiVarArr[i2].n();
        }
        this.p = new g6(this, l3Var);
        this.q = new ArrayList();
        this.b = rj.b();
        this.l = new fo.d();
        this.m = new fo.b();
        voVar.a(this, y1Var);
        this.O = true;
        Handler handler = new Handler(looper);
        this.t = new zd(r0Var, handler);
        this.u = new ee(this, r0Var, handler);
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
        this.j = handlerThread;
        handlerThread.start();
        Looper looper2 = handlerThread.getLooper();
        this.k = looper2;
        this.i = l3Var.a(looper2, this);
    }

    private void a(wj wjVar) throws Throwable {
        this.z.a(1);
        a(this.u.a(wjVar), false);
    }

    public void v() {
        this.i.d(0).a();
    }

    public void G() {
        this.i.d(6).a();
    }

    public synchronized boolean x() {
        if (!this.A && this.j.isAlive()) {
            this.i.c(7);
            a(new Supplier() { // from class: com.applovin.impl.d8$$ExternalSyntheticLambda1
                @Override // com.applovin.exoplayer2.common.base.Supplier
                public final Object get() {
                    return this.f$0.l();
                }
            }, this.w);
            return this.A;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean l() {
        return Boolean.valueOf(this.A);
    }

    public Looper g() {
        return this.k;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) throws Throwable {
        wd wdVarF;
        int i = 1000;
        try {
            switch (message.what) {
                case 0:
                    w();
                    break;
                case 1:
                    a(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    c();
                    break;
                case 3:
                    a((h) message.obj);
                    break;
                case 4:
                    b((ph) message.obj);
                    break;
                case 5:
                    a((jj) message.obj);
                    break;
                case 6:
                    a(false, true);
                    break;
                case 7:
                    y();
                    return true;
                case 8:
                    c((vd) message.obj);
                    break;
                case 9:
                    b((vd) message.obj);
                    break;
                case 10:
                    A();
                    break;
                case 11:
                    b(message.arg1);
                    break;
                case 12:
                    g(message.arg1 != 0);
                    break;
                case 13:
                    a(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 14:
                    d((rh) message.obj);
                    break;
                case 15:
                    f((rh) message.obj);
                    break;
                case 16:
                    a((ph) message.obj, false);
                    break;
                case 17:
                    a((b) message.obj);
                    break;
                case 18:
                    a((b) message.obj, message.arg1);
                    break;
                case 19:
                    c8.a(message.obj);
                    a((c) null);
                    break;
                case 20:
                    a(message.arg1, message.arg2, (wj) message.obj);
                    break;
                case 21:
                    a((wj) message.obj);
                    break;
                case 22:
                    s();
                    break;
                case 23:
                    e(message.arg1 != 0);
                    break;
                case 24:
                    d(message.arg1 == 1);
                    break;
                case 25:
                    b();
                    break;
                default:
                    return false;
            }
        } catch (ch e2) {
            int i2 = e2.b;
            if (i2 == 1) {
                i = e2.a ? 3001 : 3003;
            } else if (i2 == 4) {
                i = e2.a ? 3002 : IronSourceError.ERROR_REWARD_VALIDATION_FAILED;
            }
            a(e2, i);
        } catch (i5 e3) {
            a(e3, e3.a);
        } catch (y6.a e4) {
            a(e4, e4.a);
        } catch (z7 e5) {
            e = e5;
            if (e.d == 1 && (wdVarF = this.t.f()) != null) {
                e = e.a(wdVarF.f.a);
            }
            if (e.k && this.P == null) {
                oc.c("ExoPlayerImplInternal", "Recoverable renderer error", e);
                this.P = e;
                ia iaVar = this.i;
                iaVar.a(iaVar.a(25, e));
            } else {
                z7 z7Var = this.P;
                if (z7Var != null) {
                    z7Var.addSuppressed(e);
                    e = this.P;
                }
                oc.a("ExoPlayerImplInternal", "Playback error", e);
                a(true, false);
                this.y = this.y.a(e);
            }
        } catch (IOException e6) {
            a(e6, 2000);
        } catch (RuntimeException e7) {
            z7 z7VarA = z7.a(e7, ((e7 instanceof IllegalStateException) || (e7 instanceof IllegalArgumentException)) ? 1004 : 1000);
            oc.a("ExoPlayerImplInternal", "Playback error", z7VarA);
            a(true, false);
            this.y = this.y.a(z7VarA);
        }
        n();
        return true;
    }

    private void n() {
        this.z.a(this.y);
        if (this.z.a) {
            this.s.a(this.z);
            this.z = new e(this.y);
        }
    }

    private void w() {
        this.z.a(1);
        a(false, false, false, true);
        this.g.f();
        c(this.y.a.c() ? 4 : 2);
        this.u.a(this.h.a());
        this.i.c(2);
    }

    private void s() throws Throwable {
        a(this.u.a(), true);
    }

    private void a(b bVar, int i) throws Throwable {
        this.z.a(1);
        ee eeVar = this.u;
        if (i == -1) {
            i = eeVar.c();
        }
        a(eeVar.a(i, bVar.a, bVar.b), false);
    }

    private void F() {
        this.D = false;
        this.p.b();
        for (qi qiVar : this.a) {
            if (c(qiVar)) {
                qiVar.start();
            }
        }
    }

    private void H() {
        this.p.c();
        for (qi qiVar : this.a) {
            if (c(qiVar)) {
                b(qiVar);
            }
        }
    }

    private void b() throws z7 {
        c(true);
    }

    private void K() {
        wd wdVarE = this.t.e();
        if (wdVarE == null) {
            return;
        }
        long jH = wdVarE.d ? wdVarE.a.h() : -9223372036854775807L;
        if (jH != -9223372036854775807L) {
            c(jH);
            if (jH != this.y.s) {
                oh ohVar = this.y;
                this.y = a(ohVar.b, jH, ohVar.c, jH, true, 5);
            }
        } else {
            long jB = this.p.b(wdVarE != this.t.f());
            this.M = jB;
            long jD = wdVarE.d(jB);
            b(this.y.s, jD);
            this.y.s = jD;
        }
        this.y.q = this.t.d().c();
        this.y.r = h();
        oh ohVar2 = this.y;
        if (ohVar2.l && ohVar2.e == 3 && a(ohVar2.a, ohVar2.b) && this.y.n.a == 1.0f) {
            float fA = this.v.a(e(), h());
            if (this.p.a().a != fA) {
                this.p.a(this.y.n.a(fA));
                a(this.y.n, this.p.a().a, false, false);
            }
        }
    }

    private void u() {
        for (wd wdVarE = this.t.e(); wdVarE != null; wdVarE = wdVarE.d()) {
            for (g8 g8Var : wdVarE.i().c) {
                if (g8Var != null) {
                    g8Var.k();
                }
            }
        }
    }

    private void c() throws z7 {
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        long jA = this.r.a();
        J();
        int i2 = this.y.e;
        if (i2 != 1 && i2 != 4) {
            wd wdVarE = this.t.e();
            if (wdVarE == null) {
                c(jA, 10L);
                return;
            }
            ko.a("doSomeWork");
            K();
            if (wdVarE.d) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() * 1000;
                wdVarE.a.a(this.y.s - this.n, this.o);
                int i3 = 0;
                z = true;
                z2 = true;
                while (true) {
                    qi[] qiVarArr = this.a;
                    if (i3 >= qiVarArr.length) {
                        break;
                    }
                    qi qiVar = qiVarArr[i3];
                    if (c(qiVar)) {
                        qiVar.a(this.M, jElapsedRealtime);
                        z = z && qiVar.c();
                        boolean z4 = wdVarE.c[i3] != qiVar.o();
                        boolean z5 = z4 || (!z4 && qiVar.j()) || qiVar.d() || qiVar.c();
                        z2 = z2 && z5;
                        if (!z5) {
                            qiVar.h();
                        }
                    }
                    i3++;
                }
            } else {
                wdVarE.a.f();
                z = true;
                z2 = true;
            }
            long j = wdVarE.f.e;
            boolean z6 = z && wdVarE.d && (j == -9223372036854775807L || j <= this.y.s);
            if (z6 && this.C) {
                this.C = false;
                a(false, this.y.m, false, 5);
            }
            if (z6 && wdVarE.f.i) {
                c(4);
                H();
            } else if (this.y.e == 2 && h(z2)) {
                c(3);
                this.P = null;
                if (E()) {
                    F();
                }
            } else if (this.y.e == 3 && (this.K != 0 ? !z2 : !k())) {
                this.D = E();
                c(2);
                if (this.D) {
                    u();
                    this.v.a();
                }
                H();
            }
            if (this.y.e == 2) {
                int i4 = 0;
                while (true) {
                    qi[] qiVarArr2 = this.a;
                    if (i4 >= qiVarArr2.length) {
                        break;
                    }
                    if (c(qiVarArr2[i4]) && this.a[i4].o() == wdVarE.c[i4]) {
                        this.a[i4].h();
                    }
                    i4++;
                }
                oh ohVar = this.y;
                if (!ohVar.g && ohVar.r < 500000 && j()) {
                    throw new IllegalStateException("Playback stuck buffering and not loading");
                }
            }
            boolean z7 = this.J;
            oh ohVar2 = this.y;
            if (z7 != ohVar2.o) {
                this.y = ohVar2.b(z7);
            }
            if ((E() && this.y.e == 3) || (i = this.y.e) == 2) {
                z3 = !a(jA, 10L);
            } else {
                if (this.K != 0 && i != 4) {
                    c(jA, 1000L);
                } else {
                    this.i.b(2);
                }
                z3 = false;
            }
            oh ohVar3 = this.y;
            if (ohVar3.p != z3) {
                this.y = ohVar3.c(z3);
            }
            this.I = false;
            ko.a();
            return;
        }
        this.i.b(2);
    }

    private long e() {
        oh ohVar = this.y;
        return a(ohVar.a, ohVar.b.a, ohVar.s);
    }

    private void g(boolean z) throws z7 {
        this.G = z;
        if (!this.t.a(this.y.a, z)) {
            c(true);
        }
        a(false);
    }

    private void y() {
        a(true, false, true, false);
        this.g.e();
        c(1);
        this.j.quit();
        synchronized (this) {
            this.A = true;
            notifyAll();
        }
    }

    private boolean a(fo foVar, ae.a aVar) {
        if (aVar.a() || foVar.c()) {
            return false;
        }
        foVar.a(foVar.a(aVar.a, this.m).c, this.l);
        if (!this.l.e()) {
            return false;
        }
        fo.d dVar = this.l;
        return dVar.j && dVar.g != -9223372036854775807L;
    }

    private void A() throws z7 {
        float f2 = this.p.a().a;
        wd wdVarF = this.t.f();
        boolean z = true;
        for (wd wdVarE = this.t.e(); wdVarE != null && wdVarE.d; wdVarE = wdVarE.d()) {
            wo woVarB = wdVarE.b(f2, this.y.a);
            if (!woVarB.a(wdVarE.i())) {
                if (z) {
                    wd wdVarE2 = this.t.e();
                    boolean zA = this.t.a(wdVarE2);
                    boolean[] zArr = new boolean[this.a.length];
                    long jA = wdVarE2.a(woVarB, this.y.s, zA, zArr);
                    oh ohVar = this.y;
                    boolean z2 = (ohVar.e == 4 || jA == ohVar.s) ? false : true;
                    oh ohVar2 = this.y;
                    this.y = a(ohVar2.b, jA, ohVar2.c, ohVar2.d, z2, 5);
                    if (z2) {
                        c(jA);
                    }
                    boolean[] zArr2 = new boolean[this.a.length];
                    int i = 0;
                    while (true) {
                        qi[] qiVarArr = this.a;
                        if (i >= qiVarArr.length) {
                            break;
                        }
                        qi qiVar = qiVarArr[i];
                        boolean zC = c(qiVar);
                        zArr2[i] = zC;
                        cj cjVar = wdVarE2.c[i];
                        if (zC) {
                            if (cjVar != qiVar.o()) {
                                a(qiVar);
                            } else if (zArr[i]) {
                                qiVar.a(this.M);
                            }
                        }
                        i++;
                    }
                    a(zArr2);
                } else {
                    this.t.a(wdVarE);
                    if (wdVarE.d) {
                        wdVarE.a(woVarB, Math.max(wdVarE.f.b, wdVarE.d(this.M)), false);
                    }
                }
                a(true);
                if (this.y.e != 4) {
                    m();
                    K();
                    this.i.c(2);
                    return;
                }
                return;
            }
            if (wdVarE == wdVarF) {
                z = false;
            }
        }
    }

    private void t() {
        for (wd wdVarE = this.t.e(); wdVarE != null; wdVarE = wdVarE.d()) {
            for (g8 g8Var : wdVarE.i().c) {
                if (g8Var != null) {
                    g8Var.j();
                }
            }
        }
    }

    private boolean k() {
        wd wdVarE = this.t.e();
        long j = wdVarE.f.e;
        return wdVarE.d && (j == -9223372036854775807L || this.y.s < j || !E());
    }

    private long f() {
        wd wdVarF = this.t.f();
        if (wdVarF == null) {
            return 0L;
        }
        long jF = wdVarF.f();
        if (!wdVarF.d) {
            return jF;
        }
        int i = 0;
        while (true) {
            qi[] qiVarArr = this.a;
            if (i >= qiVarArr.length) {
                return jF;
            }
            if (c(qiVarArr[i]) && this.a[i].o() == wdVarF.c[i]) {
                long jI = this.a[i].i();
                if (jI == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                jF = Math.max(jI, jF);
            }
            i++;
        }
    }

    private void J() throws z7 {
        if (this.y.a.c() || !this.u.d()) {
            return;
        }
        o();
        q();
        r();
        p();
    }

    private void o() {
        yd ydVarA;
        this.t.a(this.M);
        if (this.t.h() && (ydVarA = this.t.a(this.M, this.y)) != null) {
            wd wdVarA = this.t.a(this.c, this.d, this.g.b(), this.u, ydVarA, this.f);
            wdVarA.a.a(this, ydVarA.b);
            if (this.t.e() == wdVarA) {
                c(wdVarA.g());
            }
            a(false);
        }
        if (this.E) {
            this.E = j();
            I();
        } else {
            m();
        }
    }

    private void q() {
        wd wdVarF = this.t.f();
        if (wdVarF == null) {
            return;
        }
        int i = 0;
        if (wdVarF.d() != null && !this.C) {
            if (i()) {
                if (wdVarF.d().d || this.M >= wdVarF.d().g()) {
                    wo woVarI = wdVarF.i();
                    wd wdVarB = this.t.b();
                    wo woVarI2 = wdVarB.i();
                    if (wdVarB.d && wdVarB.a.h() != -9223372036854775807L) {
                        d(wdVarB.g());
                        return;
                    }
                    for (int i2 = 0; i2 < this.a.length; i2++) {
                        boolean zA = woVarI.a(i2);
                        boolean zA2 = woVarI2.a(i2);
                        if (zA && !this.a[i2].k()) {
                            boolean z = this.c[i2].e() == -2;
                            si siVar = woVarI.b[i2];
                            si siVar2 = woVarI2.b[i2];
                            if (!zA2 || !siVar2.equals(siVar) || z) {
                                a(this.a[i2], wdVarB.g());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!wdVarF.f.i && !this.C) {
            return;
        }
        while (true) {
            qi[] qiVarArr = this.a;
            if (i >= qiVarArr.length) {
                return;
            }
            qi qiVar = qiVarArr[i];
            cj cjVar = wdVarF.c[i];
            if (cjVar != null && qiVar.o() == cjVar && qiVar.j()) {
                long j = wdVarF.f.e;
                a(qiVar, (j == -9223372036854775807L || j == Long.MIN_VALUE) ? -9223372036854775807L : wdVarF.f() + wdVarF.f.e);
            }
            i++;
        }
    }

    private void r() throws z7 {
        wd wdVarF = this.t.f();
        if (wdVarF == null || this.t.e() == wdVarF || wdVarF.g || !z()) {
            return;
        }
        d();
    }

    private boolean z() {
        wd wdVarF = this.t.f();
        wo woVarI = wdVarF.i();
        int i = 0;
        boolean z = false;
        while (true) {
            qi[] qiVarArr = this.a;
            if (i >= qiVarArr.length) {
                return !z;
            }
            qi qiVar = qiVarArr[i];
            if (c(qiVar)) {
                boolean z2 = qiVar.o() != wdVarF.c[i];
                if (!woVarI.a(i) || z2) {
                    if (!qiVar.k()) {
                        qiVar.a(a(woVarI.c[i]), wdVarF.c[i], wdVarF.g(), wdVarF.f());
                    } else if (qiVar.c()) {
                        a(qiVar);
                    } else {
                        z = true;
                    }
                }
            }
            i++;
        }
    }

    private void p() {
        boolean z = false;
        while (C()) {
            if (z) {
                n();
            }
            wd wdVarE = this.t.e();
            wd wdVarA = this.t.a();
            yd ydVar = wdVarA.f;
            ae.a aVar = ydVar.a;
            long j = ydVar.b;
            oh ohVarA = a(aVar, j, ydVar.c, j, true, 0);
            this.y = ohVarA;
            fo foVar = ohVarA.a;
            a(foVar, wdVarA.f.a, foVar, wdVarE.f.a, -9223372036854775807L);
            B();
            K();
            z = true;
        }
    }

    private void B() {
        wd wdVarE = this.t.e();
        this.C = wdVarE != null && wdVarE.f.h && this.B;
    }

    private boolean C() {
        wd wdVarE;
        wd wdVarD;
        return E() && !this.C && (wdVarE = this.t.e()) != null && (wdVarD = wdVarE.d()) != null && this.M >= wdVarD.g() && wdVarD.g;
    }

    private boolean i() {
        wd wdVarF = this.t.f();
        if (!wdVarF.d) {
            return false;
        }
        int i = 0;
        while (true) {
            qi[] qiVarArr = this.a;
            if (i >= qiVarArr.length) {
                return true;
            }
            qi qiVar = qiVarArr[i];
            cj cjVar = wdVarF.c[i];
            if (qiVar.o() != cjVar || (cjVar != null && !qiVar.j() && !a(qiVar, wdVarF))) {
                return false;
            }
            i++;
        }
    }

    private void m() {
        boolean zD = D();
        this.E = zD;
        if (zD) {
            this.t.d().a(this.M);
        }
        I();
    }

    private boolean D() {
        long jD;
        if (!j()) {
            return false;
        }
        wd wdVarD = this.t.d();
        long jB = b(wdVarD.e());
        if (wdVarD == this.t.e()) {
            jD = wdVarD.d(this.M);
        } else {
            jD = wdVarD.d(this.M) - wdVarD.f.b;
        }
        return this.g.a(jD, jB, this.p.a().a);
    }

    private boolean j() {
        wd wdVarD = this.t.d();
        return (wdVarD == null || wdVarD.e() == Long.MIN_VALUE) ? false : true;
    }

    private void I() {
        wd wdVarD = this.t.d();
        boolean z = this.E || (wdVarD != null && wdVarD.a.a());
        oh ohVar = this.y;
        if (z != ohVar.g) {
            this.y = ohVar.a(z);
        }
    }

    private void d() throws z7 {
        a(new boolean[this.a.length]);
    }

    private void b(rh rhVar) {
        if (rhVar.i()) {
            return;
        }
        try {
            rhVar.e().a(rhVar.g(), rhVar.c());
        } finally {
            rhVar.a(true);
        }
    }

    class a implements qi.a {
        a() {
        }

        @Override // com.applovin.impl.qi.a
        public void a(long j) {
            if (j >= 2000) {
                d8.this.I = true;
            }
        }

        @Override // com.applovin.impl.qi.a
        public void a() {
            d8.this.i.c(2);
        }
    }

    private long h() {
        return b(this.y.q);
    }

    private void a(qi qiVar) {
        if (c(qiVar)) {
            this.p.a(qiVar);
            b(qiVar);
            qiVar.f();
            this.K--;
        }
    }

    private boolean E() {
        oh ohVar = this.y;
        return ohVar.l && ohVar.m == 0;
    }

    private void e(rh rhVar) {
        if (rhVar.b() == this.k) {
            b(rhVar);
            int i = this.y.e;
            if (i == 3 || i == 2) {
                this.i.c(2);
                return;
            }
            return;
        }
        this.i.a(15, rhVar).a();
    }

    private void a(boolean z, boolean z2) {
        a(z || !this.H, false, true, false);
        this.z.a(z2 ? 1 : 0);
        this.g.c();
        c(1);
    }

    @Override // com.applovin.impl.pj.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void a(vd vdVar) {
        this.i.a(9, vdVar).a();
    }

    private static final class h {
        public final fo a;
        public final int b;
        public final long c;

        public h(fo foVar, int i, long j) {
            this.a = foVar;
            this.b = i;
            this.c = j;
        }
    }

    private static final class g {
        public final ae.a a;
        public final long b;
        public final long c;
        public final boolean d;
        public final boolean e;
        public final boolean f;

        public g(ae.a aVar, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.a = aVar;
            this.b = j;
            this.c = j2;
            this.d = z;
            this.e = z2;
            this.f = z3;
        }
    }

    private static final class d implements Comparable {
        public final rh a;
        public int b;
        public long c;
        public Object d;

        public d(rh rhVar) {
            this.a = rhVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(d dVar) {
            Object obj = this.d;
            if ((obj == null) != (dVar.d == null)) {
                return obj != null ? -1 : 1;
            }
            if (obj == null) {
                return 0;
            }
            int i = this.b - dVar.b;
            return i != 0 ? i : xp.a(this.c, dVar.c);
        }

        public void a(int i, long j, Object obj) {
            this.b = i;
            this.c = j;
            this.d = obj;
        }
    }

    private static final class b {
        private final List a;
        private final wj b;
        private final int c;
        private final long d;

        private b(List list, wj wjVar, int i, long j) {
            this.a = list;
            this.b = wjVar;
            this.c = i;
            this.d = j;
        }

        /* synthetic */ b(List list, wj wjVar, int i, long j, a aVar) {
            this(list, wjVar, i, j);
        }
    }

    private void c(vd vdVar) throws z7 {
        if (this.t.a(vdVar)) {
            wd wdVarD = this.t.d();
            wdVarD.a(this.p.a().a, this.y.a);
            a(wdVarD.h(), wdVarD.i());
            if (wdVarD == this.t.e()) {
                c(wdVarD.f.b);
                d();
                oh ohVar = this.y;
                ae.a aVar = ohVar.b;
                long j = wdVarD.f.b;
                this.y = a(aVar, j, ohVar.c, j, false, 5);
            }
            m();
        }
    }

    private void e(boolean z) throws z7 {
        this.B = z;
        B();
        if (!this.C || this.t.f() == this.t.e()) {
            return;
        }
        c(true);
        a(false);
    }

    private void f(final rh rhVar) {
        Looper looperB = rhVar.b();
        if (!looperB.getThread().isAlive()) {
            oc.d("TAG", "Trying to send message on a dead thread.");
            rhVar.a(false);
        } else {
            this.r.a(looperB, null).a(new Runnable() { // from class: com.applovin.impl.d8$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(rhVar);
                }
            });
        }
    }

    public void f(boolean z) {
        this.i.a(12, z ? 1 : 0, 0).a();
    }

    private void b(qi qiVar) {
        if (qiVar.b() == 2) {
            qiVar.stop();
        }
    }

    private boolean h(boolean z) {
        if (this.K == 0) {
            return k();
        }
        if (!z) {
            return false;
        }
        oh ohVar = this.y;
        if (!ohVar.g) {
            return true;
        }
        long jB = a(ohVar.a, this.t.e().f.a) ? this.v.b() : -9223372036854775807L;
        wd wdVarD = this.t.d();
        return (wdVarD.j() && wdVarD.f.i) || (wdVarD.f.a.a() && !wdVarD.d) || this.g.a(h(), this.p.a().a, this.D, jB);
    }

    private void d(rh rhVar) {
        if (rhVar.d() == -9223372036854775807L) {
            e(rhVar);
            return;
        }
        if (this.y.a.c()) {
            this.q.add(new d(rhVar));
            return;
        }
        d dVar = new d(rhVar);
        fo foVar = this.y.a;
        if (a(dVar, foVar, foVar, this.F, this.G, this.l, this.m)) {
            this.q.add(dVar);
            Collections.sort(this.q);
        } else {
            rhVar.a(false);
        }
    }

    private void a(fo foVar, ae.a aVar, fo foVar2, ae.a aVar2, long j) {
        if (!foVar.c() && a(foVar, aVar)) {
            foVar.a(foVar.a(aVar.a, this.m).c, this.l);
            this.v.a((sd.f) xp.a(this.l.l));
            if (j != -9223372036854775807L) {
                this.v.a(a(foVar, aVar.a, j));
                return;
            }
            if (xp.a(!foVar2.c() ? foVar2.a(foVar2.a(aVar2.a, this.m).c, this.l).a : null, this.l.a)) {
                return;
            }
            this.v.a(-9223372036854775807L);
            return;
        }
        float f2 = this.p.a().a;
        ph phVar = this.y.n;
        if (f2 != phVar.a) {
            this.p.a(phVar);
        }
    }

    private void a(int i, boolean z) throws z7 {
        qi qiVar = this.a[i];
        if (c(qiVar)) {
            return;
        }
        wd wdVarF = this.t.f();
        boolean z2 = wdVarF == this.t.e();
        wo woVarI = wdVarF.i();
        si siVar = woVarI.b[i];
        e9[] e9VarArrA = a(woVarI.c[i]);
        boolean z3 = E() && this.y.e == 3;
        boolean z4 = !z && z3;
        this.K++;
        this.b.add(qiVar);
        qiVar.a(siVar, e9VarArrA, wdVarF.c[i], this.M, z4, z2, wdVarF.g(), wdVarF.f());
        qiVar.a(11, new a());
        this.p.b(qiVar);
        if (z3) {
            qiVar.start();
        }
    }

    private static boolean c(qi qiVar) {
        return qiVar.b() != 0;
    }

    private void d(long j) {
        for (qi qiVar : this.a) {
            if (qiVar.o() != null) {
                a(qiVar, j);
            }
        }
    }

    private long b(long j) {
        wd wdVarD = this.t.d();
        if (wdVarD == null) {
            return 0L;
        }
        return Math.max(0L, j - wdVarD.d(this.M));
    }

    private void a(po poVar, wo woVar) {
        this.g.a(this.a, poVar, woVar.c);
    }

    private void d(boolean z) {
        if (z == this.J) {
            return;
        }
        this.J = z;
        oh ohVar = this.y;
        int i = ohVar.e;
        if (!z && i != 4 && i != 1) {
            this.i.c(2);
        } else {
            this.y = ohVar.b(z);
        }
    }

    private void a(boolean[] zArr) throws z7 {
        wd wdVarF = this.t.f();
        wo woVarI = wdVarF.i();
        for (int i = 0; i < this.a.length; i++) {
            if (!woVarI.a(i) && this.b.remove(this.a[i])) {
                this.a[i].reset();
            }
        }
        for (int i2 = 0; i2 < this.a.length; i2++) {
            if (woVarI.a(i2)) {
                a(i2, zArr[i2]);
            }
        }
        wdVarF.g = true;
    }

    public void a(long j) {
        this.Q = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(rh rhVar) {
        try {
            b(rhVar);
        } catch (z7 e2) {
            oc.a("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    private void b(vd vdVar) {
        if (this.t.a(vdVar)) {
            this.t.a(this.M);
            m();
        }
    }

    private void a(float f2) {
        for (wd wdVarE = this.t.e(); wdVarE != null; wdVarE = wdVarE.d()) {
            for (g8 g8Var : wdVarE.i().c) {
                if (g8Var != null) {
                    g8Var.a(f2);
                }
            }
        }
    }

    private void c(long j) {
        wd wdVarE = this.t.e();
        if (wdVarE != null) {
            j = wdVarE.e(j);
        }
        this.M = j;
        this.p.a(j);
        for (qi qiVar : this.a) {
            if (c(qiVar)) {
                qiVar.a(this.M);
            }
        }
        t();
    }

    private synchronized void a(Supplier supplier, long j) {
        long jC = this.r.c() + j;
        boolean z = false;
        while (!((Boolean) supplier.get()).booleanValue() && j > 0) {
            try {
                this.r.b();
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = jC - this.r.c();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private db a(g8[] g8VarArr) {
        db.a aVar = new db.a();
        boolean z = false;
        for (g8 g8Var : g8VarArr) {
            if (g8Var != null) {
                af afVar = g8Var.a(0).k;
                if (afVar == null) {
                    aVar.b(new af(new af.b[0]));
                } else {
                    aVar.b(afVar);
                    z = true;
                }
            }
        }
        return z ? aVar.a() : db.h();
    }

    private void c(long j, long j2) {
        this.i.b(2);
        this.i.a(2, j + j2);
    }

    private void b(long j, long j2) {
        d8 d8Var;
        d dVar;
        if (this.q.isEmpty() || this.y.b.a()) {
            return;
        }
        if (this.O) {
            j--;
            this.O = false;
        }
        oh ohVar = this.y;
        int iA = ohVar.a.a(ohVar.b.a);
        int iMin = Math.min(this.N, this.q.size());
        d dVar2 = iMin > 0 ? (d) this.q.get(iMin - 1) : null;
        while (dVar2 != null) {
            int i = dVar2.b;
            if (i <= iA && (i != iA || dVar2.c <= j)) {
                break;
            }
            int i2 = iMin - 1;
            dVar2 = i2 > 0 ? (d) this.q.get(iMin - 2) : null;
            iMin = i2;
        }
        if (iMin < this.q.size()) {
            dVar = (d) this.q.get(iMin);
            d8Var = this;
        } else {
            d8Var = this;
            dVar = null;
        }
        while (dVar != null && dVar.d != null) {
            int i3 = dVar.b;
            if (i3 >= iA && (i3 != iA || dVar.c > j)) {
                break;
            }
            iMin++;
            if (iMin < d8Var.q.size()) {
                dVar = (d) d8Var.q.get(iMin);
            } else {
                d8Var = d8Var;
                dVar = null;
            }
        }
        while (dVar != null && dVar.d != null && dVar.b == iA) {
            long j3 = dVar.c;
            if (j3 <= j || j3 > j2) {
                break;
            }
            try {
                d8Var.e(dVar.a);
                if (dVar.a.a() || dVar.a.i()) {
                    d8Var.q.remove(iMin);
                } else {
                    iMin++;
                }
                dVar = iMin < d8Var.q.size() ? (d) d8Var.q.get(iMin) : null;
            } catch (Throwable th) {
                if (dVar.a.a() || dVar.a.i()) {
                    d8Var.q.remove(iMin);
                }
                throw th;
            }
        }
        d8Var.N = iMin;
    }

    private void c(boolean z) throws z7 {
        ae.a aVar = this.t.e().f.a;
        long jA = a(aVar, this.y.s, true, false);
        if (jA != this.y.s) {
            oh ohVar = this.y;
            this.y = a(aVar, jA, ohVar.c, ohVar.d, z, 5);
        }
    }

    private void b(boolean z) {
        for (wd wdVarE = this.t.e(); wdVarE != null; wdVarE = wdVarE.d()) {
            for (g8 g8Var : wdVarE.i().c) {
                if (g8Var != null) {
                    g8Var.a(z);
                }
            }
        }
    }

    public void b(int i, int i2, wj wjVar) {
        this.i.a(20, i, i2, wjVar).a();
    }

    private void c(int i) {
        oh ohVar = this.y;
        if (ohVar.e != i) {
            this.y = ohVar.a(i);
        }
    }

    private void b(ph phVar) {
        this.p.a(phVar);
        a(this.p.a(), true);
    }

    private static e9[] a(g8 g8Var) {
        int iB = g8Var != null ? g8Var.b() : 0;
        e9[] e9VarArr = new e9[iB];
        for (int i = 0; i < iB; i++) {
            e9VarArr[i] = g8Var.a(i);
        }
        return e9VarArr;
    }

    private void b(int i) throws z7 {
        this.F = i;
        if (!this.t.a(this.y.a, i)) {
            c(true);
        }
        a(false);
    }

    private long a(fo foVar, Object obj, long j) {
        foVar.a(foVar.a(obj, this.m).c, this.l);
        fo.d dVar = this.l;
        if (dVar.g != -9223372036854775807L && dVar.e()) {
            fo.d dVar2 = this.l;
            if (dVar2.j) {
                return t2.a(dVar2.a() - this.l.g) - (j + this.m.e());
            }
        }
        return -9223372036854775807L;
    }

    private Pair a(fo foVar) {
        long jB = 0;
        if (foVar.c()) {
            return Pair.create(oh.a(), 0L);
        }
        Pair pairA = foVar.a(this.l, this.m, foVar.a(this.G), -9223372036854775807L);
        ae.a aVarA = this.t.a(foVar, pairA.first, 0L);
        long jLongValue = ((Long) pairA.second).longValue();
        if (aVarA.a()) {
            foVar.a(aVarA.a, this.m);
            if (aVarA.c == this.m.d(aVarA.b)) {
                jB = this.m.b();
            }
        } else {
            jB = jLongValue;
        }
        return Pair.create(aVarA, Long.valueOf(jB));
    }

    private void a(IOException iOException, int i) {
        z7 z7VarA = z7.a(iOException, i);
        wd wdVarE = this.t.e();
        if (wdVarE != null) {
            z7VarA = z7VarA.a(wdVarE.f.a);
        }
        oc.a("ExoPlayerImplInternal", "Playback error", z7VarA);
        a(false, false);
        this.y = this.y.a(z7VarA);
    }

    private void a(boolean z) {
        long jC;
        wd wdVarD = this.t.d();
        ae.a aVar = wdVarD == null ? this.y.b : wdVarD.f.a;
        boolean z2 = !this.y.k.equals(aVar);
        if (z2) {
            this.y = this.y.a(aVar);
        }
        oh ohVar = this.y;
        if (wdVarD == null) {
            jC = ohVar.s;
        } else {
            jC = wdVarD.c();
        }
        ohVar.q = jC;
        this.y.r = h();
        if ((z2 || z) && wdVarD != null && wdVarD.d) {
            a(wdVarD.h(), wdVarD.i());
        }
    }

    private void a(fo foVar, boolean z) throws Throwable {
        boolean z2;
        g gVarA = a(foVar, this.y, this.L, this.t, this.F, this.G, this.l, this.m);
        ae.a aVar = gVarA.a;
        long j = gVarA.c;
        boolean z3 = gVarA.d;
        long jA = gVarA.b;
        boolean z4 = (this.y.b.equals(aVar) && jA == this.y.s) ? false : true;
        h hVar = null;
        try {
            if (gVarA.e) {
                if (this.y.e != 1) {
                    c(4);
                }
                a(false, false, false, true);
            }
            try {
                if (!z4) {
                    z2 = false;
                    if (!this.t.a(foVar, this.M, f())) {
                        c(false);
                    }
                } else {
                    z2 = false;
                    if (!foVar.c()) {
                        for (wd wdVarE = this.t.e(); wdVarE != null; wdVarE = wdVarE.d()) {
                            if (wdVarE.f.a.equals(aVar)) {
                                wdVarE.f = this.t.a(foVar, wdVarE.f);
                                wdVarE.m();
                            }
                        }
                        jA = a(aVar, jA, z3);
                    }
                }
                oh ohVar = this.y;
                a(foVar, aVar, ohVar.a, ohVar.b, gVarA.f ? jA : -9223372036854775807L);
                if (z4 || j != this.y.c) {
                    oh ohVar2 = this.y;
                    Object obj = ohVar2.b.a;
                    fo foVar2 = ohVar2.a;
                    this.y = a(aVar, jA, j, this.y.d, z4 && z && !foVar2.c() && !foVar2.a(obj, this.m).g, foVar.a(obj) == -1 ? 4 : 3);
                }
                B();
                a(foVar, this.y.a);
                this.y = this.y.a(foVar);
                if (!foVar.c()) {
                    this.L = null;
                }
                a(z2);
            } catch (Throwable th) {
                th = th;
                hVar = null;
                oh ohVar3 = this.y;
                h hVar2 = hVar;
                a(foVar, aVar, ohVar3.a, ohVar3.b, gVarA.f ? jA : -9223372036854775807L);
                if (z4 || j != this.y.c) {
                    oh ohVar4 = this.y;
                    Object obj2 = ohVar4.b.a;
                    fo foVar3 = ohVar4.a;
                    this.y = a(aVar, jA, j, this.y.d, z4 && z && !foVar3.c() && !foVar3.a(obj2, this.m).g, foVar.a(obj2) == -1 ? 4 : 3);
                }
                B();
                a(foVar, this.y.a);
                this.y = this.y.a(foVar);
                if (!foVar.c()) {
                    this.L = hVar2;
                }
                a(false);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void a(ph phVar, float f2, boolean z, boolean z2) {
        if (z) {
            if (z2) {
                this.z.a(1);
            }
            this.y = this.y.a(phVar);
        }
        a(phVar.a);
        for (qi qiVar : this.a) {
            if (qiVar != null) {
                qiVar.a(f2, phVar.a);
            }
        }
    }

    private void a(ph phVar, boolean z) {
        a(phVar, phVar.a, true, z);
    }

    private oh a(ae.a aVar, long j, long j2, long j3, boolean z, int i) {
        List listH;
        po poVar;
        wo woVar;
        po poVarH;
        wo woVarI;
        this.O = (!this.O && j == this.y.s && aVar.equals(this.y.b)) ? false : true;
        B();
        oh ohVar = this.y;
        po poVar2 = ohVar.h;
        wo woVar2 = ohVar.i;
        List list = ohVar.j;
        if (this.u.d()) {
            wd wdVarE = this.t.e();
            if (wdVarE == null) {
                poVarH = po.d;
            } else {
                poVarH = wdVarE.h();
            }
            if (wdVarE == null) {
                woVarI = this.f;
            } else {
                woVarI = wdVarE.i();
            }
            db dbVarA = a(woVarI.c);
            if (wdVarE != null) {
                yd ydVar = wdVarE.f;
                if (ydVar.c != j2) {
                    wdVarE.f = ydVar.a(j2);
                }
            }
            poVar = poVarH;
            woVar = woVarI;
            listH = dbVarA;
        } else if (aVar.equals(this.y.b)) {
            listH = list;
            poVar = poVar2;
            woVar = woVar2;
        } else {
            poVar = po.d;
            woVar = this.f;
            listH = db.h();
        }
        if (z) {
            this.z.c(i);
        }
        return this.y.a(aVar, j, j2, j3, h(), poVar, woVar, listH);
    }

    private boolean a(qi qiVar, wd wdVar) {
        wd wdVarD = wdVar.d();
        return wdVar.f.f && wdVarD.d && ((qiVar instanceof bo) || qiVar.i() >= wdVarD.g());
    }

    private static boolean a(oh ohVar, fo.b bVar) {
        ae.a aVar = ohVar.b;
        fo foVar = ohVar.a;
        return foVar.c() || foVar.a(aVar.a, bVar).g;
    }

    private boolean a(long j, long j2) {
        if (this.J && this.I) {
            return false;
        }
        c(j, j2);
        return true;
    }

    private void a(c cVar) {
        this.z.a(1);
        throw null;
    }

    @Override // com.applovin.impl.g6.a
    public void a(ph phVar) {
        this.i.a(16, phVar).a();
    }

    @Override // com.applovin.impl.ee.d
    public void a() {
        this.i.c(22);
    }

    @Override // com.applovin.impl.vd.a
    public void a(vd vdVar) {
        this.i.a(8, vdVar).a();
    }

    private void a(int i, int i2, wj wjVar) throws Throwable {
        this.z.a(1);
        a(this.u.a(i, i2, wjVar), false);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a3 A[PHI: r4 r5 r7
  0x00a3: PHI (r4v3 com.applovin.impl.ae$a) = (r4v2 com.applovin.impl.ae$a), (r4v8 com.applovin.impl.ae$a) binds: [B:30:0x0076, B:32:0x009b] A[DONT_GENERATE, DONT_INLINE]
  0x00a3: PHI (r5v2 long) = (r5v1 long), (r5v4 long) binds: [B:30:0x0076, B:32:0x009b] A[DONT_GENERATE, DONT_INLINE]
  0x00a3: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:30:0x0076, B:32:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    private void a(boolean z, boolean z2, boolean z3, boolean z4) {
        long j;
        ae.a aVar;
        long j2;
        boolean z5;
        this.i.b(2);
        this.P = null;
        this.D = false;
        this.p.c();
        this.M = 0L;
        for (qi qiVar : this.a) {
            try {
                a(qiVar);
            } catch (z7 | RuntimeException e2) {
                oc.a("ExoPlayerImplInternal", "Disable failed.", e2);
            }
        }
        if (z) {
            for (qi qiVar2 : this.a) {
                if (this.b.remove(qiVar2)) {
                    try {
                        qiVar2.reset();
                    } catch (RuntimeException e3) {
                        oc.a("ExoPlayerImplInternal", "Reset failed.", e3);
                    }
                }
            }
        }
        this.K = 0;
        oh ohVar = this.y;
        ae.a aVar2 = ohVar.b;
        long jLongValue = ohVar.s;
        if (!this.y.b.a() && !a(this.y, this.m)) {
            j = this.y.s;
        } else {
            j = this.y.c;
        }
        if (z2) {
            this.L = null;
            Pair pairA = a(this.y.a);
            aVar2 = (ae.a) pairA.first;
            jLongValue = ((Long) pairA.second).longValue();
            j = -9223372036854775807L;
            if (aVar2.equals(this.y.b)) {
                aVar = aVar2;
                j2 = jLongValue;
                z5 = false;
            } else {
                z5 = true;
                aVar = aVar2;
                j2 = jLongValue;
            }
        } else {
            aVar = aVar2;
            j2 = jLongValue;
            z5 = false;
        }
        this.t.c();
        this.E = false;
        oh ohVar2 = this.y;
        fo foVar = ohVar2.a;
        int i = ohVar2.e;
        z7 z7Var = z4 ? null : ohVar2.f;
        po poVar = z5 ? po.d : ohVar2.h;
        wo woVar = z5 ? this.f : ohVar2.i;
        List listH = z5 ? db.h() : ohVar2.j;
        oh ohVar3 = this.y;
        this.y = new oh(foVar, aVar, j, j2, i, z7Var, false, poVar, woVar, listH, aVar, ohVar3.l, ohVar3.m, ohVar3.n, j2, 0L, j2, this.J, false);
        if (z3) {
            this.u.e();
        }
    }

    private static void a(fo foVar, d dVar, fo.d dVar2, fo.b bVar) {
        int i = foVar.a(foVar.a(dVar.d, bVar).c, dVar2).q;
        Object obj = foVar.a(i, bVar, true).b;
        long j = bVar.d;
        dVar.a(i, j != -9223372036854775807L ? j - 1 : Long.MAX_VALUE, obj);
    }

    private static boolean a(d dVar, fo foVar, fo foVar2, int i, boolean z, fo.d dVar2, fo.b bVar) {
        Object obj = dVar.d;
        if (obj == null) {
            Pair pairA = a(foVar, new h(dVar.a.f(), dVar.a.h(), dVar.a.d() == Long.MIN_VALUE ? -9223372036854775807L : t2.a(dVar.a.d())), false, i, z, dVar2, bVar);
            if (pairA == null) {
                return false;
            }
            dVar.a(foVar.a(pairA.first), ((Long) pairA.second).longValue(), pairA.first);
            if (dVar.a.d() == Long.MIN_VALUE) {
                a(foVar, dVar, dVar2, bVar);
            }
            return true;
        }
        int iA = foVar.a(obj);
        if (iA == -1) {
            return false;
        }
        if (dVar.a.d() == Long.MIN_VALUE) {
            a(foVar, dVar, dVar2, bVar);
            return true;
        }
        dVar.b = iA;
        foVar2.a(dVar.d, bVar);
        if (bVar.g && foVar2.a(bVar.c, dVar2).p == foVar2.a(dVar.d)) {
            Pair pairA2 = foVar.a(dVar2, bVar, foVar.a(dVar.d, bVar).c, dVar.c + bVar.e());
            dVar.a(foVar.a(pairA2.first), ((Long) pairA2.second).longValue(), pairA2.first);
        }
        return true;
    }

    private void a(fo foVar, fo foVar2) {
        if (foVar.c() && foVar2.c()) {
            return;
        }
        for (int size = this.q.size() - 1; size >= 0; size--) {
            if (!a((d) this.q.get(size), foVar, foVar2, this.F, this.G, this.l, this.m)) {
                ((d) this.q.get(size)).a.a(false);
                this.q.remove(size);
            }
        }
        Collections.sort(this.q);
    }

    private static g a(fo foVar, oh ohVar, h hVar, zd zdVar, int i, boolean z, fo.d dVar, fo.b bVar) {
        long j;
        ae.a aVar;
        int i2;
        int iA;
        int iA2;
        boolean z2;
        boolean z3;
        boolean z4;
        int iA3;
        boolean z5;
        long j2;
        int i3;
        boolean z6;
        if (foVar.c()) {
            return new g(oh.a(), 0L, -9223372036854775807L, false, true, false);
        }
        ae.a aVar2 = ohVar.b;
        Object obj = aVar2.a;
        boolean zA = a(ohVar, bVar);
        if (!ohVar.b.a() && !zA) {
            j = ohVar.s;
        } else {
            j = ohVar.c;
        }
        long jLongValue = j;
        boolean z7 = false;
        if (hVar != null) {
            aVar = aVar2;
            i2 = -1;
            Pair pairA = a(foVar, hVar, true, i, z, dVar, bVar);
            if (pairA == null) {
                iA2 = foVar.a(z);
                aVar = aVar;
                z2 = false;
                z3 = true;
                z4 = false;
            } else {
                if (hVar.c == -9223372036854775807L) {
                    iA2 = foVar.a(pairA.first, bVar).c;
                    jLongValue = jLongValue;
                    z6 = false;
                } else {
                    obj = pairA.first;
                    jLongValue = ((Long) pairA.second).longValue();
                    z6 = true;
                    iA2 = -1;
                }
                z4 = z6;
                z2 = ohVar.e == 4;
                z3 = false;
            }
        } else {
            aVar = aVar2;
            i2 = -1;
            if (ohVar.a.c()) {
                iA3 = foVar.a(z);
            } else {
                if (foVar.a(obj) == -1) {
                    Object objA = a(dVar, bVar, i, z, obj, ohVar.a, foVar);
                    if (objA == null) {
                        iA = foVar.a(z);
                        aVar = aVar;
                        z5 = true;
                    } else {
                        iA = foVar.a(objA, bVar).c;
                    }
                    iA2 = iA;
                    z3 = z5;
                    z2 = false;
                    z4 = false;
                } else if (jLongValue == -9223372036854775807L) {
                    iA3 = foVar.a(obj, bVar).c;
                } else if (zA) {
                    aVar = aVar;
                    ohVar.a.a(aVar.a, bVar);
                    if (ohVar.a.a(bVar.c, dVar).p == ohVar.a.a(aVar.a)) {
                        Pair pairA2 = foVar.a(dVar, bVar, foVar.a(obj, bVar).c, jLongValue + bVar.e());
                        obj = pairA2.first;
                        jLongValue = ((Long) pairA2.second).longValue();
                    } else {
                        jLongValue = jLongValue;
                    }
                    iA2 = -1;
                    z2 = false;
                    z3 = false;
                    z4 = true;
                } else {
                    iA = -1;
                }
                z5 = false;
                iA2 = iA;
                z3 = z5;
                z2 = false;
                z4 = false;
            }
            iA2 = iA3;
            aVar = aVar;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        if (iA2 != i2) {
            Pair pairA3 = foVar.a(dVar, bVar, iA2, -9223372036854775807L);
            obj = pairA3.first;
            jLongValue = ((Long) pairA3.second).longValue();
            j2 = -9223372036854775807L;
        } else {
            j2 = jLongValue;
        }
        ae.a aVarA = zdVar.a(foVar, obj, jLongValue);
        boolean z8 = aVarA.e == i2 || ((i3 = aVar.e) != i2 && aVarA.b >= i3);
        boolean zEquals = aVar.a.equals(obj);
        boolean z9 = zEquals && !aVar.a() && !aVarA.a() && z8;
        foVar.a(obj, bVar);
        if (zEquals && !zA && jLongValue == j2 && ((aVarA.a() && bVar.f(aVarA.b)) || (aVar.a() && bVar.f(aVar.b)))) {
            z7 = true;
        }
        if (z9 || z7) {
            aVarA = aVar;
        }
        if (aVarA.a()) {
            if (aVarA.equals(aVar)) {
                jLongValue = ohVar.s;
            } else {
                foVar.a(aVarA.a, bVar);
                jLongValue = aVarA.c == bVar.d(aVarA.b) ? bVar.b() : 0L;
            }
        }
        return new g(aVarA, jLongValue, j2, z2, z3, z4);
    }

    private static Pair a(fo foVar, h hVar, boolean z, int i, boolean z2, fo.d dVar, fo.b bVar) {
        Object objA;
        fo foVar2 = hVar.a;
        if (foVar.c()) {
            return null;
        }
        fo foVar3 = foVar2.c() ? foVar : foVar2;
        try {
            Pair pairA = foVar3.a(dVar, bVar, hVar.b, hVar.c);
            if (foVar.equals(foVar3)) {
                return pairA;
            }
            if (foVar.a(pairA.first) != -1) {
                return (foVar3.a(pairA.first, bVar).g && foVar3.a(bVar.c, dVar).p == foVar3.a(pairA.first)) ? foVar.a(dVar, bVar, foVar.a(pairA.first, bVar).c, hVar.c) : pairA;
            }
            if (z && (objA = a(dVar, bVar, i, z2, pairA.first, foVar3, foVar)) != null) {
                return foVar.a(dVar, bVar, foVar.a(objA, bVar).c, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    static Object a(fo.d dVar, fo.b bVar, int i, boolean z, Object obj, fo foVar, fo foVar2) {
        int iA = foVar.a(obj);
        int iA2 = foVar.a();
        int iA3 = iA;
        int iA4 = -1;
        for (int i2 = 0; i2 < iA2 && iA4 == -1; i2++) {
            iA3 = foVar.a(iA3, bVar, dVar, i, z);
            if (iA3 == -1) {
                break;
            }
            iA4 = foVar2.a(foVar.b(iA3));
        }
        if (iA4 == -1) {
            return null;
        }
        return foVar2.b(iA4);
    }

    public void a(fo foVar, int i, long j) {
        this.i.a(3, new h(foVar, i, j)).a();
    }

    private void a(h hVar) throws Throwable {
        long j;
        long j2;
        boolean z;
        ae.a aVar;
        long j3;
        long jA;
        long j4;
        oh ohVar;
        int i;
        this.z.a(1);
        Pair pairA = a(this.y.a, hVar, true, this.F, this.G, this.l, this.m);
        if (pairA == null) {
            Pair pairA2 = a(this.y.a);
            aVar = (ae.a) pairA2.first;
            long jLongValue = ((Long) pairA2.second).longValue();
            z = !this.y.a.c();
            j2 = jLongValue;
            j = -9223372036854775807L;
        } else {
            Object obj = pairA.first;
            long jLongValue2 = ((Long) pairA.second).longValue();
            j = hVar.c == -9223372036854775807L ? -9223372036854775807L : jLongValue2;
            ae.a aVarA = this.t.a(this.y.a, obj, jLongValue2);
            if (aVarA.a()) {
                this.y.a.a(aVarA.a, this.m);
                jLongValue2 = this.m.d(aVarA.b) == aVarA.c ? this.m.b() : 0L;
            } else {
                if (hVar.c != -9223372036854775807L) {
                    j2 = jLongValue2;
                    z = false;
                }
                aVar = aVarA;
            }
            j2 = jLongValue2;
            z = true;
            aVar = aVarA;
        }
        try {
            if (this.y.a.c()) {
                this.L = hVar;
            } else {
                if (pairA == null) {
                    if (this.y.e != 1) {
                        c(4);
                    }
                    a(false, true, false, true);
                } else {
                    if (aVar.equals(this.y.b)) {
                        wd wdVarE = this.t.e();
                        jA = (wdVarE == null || !wdVarE.d || j2 == 0) ? j2 : wdVarE.a.a(j2, this.x);
                        if (t2.b(jA) == t2.b(this.y.s) && ((i = (ohVar = this.y).e) == 2 || i == 3)) {
                            long j5 = ohVar.s;
                            this.y = a(aVar, j5, j, j5, z, 2);
                            return;
                        }
                    } else {
                        jA = j2;
                    }
                    long jA2 = a(aVar, jA, this.y.e == 4);
                    boolean z2 = (j2 != jA2) | z;
                    try {
                        oh ohVar2 = this.y;
                        fo foVar = ohVar2.a;
                        a(foVar, aVar, foVar, ohVar2.b, j);
                        z = z2;
                        j4 = jA2;
                    } catch (Throwable th) {
                        th = th;
                        z = z2;
                        j3 = jA2;
                        this.y = a(aVar, j3, j, j3, z, 2);
                        throw th;
                    }
                }
                this.y = a(aVar, j4, j, j4, z, 2);
            }
            j4 = j2;
            this.y = a(aVar, j4, j, j4, z, 2);
        } catch (Throwable th2) {
            th = th2;
            j3 = j2;
        }
    }

    private long a(ae.a aVar, long j, boolean z) {
        return a(aVar, j, this.t.e() != this.t.f(), z);
    }

    private long a(ae.a aVar, long j, boolean z, boolean z2) throws z7 {
        H();
        this.D = false;
        if (z2 || this.y.e == 3) {
            c(2);
        }
        wd wdVarE = this.t.e();
        wd wdVarD = wdVarE;
        while (wdVarD != null && !aVar.equals(wdVarD.f.a)) {
            wdVarD = wdVarD.d();
        }
        if (z || wdVarE != wdVarD || (wdVarD != null && wdVarD.e(j) < 0)) {
            for (qi qiVar : this.a) {
                a(qiVar);
            }
            if (wdVarD != null) {
                while (this.t.e() != wdVarD) {
                    this.t.a();
                }
                this.t.a(wdVarD);
                wdVarD.c(0L);
                d();
            }
        }
        if (wdVarD != null) {
            this.t.a(wdVarD);
            if (!wdVarD.d) {
                wdVarD.f = wdVarD.f.b(j);
            } else if (wdVarD.e) {
                long jA = wdVarD.a.a(j);
                wdVarD.a.a(jA - this.n, this.o);
                j = jA;
            }
            c(j);
            m();
        } else {
            this.t.c();
            c(j);
        }
        a(false);
        this.i.c(2);
        return j;
    }

    @Override // com.applovin.impl.rh.a
    public synchronized void a(rh rhVar) {
        if (!this.A && this.j.isAlive()) {
            this.i.a(14, rhVar).a();
            return;
        }
        oc.d("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        rhVar.a(false);
    }

    private void a(qi qiVar, long j) {
        qiVar.g();
        if (qiVar instanceof bo) {
            ((bo) qiVar).c(j);
        }
    }

    private void a(boolean z, AtomicBoolean atomicBoolean) {
        if (this.H != z) {
            this.H = z;
            if (!z) {
                for (qi qiVar : this.a) {
                    if (!c(qiVar) && this.b.remove(qiVar)) {
                        qiVar.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void a(b bVar) throws Throwable {
        this.z.a(1);
        if (bVar.c != -1) {
            this.L = new h(new sh(bVar.a, bVar.b), bVar.c, bVar.d);
        }
        a(this.u.a(bVar.a, bVar.b), false);
    }

    public void a(List list, int i, long j, wj wjVar) {
        this.i.a(17, new b(list, wjVar, i, j, null)).a();
    }

    public void a(boolean z, int i) {
        this.i.a(1, z ? 1 : 0, i).a();
    }

    private void a(boolean z, int i, boolean z2, int i2) {
        this.z.a(z2 ? 1 : 0);
        this.z.b(i2);
        this.y = this.y.a(z, i);
        this.D = false;
        b(z);
        if (!E()) {
            H();
            K();
            return;
        }
        int i3 = this.y.e;
        if (i3 == 3) {
            F();
            this.i.c(2);
        } else if (i3 == 2) {
            this.i.c(2);
        }
    }

    public void a(int i) {
        this.i.a(11, i, 0).a();
    }

    private void a(jj jjVar) {
        this.x = jjVar;
    }
}
