package com.applovin.impl;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
class w5 implements y6 {
    public final List a;
    private final y7 b;
    private final a c;
    private final b d;
    private final int e;
    private final boolean f;
    private final boolean g;
    private final HashMap h;
    private final t4 i;
    private final lc j;
    final pd k;
    final UUID l;
    final e m;
    private int n;
    private int o;
    private HandlerThread p;
    private c q;
    private y4 r;
    private y6.a s;
    private byte[] t;
    private byte[] u;
    private y7.a v;
    private y7.d w;

    public interface a {
        void a();

        void a(w5 w5Var);

        void a(Exception exc, boolean z);
    }

    public interface b {
        void a(w5 w5Var, int i);

        void b(w5 w5Var, int i);
    }

    public static final class f extends IOException {
        public f(Throwable th) {
            super(th);
        }
    }

    public w5(UUID uuid, y7 y7Var, a aVar, b bVar, List list, int i, boolean z, boolean z2, byte[] bArr, HashMap map, pd pdVar, Looper looper, lc lcVar) {
        if (i == 1 || i == 3) {
            b1.a(bArr);
        }
        this.l = uuid;
        this.c = aVar;
        this.d = bVar;
        this.b = y7Var;
        this.e = i;
        this.f = z;
        this.g = z2;
        if (bArr != null) {
            this.u = bArr;
            this.a = null;
        } else {
            this.a = Collections.unmodifiableList((List) b1.a(list));
        }
        this.h = map;
        this.k = pdVar;
        this.i = new t4();
        this.j = lcVar;
        this.n = 2;
        this.m = new e(looper);
    }

    public void k() {
        this.w = this.b.b();
        ((c) xp.a(this.q)).a(0, b1.a(this.w), true);
    }

    public void i() {
        if (j()) {
            a(true);
        }
    }

    @Override // com.applovin.impl.y6
    public boolean c() {
        return this.f;
    }

    @Override // com.applovin.impl.y6
    public final y6.a getError() {
        if (this.n == 1) {
            return this.s;
        }
        return null;
    }

    @Override // com.applovin.impl.y6
    public final UUID e() {
        return this.l;
    }

    @Override // com.applovin.impl.y6
    public final y4 f() {
        return this.r;
    }

    @Override // com.applovin.impl.y6
    public Map d() {
        byte[] bArr = this.t;
        if (bArr == null) {
            return null;
        }
        return this.b.b(bArr);
    }

    @Override // com.applovin.impl.y6
    public void b(z6.a aVar) {
        b1.b(this.o >= 0);
        if (aVar != null) {
            this.i.a(aVar);
        }
        int i = this.o + 1;
        this.o = i;
        if (i == 1) {
            b1.b(this.n == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.p = handlerThread;
            handlerThread.start();
            this.q = new c(this.p.getLooper());
            if (j()) {
                a(true);
            }
        } else if (aVar != null && g() && this.i.b(aVar) == 1) {
            aVar.a(this.n);
        }
        this.d.a(this, this.o);
    }

    private boolean j() {
        if (g()) {
            return true;
        }
        try {
            byte[] bArrD = this.b.d();
            this.t = bArrD;
            this.r = this.b.d(bArrD);
            final int i = 3;
            this.n = 3;
            a(new q4() { // from class: com.applovin.impl.w5$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.q4
                public final void accept(Object obj) {
                    ((z6.a) obj).a(i);
                }
            });
            b1.a(this.t);
            return true;
        } catch (NotProvisionedException unused) {
            this.c.a(this);
            return false;
        } catch (Exception e2) {
            a(e2, 1);
            return false;
        }
    }

    private boolean l() {
        try {
            this.b.a(this.t, this.u);
            return true;
        } catch (Exception e2) {
            a(e2, 1);
            return false;
        }
    }

    private void h() {
        if (this.e == 0 && this.n == 4) {
            xp.a((Object) this.t);
            a(false);
        }
    }

    private boolean g() {
        int i = this.n;
        return i == 3 || i == 4;
    }

    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i = message.what;
            if (i == 0) {
                w5.this.b(obj, obj2);
            } else {
                if (i != 1) {
                    return;
                }
                w5.this.a(obj, obj2);
            }
        }
    }

    private class c extends Handler {
        private boolean a;

        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objA;
            d dVar = (d) message.obj;
            try {
                int i = message.what;
                if (i == 0) {
                    w5 w5Var = w5.this;
                    objA = w5Var.k.a(w5Var.l, (y7.d) dVar.d);
                } else if (i == 1) {
                    w5 w5Var2 = w5.this;
                    objA = w5Var2.k.a(w5Var2.l, (y7.a) dVar.d);
                } else {
                    throw new RuntimeException();
                }
            } catch (qd e) {
                boolean zA = a(message, e);
                objA = e;
                if (zA) {
                    return;
                }
            } catch (Exception e2) {
                oc.c("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
                objA = e2;
            }
            w5.this.j.a(dVar.a);
            synchronized (this) {
                if (!this.a) {
                    w5.this.m.obtainMessage(message.what, Pair.create(dVar.d, objA)).sendToTarget();
                }
            }
        }

        private boolean a(Message message, qd qdVar) {
            IOException fVar;
            d dVar = (d) message.obj;
            if (!dVar.b) {
                return false;
            }
            int i = dVar.e + 1;
            dVar.e = i;
            if (i > w5.this.j.a(3)) {
                return false;
            }
            mc mcVar = new mc(dVar.a, qdVar.a, qdVar.b, qdVar.c, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.c, qdVar.d);
            td tdVar = new td(3);
            if (qdVar.getCause() instanceof IOException) {
                fVar = (IOException) qdVar.getCause();
            } else {
                fVar = new f(qdVar.getCause());
            }
            long jA = w5.this.j.a(new lc.a(mcVar, tdVar, fVar, dVar.e));
            if (jA == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                if (this.a) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), jA);
                return true;
            }
        }

        void a(int i, Object obj, boolean z) {
            obtainMessage(i, new d(mc.a(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void a() {
            removeCallbacksAndMessages(null);
            this.a = true;
        }
    }

    @Override // com.applovin.impl.y6
    public final int b() {
        return this.n;
    }

    private void a(q4 q4Var) {
        Iterator it = this.i.a().iterator();
        while (it.hasNext()) {
            q4Var.accept((z6.a) it.next());
        }
    }

    private static final class d {
        public final long a;
        public final boolean b;
        public final long c;
        public final Object d;
        public int e;

        public d(long j, boolean z, long j2, Object obj) {
            this.a = j;
            this.b = z;
            this.c = j2;
            this.d = obj;
        }
    }

    public void b(Exception exc, boolean z) {
        a(exc, z ? 1 : 3);
    }

    private void a(boolean z) {
        if (this.g) {
            return;
        }
        byte[] bArr = (byte[]) xp.a((Object) this.t);
        int i = this.e;
        if (i != 0 && i != 1) {
            if (i == 2) {
                if (this.u == null || l()) {
                    a(bArr, 2, z);
                    return;
                }
                return;
            }
            if (i != 3) {
                return;
            }
            b1.a(this.u);
            b1.a(this.t);
            a(this.u, 3, z);
            return;
        }
        if (this.u == null) {
            a(bArr, 1, z);
            return;
        }
        if (this.n == 4 || l()) {
            long jA = a();
            if (this.e == 0 && jA <= 60) {
                oc.a("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + jA);
                a(bArr, 2, z);
                return;
            }
            if (jA <= 0) {
                a(new yb(), 2);
            } else {
                this.n = 4;
                a(new q4() { // from class: com.applovin.impl.w5$$ExternalSyntheticLambda4
                    @Override // com.applovin.impl.q4
                    public final void accept(Object obj) {
                        ((z6.a) obj).c();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Object obj, Object obj2) {
        if (obj == this.w) {
            if (this.n == 2 || g()) {
                this.w = null;
                if (obj2 instanceof Exception) {
                    this.c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.b.a((byte[]) obj2);
                    this.c.a();
                } catch (Exception e2) {
                    this.c.a(e2, true);
                }
            }
        }
    }

    public boolean a(byte[] bArr) {
        return Arrays.equals(this.t, bArr);
    }

    private void a(final Exception exc, int i) {
        this.s = new y6.a(exc, c7.a(exc, i));
        oc.a("DefaultDrmSession", "DRM session error", exc);
        a(new q4() { // from class: com.applovin.impl.w5$$ExternalSyntheticLambda1
            @Override // com.applovin.impl.q4
            public final void accept(Object obj) {
                ((z6.a) obj).a(exc);
            }
        });
        if (this.n != 4) {
            this.n = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj, Object obj2) {
        if (obj == this.v && g()) {
            this.v = null;
            if (obj2 instanceof Exception) {
                a((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.e == 3) {
                    this.b.b((byte[]) xp.a((Object) this.u), bArr);
                    a(new q4() { // from class: com.applovin.impl.w5$$ExternalSyntheticLambda2
                        @Override // com.applovin.impl.q4
                        public final void accept(Object obj3) {
                            ((z6.a) obj3).b();
                        }
                    });
                    return;
                }
                byte[] bArrB = this.b.b(this.t, bArr);
                int i = this.e;
                if ((i == 2 || (i == 0 && this.u != null)) && bArrB != null && bArrB.length != 0) {
                    this.u = bArrB;
                }
                this.n = 4;
                a(new q4() { // from class: com.applovin.impl.w5$$ExternalSyntheticLambda3
                    @Override // com.applovin.impl.q4
                    public final void accept(Object obj3) {
                        ((z6.a) obj3).a();
                    }
                });
            } catch (Exception e2) {
                a(e2, true);
            }
        }
    }

    private void a(Exception exc, boolean z) {
        if (exc instanceof NotProvisionedException) {
            this.c.a(this);
        } else {
            a(exc, z ? 1 : 2);
        }
    }

    public void a(int i) {
        if (i != 2) {
            return;
        }
        h();
    }

    private void a(byte[] bArr, int i, boolean z) {
        try {
            this.v = this.b.a(bArr, this.a, i, this.h);
            ((c) xp.a(this.q)).a(1, b1.a(this.v), z);
        } catch (Exception e2) {
            a(e2, true);
        }
    }

    @Override // com.applovin.impl.y6
    public void a(z6.a aVar) {
        b1.b(this.o > 0);
        int i = this.o - 1;
        this.o = i;
        if (i == 0) {
            this.n = 0;
            ((e) xp.a(this.m)).removeCallbacksAndMessages(null);
            ((c) xp.a(this.q)).a();
            this.q = null;
            ((HandlerThread) xp.a(this.p)).quit();
            this.p = null;
            this.r = null;
            this.s = null;
            this.v = null;
            this.w = null;
            byte[] bArr = this.t;
            if (bArr != null) {
                this.b.c(bArr);
                this.t = null;
            }
        }
        if (aVar != null) {
            this.i.c(aVar);
            if (this.i.b(aVar) == 0) {
                aVar.d();
            }
        }
        this.d.b(this, this.o);
    }

    @Override // com.applovin.impl.y6
    public boolean a(String str) {
        return this.b.a((byte[]) b1.b(this.t), str);
    }

    private long a() {
        if (!t2.d.equals(this.l)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) b1.a(bs.a(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }
}
