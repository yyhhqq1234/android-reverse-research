package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class el implements l8 {
    private final long a;
    private final l8 b;

    public el(long j, l8 l8Var) {
        this.a = j;
        this.b = l8Var;
    }

    @Override // com.applovin.impl.l8
    public void c() {
        this.b.c();
    }

    class a implements ij {
        final /* synthetic */ ij a;

        a(ij ijVar) {
            this.a = ijVar;
        }

        @Override // com.applovin.impl.ij
        public long d() {
            return this.a.d();
        }

        @Override // com.applovin.impl.ij
        public ij.a b(long j) {
            ij.a aVarB = this.a.b(j);
            kj kjVar = aVarB.a;
            kj kjVar2 = new kj(kjVar.a, kjVar.b + el.this.a);
            kj kjVar3 = aVarB.b;
            return new ij.a(kjVar2, new kj(kjVar3.a, kjVar3.b + el.this.a));
        }

        @Override // com.applovin.impl.ij
        public boolean b() {
            return this.a.b();
        }
    }

    @Override // com.applovin.impl.l8
    public void a(ij ijVar) {
        this.b.a(new a(ijVar));
    }

    @Override // com.applovin.impl.l8
    public qo a(int i, int i2) {
        return this.b.a(i, i2);
    }
}
