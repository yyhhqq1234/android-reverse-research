package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public class e6 implements kc {
    private final q5 a;
    private final long b;
    private final long c;
    private final long d;
    private final long e;
    private final int f;
    private final boolean g;
    private final long h;
    private final boolean i;
    private int j;
    private boolean k;

    public e6() {
        this(new q5(true, 65536), com.ironsource.y8.b.d, com.ironsource.y8.b.d, com.ironsource.mediationsdk.demandOnly.e.b.INSTANCE_NOT_FOUND_IN_AVAILABILITY_CHECK, 5000, -1, false, 0, false);
    }

    @Override // com.applovin.impl.kc
    public void f() {
        a(false);
    }

    @Override // com.applovin.impl.kc
    public void c() {
        a(true);
    }

    @Override // com.applovin.impl.kc
    public void e() {
        a(true);
    }

    @Override // com.applovin.impl.kc
    public n0 b() {
        return this.a;
    }

    @Override // com.applovin.impl.kc
    public long d() {
        return this.h;
    }

    private static void a(int i, int i2, String str, String str2) {
        b1.a(i >= i2, str + " cannot be less than " + str2);
    }

    protected e6(q5 q5Var, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        a(i3, 0, "bufferForPlaybackMs", "0");
        a(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(i, i3, "minBufferMs", "bufferForPlaybackMs");
        a(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(i2, i, "maxBufferMs", "minBufferMs");
        a(i6, 0, "backBufferDurationMs", "0");
        this.a = q5Var;
        this.b = t2.a(i);
        this.c = t2.a(i2);
        this.d = t2.a(i3);
        this.e = t2.a(i4);
        this.f = i5;
        this.j = i5 == -1 ? 13107200 : i5;
        this.g = z;
        this.h = t2.a(i6);
        this.i = z2;
    }

    protected int a(qi[] qiVarArr, g8[] g8VarArr) {
        int iA = 0;
        for (int i = 0; i < qiVarArr.length; i++) {
            if (g8VarArr[i] != null) {
                iA += a(qiVarArr[i].e());
            }
        }
        return Math.max(13107200, iA);
    }

    private static int a(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    @Override // com.applovin.impl.kc
    public void a(qi[] qiVarArr, po poVar, g8[] g8VarArr) {
        int iA = this.f;
        if (iA == -1) {
            iA = a(qiVarArr, g8VarArr);
        }
        this.j = iA;
        this.a.a(iA);
    }

    private void a(boolean z) {
        int i = this.f;
        if (i == -1) {
            i = 13107200;
        }
        this.j = i;
        this.k = false;
        if (z) {
            this.a.e();
        }
    }

    @Override // com.applovin.impl.kc
    public boolean a() {
        return this.i;
    }

    @Override // com.applovin.impl.kc
    public boolean a(long j, long j2, float f) {
        boolean z = true;
        boolean z2 = this.a.d() >= this.j;
        long jMin = this.b;
        if (f > 1.0f) {
            jMin = Math.min(xp.a(jMin, f), this.c);
        }
        if (j2 < Math.max(jMin, 500000L)) {
            if (!this.g && z2) {
                z = false;
            }
            this.k = z;
            if (!z && j2 < 500000) {
                oc.d("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.c || z2) {
            this.k = false;
        }
        return this.k;
    }

    @Override // com.applovin.impl.kc
    public boolean a(long j, float f, boolean z, long j2) {
        long jB = xp.b(j, f);
        long jMin = z ? this.e : this.d;
        if (j2 != -9223372036854775807L) {
            jMin = Math.min(j2 / 2, jMin);
        }
        return jMin <= 0 || jB >= jMin || (!this.g && this.a.d() >= this.j);
    }
}
