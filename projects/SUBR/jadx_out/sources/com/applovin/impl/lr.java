package com.applovin.impl;

import android.net.Uri;
import android.util.Pair;
import java.util.Map;
import okhttp3.internal.http.StatusLine;

/* JADX INFO: loaded from: classes.dex */
public final class lr implements j8 {
    public static final n8 f = new n8() { // from class: com.applovin.impl.lr$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.n8
        public final j8[] a() {
            return lr.c();
        }

        @Override // com.applovin.impl.n8
        public /* synthetic */ j8[] a(Uri uri, Map map) {
            return a();
        }
    };
    private l8 a;
    private qo b;
    private b c;
    private int d = -1;
    private long e = -1;

    private interface b {
        void a(int i, long j);

        void a(long j);

        boolean a(k8 k8Var, long j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j8[] c() {
        return new j8[]{new lr()};
    }

    @Override // com.applovin.impl.j8
    public void a() {
    }

    @Override // com.applovin.impl.j8
    public void a(l8 l8Var) {
        this.a = l8Var;
        this.b = l8Var.a(0, 1);
        l8Var.c();
    }

    private void b() {
        b1.b(this.b);
        xp.a(this.a);
    }

    @Override // com.applovin.impl.j8
    public int a(k8 k8Var, th thVar) throws ch {
        b();
        if (this.c == null) {
            mr mrVarA = nr.a(k8Var);
            if (mrVarA != null) {
                int i = mrVarA.a;
                if (i == 17) {
                    this.c = new a(this.a, this.b, mrVarA);
                } else if (i == 6) {
                    this.c = new c(this.a, this.b, mrVarA, "audio/g711-alaw", -1);
                } else if (i == 7) {
                    this.c = new c(this.a, this.b, mrVarA, "audio/g711-mlaw", -1);
                } else {
                    int iA = pr.a(i, mrVarA.f);
                    if (iA != 0) {
                        this.c = new c(this.a, this.b, mrVarA, "audio/raw", iA);
                    } else {
                        throw ch.a("Unsupported WAV format type: " + mrVarA.a);
                    }
                }
            } else {
                throw ch.a("Unsupported or unrecognized wav header.", null);
            }
        }
        if (this.d == -1) {
            Pair pairB = nr.b(k8Var);
            this.d = ((Long) pairB.first).intValue();
            long jLongValue = ((Long) pairB.second).longValue();
            this.e = jLongValue;
            this.c.a(this.d, jLongValue);
        } else if (k8Var.f() == 0) {
            k8Var.a(this.d);
        }
        b1.b(this.e != -1);
        return this.c.a(k8Var, this.e - k8Var.f()) ? -1 : 0;
    }

    private static final class c implements b {
        private final l8 a;
        private final qo b;
        private final mr c;
        private final e9 d;
        private final int e;
        private long f;
        private int g;
        private long h;

        public c(l8 l8Var, qo qoVar, mr mrVar, String str, int i) throws ch {
            this.a = l8Var;
            this.b = qoVar;
            this.c = mrVar;
            int i2 = (mrVar.b * mrVar.f) / 8;
            if (mrVar.e == i2) {
                int i3 = mrVar.c * i2;
                int i4 = i3 * 8;
                int iMax = Math.max(i2, i3 / 10);
                this.e = iMax;
                this.d = new e9.b().f(str).b(i4).k(i4).i(iMax).c(mrVar.b).n(mrVar.c).j(i).a();
                return;
            }
            throw ch.a("Expected block size: " + i2 + "; got: " + mrVar.e, null);
        }

        @Override // com.applovin.impl.lr.b
        public void a(int i, long j) {
            this.a.a(new or(this.c, 1, i, j));
            this.b.a(this.d);
        }

        @Override // com.applovin.impl.lr.b
        public void a(long j) {
            this.f = j;
            this.g = 0;
            this.h = 0L;
        }

        @Override // com.applovin.impl.lr.b
        public boolean a(k8 k8Var, long j) {
            int i;
            int i2;
            long j2 = j;
            while (j2 > 0 && (i = this.g) < (i2 = this.e)) {
                int iA = this.b.a((f5) k8Var, (int) Math.min(i2 - i, j2), true);
                if (iA == -1) {
                    j2 = 0;
                } else {
                    this.g += iA;
                    j2 -= (long) iA;
                }
            }
            mr mrVar = this.c;
            int i3 = mrVar.e;
            int i4 = this.g / i3;
            if (i4 > 0) {
                long jC = this.f + xp.c(this.h, 1000000L, mrVar.c);
                int i5 = i4 * i3;
                int i6 = this.g - i5;
                this.b.a(jC, 1, i5, i6, null);
                this.h += (long) i4;
                this.g = i6;
            }
            return j2 <= 0;
        }
    }

    @Override // com.applovin.impl.j8
    public void a(long j, long j2) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.a(j2);
        }
    }

    private static final class a implements b {
        private static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        private static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, StatusLine.HTTP_TEMP_REDIRECT, 337, 371, com.ironsource.g3.a.b.INSTANCE_NOT_FOUND_IN_SHOW, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        private final l8 a;
        private final qo b;
        private final mr c;
        private final int d;
        private final byte[] e;
        private final ah f;
        private final int g;
        private final e9 h;
        private int i;
        private long j;
        private int k;
        private long l;

        private static int a(int i, int i2) {
            return i * 2 * i2;
        }

        public a(l8 l8Var, qo qoVar, mr mrVar) throws ch {
            this.a = l8Var;
            this.b = qoVar;
            this.c = mrVar;
            int iMax = Math.max(1, mrVar.c / 10);
            this.g = iMax;
            ah ahVar = new ah(mrVar.g);
            ahVar.r();
            int iR = ahVar.r();
            this.d = iR;
            int i = mrVar.b;
            int i2 = (((mrVar.e - (i * 4)) * 8) / (mrVar.f * i)) + 1;
            if (iR == i2) {
                int iA = xp.a(iMax, iR);
                this.e = new byte[mrVar.e * iA];
                this.f = new ah(iA * a(iR, i));
                int i3 = ((mrVar.c * mrVar.e) * 8) / iR;
                this.h = new e9.b().f("audio/raw").b(i3).k(i3).i(a(iMax, i)).c(mrVar.b).n(mrVar.c).j(2).a();
                return;
            }
            throw ch.a("Expected frames per block: " + i2 + "; got: " + iR, null);
        }

        private void c(int i) {
            long jC = this.j + xp.c(this.l, 1000000L, this.c.c);
            int iB = b(i);
            this.b.a(jC, 1, iB, this.k - iB, null);
            this.l += (long) i;
            this.k -= iB;
        }

        private void a(byte[] bArr, int i, ah ahVar) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.c.b; i3++) {
                    a(bArr, i2, i3, ahVar.c());
                }
            }
            int iB = b(this.d * i);
            ahVar.f(0);
            ahVar.e(iB);
        }

        private int b(int i) {
            return a(i, this.c.b);
        }

        private void a(byte[] bArr, int i, int i2, byte[] bArr2) {
            mr mrVar = this.c;
            int i3 = mrVar.e;
            int i4 = mrVar.b;
            int i5 = (i * i3) + (i2 * 4);
            int i6 = (i4 * 4) + i5;
            int i7 = (i3 / i4) - 4;
            int iA = (short) (((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255));
            int iMin = Math.min(bArr[i5 + 2] & 255, 88);
            int i8 = n[iMin];
            int i9 = ((i * this.d * i4) + i2) * 2;
            bArr2[i9] = (byte) (iA & 255);
            bArr2[i9 + 1] = (byte) (iA >> 8);
            for (int i10 = 0; i10 < i7 * 2; i10++) {
                byte b = bArr[((i10 / 8) * i4 * 4) + i6 + ((i10 / 2) % 4)];
                int i11 = i10 % 2 == 0 ? b & 15 : (b & 255) >> 4;
                int i12 = ((((i11 & 7) * 2) + 1) * i8) >> 3;
                if ((i11 & 8) != 0) {
                    i12 = -i12;
                }
                iA = xp.a(iA + i12, -32768, 32767);
                i9 += i4 * 2;
                bArr2[i9] = (byte) (iA & 255);
                bArr2[i9 + 1] = (byte) (iA >> 8);
                int i13 = iMin + m[i11];
                int[] iArr = n;
                iMin = xp.a(i13, 0, iArr.length - 1);
                i8 = iArr[iMin];
            }
        }

        @Override // com.applovin.impl.lr.b
        public void a(int i, long j) {
            this.a.a(new or(this.c, this.d, i, j));
            this.b.a(this.h);
        }

        private int a(int i) {
            return i / (this.c.b * 2);
        }

        @Override // com.applovin.impl.lr.b
        public void a(long j) {
            this.i = 0;
            this.j = j;
            this.k = 0;
            this.l = 0L;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x003a A[LOOP:0: B:6:0x001f->B:12:0x003a, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:23:0x0040 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:25:0x0038 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0021  */
        /* JADX WARN: Code duplicated, block: B:9:0x0025  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0036 -> B:11:0x0038). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // com.applovin.impl.lr.b
        public boolean a(com.applovin.impl.k8 r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.g
                int r1 = r6.k
                int r1 = r6.a(r1)
                int r0 = r0 - r1
                int r1 = r6.d
                int r0 = com.applovin.impl.xp.a(r0, r1)
                com.applovin.impl.mr r1 = r6.c
                int r1 = r1.e
                int r0 = r0 * r1
                r1 = 0
                int r3 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                if (r3 != 0) goto L1d
                r2 = r6
                goto L38
            L1d:
                r1 = 0
                r2 = r6
            L1f:
                if (r1 != 0) goto L40
                int r3 = r2.i
                if (r3 >= r0) goto L40
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r4 = (int) r3
                byte[] r3 = r2.e
                int r5 = r2.i
                int r3 = r7.a(r3, r5, r4)
                r4 = -1
                if (r3 != r4) goto L3a
            L38:
                r1 = 1
                goto L1f
            L3a:
                int r4 = r2.i
                int r4 = r4 + r3
                r2.i = r4
                goto L1f
            L40:
                int r7 = r2.i
                com.applovin.impl.mr r8 = r2.c
                int r8 = r8.e
                int r7 = r7 / r8
                if (r7 <= 0) goto L78
                byte[] r8 = r2.e
                com.applovin.impl.ah r9 = r2.f
                r2.a(r8, r7, r9)
                int r8 = r2.i
                com.applovin.impl.mr r9 = r2.c
                int r9 = r9.e
                int r7 = r7 * r9
                int r8 = r8 - r7
                r2.i = r8
                com.applovin.impl.ah r7 = r2.f
                int r7 = r7.e()
                com.applovin.impl.qo r8 = r2.b
                com.applovin.impl.ah r9 = r2.f
                r8.a(r9, r7)
                int r8 = r2.k
                int r8 = r8 + r7
                r2.k = r8
                int r7 = r2.a(r8)
                int r8 = r2.g
                if (r7 < r8) goto L78
                r2.c(r8)
            L78:
                if (r1 == 0) goto L85
                int r7 = r2.k
                int r7 = r2.a(r7)
                if (r7 <= 0) goto L85
                r2.c(r7)
            L85:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.lr.a.a(com.applovin.impl.k8, long):boolean");
        }
    }

    @Override // com.applovin.impl.j8
    public boolean a(k8 k8Var) {
        return nr.a(k8Var) != null;
    }
}
