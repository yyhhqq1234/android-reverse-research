package com.applovin.impl;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class ok implements p1 {
    private int b;
    private float c = 1.0f;
    private float d = 1.0f;
    private p1.a e;
    private p1.a f;
    private p1.a g;
    private p1.a h;
    private boolean i;
    private nk j;
    private ByteBuffer k;
    private ShortBuffer l;
    private ByteBuffer m;
    private long n;
    private long o;
    private boolean p;

    public ok() {
        p1.a aVar = p1.a.e;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        ByteBuffer byteBuffer = p1.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
    }

    @Override // com.applovin.impl.p1
    public p1.a a(p1.a aVar) throws p1.b {
        if (aVar.c == 2) {
            int i = this.b;
            if (i == -1) {
                i = aVar.a;
            }
            this.e = aVar;
            p1.a aVar2 = new p1.a(i, aVar.b, 2);
            this.f = aVar2;
            this.i = true;
            return aVar2;
        }
        throw new p1.b(aVar);
    }

    @Override // com.applovin.impl.p1
    public boolean f() {
        return this.f.a != -1 && (Math.abs(this.c - 1.0f) >= 1.0E-4f || Math.abs(this.d - 1.0f) >= 1.0E-4f || this.f.a != this.e.a);
    }

    @Override // com.applovin.impl.p1
    public void e() {
        nk nkVar = this.j;
        if (nkVar != null) {
            nkVar.e();
        }
        this.p = true;
    }

    @Override // com.applovin.impl.p1
    public ByteBuffer d() {
        int iB;
        nk nkVar = this.j;
        if (nkVar != null && (iB = nkVar.b()) > 0) {
            if (this.k.capacity() < iB) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iB).order(ByteOrder.nativeOrder());
                this.k = byteBufferOrder;
                this.l = byteBufferOrder.asShortBuffer();
            } else {
                this.k.clear();
                this.l.clear();
            }
            nkVar.a(this.l);
            this.o += (long) iB;
            this.k.limit(iB);
            this.m = this.k;
        }
        ByteBuffer byteBuffer = this.m;
        this.m = p1.a;
        return byteBuffer;
    }

    @Override // com.applovin.impl.p1
    public boolean c() {
        nk nkVar;
        return this.p && ((nkVar = this.j) == null || nkVar.b() == 0);
    }

    @Override // com.applovin.impl.p1
    public void b() {
        if (f()) {
            p1.a aVar = this.e;
            this.g = aVar;
            p1.a aVar2 = this.f;
            this.h = aVar2;
            if (this.i) {
                this.j = new nk(aVar.a, aVar.b, this.c, this.d, aVar2.a);
            } else {
                nk nkVar = this.j;
                if (nkVar != null) {
                    nkVar.a();
                }
            }
        }
        this.m = p1.a;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    @Override // com.applovin.impl.p1
    public void reset() {
        this.c = 1.0f;
        this.d = 1.0f;
        p1.a aVar = p1.a.e;
        this.e = aVar;
        this.f = aVar;
        this.g = aVar;
        this.h = aVar;
        ByteBuffer byteBuffer = p1.a;
        this.k = byteBuffer;
        this.l = byteBuffer.asShortBuffer();
        this.m = byteBuffer;
        this.b = -1;
        this.i = false;
        this.j = null;
        this.n = 0L;
        this.o = 0L;
        this.p = false;
    }

    public long a(long j) {
        if (this.o >= 1024) {
            long jC = this.n - ((long) ((nk) b1.a(this.j)).c());
            int i = this.h.a;
            int i2 = this.g.a;
            if (i == i2) {
                return xp.c(j, jC, this.o);
            }
            return xp.c(j, jC * ((long) i), this.o * ((long) i2));
        }
        return (long) (((double) this.c) * j);
    }

    public void b(float f) {
        if (this.c != f) {
            this.c = f;
            this.i = true;
        }
    }

    @Override // com.applovin.impl.p1
    public void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            nk nkVar = (nk) b1.a(this.j);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.n += (long) iRemaining;
            nkVar.b(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    public void a(float f) {
        if (this.d != f) {
            this.d = f;
            this.i = true;
        }
    }
}
