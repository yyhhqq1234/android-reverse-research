package com.applovin.impl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class w2 extends e2 {
    private final o5 n;
    private final ah o;
    private long p;
    private v2 q;
    private long r;

    @Override // com.applovin.impl.qi
    public boolean d() {
        return true;
    }

    @Override // com.applovin.impl.qi, com.applovin.impl.ri
    public String getName() {
        return "CameraMotionRenderer";
    }

    public w2() {
        super(6);
        this.n = new o5(1);
        this.o = new ah();
    }

    @Override // com.applovin.impl.e2, com.applovin.impl.rh.b
    public void a(int i, Object obj) {
        if (i == 8) {
            this.q = (v2) obj;
        } else {
            super.a(i, obj);
        }
    }

    @Override // com.applovin.impl.e2
    protected void v() {
        z();
    }

    @Override // com.applovin.impl.qi
    public boolean c() {
        return j();
    }

    private void z() {
        v2 v2Var = this.q;
        if (v2Var != null) {
            v2Var.a();
        }
    }

    @Override // com.applovin.impl.e2
    protected void a(long j, boolean z) {
        this.r = Long.MIN_VALUE;
        z();
    }

    @Override // com.applovin.impl.e2
    protected void a(e9[] e9VarArr, long j, long j2) {
        this.p = j2;
    }

    private float[] a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.o.a(byteBuffer.array(), byteBuffer.limit());
        this.o.f(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i = 0; i < 3; i++) {
            fArr[i] = Float.intBitsToFloat(this.o.m());
        }
        return fArr;
    }

    @Override // com.applovin.impl.qi
    public void a(long j, long j2) {
        while (!j() && this.r < 100000 + j) {
            this.n.b();
            if (a(r(), this.n, 0) != -4 || this.n.e()) {
                return;
            }
            o5 o5Var = this.n;
            this.r = o5Var.f;
            if (this.q != null && !o5Var.d()) {
                this.n.g();
                float[] fArrA = a((ByteBuffer) xp.a(this.n.c));
                if (fArrA != null) {
                    ((v2) xp.a(this.q)).a(this.r - this.p, fArrA);
                }
            }
        }
    }

    @Override // com.applovin.impl.ri
    public int a(e9 e9Var) {
        if ("application/x-camera-motion".equals(e9Var.m)) {
            return ri.CC.a(4);
        }
        return ri.CC.a(0);
    }
}
