package com.applovin.impl;

import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
abstract class a3 implements ol {
    private final ArrayDeque a = new ArrayDeque();
    private final ArrayDeque b;
    private final PriorityQueue c;
    private b d;
    private long e;
    private long f;

    @Override // com.applovin.impl.l5
    public void a() {
    }

    protected abstract void a(rl rlVar);

    protected abstract nl e();

    protected abstract boolean j();

    public a3() {
        for (int i = 0; i < 10; i++) {
            this.a.add(new b());
        }
        this.b = new ArrayDeque();
        for (int i2 = 0; i2 < 2; i2++) {
            this.b.add(new c(new yg.a() { // from class: com.applovin.impl.a3$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.yg.a
                public final void a(yg ygVar) {
                    this.f$0.a((sl) ygVar);
                }
            }));
        }
        this.c = new PriorityQueue();
    }

    @Override // com.applovin.impl.l5
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public rl d() {
        b1.b(this.d == null);
        if (this.a.isEmpty()) {
            return null;
        }
        b bVar = (b) this.a.pollFirst();
        this.d = bVar;
        return bVar;
    }

    @Override // com.applovin.impl.l5
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public sl c() {
        if (this.b.isEmpty()) {
            return null;
        }
        while (!this.c.isEmpty() && ((b) xp.a((b) this.c.peek())).f <= this.e) {
            b bVar = (b) xp.a((b) this.c.poll());
            if (bVar.e()) {
                sl slVar = (sl) xp.a((sl) this.b.pollFirst());
                slVar.b(4);
                a(bVar);
                return slVar;
            }
            a((rl) bVar);
            if (j()) {
                nl nlVarE = e();
                sl slVar2 = (sl) xp.a((sl) this.b.pollFirst());
                slVar2.a(bVar.f, nlVarE, Long.MAX_VALUE);
                a(bVar);
                return slVar2;
            }
            a(bVar);
        }
        return null;
    }

    @Override // com.applovin.impl.l5
    public void b() {
        this.f = 0L;
        this.e = 0L;
        while (!this.c.isEmpty()) {
            a((b) xp.a((b) this.c.poll()));
        }
        b bVar = this.d;
        if (bVar != null) {
            a(bVar);
            this.d = null;
        }
    }

    private void a(b bVar) {
        bVar.b();
        this.a.add(bVar);
    }

    protected final sl h() {
        return (sl) this.b.pollFirst();
    }

    protected final long i() {
        return this.e;
    }

    private static final class b extends rl implements Comparable {
        private long k;

        private b() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            if (e() != bVar.e()) {
                return e() ? 1 : -1;
            }
            long j = this.f - bVar.f;
            if (j == 0) {
                j = this.k - bVar.k;
                if (j == 0) {
                    return 0;
                }
            }
            return j > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c extends sl {
        private yg.a g;

        public c(yg.a aVar) {
            this.g = aVar;
        }

        @Override // com.applovin.impl.yg
        public final void g() {
            this.g.a(this);
        }
    }

    @Override // com.applovin.impl.l5
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(rl rlVar) {
        b1.a(rlVar == this.d);
        b bVar = (b) rlVar;
        if (bVar.d()) {
            a(bVar);
        } else {
            long j = this.f;
            this.f = 1 + j;
            bVar.k = j;
            this.c.add(bVar);
        }
        this.d = null;
    }

    protected void a(sl slVar) {
        slVar.b();
        this.b.add(slVar);
    }

    @Override // com.applovin.impl.ol
    public void a(long j) {
        this.e = j;
    }
}
