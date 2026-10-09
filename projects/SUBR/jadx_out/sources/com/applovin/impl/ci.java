package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
final class ci {
    public final a a;
    public final a b;
    public final int c;
    public final boolean d;

    public static ci a(float f, int i, int i2, float f2, float f3, int i3) {
        int i4;
        int i5;
        int i6;
        float[] fArr;
        int i7 = i;
        int i8 = i2;
        b1.a(f > 0.0f);
        b1.a(i7 >= 1);
        b1.a(i8 >= 1);
        b1.a(f2 > 0.0f && f2 <= 180.0f);
        b1.a(f3 > 0.0f && f3 <= 360.0f);
        float radians = (float) Math.toRadians(f2);
        float radians2 = (float) Math.toRadians(f3);
        float f4 = radians / i7;
        float f5 = radians2 / i8;
        int i9 = i8 + 1;
        int i10 = ((i9 * 2) + 2) * i7;
        float[] fArr2 = new float[i10 * 3];
        float[] fArr3 = new float[i10 * 2];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < i7) {
            float f6 = radians / 2.0f;
            float f7 = (i11 * f4) - f6;
            int i14 = i11 + 1;
            float f8 = (i14 * f4) - f6;
            int i15 = 0;
            while (i15 < i9) {
                float f9 = f7;
                int i16 = i14;
                int i17 = 0;
                while (i17 < 2) {
                    float f10 = i15 * f5;
                    float f11 = f5;
                    int i18 = i15;
                    double d = f;
                    float f12 = f4;
                    double d2 = (f10 + 3.1415927f) - (radians2 / 2.0f);
                    int i19 = i17;
                    double d3 = i17 == 0 ? f9 : f8;
                    float[] fArr4 = fArr3;
                    float f13 = f8;
                    fArr2[i12] = -((float) (Math.sin(d2) * d * Math.cos(d3)));
                    float f14 = radians;
                    float f15 = radians2;
                    fArr2[i12 + 1] = (float) (d * Math.sin(d3));
                    int i20 = i12 + 3;
                    fArr2[i12 + 2] = (float) (d * Math.cos(d2) * Math.cos(d3));
                    fArr4[i13] = f10 / f15;
                    int i21 = i13 + 2;
                    fArr4[i13 + 1] = ((i11 + i19) * f12) / f14;
                    if (i18 == 0 && i19 == 0) {
                        i4 = i2;
                        i5 = i18;
                        i6 = i19;
                    } else {
                        i4 = i2;
                        i5 = i18;
                        i6 = i19;
                        if (i5 != i4 || i6 != 1) {
                            fArr = fArr4;
                            i13 = i21;
                            i12 = i20;
                        }
                        i17 = i6 + 1;
                        i8 = i4;
                        i15 = i5;
                        fArr3 = fArr;
                        radians = f14;
                        i9 = i9;
                        f5 = f11;
                        f4 = f12;
                        radians2 = f15;
                        f8 = f13;
                    }
                    System.arraycopy(fArr2, i12, fArr2, i20, 3);
                    i12 += 6;
                    fArr = fArr4;
                    System.arraycopy(fArr, i13, fArr, i21, 2);
                    i13 += 4;
                    i17 = i6 + 1;
                    i8 = i4;
                    i15 = i5;
                    fArr3 = fArr;
                    radians = f14;
                    i9 = i9;
                    f5 = f11;
                    f4 = f12;
                    radians2 = f15;
                    f8 = f13;
                }
                float f16 = radians2;
                int i22 = i15;
                int i23 = i8;
                int i24 = i22 + 1;
                f7 = f9;
                i14 = i16;
                f4 = f4;
                radians2 = f16;
                f8 = f8;
                i8 = i23;
                i15 = i24;
            }
            i7 = i;
            i11 = i14;
        }
        return new ci(new a(new b(0, fArr2, fArr3, 1)), i3);
    }

    public ci(a aVar, int i) {
        this(aVar, aVar, i);
    }

    public static final class b {
        public final int a;
        public final int b;
        public final float[] c;
        public final float[] d;

        public b(int i, float[] fArr, float[] fArr2, int i2) {
            this.a = i;
            b1.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.c = fArr;
            this.d = fArr2;
            this.b = i2;
        }

        public int a() {
            return this.c.length / 3;
        }
    }

    public static ci a(int i) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i);
    }

    public static final class a {
        private final b[] a;

        public a(b... bVarArr) {
            this.a = bVarArr;
        }

        public b a(int i) {
            return this.a[i];
        }

        public int a() {
            return this.a.length;
        }
    }

    public ci(a aVar, a aVar2, int i) {
        this.a = aVar;
        this.b = aVar2;
        this.c = i;
        this.d = aVar == aVar2;
    }
}
