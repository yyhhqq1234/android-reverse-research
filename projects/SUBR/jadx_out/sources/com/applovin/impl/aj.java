package com.applovin.impl;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class aj {
    private final n0 a;
    private final int b;
    private final ah c;
    private a d;
    private a e;
    private a f;
    private long g;

    public aj(n0 n0Var) {
        this.a = n0Var;
        int iC = n0Var.c();
        this.b = iC;
        this.c = new ah(32);
        a aVar = new a(0L, iC);
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
    }

    public void c() {
        this.e = this.d;
    }

    private void a(a aVar) {
        if (aVar.c) {
            a aVar2 = this.f;
            boolean z = aVar2.c;
            int i = (z ? 1 : 0) + (((int) (aVar2.a - aVar.a)) / this.b);
            m0[] m0VarArr = new m0[i];
            for (int i2 = 0; i2 < i; i2++) {
                m0VarArr[i2] = aVar.d;
                aVar = aVar.a();
            }
            this.a.a(m0VarArr);
        }
    }

    private int b(int i) {
        a aVar = this.f;
        if (!aVar.c) {
            aVar.a(this.a.b(), new a(this.f.b, this.b));
        }
        return Math.min(i, (int) (this.f.b - this.g));
    }

    public void a(long j) {
        a aVar;
        if (j == -1) {
            return;
        }
        while (true) {
            aVar = this.d;
            if (j < aVar.b) {
                break;
            }
            this.a.a(aVar.d);
            this.d = this.d.a();
        }
        if (this.e.a < aVar.a) {
            this.e = aVar;
        }
    }

    private static final class a {
        public final long a;
        public final long b;
        public boolean c;
        public m0 d;
        public a e;

        public a(long j, int i) {
            this.a = j;
            this.b = j + ((long) i);
        }

        public a a() {
            this.d = null;
            a aVar = this.e;
            this.e = null;
            return aVar;
        }

        public void a(m0 m0Var, a aVar) {
            this.d = m0Var;
            this.e = aVar;
            this.c = true;
        }

        public int a(long j) {
            return ((int) (j - this.a)) + this.d.b;
        }
    }

    private static a b(a aVar, o5 o5Var, bj.b bVar, ah ahVar) {
        if (o5Var.h()) {
            aVar = a(aVar, o5Var, bVar, ahVar);
        }
        if (o5Var.c()) {
            ahVar.d(4);
            a aVarA = a(aVar, bVar.b, ahVar.c(), 4);
            int iA = ahVar.A();
            bVar.b += 4;
            bVar.a -= 4;
            o5Var.g(iA);
            a aVarA2 = a(aVarA, bVar.b, o5Var.c, iA);
            bVar.b += (long) iA;
            int i = bVar.a - iA;
            bVar.a = i;
            o5Var.h(i);
            return a(aVarA2, bVar.b, o5Var.g, bVar.a);
        }
        o5Var.g(bVar.a);
        return a(aVar, bVar.b, o5Var.c, bVar.a);
    }

    public void b(o5 o5Var, bj.b bVar) {
        this.e = b(this.e, o5Var, bVar, this.c);
    }

    public void b() {
        a(this.d);
        a aVar = new a(0L, this.b);
        this.d = aVar;
        this.e = aVar;
        this.f = aVar;
        this.g = 0L;
        this.a.a();
    }

    private static a a(a aVar, long j) {
        while (j >= aVar.b) {
            aVar = aVar.e;
        }
        return aVar;
    }

    public long a() {
        return this.g;
    }

    public void a(o5 o5Var, bj.b bVar) {
        b(this.e, o5Var, bVar, this.c);
    }

    private void a(int i) {
        long j = this.g + ((long) i);
        this.g = j;
        a aVar = this.f;
        if (j == aVar.b) {
            this.f = aVar.e;
        }
    }

    private static a a(a aVar, long j, ByteBuffer byteBuffer, int i) {
        a aVarA = a(aVar, j);
        while (i > 0) {
            int iMin = Math.min(i, (int) (aVarA.b - j));
            byteBuffer.put(aVarA.d.a, aVarA.a(j), iMin);
            i -= iMin;
            j += (long) iMin;
            if (j == aVarA.b) {
                aVarA = aVarA.e;
            }
        }
        return aVarA;
    }

    private static a a(a aVar, long j, byte[] bArr, int i) {
        a aVarA = a(aVar, j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (aVarA.b - j));
            System.arraycopy(aVarA.d.a, aVarA.a(j), bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            if (j == aVarA.b) {
                aVarA = aVarA.e;
            }
        }
        return aVarA;
    }

    private static a a(a aVar, o5 o5Var, bj.b bVar, ah ahVar) {
        int iC;
        long j = bVar.b;
        ahVar.d(1);
        a aVarA = a(aVar, j, ahVar.c(), 1);
        long j2 = j + 1;
        byte b = ahVar.c()[0];
        boolean z = (b & 128) != 0;
        int i = b & 127;
        z4 z4Var = o5Var.b;
        byte[] bArr = z4Var.a;
        if (bArr == null) {
            z4Var.a = new byte[16];
        } else {
            Arrays.fill(bArr, (byte) 0);
        }
        a aVarA2 = a(aVarA, j2, z4Var.a, i);
        long j3 = j2 + ((long) i);
        if (z) {
            ahVar.d(2);
            aVarA2 = a(aVarA2, j3, ahVar.c(), 2);
            j3 += 2;
            iC = ahVar.C();
        } else {
            iC = 1;
        }
        int[] iArr = z4Var.d;
        if (iArr == null || iArr.length < iC) {
            iArr = new int[iC];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = z4Var.e;
        if (iArr3 == null || iArr3.length < iC) {
            iArr3 = new int[iC];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i2 = iC * 6;
            ahVar.d(i2);
            aVarA2 = a(aVarA2, j3, ahVar.c(), i2);
            j3 += (long) i2;
            ahVar.f(0);
            for (int i3 = 0; i3 < iC; i3++) {
                iArr2[i3] = ahVar.C();
                iArr4[i3] = ahVar.A();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = bVar.a - ((int) (j3 - bVar.b));
        }
        qo.a aVar2 = (qo.a) xp.a(bVar.c);
        z4Var.a(iC, iArr2, iArr4, aVar2.b, z4Var.a, aVar2.a, aVar2.c, aVar2.d);
        long j4 = bVar.b;
        int i4 = (int) (j3 - j4);
        bVar.b = j4 + ((long) i4);
        bVar.a -= i4;
        return aVarA2;
    }

    public int a(f5 f5Var, int i, boolean z) throws EOFException {
        int iB = b(i);
        a aVar = this.f;
        int iA = f5Var.a(aVar.d.a, aVar.a(this.g), iB);
        if (iA != -1) {
            a(iA);
            return iA;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public void a(ah ahVar, int i) {
        while (i > 0) {
            int iB = b(i);
            a aVar = this.f;
            ahVar.a(aVar.d.a, aVar.a(this.g), iB);
            i -= iB;
            a(iB);
        }
    }
}
