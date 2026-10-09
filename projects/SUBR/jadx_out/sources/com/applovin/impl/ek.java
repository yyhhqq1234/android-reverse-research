package com.applovin.impl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class ek extends bk implements ol {
    private final String n;

    protected abstract nl a(byte[] bArr, int i, boolean z);

    @Override // com.applovin.impl.ol
    public void a(long j) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.bk
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final pl a(Throwable th) {
        return new pl("Unexpected decode error", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.bk
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public final rl f() {
        return new rl();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.bk
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final sl g() {
        return new fk(new yg.a() { // from class: com.applovin.impl.ek$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.yg.a
            public final void a(yg ygVar) {
                this.f$0.a(ygVar);
            }
        });
    }

    protected ek(String str) {
        super(new rl[2], new sl[2]);
        this.n = str;
        a(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.bk
    public final pl a(rl rlVar, sl slVar, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) b1.a(rlVar.c);
            slVar.a(rlVar.f, a(byteBuffer.array(), byteBuffer.limit(), z), rlVar.j);
            slVar.c(Integer.MIN_VALUE);
            return null;
        } catch (pl e) {
            return e;
        }
    }
}
