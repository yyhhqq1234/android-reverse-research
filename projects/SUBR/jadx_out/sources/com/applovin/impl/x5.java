package com.applovin.impl;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.work.PeriodicWorkRequest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class x5 implements a7 {
    private final UUID c;
    private final y7.c d;
    private final pd e;
    private final HashMap f;
    private final boolean g;
    private final int[] h;
    private final boolean i;
    private final g j;
    private final lc k;
    private final h l;
    private final long m;
    private final List n;
    private final Set o;
    private final Set p;
    private int q;
    private y7 r;
    private w5 s;
    private w5 t;
    private Looper u;
    private Handler v;
    private int w;
    private byte[] x;
    volatile d y;

    public static final class b {
        private boolean d;
        private boolean f;
        private final HashMap a = new HashMap();
        private UUID b = t2.d;
        private y7.c c = l9.d;
        private lc g = new f6();
        private int[] e = new int[0];
        private long h = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

        public b a(boolean z) {
            this.d = z;
            return this;
        }

        public b b(boolean z) {
            this.f = z;
            return this;
        }

        public b a(int... iArr) {
            for (int i : iArr) {
                boolean z = true;
                if (i != 2 && i != 1) {
                    z = false;
                }
                b1.a(z);
            }
            this.e = (int[]) iArr.clone();
            return this;
        }

        public b a(UUID uuid, y7.c cVar) {
            this.b = (UUID) b1.a(uuid);
            this.c = (y7.c) b1.a(cVar);
            return this;
        }

        public x5 a(pd pdVar) {
            return new x5(this.b, this.c, pdVar, this.a, this.d, this.e, this.f, this.g, this.h);
        }
    }

    public static final class e extends Exception {
        private e(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    private x5(UUID uuid, y7.c cVar, pd pdVar, HashMap map, boolean z, int[] iArr, boolean z2, lc lcVar, long j) {
        b1.a(uuid);
        b1.a(!t2.b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.c = uuid;
        this.d = cVar;
        this.e = pdVar;
        this.f = map;
        this.g = z;
        this.h = iArr;
        this.i = z2;
        this.k = lcVar;
        this.j = new g();
        this.l = new h();
        this.w = 0;
        this.n = new ArrayList();
        this.o = rj.b();
        this.p = rj.b();
        this.m = j;
    }

    @Override // com.applovin.impl.a7
    public y6 a(Looper looper, z6.a aVar, e9 e9Var) {
        b1.b(this.q > 0);
        a(looper);
        return a(looper, aVar, e9Var, true);
    }

    private void d() {
        pp it = hb.a((Collection) this.p).iterator();
        while (it.hasNext()) {
            ((y6) it.next()).a((z6.a) null);
        }
    }

    private void b(Looper looper) {
        if (this.y == null) {
            this.y = new d(looper);
        }
    }

    private void e() {
        pp it = hb.a((Collection) this.o).iterator();
        while (it.hasNext()) {
            ((f) it.next()).a();
        }
    }

    private class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (w5 w5Var : x5.this.n) {
                if (w5Var.a(bArr)) {
                    w5Var.a(message.what);
                    return;
                }
            }
        }
    }

    private class g implements w5.a {
        private final Set a = new HashSet();
        private w5 b;

        public g() {
        }

        @Override // com.applovin.impl.w5.a
        public void a() {
            this.b = null;
            db dbVarA = db.a((Collection) this.a);
            this.a.clear();
            pp it = dbVarA.iterator();
            while (it.hasNext()) {
                ((w5) it.next()).i();
            }
        }

        public void b(w5 w5Var) {
            this.a.remove(w5Var);
            if (this.b == w5Var) {
                this.b = null;
                if (this.a.isEmpty()) {
                    return;
                }
                w5 w5Var2 = (w5) this.a.iterator().next();
                this.b = w5Var2;
                w5Var2.k();
            }
        }

        @Override // com.applovin.impl.w5.a
        public void a(Exception exc, boolean z) {
            this.b = null;
            db dbVarA = db.a((Collection) this.a);
            this.a.clear();
            pp it = dbVarA.iterator();
            while (it.hasNext()) {
                ((w5) it.next()).b(exc, z);
            }
        }

        @Override // com.applovin.impl.w5.a
        public void a(w5 w5Var) {
            this.a.add(w5Var);
            if (this.b != null) {
                return;
            }
            this.b = w5Var;
            w5Var.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.r != null && this.q == 0 && this.n.isEmpty() && this.o.isEmpty()) {
            ((y7) b1.a(this.r)).a();
            this.r = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class h implements w5.b {
        private h() {
        }

        @Override // com.applovin.impl.w5.b
        public void b(final w5 w5Var, int i) {
            if (i == 1 && x5.this.q > 0 && x5.this.m != -9223372036854775807L) {
                x5.this.p.add(w5Var);
                ((Handler) b1.a(x5.this.v)).postAtTime(new Runnable() { // from class: com.applovin.impl.x5$h$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        w5Var.a((z6.a) null);
                    }
                }, w5Var, SystemClock.uptimeMillis() + x5.this.m);
            } else if (i == 0) {
                x5.this.n.remove(w5Var);
                if (x5.this.s == w5Var) {
                    x5.this.s = null;
                }
                if (x5.this.t == w5Var) {
                    x5.this.t = null;
                }
                x5.this.j.b(w5Var);
                if (x5.this.m != -9223372036854775807L) {
                    ((Handler) b1.a(x5.this.v)).removeCallbacksAndMessages(w5Var);
                    x5.this.p.remove(w5Var);
                }
            }
            x5.this.c();
        }

        @Override // com.applovin.impl.w5.b
        public void a(w5 w5Var, int i) {
            if (x5.this.m != -9223372036854775807L) {
                x5.this.p.remove(w5Var);
                ((Handler) b1.a(x5.this.v)).removeCallbacksAndMessages(w5Var);
            }
        }
    }

    private class c implements y7.b {
        private c() {
        }

        @Override // com.applovin.impl.y7.b
        public void a(y7 y7Var, byte[] bArr, int i, int i2, byte[] bArr2) {
            ((d) b1.a(x5.this.y)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class f implements a7.b {
        private final z6.a b;
        private y6 c;
        private boolean d;

        public f(z6.a aVar) {
            this.b = aVar;
        }

        public void a(final e9 e9Var) {
            ((Handler) b1.a(x5.this.v)).post(new Runnable() { // from class: com.applovin.impl.x5$f$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(e9Var);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(e9 e9Var) {
            if (x5.this.q == 0 || this.d) {
                return;
            }
            x5 x5Var = x5.this;
            this.c = x5Var.a((Looper) b1.a(x5Var.u), this.b, e9Var, false);
            x5.this.o.add(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            if (this.d) {
                return;
            }
            y6 y6Var = this.c;
            if (y6Var != null) {
                y6Var.a(this.b);
            }
            x5.this.o.remove(this);
            this.d = true;
        }

        @Override // com.applovin.impl.a7.b
        public void a() {
            xp.a((Handler) b1.a(x5.this.v), new Runnable() { // from class: com.applovin.impl.x5$f$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public y6 a(Looper looper, z6.a aVar, e9 e9Var, boolean z) {
        List listA;
        b(looper);
        x6 x6Var = e9Var.p;
        if (x6Var == null) {
            return a(hf.e(e9Var.m), z);
        }
        w5 w5VarA = null;
        Object[] objArr = 0;
        if (this.x == null) {
            listA = a((x6) b1.a(x6Var), this.c, false);
            if (listA.isEmpty()) {
                e eVar = new e(this.c);
                oc.a("DefaultDrmSessionMgr", "DRM error", eVar);
                if (aVar != null) {
                    aVar.a(eVar);
                }
                return new t7(new y6.a(eVar, 6003));
            }
        } else {
            listA = null;
        }
        if (!this.g) {
            w5VarA = this.t;
        } else {
            for (w5 w5Var : this.n) {
                if (xp.a(w5Var.a, listA)) {
                    w5VarA = w5Var;
                    break;
                }
            }
        }
        if (w5VarA == null) {
            w5VarA = a(listA, false, aVar, z);
            if (!this.g) {
                this.t = w5VarA;
            }
            this.n.add(w5VarA);
        } else {
            w5VarA.b(aVar);
        }
        return w5VarA;
    }

    @Override // com.applovin.impl.a7
    public a7.b b(Looper looper, z6.a aVar, e9 e9Var) {
        b1.b(this.q > 0);
        a(looper);
        f fVar = new f(aVar);
        fVar.a(e9Var);
        return fVar;
    }

    @Override // com.applovin.impl.a7
    public final void b() {
        int i = this.q;
        this.q = i + 1;
        if (i != 0) {
            return;
        }
        if (this.r == null) {
            y7 y7VarA = this.d.a(this.c);
            this.r = y7VarA;
            y7VarA.a(new c());
        } else if (this.m != -9223372036854775807L) {
            for (int i2 = 0; i2 < this.n.size(); i2++) {
                ((w5) this.n.get(i2)).b(null);
            }
        }
    }

    private static boolean a(y6 y6Var) {
        return y6Var.b() == 1 && (xp.a < 19 || (((y6.a) b1.a(y6Var.getError())).getCause() instanceof ResourceBusyException));
    }

    private boolean a(x6 x6Var) {
        if (this.x != null) {
            return true;
        }
        if (a(x6Var, this.c, true).isEmpty()) {
            if (x6Var.d != 1 || !x6Var.a(0).a(t2.b)) {
                return false;
            }
            oc.d("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.c);
        }
        String str = x6Var.c;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        if ("cbcs".equals(str)) {
            return xp.a >= 25;
        }
        return ("cbc1".equals(str) || "cens".equals(str)) ? false : true;
    }

    private w5 a(List list, boolean z, z6.a aVar) {
        b1.a(this.r);
        w5 w5Var = new w5(this.c, this.r, this.j, this.l, list, this.w, this.i | z, z, this.x, this.f, this.e, (Looper) b1.a(this.u), this.k);
        w5Var.b(aVar);
        if (this.m != -9223372036854775807L) {
            w5Var.b(null);
        }
        return w5Var;
    }

    private w5 a(List list, boolean z, z6.a aVar, boolean z2) {
        w5 w5VarA = a(list, z, aVar);
        if (a(w5VarA) && !this.p.isEmpty()) {
            d();
            a(w5VarA, aVar);
            w5VarA = a(list, z, aVar);
        }
        if (!a(w5VarA) || !z2 || this.o.isEmpty()) {
            return w5VarA;
        }
        e();
        if (!this.p.isEmpty()) {
            d();
        }
        a(w5VarA, aVar);
        return a(list, z, aVar);
    }

    @Override // com.applovin.impl.a7
    public int a(e9 e9Var) {
        int iC = ((y7) b1.a(this.r)).c();
        x6 x6Var = e9Var.p;
        if (x6Var == null) {
            if (xp.a(this.h, hf.e(e9Var.m)) != -1) {
                return iC;
            }
            return 0;
        }
        if (a(x6Var)) {
            return iC;
        }
        return 1;
    }

    private synchronized void a(Looper looper) {
        Looper looper2 = this.u;
        if (looper2 == null) {
            this.u = looper;
            this.v = new Handler(looper);
        } else {
            b1.b(looper2 == looper);
            b1.a(this.v);
        }
    }

    private y6 a(int i, boolean z) {
        y7 y7Var = (y7) b1.a(this.r);
        if ((y7Var.c() == 2 && k9.d) || xp.a(this.h, i) == -1 || y7Var.c() == 1) {
            return null;
        }
        w5 w5Var = this.s;
        if (w5Var == null) {
            w5 w5VarA = a((List) db.h(), true, (z6.a) null, z);
            this.n.add(w5VarA);
            this.s = w5VarA;
        } else {
            w5Var.b(null);
        }
        return this.s;
    }

    @Override // com.applovin.impl.a7
    public final void a() {
        int i = this.q - 1;
        this.q = i;
        if (i != 0) {
            return;
        }
        if (this.m != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.n);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((w5) arrayList.get(i2)).a((z6.a) null);
            }
        }
        e();
        c();
    }

    public void a(int i, byte[] bArr) {
        b1.b(this.n.isEmpty());
        if (i == 1 || i == 3) {
            b1.a(bArr);
        }
        this.w = i;
        this.x = bArr;
    }

    private void a(y6 y6Var, z6.a aVar) {
        y6Var.a(aVar);
        if (this.m != -9223372036854775807L) {
            y6Var.a((z6.a) null);
        }
    }

    private static List a(x6 x6Var, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(x6Var.d);
        for (int i = 0; i < x6Var.d; i++) {
            x6.b bVarA = x6Var.a(i);
            if ((bVarA.a(uuid) || (t2.c.equals(uuid) && bVarA.a(t2.b))) && (bVarA.f != null || z)) {
                arrayList.add(bVarA);
            }
        }
        return arrayList;
    }
}
