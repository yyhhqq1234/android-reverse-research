package com.applovin.impl;

import android.os.Looper;
import android.util.SparseArray;
import androidx.core.view.PointerIconCompat;
import com.applovin.exoplayer2.common.base.Objects;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public class r0 implements qh.e, q1, wq, be, y1.a, z6 {
    private final l3 a;
    private final fo.b b;
    private final fo.d c;
    private final a d;
    private final SparseArray f;
    private gc g;
    private qh h;
    private ia i;
    private boolean j;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0 s0Var, a9 a9Var) {
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a() {
        qh.e.CC.$default$a(this);
    }

    @Override // com.applovin.impl.wq
    public /* synthetic */ void a(e9 e9Var) {
        wq.CC.$default$a(this, e9Var);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(q6 q6Var) {
        qh.e.CC.$default$a(this, q6Var);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void a(qh qhVar, qh.d dVar) {
        qh.e.CC.$default$a(this, qhVar, dVar);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void a(List list) {
        qh.e.CC.$default$a(this, list);
    }

    @Override // com.applovin.impl.qh.e
    public /* synthetic */ void b(int i, boolean z) {
        qh.e.CC.$default$b(this, i, z);
    }

    @Override // com.applovin.impl.q1
    public /* synthetic */ void b(e9 e9Var) {
        q1.CC.$default$b(this, e9Var);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public /* synthetic */ void b(nh nhVar) {
        qh.e.CC.$default$b(this, nhVar);
    }

    @Override // com.applovin.impl.qh.c
    public /* synthetic */ void e(int i) {
        qh.c.CC.$default$e(this, i);
    }

    @Override // com.applovin.impl.z6
    public /* synthetic */ void e(int i, ae.a aVar) {
        z6.CC.$default$e(this, i, aVar);
    }

    @Override // com.applovin.impl.qh.c
    public /* synthetic */ void e(boolean z) {
        qh.c.CC.$default$e(this, z);
    }

    public r0(l3 l3Var) {
        this.a = (l3) b1.a(l3Var);
        this.g = new gc(xp.d(), l3Var, new gc.b() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda36
            @Override // com.applovin.impl.gc.b
            public final void a(Object obj, a9 a9Var) {
                r0.a((s0) obj, a9Var);
            }
        });
        fo.b bVar = new fo.b();
        this.b = bVar;
        this.c = new fo.d();
        this.d = new a(bVar);
        this.f = new SparseArray();
    }

    public void i() {
        final s0.a aVarC = c();
        this.f.put(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, aVarC);
        a(aVarC, IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda3
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).d(aVarC);
            }
        });
        ((ia) b1.b(this.i)).a(new Runnable() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.g();
            }
        });
    }

    public final void h() {
        if (this.j) {
            return;
        }
        final s0.a aVarC = c();
        this.j = true;
        a(aVarC, -1, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda41
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(s0.a aVar, m5 m5Var, s0 s0Var) {
        s0Var.b(aVar, m5Var);
        s0Var.a(aVar, 1, m5Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        this.g.b();
    }

    protected final s0.a c() {
        return a(this.d.a());
    }

    private s0.a a(ae.a aVar) {
        b1.a(this.h);
        fo foVarA = aVar == null ? null : this.d.a(aVar);
        if (aVar != null && foVarA != null) {
            return a(foVarA, foVarA.a(aVar.a, this.b).c, aVar);
        }
        int iT = this.h.t();
        fo foVarN = this.h.n();
        if (iT >= foVarN.b()) {
            foVarN = fo.a;
        }
        return a(foVarN, iT, (ae.a) null);
    }

    private s0.a e() {
        return a(this.d.c());
    }

    private s0.a d() {
        return a(this.d.b());
    }

    private s0.a f(int i, ae.a aVar) {
        b1.a(this.h);
        if (aVar != null) {
            if (this.d.a(aVar) != null) {
                return a(aVar);
            }
            return a(fo.a, i, aVar);
        }
        fo foVarN = this.h.n();
        if (i >= foVarN.b()) {
            foVarN = fo.a;
        }
        return a(foVarN, i, (ae.a) null);
    }

    private static final class a {
        private final fo.b a;
        private db b = db.h();
        private fb c = fb.h();
        private ae.a d;
        private ae.a e;
        private ae.a f;

        public a(fo.b bVar) {
            this.a = bVar;
        }

        public ae.a c() {
            return this.e;
        }

        public ae.a d() {
            return this.f;
        }

        public ae.a b() {
            if (this.b.isEmpty()) {
                return null;
            }
            return (ae.a) vb.b(this.b);
        }

        private void a(fb.a aVar, ae.a aVar2, fo foVar) {
            if (aVar2 == null) {
                return;
            }
            if (foVar.a(aVar2.a) != -1) {
                aVar.a(aVar2, foVar);
                return;
            }
            fo foVar2 = (fo) this.c.get(aVar2);
            if (foVar2 != null) {
                aVar.a(aVar2, foVar2);
            }
        }

        public void b(qh qhVar) {
            this.d = a(qhVar, this.b, this.e, this.a);
            a(qhVar.n());
        }

        private static ae.a a(qh qhVar, db dbVar, ae.a aVar, fo.b bVar) {
            fo foVarN = qhVar.n();
            int iV = qhVar.v();
            Object objB = foVarN.c() ? null : foVarN.b(iV);
            int iA = (qhVar.d() || foVarN.c()) ? -1 : foVarN.a(iV, bVar).a(t2.a(qhVar.getCurrentPosition()) - bVar.e());
            for (int i = 0; i < dbVar.size(); i++) {
                ae.a aVar2 = (ae.a) dbVar.get(i);
                if (a(aVar2, objB, qhVar.d(), qhVar.E(), qhVar.f(), iA)) {
                    return aVar2;
                }
            }
            if (dbVar.isEmpty() && aVar != null) {
                if (a(aVar, objB, qhVar.d(), qhVar.E(), qhVar.f(), iA)) {
                    return aVar;
                }
            }
            return null;
        }

        public ae.a a() {
            return this.d;
        }

        public fo a(ae.a aVar) {
            return (fo) this.c.get(aVar);
        }

        private static boolean a(ae.a aVar, Object obj, boolean z, int i, int i2, int i3) {
            if (aVar.a.equals(obj)) {
                return (z && aVar.b == i && aVar.c == i2) || (!z && aVar.b == -1 && aVar.e == i3);
            }
            return false;
        }

        public void a(qh qhVar) {
            this.d = a(qhVar, this.b, this.e, this.a);
        }

        public void a(List list, ae.a aVar, qh qhVar) {
            this.b = db.a((Collection) list);
            if (!list.isEmpty()) {
                this.e = (ae.a) list.get(0);
                this.f = (ae.a) b1.a(aVar);
            }
            if (this.d == null) {
                this.d = a(qhVar, this.b, this.e, this.a);
            }
            a(qhVar.n());
        }

        private void a(fo foVar) {
            fb.a aVarA = fb.a();
            if (this.b.isEmpty()) {
                a(aVarA, this.e, foVar);
                if (!Objects.equal(this.f, this.e)) {
                    a(aVarA, this.f, foVar);
                }
                if (!Objects.equal(this.d, this.e) && !Objects.equal(this.d, this.f)) {
                    a(aVarA, this.d, foVar);
                }
            } else {
                for (int i = 0; i < this.b.size(); i++) {
                    a(aVarA, (ae.a) this.b.get(i), foVar);
                }
                if (!this.b.contains(this.d)) {
                    a(aVarA, this.d, foVar);
                }
            }
            this.c = aVarA.a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0062  */
    protected final s0.a a(fo foVar, int i, ae.a aVar) {
        long jB;
        ae.a aVar2 = foVar.c() ? null : aVar;
        long jC = this.a.c();
        boolean z = foVar.equals(this.h.n()) && i == this.h.t();
        if (aVar2 == null || !aVar2.a()) {
            if (z) {
                jB = this.h.g();
            } else if (foVar.c()) {
                jB = 0;
            } else {
                jB = foVar.a(i, this.c).b();
            }
        } else if (z && this.h.E() == aVar2.b && this.h.f() == aVar2.c) {
            jB = this.h.getCurrentPosition();
        } else {
            jB = 0;
        }
        return new s0.a(jC, foVar, i, aVar2, jB, this.h.n(), this.h.t(), this.d.a(), this.h.getCurrentPosition(), this.h.h());
    }

    private s0.a f() {
        return a(this.d.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0.a aVar, String str, long j, long j2, s0 s0Var) {
        s0Var.a(aVar, str, j);
        s0Var.b(aVar, str, j2, j);
        s0Var.a(aVar, 1, str, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0.a aVar, m5 m5Var, s0 s0Var) {
        s0Var.c(aVar, m5Var);
        s0Var.b(aVar, 1, m5Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0.a aVar, e9 e9Var, p5 p5Var, s0 s0Var) {
        s0Var.b(aVar, e9Var);
        s0Var.b(aVar, e9Var, p5Var);
        s0Var.a(aVar, 1, e9Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(s0.a aVar, m5 m5Var, s0 s0Var) {
        s0Var.a(aVar, m5Var);
        s0Var.a(aVar, 2, m5Var);
    }

    @Override // com.applovin.impl.z6
    public final void d(int i, ae.a aVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_FAIL_WRONG_AUCTION_ID, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda27
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).b(aVarF);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(s0.a aVar, m5 m5Var, s0 s0Var) {
        s0Var.d(aVar, m5Var);
        s0Var.b(aVar, 2, m5Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(s0.a aVar, String str, long j, long j2, s0 s0Var) {
        s0Var.b(aVar, str, j);
        s0Var.a(aVar, str, j2, j);
        s0Var.a(aVar, 2, str, j);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public void d(final boolean z) {
        final s0.a aVarC = c();
        a(aVarC, 7, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda2
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).b(aVarC, z);
            }
        });
    }

    @Override // com.applovin.impl.q1
    public final void c(final Exception exc) {
        final s0.a aVarF = f();
        a(aVarF, IronSourceError.ERROR_IS_LOAD_DURING_SHOW, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, exc);
            }
        });
    }

    @Override // com.applovin.impl.q1
    public final void c(final m5 m5Var) {
        final s0.a aVarE = e();
        a(aVarE, 1014, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda42
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.a(aVarE, m5Var, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void d(final m5 m5Var) {
        final s0.a aVarF = f();
        a(aVarF, 1020, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda48
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.d(aVarF, m5Var, (s0) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(s0.a aVar, e9 e9Var, p5 p5Var, s0 s0Var) {
        s0Var.a(aVar, e9Var);
        s0Var.a(aVar, e9Var, p5Var);
        s0Var.a(aVar, 2, e9Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0.a aVar, int i, s0 s0Var) {
        s0Var.f(aVar);
        s0Var.b(aVar, i);
    }

    @Override // com.applovin.impl.q1
    public final void b(final String str) {
        final s0.a aVarF = f();
        a(aVarF, 1013, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda37
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).b(aVarF, str);
            }
        });
    }

    @Override // com.applovin.impl.q1
    public final void b(final e9 e9Var, final p5 p5Var) {
        final s0.a aVarF = f();
        a(aVarF, 1010, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda11
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.a(aVarF, e9Var, p5Var, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.z6
    public final void c(int i, ae.a aVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_FAIL_DUE_TO_INIT, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda1
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).c(aVarF);
            }
        });
    }

    @Override // com.applovin.impl.q1
    public final void b(final int i, final long j, final long j2) {
        final s0.a aVarF = f();
        a(aVarF, PointerIconCompat.TYPE_NO_DROP, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda17
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, i, j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0.a aVar, boolean z, s0 s0Var) {
        s0Var.c(aVar, z);
        s0Var.e(aVar, z);
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void c(final boolean z) {
        final s0.a aVarC = c();
        a(aVarC, 3, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda23
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.a(aVarC, z, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.z6
    public final void b(int i, ae.a aVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_IS_LOAD_FAILED_NO_CANDIDATES, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda43
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).g(aVarF);
            }
        });
    }

    @Override // com.applovin.impl.be
    public final void c(int i, ae.a aVar, final mc mcVar, final td tdVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, 1001, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda24
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).c(aVarF, mcVar, tdVar);
            }
        });
    }

    @Override // com.applovin.impl.be
    public final void b(int i, ae.a aVar, final mc mcVar, final td tdVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, 1000, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda45
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, mcVar, tdVar);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void c(final int i) {
        final s0.a aVarC = c();
        a(aVarC, 8, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda26
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).f(aVarC, i);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void b(final int i) {
        final s0.a aVarC = c();
        a(aVarC, 4, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda51
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).c(aVarC, i);
            }
        });
    }

    @Override // com.applovin.impl.qh.c
    public final void b(final boolean z, final int i) {
        final s0.a aVarC = c();
        a(aVarC, -1, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda14
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, z, i);
            }
        });
    }

    @Override // com.applovin.impl.qh.c
    public final void b() {
        final s0.a aVarC = c();
        a(aVarC, -1, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda20
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).e(aVarC);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void b(final boolean z) {
        final s0.a aVarC = c();
        a(aVarC, 9, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda47
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, z);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void b(final Exception exc) {
        final s0.a aVarF = f();
        a(aVarF, IronSourceError.ERROR_RV_SHOW_EXCEPTION, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda10
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).b(aVarF, exc);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void b(final String str, final long j, final long j2) {
        final s0.a aVarF = f();
        a(aVarF, 1021, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda13
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.b(aVarF, str, j2, j, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void b(final m5 m5Var) {
        final s0.a aVarE = e();
        a(aVarE, 1025, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda40
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.c(aVarE, m5Var, (s0) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0.a aVar, int i, qh.f fVar, qh.f fVar2, s0 s0Var) {
        s0Var.a(aVar, i);
        s0Var.a(aVar, fVar, fVar2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(s0.a aVar, xq xqVar, s0 s0Var) {
        s0Var.a(aVar, xqVar);
        s0Var.a(aVar, xqVar.a, xqVar.b, xqVar.c, xqVar.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(qh qhVar, s0 s0Var, a9 a9Var) {
        s0Var.a(qhVar, new s0.b(a9Var, this.f));
    }

    @Override // com.applovin.impl.q1
    public final void a(final String str, final long j, final long j2) {
        final s0.a aVarF = f();
        a(aVarF, 1009, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda31
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.a(aVarF, str, j2, j, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.q1
    public final void a(final m5 m5Var) {
        final s0.a aVarF = f();
        a(aVarF, 1008, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda8
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.b(aVarF, m5Var, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.q1
    public final void a(final long j) {
        final s0.a aVarF = f();
        a(aVarF, 1011, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda28
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, j);
            }
        });
    }

    @Override // com.applovin.impl.q1
    public final void a(final Exception exc) {
        final s0.a aVarF = f();
        a(aVarF, 1018, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda53
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).d(aVarF, exc);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public void a(final qh.b bVar) {
        final s0.a aVarC = c();
        a(aVarC, 13, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda18
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, bVar);
            }
        });
    }

    @Override // com.applovin.impl.y1.a
    public final void a(final int i, final long j, final long j2) {
        final s0.a aVarD = d();
        a(aVarD, 1006, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda38
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).b(aVarD, i, j, j2);
            }
        });
    }

    @Override // com.applovin.impl.be
    public final void a(int i, ae.a aVar, final td tdVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, 1004, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda46
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, tdVar);
            }
        });
    }

    @Override // com.applovin.impl.z6
    public final void a(int i, ae.a aVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_UNEXPECTED_CALLBACK, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda55
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).h(aVarF);
            }
        });
    }

    @Override // com.applovin.impl.z6
    public final void a(int i, ae.a aVar, final int i2) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_LOAD_FAIL_UNEXPECTED, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda33
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.a(aVarF, i2, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.z6
    public final void a(int i, ae.a aVar, final Exception exc) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, IronSourceError.ERROR_RV_INIT_FAILED_TIMEOUT, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda29
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).c(aVarF, exc);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void a(final int i, final long j) {
        final s0.a aVarE = e();
        a(aVarE, 1023, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda7
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarE, i, j);
            }
        });
    }

    @Override // com.applovin.impl.be
    public final void a(int i, ae.a aVar, final mc mcVar, final td tdVar) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, 1002, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda15
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).b(aVarF, mcVar, tdVar);
            }
        });
    }

    @Override // com.applovin.impl.be
    public final void a(int i, ae.a aVar, final mc mcVar, final td tdVar, final IOException iOException, final boolean z) {
        final s0.a aVarF = f(i, aVar);
        a(aVarF, 1003, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda25
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, mcVar, tdVar, iOException, z);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(final sd sdVar, final int i) {
        final s0.a aVarC = c();
        a(aVarC, 1, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda54
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, sdVar, i);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public void a(final ud udVar) {
        final s0.a aVarC = c();
        a(aVarC, 14, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda22
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, udVar);
            }
        });
    }

    @Override // com.applovin.impl.qh.e
    public final void a(final af afVar) {
        final s0.a aVarC = c();
        a(aVarC, 1007, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda34
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, afVar);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(final boolean z, final int i) {
        final s0.a aVarC = c();
        a(aVarC, 5, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda56
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).b(aVarC, z, i);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(final ph phVar) {
        final s0.a aVarC = c();
        a(aVarC, 12, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda52
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, phVar);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(final int i) {
        final s0.a aVarC = c();
        a(aVarC, 6, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda30
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).e(aVarC, i);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(final nh nhVar) {
        xd xdVar;
        final s0.a aVarA = (!(nhVar instanceof z7) || (xdVar = ((z7) nhVar).j) == null) ? null : a(new ae.a(xdVar));
        if (aVarA == null) {
            aVarA = c();
        }
        a(aVarA, 10, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda6
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarA, nhVar);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(final qh.f fVar, final qh.f fVar2, final int i) {
        if (i == 1) {
            this.j = false;
        }
        this.d.a((qh) b1.a(this.h));
        final s0.a aVarC = c();
        a(aVarC, 11, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda49
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.a(aVarC, i, fVar, fVar2, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void a(final Object obj, final long j) {
        final s0.a aVarF = f();
        a(aVarF, IronSourceError.ERROR_RV_LOAD_DURING_SHOW, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda35
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj2) {
                ((s0) obj2).a(aVarF, obj, j);
            }
        });
    }

    @Override // com.applovin.impl.qh.e
    public final void a(final boolean z) {
        final s0.a aVarF = f();
        a(aVarF, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda19
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).d(aVarF, z);
            }
        });
    }

    @Override // com.applovin.impl.qh.e
    public void a(final int i, final int i2) {
        final s0.a aVarF = f();
        a(aVarF, IronSourceError.ERROR_RV_LOAD_SUCCESS_WRONG_AUCTION_ID, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda32
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, i, i2);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(fo foVar, final int i) {
        this.d.b((qh) b1.a(this.h));
        final s0.a aVarC = c();
        a(aVarC, 0, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda16
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).d(aVarC, i);
            }
        });
    }

    @Override // com.applovin.impl.qh.e, com.applovin.impl.qh.c
    public final void a(final po poVar, final to toVar) {
        final s0.a aVarC = c();
        a(aVarC, 2, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda9
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarC, poVar, toVar);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void a(final String str) {
        final s0.a aVarF = f();
        a(aVarF, 1024, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda5
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, str);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void a(final long j, final int i) {
        final s0.a aVarE = e();
        a(aVarE, IronSourceError.ERROR_RV_LOAD_DURING_LOAD, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda39
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarE, j, i);
            }
        });
    }

    @Override // com.applovin.impl.wq
    public final void a(final e9 e9Var, final p5 p5Var) {
        final s0.a aVarF = f();
        a(aVarF, 1022, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda50
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.b(aVarF, e9Var, p5Var, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.qh.e
    public final void a(final xq xqVar) {
        final s0.a aVarF = f();
        a(aVarF, IronSourceError.ERROR_RV_LOAD_SUCCESS_UNEXPECTED, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda21
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                r0.a(aVarF, xqVar, (s0) obj);
            }
        });
    }

    @Override // com.applovin.impl.qh.e
    public final void a(final float f) {
        final s0.a aVarF = f();
        a(aVarF, 1019, new gc.a() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda44
            @Override // com.applovin.impl.gc.a
            public final void a(Object obj) {
                ((s0) obj).a(aVarF, f);
            }
        });
    }

    protected final void a(s0.a aVar, int i, gc.a aVar2) {
        this.f.put(i, aVar);
        this.g.b(i, aVar2);
    }

    public void a(final qh qhVar, Looper looper) {
        b1.b(this.h == null || this.d.b.isEmpty());
        this.h = (qh) b1.a(qhVar);
        this.i = this.a.a(looper, null);
        this.g = this.g.a(looper, new gc.b() { // from class: com.applovin.impl.r0$$ExternalSyntheticLambda12
            @Override // com.applovin.impl.gc.b
            public final void a(Object obj, a9 a9Var) {
                this.f$0.a(qhVar, (s0) obj, a9Var);
            }
        });
    }

    public final void a(List list, ae.a aVar) {
        this.d.a(list, aVar, (qh) b1.a(this.h));
    }
}
