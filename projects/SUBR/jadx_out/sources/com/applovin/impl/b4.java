package com.applovin.impl;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class b4 extends c2 {
    private final HashMap g = new HashMap();
    private Handler h;
    private xo i;

    protected int a(Object obj, int i) {
        return i;
    }

    protected long a(Object obj, long j) {
        return j;
    }

    protected abstract ae.a a(Object obj, ae.a aVar);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public abstract void a(Object obj, ae aeVar, fo foVar);

    protected b4() {
    }

    @Override // com.applovin.impl.c2
    protected void f() {
        for (b bVar : this.g.values()) {
            bVar.a.b(bVar.b);
        }
    }

    @Override // com.applovin.impl.c2
    protected void e() {
        for (b bVar : this.g.values()) {
            bVar.a.a(bVar.b);
        }
    }

    @Override // com.applovin.impl.c2
    protected void h() {
        for (b bVar : this.g.values()) {
            bVar.a.c(bVar.b);
            bVar.a.a((be) bVar.c);
            bVar.a.a((z6) bVar.c);
        }
        this.g.clear();
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
        private final Object a;
        private be.a b;
        private z6.a c;

        @Override // com.applovin.impl.z6
        public /* synthetic */ void e(int i, ae.a aVar) {
            z6.CC.$default$e(this, i, aVar);
        }

        public a(Object obj) {
            this.b = b4.this.b((ae.a) null);
            this.c = b4.this.a((ae.a) null);
            this.a = obj;
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
            ae.a aVarA;
            if (aVar != null) {
                aVarA = b4.this.a(this.a, aVar);
                if (aVarA == null) {
                    return false;
                }
            } else {
                aVarA = null;
            }
            int iA = b4.this.a(this.a, i);
            be.a aVar2 = this.b;
            if (aVar2.a != iA || !xp.a(aVar2.b, aVarA)) {
                this.b = b4.this.a(iA, aVarA, 0L);
            }
            z6.a aVar3 = this.c;
            if (aVar3.a == iA && xp.a(aVar3.b, aVarA)) {
                return true;
            }
            this.c = b4.this.a(iA, aVarA);
            return true;
        }

        private td a(td tdVar) {
            long jA = b4.this.a(this.a, tdVar.f);
            long jA2 = b4.this.a(this.a, tdVar.g);
            return (jA == tdVar.f && jA2 == tdVar.g) ? tdVar : new td(tdVar.a, tdVar.b, tdVar.c, tdVar.d, tdVar.e, jA, jA2);
        }

        @Override // com.applovin.impl.be
        public void c(int i, ae.a aVar, mc mcVar, td tdVar) {
            if (f(i, aVar)) {
                this.b.b(mcVar, a(tdVar));
            }
        }

        @Override // com.applovin.impl.be
        public void b(int i, ae.a aVar, mc mcVar, td tdVar) {
            if (f(i, aVar)) {
                this.b.c(mcVar, a(tdVar));
            }
        }

        @Override // com.applovin.impl.be
        public void a(int i, ae.a aVar, td tdVar) {
            if (f(i, aVar)) {
                this.b.a(a(tdVar));
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
                this.b.a(mcVar, a(tdVar));
            }
        }

        @Override // com.applovin.impl.be
        public void a(int i, ae.a aVar, mc mcVar, td tdVar, IOException iOException, boolean z) {
            if (f(i, aVar)) {
                this.b.a(mcVar, a(tdVar), iOException, z);
            }
        }
    }

    protected final void a(final Object obj, ae aeVar) {
        b1.a(!this.g.containsKey(obj));
        ae.b bVar = new ae.b() { // from class: com.applovin.impl.b4$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.ae.b
            public final void a(ae aeVar2, fo foVar) {
                this.f$0.a(obj, aeVar2, foVar);
            }
        };
        a aVar = new a(obj);
        this.g.put(obj, new b(aeVar, bVar, aVar));
        aeVar.a((Handler) b1.a(this.h), (be) aVar);
        aeVar.a((Handler) b1.a(this.h), (z6) aVar);
        aeVar.a(bVar, this.i);
        if (g()) {
            return;
        }
        aeVar.a(bVar);
    }

    @Override // com.applovin.impl.c2
    protected void a(xo xoVar) {
        this.i = xoVar;
        this.h = xp.a();
    }
}
