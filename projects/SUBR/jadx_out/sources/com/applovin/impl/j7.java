package com.applovin.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* JADX INFO: loaded from: classes.dex */
final class j7 {
    private static final byte[] h = {0, 7, 8, 15};
    private static final byte[] i = {0, 119, -120, -1};
    private static final byte[] j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint a;
    private final Paint b;
    private final Canvas c;
    private final b d;
    private final a e;
    private final h f;
    private Bitmap g;

    private static int a(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    public j7(int i2, int i3) {
        Paint paint = new Paint();
        this.a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.c = new Canvas();
        this.d = new b(719, 575, 0, 719, 0, 575);
        this.e = new a(0, a(), b(), c());
        this.f = new h(i2, i3);
    }

    public void d() {
        this.f.a();
    }

    private static int[] b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            if (i2 < 8) {
                iArr[i2] = a(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                int i3 = i2 & 1;
                int i4 = WorkQueueKt.MASK;
                int i5 = i3 != 0 ? WorkQueueKt.MASK : 0;
                int i6 = (i2 & 2) != 0 ? WorkQueueKt.MASK : 0;
                if ((i2 & 4) == 0) {
                    i4 = 0;
                }
                iArr[i2] = a(255, i5, i6, i4);
            }
        }
        return iArr;
    }

    private static int[] c() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (i2 < 8) {
                iArr[i2] = a(63, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) == 0 ? 0 : 255);
            } else {
                int i3 = i2 & 136;
                if (i3 == 0) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 8) {
                    iArr[i2] = a(WorkQueueKt.MASK, ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? 170 : 0), ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? 170 : 0), ((i2 & 4) == 0 ? 0 : 85) + ((i2 & 64) == 0 ? 0 : 170));
                } else if (i3 == 128) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 43 : 0) + WorkQueueKt.MASK + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + WorkQueueKt.MASK + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + WorkQueueKt.MASK + ((i2 & 64) == 0 ? 0 : 85));
                } else if (i3 == 136) {
                    iArr[i2] = a(255, ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0), ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0), ((i2 & 4) == 0 ? 0 : 43) + ((i2 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static byte[] a(int i2, int i3, zg zgVar) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) zgVar.a(i3);
        }
        return bArr;
    }

    private static final class h {
        public final int a;
        public final int b;
        public final SparseArray c = new SparseArray();
        public final SparseArray d = new SparseArray();
        public final SparseArray e = new SparseArray();
        public final SparseArray f = new SparseArray();
        public final SparseArray g = new SparseArray();
        public b h;
        public d i;

        public h(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public void a() {
            this.c.clear();
            this.d.clear();
            this.e.clear();
            this.f.clear();
            this.g.clear();
            this.h = null;
            this.i = null;
        }
    }

    private static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        public b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    private static final class d {
        public final int a;
        public final int b;
        public final int c;
        public final SparseArray d;

        public d(int i, int i2, int i3, SparseArray sparseArray) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = sparseArray;
        }
    }

    private static final class e {
        public final int a;
        public final int b;

        public e(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    private static final class f {
        public final int a;
        public final boolean b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final int j;
        public final SparseArray k;

        public f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray sparseArray) {
            this.a = i;
            this.b = z;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = i8;
            this.j = i9;
            this.k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray sparseArray = fVar.k;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.k.put(sparseArray.keyAt(i), (g) sparseArray.valueAt(i));
            }
        }
    }

    private static final class g {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        public g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    private static final class a {
        public final int a;
        public final int[] b;
        public final int[] c;
        public final int[] d;

        public a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.a = i;
            this.b = iArr;
            this.c = iArr2;
            this.d = iArr3;
        }
    }

    private static final class c {
        public final int a;
        public final boolean b;
        public final byte[] c;
        public final byte[] d;

        public c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.a = i;
            this.b = z;
            this.c = bArr;
            this.d = bArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0074  */
    /* JADX WARN: Code duplicated, block: B:36:0x0090 A[LOOP:0: B:3:0x0009->B:36:0x0090, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:37:0x008f A[SYNTHETIC] */
    private static int b(zg zgVar, int[] iArr, byte[] bArr, int i2, int i3, Paint paint, Canvas canvas) {
        int i4;
        int iA;
        int iA2;
        int i5 = i2;
        boolean z = false;
        while (true) {
            int iA3 = zgVar.a(4);
            if (iA3 == 0) {
                if (!zgVar.f()) {
                    int iA4 = zgVar.a(3);
                    if (iA4 != 0) {
                        z = z;
                        i4 = iA4 + 2;
                        iA3 = 0;
                    } else {
                        iA3 = 0;
                        z = true;
                        i4 = 0;
                    }
                } else {
                    if (!zgVar.f()) {
                        iA = zgVar.a(2) + 4;
                        iA2 = zgVar.a(4);
                    } else {
                        int iA5 = zgVar.a(2);
                        if (iA5 == 0) {
                            iA3 = 0;
                        } else if (iA5 == 1) {
                            z = z;
                            iA3 = 0;
                            i4 = 2;
                        } else if (iA5 == 2) {
                            iA = zgVar.a(4) + 9;
                            iA2 = zgVar.a(4);
                        } else if (iA5 != 3) {
                            z = z;
                            iA3 = 0;
                            i4 = 0;
                        } else {
                            iA = zgVar.a(8) + 25;
                            iA2 = zgVar.a(4);
                        }
                    }
                    z = z;
                    i4 = iA;
                    iA3 = iA2;
                }
                if (i4 != 0 && paint != null) {
                    if (bArr != null) {
                        iA3 = bArr[iA3];
                    }
                    paint.setColor(iArr[iA3]);
                    canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
                }
                i5 += i4;
                if (z) {
                    return i5;
                }
                z = z;
            }
            i4 = 1;
            if (i4 != 0) {
                if (bArr != null) {
                    iA3 = bArr[iA3];
                }
                paint.setColor(iArr[iA3]);
                canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
            }
            i5 += i4;
            if (z) {
                return i5;
            }
            z = z;
        }
    }

    private static int[] a() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int c(zg zgVar, int[] iArr, byte[] bArr, int i2, int i3, Paint paint, Canvas canvas) {
        boolean z;
        int iA;
        int i4 = i2;
        boolean z2 = false;
        while (true) {
            int iA2 = zgVar.a(8);
            if (iA2 != 0) {
                z = z2;
                iA = 1;
            } else if (!zgVar.f()) {
                int iA3 = zgVar.a(7);
                if (iA3 != 0) {
                    z = z2;
                    iA = iA3;
                    iA2 = 0;
                } else {
                    iA2 = 0;
                    z = true;
                    iA = 0;
                }
            } else {
                z = z2;
                iA = zgVar.a(7);
                iA2 = zgVar.a(8);
            }
            if (iA != 0 && paint != null) {
                if (bArr != null) {
                    iA2 = bArr[iA2];
                }
                paint.setColor(iArr[iA2]);
                canvas.drawRect(i4, i3, i4 + iA, i3 + 1, paint);
            }
            i4 += iA;
            if (z) {
                return i4;
            }
            z2 = z;
        }
    }

    private static f c(zg zgVar, int i2) {
        int iA;
        int iA2;
        int iA3 = zgVar.a(8);
        zgVar.d(4);
        boolean zF = zgVar.f();
        zgVar.d(3);
        int i3 = 16;
        int iA4 = zgVar.a(16);
        int iA5 = zgVar.a(16);
        int iA6 = zgVar.a(3);
        int iA7 = zgVar.a(3);
        int i4 = 2;
        zgVar.d(2);
        int iA8 = zgVar.a(8);
        int iA9 = zgVar.a(8);
        int iA10 = zgVar.a(4);
        int iA11 = zgVar.a(2);
        zgVar.d(2);
        int i5 = i2 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i5 > 0) {
            int iA12 = zgVar.a(i3);
            int iA13 = zgVar.a(i4);
            int iA14 = zgVar.a(i4);
            int iA15 = zgVar.a(12);
            int i6 = iA11;
            zgVar.d(4);
            int iA16 = zgVar.a(12);
            int i7 = i5 - 6;
            if (iA13 == 1 || iA13 == 2) {
                i5 -= 8;
                iA = zgVar.a(8);
                iA2 = zgVar.a(8);
            } else {
                i5 = i7;
                iA = 0;
                iA2 = 0;
            }
            sparseArray.put(iA12, new g(iA13, iA14, iA15, iA16, iA, iA2));
            iA11 = i6;
            i4 = 2;
            i3 = 16;
        }
        return new f(iA3, zF, iA4, iA5, iA6, iA7, iA8, iA9, iA10, iA11, sparseArray);
    }

    private static c b(zg zgVar) {
        byte[] bArr;
        int iA = zgVar.a(16);
        zgVar.d(4);
        int iA2 = zgVar.a(2);
        boolean zF = zgVar.f();
        zgVar.d(1);
        byte[] bArr2 = xp.f;
        if (iA2 == 1) {
            zgVar.d(zgVar.a(8) * 16);
        } else {
            if (iA2 == 0) {
                int iA3 = zgVar.a(16);
                int iA4 = zgVar.a(16);
                if (iA3 > 0) {
                    bArr2 = new byte[iA3];
                    zgVar.b(bArr2, 0, iA3);
                }
                if (iA4 > 0) {
                    bArr = new byte[iA4];
                    zgVar.b(bArr, 0, iA4);
                }
            }
            return new c(iA, zF, bArr2, bArr);
        }
        bArr = bArr2;
        return new c(iA, zF, bArr2, bArr);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0062 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:28:0x0066  */
    /* JADX WARN: Code duplicated, block: B:33:0x0082 A[LOOP:0: B:3:0x0009->B:33:0x0082, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:34:0x0081 A[SYNTHETIC] */
    private static int a(zg zgVar, int[] iArr, byte[] bArr, int i2, int i3, Paint paint, Canvas canvas) {
        int i4;
        int iA;
        int iA2;
        int i5 = i2;
        boolean z = false;
        while (true) {
            int iA3 = zgVar.a(2);
            if (iA3 == 0) {
                if (zgVar.f()) {
                    iA = zgVar.a(3) + 3;
                    iA2 = zgVar.a(2);
                } else {
                    if (zgVar.f()) {
                        iA3 = 0;
                    } else {
                        int iA4 = zgVar.a(2);
                        if (iA4 == 0) {
                            iA3 = 0;
                            z = true;
                        } else if (iA4 == 1) {
                            z = z;
                            iA3 = 0;
                            i4 = 2;
                        } else if (iA4 == 2) {
                            iA = zgVar.a(4) + 12;
                            iA2 = zgVar.a(2);
                        } else if (iA4 != 3) {
                            z = z;
                            iA3 = 0;
                        } else {
                            iA = zgVar.a(8) + 29;
                            iA2 = zgVar.a(2);
                        }
                        i4 = 0;
                    }
                    if (i4 != 0 && paint != null) {
                        if (bArr != null) {
                            iA3 = bArr[iA3];
                        }
                        paint.setColor(iArr[iA3]);
                        canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
                    }
                    i5 += i4;
                    if (z) {
                        return i5;
                    }
                    z = z;
                }
                z = z;
                i4 = iA;
                iA3 = iA2;
                if (i4 != 0) {
                    if (bArr != null) {
                        iA3 = bArr[iA3];
                    }
                    paint.setColor(iArr[iA3]);
                    canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
                }
                i5 += i4;
                if (z) {
                    return i5;
                }
                z = z;
            }
            i4 = 1;
            if (i4 != 0) {
                if (bArr != null) {
                    iA3 = bArr[iA3];
                }
                paint.setColor(iArr[iA3]);
                canvas.drawRect(i5, i3, i5 + i4, i3 + 1, paint);
            }
            i5 += i4;
            if (z) {
                return i5;
            }
            z = z;
        }
    }

    private static d b(zg zgVar, int i2) {
        int iA = zgVar.a(8);
        int iA2 = zgVar.a(4);
        int iA3 = zgVar.a(2);
        zgVar.d(2);
        int i3 = i2 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int iA4 = zgVar.a(8);
            zgVar.d(8);
            i3 -= 6;
            sparseArray.put(iA4, new e(zgVar.a(16), zgVar.a(16)));
        }
        return new d(iA, iA2, iA3, sparseArray);
    }

    private static void a(c cVar, a aVar, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i2 == 3) {
            iArr = aVar.d;
        } else if (i2 == 2) {
            iArr = aVar.c;
        } else {
            iArr = aVar.b;
        }
        int[] iArr2 = iArr;
        a(cVar.c, iArr2, i2, i3, i4, paint, canvas);
        a(cVar.d, iArr2, i2, i3, i4 + 1, paint, canvas);
    }

    private static a a(zg zgVar, int i2) {
        int[] iArr;
        int iA;
        int i3;
        int iA2;
        int iA3;
        int iA4;
        int i4 = 8;
        int iA5 = zgVar.a(8);
        zgVar.d(8);
        int i5 = 2;
        int i6 = i2 - 2;
        int[] iArrA = a();
        int[] iArrB = b();
        int[] iArrC = c();
        while (i6 > 0) {
            int iA6 = zgVar.a(i4);
            int iA7 = zgVar.a(i4);
            if ((iA7 & 128) != 0) {
                iArr = iArrA;
            } else {
                iArr = (iA7 & 64) != 0 ? iArrB : iArrC;
            }
            if ((iA7 & 1) != 0) {
                iA3 = zgVar.a(i4);
                iA4 = zgVar.a(i4);
                iA = zgVar.a(i4);
                iA2 = zgVar.a(i4);
                i3 = i6 - 6;
            } else {
                int iA8 = zgVar.a(6) << i5;
                int iA9 = zgVar.a(4) << 4;
                iA = zgVar.a(4) << 4;
                i3 = i6 - 4;
                iA2 = zgVar.a(i5) << 6;
                iA3 = iA8;
                iA4 = iA9;
            }
            if (iA3 == 0) {
                iA4 = 0;
                iA = 0;
                iA2 = 255;
            }
            double d2 = iA3;
            double d3 = iA4 - 128;
            double d4 = iA - 128;
            iArr[iA6] = a((byte) (255 - (iA2 & 255)), xp.a((int) (d2 + (1.402d * d3)), 0, 255), xp.a((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), xp.a((int) (d2 + (d4 * 1.772d)), 0, 255));
            i6 = i3;
            iA5 = iA5;
            i4 = 8;
            i5 = 2;
        }
        return new a(iA5, iArrA, iArrB, iArrC);
    }

    private static b a(zg zgVar) {
        int i2;
        int iA;
        int i3;
        int i4;
        zgVar.d(4);
        boolean zF = zgVar.f();
        zgVar.d(3);
        int iA2 = zgVar.a(16);
        int iA3 = zgVar.a(16);
        if (zF) {
            int iA4 = zgVar.a(16);
            int iA5 = zgVar.a(16);
            int iA6 = zgVar.a(16);
            iA = zgVar.a(16);
            i2 = iA5;
            i4 = iA6;
            i3 = iA4;
        } else {
            i2 = iA2;
            iA = iA3;
            i3 = 0;
            i4 = 0;
        }
        return new b(iA2, iA3, i3, i2, i4, iA);
    }

    private static void a(zg zgVar, h hVar) {
        f fVar;
        int iA = zgVar.a(8);
        int iA2 = zgVar.a(16);
        int iA3 = zgVar.a(16);
        int iD = zgVar.d() + iA3;
        if (iA3 * 8 > zgVar.b()) {
            oc.d("DvbParser", "Data field length exceeds limit");
            zgVar.d(zgVar.b());
            return;
        }
        switch (iA) {
            case 16:
                if (iA2 == hVar.a) {
                    d dVar = hVar.i;
                    d dVarB = b(zgVar, iA3);
                    if (dVarB.c != 0) {
                        hVar.i = dVarB;
                        hVar.c.clear();
                        hVar.d.clear();
                        hVar.e.clear();
                    } else if (dVar != null && dVar.b != dVarB.b) {
                        hVar.i = dVarB;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.i;
                if (iA2 == hVar.a && dVar2 != null) {
                    f fVarC = c(zgVar, iA3);
                    if (dVar2.c == 0 && (fVar = (f) hVar.c.get(fVarC.a)) != null) {
                        fVarC.a(fVar);
                    }
                    hVar.c.put(fVarC.a, fVarC);
                }
                break;
            case 18:
                if (iA2 == hVar.a) {
                    a aVarA = a(zgVar, iA3);
                    hVar.d.put(aVarA.a, aVarA);
                } else if (iA2 == hVar.b) {
                    a aVarA2 = a(zgVar, iA3);
                    hVar.f.put(aVarA2.a, aVarA2);
                }
                break;
            case 19:
                if (iA2 == hVar.a) {
                    c cVarB = b(zgVar);
                    hVar.e.put(cVarB.a, cVarB);
                } else if (iA2 == hVar.b) {
                    c cVarB2 = b(zgVar);
                    hVar.g.put(cVarB2.a, cVarB2);
                }
                break;
            case 20:
                if (iA2 == hVar.a) {
                    hVar.h = a(zgVar);
                }
                break;
        }
        zgVar.e(iD - zgVar.d());
    }

    public List a(byte[] bArr, int i2) {
        int i3;
        zg zgVar = new zg(bArr, i2);
        while (zgVar.b() >= 48 && zgVar.a(8) == 15) {
            a(zgVar, this.f);
        }
        h hVar = this.f;
        d dVar = hVar.i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        b bVar = hVar.h;
        if (bVar == null) {
            bVar = this.d;
        }
        Bitmap bitmap = this.g;
        if (bitmap == null || bVar.a + 1 != bitmap.getWidth() || bVar.b + 1 != this.g.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bVar.a + 1, bVar.b + 1, Bitmap.Config.ARGB_8888);
            this.g = bitmapCreateBitmap;
            this.c.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray = dVar.d;
        for (int i4 = 0; i4 < sparseArray.size(); i4++) {
            this.c.save();
            e eVar = (e) sparseArray.valueAt(i4);
            f fVar = (f) this.f.c.get(sparseArray.keyAt(i4));
            int i5 = eVar.a + bVar.c;
            int i6 = eVar.b + bVar.e;
            this.c.clipRect(i5, i6, Math.min(fVar.c + i5, bVar.d), Math.min(fVar.d + i6, bVar.f));
            a aVar = (a) this.f.d.get(fVar.g);
            if (aVar == null && (aVar = (a) this.f.f.get(fVar.g)) == null) {
                aVar = this.e;
            }
            int i7 = 0;
            for (SparseArray sparseArray2 = fVar.k; i7 < sparseArray2.size(); sparseArray2 = sparseArray2) {
                int iKeyAt = sparseArray2.keyAt(i7);
                g gVar = (g) sparseArray2.valueAt(i7);
                c cVar = (c) this.f.e.get(iKeyAt);
                c cVar2 = cVar == null ? (c) this.f.g.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    a(cVar2, aVar, fVar.f, gVar.c + i5, i6 + gVar.d, cVar2.b ? null : this.a, this.c);
                }
                i7++;
            }
            if (fVar.b) {
                int i8 = fVar.f;
                if (i8 == 3) {
                    i3 = aVar.d[fVar.h];
                } else if (i8 == 2) {
                    i3 = aVar.c[fVar.i];
                } else {
                    i3 = aVar.b[fVar.j];
                }
                this.b.setColor(i3);
                this.c.drawRect(i5, i6, fVar.c + i5, fVar.d + i6, this.b);
            }
            arrayList.add(new a5.b().a(Bitmap.createBitmap(this.g, i5, i6, fVar.c, fVar.d)).b(i5 / bVar.a).b(0).a(i6 / bVar.b, 0).a(0).d(fVar.c / bVar.a).a(fVar.d / bVar.b).a());
            this.c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static void a(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        zg zgVar = new zg(bArr);
        int iA = i3;
        int i5 = i4;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (zgVar.b() != 0) {
            int iA2 = zgVar.a(8);
            if (iA2 != 240) {
                switch (iA2) {
                    case 16:
                        if (i2 == 3) {
                            if (bArrA == null) {
                                bArr3 = i;
                                bArr2 = bArr3;
                            } else {
                                bArr2 = bArrA;
                            }
                        } else if (i2 != 2) {
                            bArr2 = null;
                        } else if (bArrA3 == null) {
                            bArr3 = h;
                            bArr2 = bArr3;
                        } else {
                            bArr2 = bArrA3;
                        }
                        iA = a(zgVar, iArr, bArr2, iA, i5, paint, canvas);
                        zgVar.c();
                        break;
                    case 17:
                        if (i2 == 3) {
                            bArr4 = bArrA2 == null ? j : bArrA2;
                        } else {
                            bArr4 = null;
                        }
                        iA = b(zgVar, iArr, bArr4, iA, i5, paint, canvas);
                        zgVar.c();
                        break;
                    case 18:
                        iA = c(zgVar, iArr, null, iA, i5, paint, canvas);
                        break;
                    default:
                        switch (iA2) {
                            case 32:
                                bArrA3 = a(4, 4, zgVar);
                                break;
                            case 33:
                                bArrA = a(4, 8, zgVar);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, zgVar);
                                break;
                        }
                        break;
                }
            } else {
                i5 += 2;
                iA = i3;
            }
        }
    }
}
