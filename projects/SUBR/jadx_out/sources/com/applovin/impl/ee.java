package com.applovin.impl;

import android.os.Handler;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class ee {
    private final d d;
    private final be.a e;
    private final z6.a f;
    private final HashMap g;
    private final Set h;
    private boolean j;
    private xo k;
    private wj i = new wj.a(0);
    private final IdentityHashMap b = new IdentityHashMap();
    private final Map c = new HashMap();
    private final List a = new ArrayList();

    public interface d {
        void a();
    }

    public ee(d dVar, r0 r0Var, Handler handler) {
        this.d = dVar;
        be.a aVar = new be.a();
        this.e = aVar;
        z6.a aVar2 = new z6.a();
        this.f = aVar2;
        this.g = new HashMap();
        this.h = new HashSet();
        if (r0Var != null) {
            aVar.a(handler, r0Var);
            aVar2.a(handler, r0Var);
        }
    }

    public boolean d() {
        return this.j;
    }

    public int c() {
        return this.a.size();
    }

    public fo a(int i, List list, wj wjVar) {
        if (!list.isEmpty()) {
            this.i = wjVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                c cVar = (c) list.get(i2 - i);
                if (i2 > 0) {
                    c cVar2 = (c) this.a.get(i2 - 1);
                    cVar.a(cVar2.d + cVar2.a.i().b());
                } else {
                    cVar.a(0);
                }
                a(i2, cVar.a.i().b());
                this.a.add(i2, cVar);
                this.c.put(cVar.b, cVar);
                if (this.j) {
                    d(cVar);
                    if (this.b.isEmpty()) {
                        this.h.add(cVar);
                    } else {
                        a(cVar);
                    }
                }
            }
        }
        return a();
    }

    public void e() {
        for (b bVar : this.g.values()) {
            try {
                bVar.a.c(bVar.b);
            } catch (RuntimeException e) {
                oc.a("MediaSourceList", "Failed to release child source.", e);
            }
            bVar.a.a((be) bVar.c);
            bVar.a.a((z6) bVar.c);
        }
        this.g.clear();
        this.h.clear();
        this.j = false;
    }

    private void b() {
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.c.isEmpty()) {
                a(cVar);
                it.remove();
            }
        }
    }

    static final class c implements de {
        public final wc a;
        public int d;
        public boolean e;
        public final List c = new ArrayList();
        public final Object b = new Object();

        public c(ae aeVar, boolean z) {
            this.a = new wc(aeVar, z);
        }

        @Override // com.applovin.impl.de
        public Object a() {
            return this.b;
        }

        @Override // com.applovin.impl.de
        public fo b() {
            return this.a.i();
        }

        public void a(int i) {
            this.d = i;
            this.e = false;
            this.c.clear();
        }
    }

    private static final class b {
        public final ae a;
        public final ae.b b;
        public final a c;

        public b(ae aeVar, ae.b bVar, a aVar) {
            this.a = aeVar;
            this.b = bVar;
            this.c = aVar;
        }
    }

    private final class a implements be, z6 {
        private final c a;
        private be.a b;
        private z6.a c;

        @Override // com.applovin.impl.z6
        public /* synthetic */ void e(int i, ae.a aVar) {
            z6.CC.$default$e(this, i, aVar);
        }

        public a(c cVar) {
            this.b = ee.this.e;
            this.c = ee.this.f;
            this.a = cVar;
        }

        @Override // com.applovin.impl.be
        public void a(int i, ae.a aVar, td tdVar) {
            if (f(i, aVar)) {
                this.b.a(tdVar);
            }
        }

        @Override // com.applovin.impl.z6
        public void d(int i, ae.a aVar) {
            if (f(i, aVar)) {
                this.c.a();
            }
        }

        @Override // com.applovin.impl.z6
        public void c(int i, ae.a aVar) {
            if (f(i, aVar)) {
                this.c.c();
            }
        }

        @Override // com.applovin.impl.z6
        public void b(int i, ae.a aVar) {
            if (f(i, aVar)) {
                this.c.d();
            }
        }

        private boolean f(int i, ae.a aVar) {
            ae.a aVarB;
            if (aVar != null) {
                aVarB = ee.b(this.a, aVar);
                if (aVarB == null) {
                    return false;
                }
            } else {
                aVarB = null;
            }
            int iB = ee.b(this.a, i);
            be.a aVar2 = this.b;
            if (aVar2.a != iB || !xp.a(aVar2.b, aVarB)) {
                this.b = ee.this.e.a(iB, aVarB, 0L);
            }
            z6.a aVar3 = this.c;
            if (aVar3.a == iB && xp.a(aVar3.b, aVarB)) {
                return true;
            }
            this.c = ee.this.f.a(iB, aVarB);
            return true;
        }

        @Override // com.applovin.impl.be
        public void c(int i, ae.a aVar, mc mcVar, td tdVar) {
            if (f(i, aVar)) {
                this.b.b(mcVar, tdVar);
            }
        }

        @Override // com.applovin.impl.be
        public void b(int i, ae.a aVar, mc mcVar, td tdVar) {
            if (f(i, aVar)) {
                this.b.c(mcVar, tdVar);
            }
        }

        @Override // com.applovin.impl.z6
        public void a(int i, ae.a aVar) {
            if (f(i, aVar)) {
                this.c.b();
            }
        }

        @Override // com.applovin.impl.z6
        public void a(int i, ae.a aVar, int i2) {
            if (f(i, aVar)) {
                this.c.a(i2);
            }
        }

        @Override // com.applovin.impl.z6
        public void a(int i, ae.a aVar, Exception exc) {
            if (f(i, aVar)) {
                this.c.a(exc);
            }
        }

        @Override // com.applovin.impl.be
        public void a(int i, ae.a aVar, mc mcVar, td tdVar) {
            if (f(i, aVar)) {
                this.b.a(mcVar, tdVar);
            }
        }

        @Override // com.applovin.impl.be
        public void a(int i, ae.a aVar, mc mcVar, td tdVar, IOException iOException, boolean z) {
            if (f(i, aVar)) {
                this.b.a(mcVar, tdVar, iOException, z);
            }
        }
    }

    private void d(c cVar) {
        wc wcVar = cVar.a;
        ae.b bVar = new ae.b() { // from class: com.applovin.impl.ee$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.ae.b
            public final void a(ae aeVar, fo foVar) {
                this.f$0.a(aeVar, foVar);
            }
        };
        a aVar = new a(cVar);
        this.g.put(cVar, new b(wcVar, bVar, aVar));
        wcVar.a(xp.b(), (be) aVar);
        wcVar.a(xp.b(), (z6) aVar);
        wcVar.a(bVar, this.k);
    }

    private void c(c cVar) {
        if (cVar.e && cVar.c.isEmpty()) {
            b bVar = (b) b1.a((b) this.g.remove(cVar));
            bVar.a.c(bVar.b);
            bVar.a.a((be) bVar.c);
            bVar.a.a((z6) bVar.c);
            this.h.remove(cVar);
        }
    }

    private void a(int i, int i2) {
        while (i < this.a.size()) {
            ((c) this.a.get(i)).d += i2;
            i++;
        }
    }

    private void b(c cVar) {
        this.h.add(cVar);
        b bVar = (b) this.g.get(cVar);
        if (bVar != null) {
            bVar.a.b(bVar.b);
        }
    }

    public vd a(ae.a aVar, n0 n0Var, long j) {
        Object objB = b(aVar.a);
        ae.a aVarB = aVar.b(a(aVar.a));
        c cVar = (c) b1.a((c) this.c.get(objB));
        b(cVar);
        cVar.c.add(aVarB);
        vc vcVarA = cVar.a.a(aVarB, n0Var, j);
        this.b.put(vcVarA, cVar);
        b();
        return vcVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ae.a b(c cVar, ae.a aVar) {
        for (int i = 0; i < cVar.c.size(); i++) {
            if (((ae.a) cVar.c.get(i)).d == aVar.d) {
                return aVar.b(a(cVar, aVar.a));
            }
        }
        return null;
    }

    public fo a() {
        if (this.a.isEmpty()) {
            return fo.a;
        }
        int iB = 0;
        for (int i = 0; i < this.a.size(); i++) {
            c cVar = (c) this.a.get(i);
            cVar.d = iB;
            iB += cVar.a.i().b();
        }
        return new sh(this.a, this.i);
    }

    private static Object b(Object obj) {
        return com.applovin.impl.b.d(obj);
    }

    private void a(c cVar) {
        b bVar = (b) this.g.get(cVar);
        if (bVar != null) {
            bVar.a.a(bVar.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(c cVar, int i) {
        return i + cVar.d;
    }

    private static Object a(Object obj) {
        return com.applovin.impl.b.c(obj);
    }

    private void b(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            c cVar = (c) this.a.remove(i3);
            this.c.remove(cVar.b);
            a(i3, -cVar.a.i().b());
            cVar.e = true;
            if (this.j) {
                c(cVar);
            }
        }
    }

    private static Object a(c cVar, Object obj) {
        return com.applovin.impl.b.a(cVar.b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ae aeVar, fo foVar) {
        this.d.a();
    }

    public void a(xo xoVar) {
        b1.b(!this.j);
        this.k = xoVar;
        for (int i = 0; i < this.a.size(); i++) {
            c cVar = (c) this.a.get(i);
            d(cVar);
            this.h.add(cVar);
        }
        this.j = true;
    }

    public void a(vd vdVar) {
        c cVar = (c) b1.a((c) this.b.remove(vdVar));
        cVar.a.a(vdVar);
        cVar.c.remove(((vc) vdVar).a);
        if (!this.b.isEmpty()) {
            b();
        }
        c(cVar);
    }

    public fo a(int i, int i2, wj wjVar) {
        b1.a(i >= 0 && i <= i2 && i2 <= c());
        this.i = wjVar;
        b(i, i2);
        return a();
    }

    public fo a(List list, wj wjVar) {
        b(0, this.a.size());
        return a(this.a.size(), list, wjVar);
    }

    public fo a(wj wjVar) {
        int iC = c();
        if (wjVar.a() != iC) {
            wjVar = wjVar.d().b(0, iC);
        }
        this.i = wjVar;
        return a();
    }
}
