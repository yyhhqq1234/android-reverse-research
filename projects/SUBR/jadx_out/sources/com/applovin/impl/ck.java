package com.applovin.impl;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class ck extends d2 implements qh {
    private int A;
    private int B;
    private m5 C;
    private m5 D;
    private int E;
    private l1 F;
    private float G;
    private boolean H;
    private List I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private q6 N;
    private xq O;
    protected final qi[] b;
    private final c4 c;
    private final Context d;
    private final b8 e;
    private final c f;
    private final d g;
    private final CopyOnWriteArraySet h;
    private final r0 i;
    private final m1 j;
    private final o1 k;
    private final il l;
    private final gr m;
    private final cs n;
    private final long o;
    private e9 p;
    private e9 q;
    private AudioTrack r;
    private Object s;
    private Surface t;
    private SurfaceHolder u;
    private rk v;
    private boolean w;
    private TextureView x;
    private int y;
    private int z;

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    static /* synthetic */ uh k(ck ckVar) {
        ckVar.getClass();
        return null;
    }

    public static final class b {
        private final Context a;
        private final ti b;
        private l3 c;
        private long d;
        private vo e;
        private ce f;
        private kc g;
        private y1 h;
        private r0 i;
        private Looper j;
        private l1 k;
        private boolean l;
        private int m;
        private boolean n;
        private boolean o;
        private int p;
        private int q;
        private boolean r;
        private jj s;
        private long t;
        private long u;
        private jc v;
        private long w;
        private long x;
        private boolean y;
        private boolean z;

        static /* synthetic */ uh m(b bVar) {
            bVar.getClass();
            return null;
        }

        public b(Context context) {
            this(context, new j6(context), new b6());
        }

        public b(Context context, ti tiVar, n8 n8Var) {
            this(context, tiVar, new l6(context), new h6(context, n8Var), new e6(), s5.a(context), new r0(l3.a));
        }

        public b(Context context, ti tiVar, vo voVar, ce ceVar, kc kcVar, y1 y1Var, r0 r0Var) {
            this.a = context;
            this.b = tiVar;
            this.e = voVar;
            this.f = ceVar;
            this.g = kcVar;
            this.h = y1Var;
            this.i = r0Var;
            this.j = xp.d();
            this.k = l1.g;
            this.m = 0;
            this.p = 1;
            this.q = 0;
            this.r = true;
            this.s = jj.g;
            this.t = 5000L;
            this.u = 15000L;
            this.v = new d6.b().a();
            this.c = l3.a;
            this.w = 500L;
            this.x = 2000L;
        }

        public ck a() {
            b1.b(!this.z);
            this.z = true;
            return new ck(this);
        }
    }

    protected ck(b bVar) throws Throwable {
        ck ckVar;
        c4 c4Var = new c4();
        this.c = c4Var;
        try {
            Context applicationContext = bVar.a.getApplicationContext();
            this.d = applicationContext;
            r0 r0Var = bVar.i;
            this.i = r0Var;
            b.m(bVar);
            this.F = bVar.k;
            this.y = bVar.p;
            this.z = bVar.q;
            this.H = bVar.o;
            this.o = bVar.x;
            c cVar = new c();
            this.f = cVar;
            d dVar = new d();
            this.g = dVar;
            this.h = new CopyOnWriteArraySet();
            Handler handler = new Handler(bVar.j);
            qi[] qiVarArrA = bVar.b.a(handler, cVar, cVar, cVar, cVar);
            this.b = qiVarArrA;
            this.G = 1.0f;
            if (xp.a < 21) {
                this.E = d(0);
            } else {
                this.E = t2.a(applicationContext);
            }
            this.I = Collections.emptyList();
            this.J = true;
            try {
                b8 b8Var = new b8(qiVarArrA, bVar.e, bVar.f, bVar.g, bVar.h, r0Var, bVar.r, bVar.s, bVar.t, bVar.u, bVar.v, bVar.w, bVar.y, bVar.c, bVar.j, this, new qh.b.a().a(20, 21, 22, 23, 24, 25, 26, 27).a());
                ckVar = this;
                try {
                    ckVar.e = b8Var;
                    b8Var.a((qh.c) cVar);
                    b8Var.a((a8) cVar);
                    if (bVar.d > 0) {
                        b8Var.c(bVar.d);
                    }
                    m1 m1Var = new m1(bVar.a, handler, cVar);
                    ckVar.j = m1Var;
                    m1Var.a(bVar.n);
                    o1 o1Var = new o1(bVar.a, handler, cVar);
                    ckVar.k = o1Var;
                    o1Var.b(bVar.l ? ckVar.F : null);
                    il ilVar = new il(bVar.a, handler, cVar);
                    ckVar.l = ilVar;
                    ilVar.a(xp.e(ckVar.F.c));
                    gr grVar = new gr(bVar.a);
                    ckVar.m = grVar;
                    grVar.a(bVar.m != 0);
                    cs csVar = new cs(bVar.a);
                    ckVar.n = csVar;
                    csVar.a(bVar.m == 2);
                    ckVar.N = b(ilVar);
                    ckVar.O = xq.f;
                    ckVar.a(1, 10, Integer.valueOf(ckVar.E));
                    ckVar.a(2, 10, Integer.valueOf(ckVar.E));
                    ckVar.a(1, 3, ckVar.F);
                    ckVar.a(2, 4, Integer.valueOf(ckVar.y));
                    ckVar.a(2, 5, Integer.valueOf(ckVar.z));
                    ckVar.a(1, 9, Boolean.valueOf(ckVar.H));
                    ckVar.a(2, 7, dVar);
                    ckVar.a(6, 8, dVar);
                    c4Var.e();
                } catch (Throwable th) {
                    th = th;
                    ckVar.c.e();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                ckVar = this;
            }
        } catch (Throwable th3) {
            th = th3;
            ckVar = this;
        }
    }

    public boolean S() {
        Z();
        return this.e.S();
    }

    @Override // com.applovin.impl.qh
    public xq z() {
        return this.O;
    }

    public void R() {
        Z();
        W();
        a((Object) null);
        a(0, 0);
    }

    public void c(SurfaceHolder surfaceHolder) {
        Z();
        if (surfaceHolder == null) {
            R();
            return;
        }
        W();
        this.w = true;
        this.u = surfaceHolder;
        surfaceHolder.addCallback(this.f);
        Surface surface = surfaceHolder.getSurface();
        if (surface != null && surface.isValid()) {
            a(surface);
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            a(surfaceFrame.width(), surfaceFrame.height());
        } else {
            a((Object) null);
            a(0, 0);
        }
    }

    @Override // com.applovin.impl.qh
    public List x() {
        Z();
        return this.I;
    }

    @Override // com.applovin.impl.qh
    public Looper p() {
        return this.e.p();
    }

    @Override // com.applovin.impl.qh
    public int o() {
        Z();
        return this.e.o();
    }

    @Override // com.applovin.impl.qh
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public z7 c() {
        Z();
        return this.e.c();
    }

    @Override // com.applovin.impl.qh
    public int j() {
        Z();
        return this.e.j();
    }

    @Override // com.applovin.impl.qh
    public qh.b i() {
        Z();
        return this.e.i();
    }

    @Override // com.applovin.impl.qh
    public int m() {
        Z();
        return this.e.m();
    }

    @Override // com.applovin.impl.qh
    public boolean r() {
        Z();
        return this.e.r();
    }

    @Override // com.applovin.impl.qh
    public long F() {
        Z();
        return this.e.F();
    }

    @Override // com.applovin.impl.qh
    public long q() {
        Z();
        return this.e.q();
    }

    @Override // com.applovin.impl.qh
    public void b(qh.e eVar) {
        b1.a(eVar);
        this.h.add(eVar);
        a((qh.c) eVar);
    }

    @Override // com.applovin.impl.qh
    public boolean l() {
        Z();
        return this.e.l();
    }

    public void V() {
        AudioTrack audioTrack;
        Z();
        if (xp.a < 21 && (audioTrack = this.r) != null) {
            audioTrack.release();
            this.r = null;
        }
        this.j.a(false);
        this.l.c();
        this.m.b(false);
        this.n.b(false);
        this.k.e();
        this.e.W();
        this.i.i();
        W();
        Surface surface = this.t;
        if (surface != null) {
            surface.release();
            this.t = null;
        }
        if (!this.L) {
            this.I = Collections.emptyList();
            this.M = true;
        } else {
            c8.a(b1.a((Object) null));
            throw null;
        }
    }

    @Override // com.applovin.impl.qh
    public long e() {
        Z();
        return this.e.e();
    }

    @Override // com.applovin.impl.qh
    public to A() {
        Z();
        return this.e.A();
    }

    @Override // com.applovin.impl.qh
    public ud C() {
        return this.e.C();
    }

    @Override // com.applovin.impl.qh
    public fo n() {
        Z();
        return this.e.n();
    }

    @Override // com.applovin.impl.qh
    public int v() {
        Z();
        return this.e.v();
    }

    @Override // com.applovin.impl.qh
    public int t() {
        Z();
        return this.e.t();
    }

    @Override // com.applovin.impl.qh
    public long getDuration() {
        Z();
        return this.e.getDuration();
    }

    @Override // com.applovin.impl.qh
    public long getCurrentPosition() {
        Z();
        return this.e.getCurrentPosition();
    }

    @Override // com.applovin.impl.qh
    public int E() {
        Z();
        return this.e.E();
    }

    @Override // com.applovin.impl.qh
    public po k() {
        Z();
        return this.e.k();
    }

    @Override // com.applovin.impl.qh
    public long s() {
        Z();
        return this.e.s();
    }

    @Override // com.applovin.impl.qh
    public long h() {
        Z();
        return this.e.h();
    }

    @Override // com.applovin.impl.qh
    public int f() {
        Z();
        return this.e.f();
    }

    @Override // com.applovin.impl.qh
    public long g() {
        Z();
        return this.e.g();
    }

    private void W() {
        if (this.v != null) {
            this.e.a(this.g).a(10000).a((Object) null).j();
            this.v.b(this.f);
            this.v = null;
        }
        TextureView textureView = this.x;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.f) {
                oc.d("SimpleExoPlayer", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.x.setSurfaceTextureListener(null);
            }
            this.x = null;
        }
        SurfaceHolder surfaceHolder = this.u;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.f);
            this.u = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        a(1, 2, Float.valueOf(this.G * this.k.d()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        this.i.a(this.H);
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ((qh.e) it.next()).a(this.H);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        int iO = o();
        if (iO != 1) {
            if (iO == 2 || iO == 3) {
                this.m.b(l() && !S());
                this.n.b(l());
                return;
            } else if (iO != 4) {
                throw new IllegalStateException();
            }
        }
        this.m.b(false);
        this.n.b(false);
    }

    private void Z() {
        this.c.b();
        if (Thread.currentThread() != p().getThread()) {
            String strA = xp.a("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), p().getThread().getName());
            if (!this.J) {
                oc.c("SimpleExoPlayer", strA, this.K ? null : new IllegalStateException());
                this.K = true;
                return;
            }
            throw new IllegalStateException(strA);
        }
    }

    private final class c implements wq, q1, ao, ef, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, rk.b, o1.b, m1.b, il.b, qh.c, a8 {
        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(int i) {
            qh.c.CC.$default$a(this, i);
        }

        @Override // com.applovin.impl.wq
        public /* synthetic */ void a(e9 e9Var) {
            wq.CC.$default$a(this, e9Var);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(fo foVar, int i) {
            qh.c.CC.$default$a(this, foVar, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(nh nhVar) {
            qh.c.CC.$default$a(this, nhVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(ph phVar) {
            qh.c.CC.$default$a(this, phVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(po poVar, to toVar) {
            qh.c.CC.$default$a(this, poVar, toVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(qh.b bVar) {
            qh.c.CC.$default$a(this, bVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(qh.f fVar, qh.f fVar2, int i) {
            qh.c.CC.$default$a(this, fVar, fVar2, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(qh qhVar, qh.d dVar) {
            qh.c.CC.$default$a(this, qhVar, dVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(sd sdVar, int i) {
            qh.c.CC.$default$a(this, sdVar, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void a(ud udVar) {
            qh.c.CC.$default$a(this, udVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b() {
            qh.c.CC.$default$b(this);
        }

        @Override // com.applovin.impl.q1
        public /* synthetic */ void b(e9 e9Var) {
            q1.CC.$default$b(this, e9Var);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b(nh nhVar) {
            qh.c.CC.$default$b(this, nhVar);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b(boolean z) {
            qh.c.CC.$default$b(this, z);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void b(boolean z, int i) {
            qh.c.CC.$default$b(this, z, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void c(int i) {
            qh.c.CC.$default$c(this, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void d(boolean z) {
            qh.c.CC.$default$d(this, z);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void e(int i) {
            qh.c.CC.$default$e(this, i);
        }

        @Override // com.applovin.impl.qh.c
        public /* synthetic */ void e(boolean z) {
            qh.c.CC.$default$e(this, z);
        }

        @Override // com.applovin.impl.a8
        public /* synthetic */ void f(boolean z) {
            a8.CC.$default$f(this, z);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        private c() {
        }

        @Override // com.applovin.impl.q1
        public void a(String str, long j, long j2) {
            ck.this.i.a(str, j, j2);
        }

        @Override // com.applovin.impl.q1
        public void b(String str) {
            ck.this.i.b(str);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            if (ck.this.w) {
                ck.this.a(surfaceHolder.getSurface());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            ck.this.a(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (ck.this.w) {
                ck.this.a((Object) null);
            }
            ck.this.a(0, 0);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            ck.this.a(surfaceTexture);
            ck.this.a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            ck.this.a(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            ck.this.a((Object) null);
            ck.this.a(0, 0);
            return true;
        }

        @Override // com.applovin.impl.o1.b
        public void f(int i) {
            boolean zL = ck.this.l();
            ck.this.a(zL, i, ck.b(zL, i));
        }

        @Override // com.applovin.impl.m1.b
        public void c() {
            ck.this.a(false, -1, 3);
        }

        @Override // com.applovin.impl.il.b
        public void d(int i) {
            q6 q6VarB = ck.b(ck.this.l);
            if (q6VarB.equals(ck.this.N)) {
                return;
            }
            ck.this.N = q6VarB;
            Iterator it = ck.this.h.iterator();
            while (it.hasNext()) {
                ((qh.e) it.next()).a(q6VarB);
            }
        }

        @Override // com.applovin.impl.a8
        public void g(boolean z) {
            ck.this.Y();
        }

        @Override // com.applovin.impl.q1
        public void a(m5 m5Var) {
            ck.this.D = m5Var;
            ck.this.i.a(m5Var);
        }

        @Override // com.applovin.impl.q1
        public void b(e9 e9Var, p5 p5Var) {
            ck.this.q = e9Var;
            ck.this.i.b(e9Var, p5Var);
        }

        @Override // com.applovin.impl.wq
        public void d(m5 m5Var) {
            ck.this.C = m5Var;
            ck.this.i.d(m5Var);
        }

        @Override // com.applovin.impl.q1
        public void c(Exception exc) {
            ck.this.i.c(exc);
        }

        @Override // com.applovin.impl.q1
        public void a(long j) {
            ck.this.i.a(j);
        }

        @Override // com.applovin.impl.q1
        public void b(int i, long j, long j2) {
            ck.this.i.b(i, j, j2);
        }

        @Override // com.applovin.impl.q1
        public void c(m5 m5Var) {
            ck.this.i.c(m5Var);
            ck.this.q = null;
            ck.this.D = null;
        }

        @Override // com.applovin.impl.q1
        public void a(Exception exc) {
            ck.this.i.a(exc);
        }

        @Override // com.applovin.impl.qh.c
        public void b(int i) {
            ck.this.Y();
        }

        @Override // com.applovin.impl.qh.c
        public void c(boolean z) {
            ck.k(ck.this);
        }

        @Override // com.applovin.impl.ao
        public void a(List list) {
            ck.this.I = list;
            Iterator it = ck.this.h.iterator();
            while (it.hasNext()) {
                ((qh.e) it.next()).a(list);
            }
        }

        @Override // com.applovin.impl.wq
        public void b(Exception exc) {
            ck.this.i.b(exc);
        }

        @Override // com.applovin.impl.wq
        public void a(int i, long j) {
            ck.this.i.a(i, j);
        }

        @Override // com.applovin.impl.wq
        public void b(String str, long j, long j2) {
            ck.this.i.b(str, j, j2);
        }

        @Override // com.applovin.impl.ef
        public void a(af afVar) {
            ck.this.i.a(afVar);
            ck.this.e.a(afVar);
            Iterator it = ck.this.h.iterator();
            while (it.hasNext()) {
                ((qh.e) it.next()).a(afVar);
            }
        }

        @Override // com.applovin.impl.wq
        public void b(m5 m5Var) {
            ck.this.i.b(m5Var);
            ck.this.p = null;
            ck.this.C = null;
        }

        @Override // com.applovin.impl.rk.b
        public void b(Surface surface) {
            ck.this.a(surface);
        }

        @Override // com.applovin.impl.qh.c
        public void a(boolean z, int i) {
            ck.this.Y();
        }

        @Override // com.applovin.impl.wq
        public void a(Object obj, long j) {
            ck.this.i.a(obj, j);
            if (ck.this.s == obj) {
                Iterator it = ck.this.h.iterator();
                while (it.hasNext()) {
                    ((qh.e) it.next()).a();
                }
            }
        }

        @Override // com.applovin.impl.o1.b
        public void b(float f) {
            ck.this.X();
        }

        @Override // com.applovin.impl.q1
        public void a(boolean z) {
            if (ck.this.H == z) {
                return;
            }
            ck.this.H = z;
            ck.this.U();
        }

        @Override // com.applovin.impl.il.b
        public void a(int i, boolean z) {
            Iterator it = ck.this.h.iterator();
            while (it.hasNext()) {
                ((qh.e) it.next()).b(i, z);
            }
        }

        @Override // com.applovin.impl.wq
        public void a(String str) {
            ck.this.i.a(str);
        }

        @Override // com.applovin.impl.wq
        public void a(long j, int i) {
            ck.this.i.a(j, i);
        }

        @Override // com.applovin.impl.wq
        public void a(e9 e9Var, p5 p5Var) {
            ck.this.p = e9Var;
            ck.this.i.a(e9Var, p5Var);
        }

        @Override // com.applovin.impl.wq
        public void a(xq xqVar) {
            ck.this.O = xqVar;
            ck.this.i.a(xqVar);
            Iterator it = ck.this.h.iterator();
            while (it.hasNext()) {
                ((qh.e) it.next()).a(xqVar);
            }
        }

        @Override // com.applovin.impl.rk.b
        public void a(Surface surface) {
            ck.this.a((Object) null);
        }
    }

    private int d(int i) {
        AudioTrack audioTrack = this.r;
        if (audioTrack != null && audioTrack.getAudioSessionId() != i) {
            this.r.release();
            this.r = null;
        }
        if (this.r == null) {
            this.r = new AudioTrack(3, 4000, 4, 2, 2, 0, i);
        }
        return this.r.getAudioSessionId();
    }

    @Override // com.applovin.impl.qh
    public void b(SurfaceView surfaceView) {
        Z();
        a(surfaceView == null ? null : surfaceView.getHolder());
    }

    private static final class d implements uq, v2, rh.b {
        private uq a;
        private v2 b;
        private uq c;
        private v2 d;

        private d() {
        }

        @Override // com.applovin.impl.rh.b
        public void a(int i, Object obj) {
            if (i == 7) {
                this.a = (uq) obj;
                return;
            }
            if (i == 8) {
                this.b = (v2) obj;
                return;
            }
            if (i != 10000) {
                return;
            }
            rk rkVar = (rk) obj;
            if (rkVar == null) {
                this.c = null;
                this.d = null;
            } else {
                this.c = rkVar.getVideoFrameMetadataListener();
                this.d = rkVar.getCameraMotionListener();
            }
        }

        @Override // com.applovin.impl.v2
        public void a(long j, float[] fArr) {
            v2 v2Var = this.d;
            if (v2Var != null) {
                v2Var.a(j, fArr);
            }
            v2 v2Var2 = this.b;
            if (v2Var2 != null) {
                v2Var2.a(j, fArr);
            }
        }

        @Override // com.applovin.impl.v2
        public void a() {
            v2 v2Var = this.d;
            if (v2Var != null) {
                v2Var.a();
            }
            v2 v2Var2 = this.b;
            if (v2Var2 != null) {
                v2Var2.a();
            }
        }

        @Override // com.applovin.impl.uq
        public void a(long j, long j2, e9 e9Var, MediaFormat mediaFormat) {
            uq uqVar = this.c;
            if (uqVar != null) {
                uqVar.a(j, j2, e9Var, mediaFormat);
            }
            uq uqVar2 = this.a;
            if (uqVar2 != null) {
                uqVar2.a(j, j2, e9Var, mediaFormat);
            }
        }
    }

    public void a(qh.c cVar) {
        b1.a(cVar);
        this.e.a(cVar);
    }

    @Override // com.applovin.impl.qh
    public void b(TextureView textureView) {
        Z();
        if (textureView == null || textureView != this.x) {
            return;
        }
        R();
    }

    public void a(SurfaceHolder surfaceHolder) {
        Z();
        if (surfaceHolder == null || surfaceHolder != this.u) {
            return;
        }
        R();
    }

    @Override // com.applovin.impl.qh
    public boolean d() {
        Z();
        return this.e.d();
    }

    @Override // com.applovin.impl.qh
    public void b() {
        Z();
        boolean zL = l();
        int iA = this.k.a(zL, 2);
        a(zL, iA, b(zL, iA));
        this.e.b();
    }

    @Override // com.applovin.impl.qh
    public ph a() {
        Z();
        return this.e.a();
    }

    public void b(qh.c cVar) {
        this.e.e(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        if (i == this.A && i2 == this.B) {
            return;
        }
        this.A = i;
        this.B = i2;
        this.i.a(i, i2);
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ((qh.e) it.next()).a(i, i2);
        }
    }

    private void b(SurfaceHolder surfaceHolder) {
        this.w = false;
        this.u = surfaceHolder;
        surfaceHolder.addCallback(this.f);
        Surface surface = this.u.getSurface();
        if (surface != null && surface.isValid()) {
            Rect surfaceFrame = this.u.getSurfaceFrame();
            a(surfaceFrame.width(), surfaceFrame.height());
        } else {
            a(0, 0);
        }
    }

    @Override // com.applovin.impl.qh
    public void a(qh.e eVar) {
        b1.a(eVar);
        this.h.remove(eVar);
        b((qh.c) eVar);
    }

    @Override // com.applovin.impl.qh
    public void b(boolean z) {
        Z();
        this.e.b(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static q6 b(il ilVar) {
        return new q6(0, ilVar.b(), ilVar.a());
    }

    @Override // com.applovin.impl.qh
    public void a(int i, long j) {
        Z();
        this.i.h();
        this.e.a(i, j);
    }

    private void a(int i, int i2, Object obj) {
        for (qi qiVar : this.b) {
            if (qiVar.e() == i) {
                this.e.a(qiVar).a(i2).a(obj).j();
            }
        }
    }

    public void a(ae aeVar) {
        Z();
        this.e.a(aeVar);
    }

    @Override // com.applovin.impl.qh
    public void a(boolean z) {
        Z();
        int iA = this.k.a(z, o());
        a(z, iA, b(z, iA));
    }

    @Override // com.applovin.impl.qh
    public void a(int i) {
        Z();
        this.e.a(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        a(surface);
        this.t = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        qi[] qiVarArr = this.b;
        int length = qiVarArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                break;
            }
            qi qiVar = qiVarArr[i];
            if (qiVar.e() == 2) {
                arrayList.add(this.e.a(qiVar).a(1).a(obj).j());
            }
            i++;
        }
        Object obj2 = this.s;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((rh) it.next()).a(this.o);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj3 = this.s;
            Surface surface = this.t;
            if (obj3 == surface) {
                surface.release();
                this.t = null;
            }
        }
        this.s = obj;
        if (z) {
            this.e.a(false, z7.a(new f8(3), 1003));
        }
    }

    @Override // com.applovin.impl.qh
    public void a(SurfaceView surfaceView) {
        Z();
        if (surfaceView instanceof tq) {
            W();
            a((Object) surfaceView);
            b(surfaceView.getHolder());
        } else {
            if (surfaceView instanceof rk) {
                W();
                this.v = (rk) surfaceView;
                this.e.a(this.g).a(10000).a(this.v).j();
                this.v.a(this.f);
                a(this.v.getVideoSurface());
                b(surfaceView.getHolder());
                return;
            }
            c(surfaceView == null ? null : surfaceView.getHolder());
        }
    }

    @Override // com.applovin.impl.qh
    public void a(TextureView textureView) {
        Z();
        if (textureView == null) {
            R();
            return;
        }
        W();
        this.x = textureView;
        if (textureView.getSurfaceTextureListener() != null) {
            oc.d("SimpleExoPlayer", "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.f);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            a((Object) null);
            a(0, 0);
        } else {
            a(surfaceTexture);
            a(textureView.getWidth(), textureView.getHeight());
        }
    }

    public void a(float f) {
        Z();
        float fA = xp.a(f, 0.0f, 1.0f);
        if (this.G == fA) {
            return;
        }
        this.G = fA;
        X();
        this.i.a(fA);
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            ((qh.e) it.next()).a(fA);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        this.e.a(z2, i3, i2);
    }
}
