package com.applovin.impl;

import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h8 implements ol {
    private final b5 a = new b5();
    private final rl b = new rl();
    private final Deque c = new ArrayDeque();
    private int d;
    private boolean e;

    @Override // com.applovin.impl.ol
    public void a(long j) {
    }

    public h8() {
        for (int i = 0; i < 2; i++) {
            this.c.addFirst(new fk(new yg.a() { // from class: com.applovin.impl.h8$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.yg.a
                public final void a(yg ygVar) {
                    this.f$0.a((sl) ygVar);
                }
            }));
        }
        this.d = 0;
    }

    @Override // com.applovin.impl.l5
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public rl d() {
        b1.b(!this.e);
        if (this.d != 0) {
            return null;
        }
        this.d = 1;
        return this.b;
    }

    @Override // com.applovin.impl.l5
    public void a(rl rlVar) {
        b1.b(!this.e);
        b1.b(this.d == 1);
        b1.a(this.b == rlVar);
        this.d = 2;
    }

    @Override // com.applovin.impl.l5
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public sl c() {
        b1.b(!this.e);
        if (this.d != 2 || this.c.isEmpty()) {
            return null;
        }
        sl slVar = (sl) this.c.removeFirst();
        if (this.b.e()) {
            slVar.b(4);
        } else {
            rl rlVar = this.b;
            slVar.a(this.b.f, new a(rlVar.f, this.a.a(((ByteBuffer) b1.a(rlVar.c)).array())), 0L);
        }
        this.b.b();
        this.d = 0;
        return slVar;
    }

    @Override // com.applovin.impl.l5
    public void b() {
        b1.b(!this.e);
        this.b.b();
        this.d = 0;
    }

    private static final class a implements nl {
        private final long a;
        private final db b;

        @Override // com.applovin.impl.nl
        public int a() {
            return 1;
        }

        public a(long j, db dbVar) {
            this.a = j;
            this.b = dbVar;
        }

        @Override // com.applovin.impl.nl
        public long a(int i) {
            b1.a(i == 0);
            return this.a;
        }

        @Override // com.applovin.impl.nl
        public List b(long j) {
            return j >= this.a ? this.b : db.h();
        }

        @Override // com.applovin.impl.nl
        public int a(long j) {
            return this.a > j ? 0 : -1;
        }
    }

    @Override // com.applovin.impl.l5
    public void a() {
        this.e = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(sl slVar) {
        b1.b(this.c.size() < 2);
        b1.a(!this.c.contains(slVar));
        slVar.b();
        this.c.addFirst(slVar);
    }
}
