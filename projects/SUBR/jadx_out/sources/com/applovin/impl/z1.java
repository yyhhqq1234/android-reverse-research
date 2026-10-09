package com.applovin.impl;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public abstract class z1 implements p1 {
    protected p1.a b;
    protected p1.a c;
    private p1.a d;
    private p1.a e;
    private ByteBuffer f;
    private ByteBuffer g;
    private boolean h;

    protected abstract p1.a b(p1.a aVar);

    protected void g() {
    }

    protected void h() {
    }

    protected void i() {
    }

    public z1() {
        ByteBuffer byteBuffer = p1.a;
        this.f = byteBuffer;
        this.g = byteBuffer;
        p1.a aVar = p1.a.e;
        this.d = aVar;
        this.e = aVar;
        this.b = aVar;
        this.c = aVar;
    }

    @Override // com.applovin.impl.p1
    public final p1.a a(p1.a aVar) {
        this.d = aVar;
        this.e = b(aVar);
        return f() ? this.e : p1.a.e;
    }

    @Override // com.applovin.impl.p1
    public boolean f() {
        return this.e != p1.a.e;
    }

    @Override // com.applovin.impl.p1
    public final void e() {
        this.h = true;
        h();
    }

    @Override // com.applovin.impl.p1
    public ByteBuffer d() {
        ByteBuffer byteBuffer = this.g;
        this.g = p1.a;
        return byteBuffer;
    }

    @Override // com.applovin.impl.p1
    public boolean c() {
        return this.h && this.g == p1.a;
    }

    @Override // com.applovin.impl.p1
    public final void b() {
        this.g = p1.a;
        this.h = false;
        this.b = this.d;
        this.c = this.e;
        g();
    }

    @Override // com.applovin.impl.p1
    public final void reset() {
        b();
        this.f = p1.a;
        p1.a aVar = p1.a.e;
        this.d = aVar;
        this.e = aVar;
        this.b = aVar;
        this.c = aVar;
        i();
    }

    protected final boolean a() {
        return this.g.hasRemaining();
    }

    protected final ByteBuffer a(int i) {
        if (this.f.capacity() < i) {
            this.f = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f.clear();
        }
        ByteBuffer byteBuffer = this.f;
        this.g = byteBuffer;
        return byteBuffer;
    }
}
