package com.applovin.impl;

import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
abstract class di {
    private static int a(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    private static boolean a(ah ahVar) {
        ahVar.g(4);
        int iJ = ahVar.j();
        ahVar.f(0);
        return iJ == 1886547818;
    }

    public static ci a(byte[] bArr, int i) {
        ArrayList arrayListD;
        ah ahVar = new ah(bArr);
        try {
            arrayListD = a(ahVar) ? d(ahVar) : c(ahVar);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayListD = null;
        }
        if (arrayListD == null) {
            return null;
        }
        int size = arrayListD.size();
        if (size == 1) {
            return new ci((ci.a) arrayListD.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new ci((ci.a) arrayListD.get(0), (ci.a) arrayListD.get(1), i);
    }

    private static ArrayList d(ah ahVar) {
        int iJ;
        ahVar.g(8);
        int iD = ahVar.d();
        int iE = ahVar.e();
        while (iD < iE && (iJ = ahVar.j() + iD) > iD && iJ <= iE) {
            int iJ2 = ahVar.j();
            if (iJ2 != 2037673328 && iJ2 != 1836279920) {
                ahVar.f(iJ);
                iD = iJ;
            } else {
                ahVar.e(iJ);
                return c(ahVar);
            }
        }
        return null;
    }

    private static ArrayList c(ah ahVar) {
        if (ahVar.w() != 0) {
            return null;
        }
        ahVar.g(7);
        int iJ = ahVar.j();
        if (iJ == 1684433976) {
            ah ahVar2 = new ah();
            Inflater inflater = new Inflater(true);
            try {
                if (!xp.a(ahVar, ahVar2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                ahVar = ahVar2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iJ != 1918990112) {
            return null;
        }
        return e(ahVar);
    }

    private static ArrayList e(ah ahVar) {
        ArrayList arrayList = new ArrayList();
        int iD = ahVar.d();
        int iE = ahVar.e();
        while (iD < iE) {
            int iJ = ahVar.j() + iD;
            if (iJ <= iD || iJ > iE) {
                return null;
            }
            if (ahVar.j() == 1835365224) {
                ci.a aVarB = b(ahVar);
                if (aVarB == null) {
                    return null;
                }
                arrayList.add(aVarB);
            }
            ahVar.f(iJ);
            iD = iJ;
        }
        return arrayList;
    }

    private static ci.a b(ah ahVar) {
        int iJ = ahVar.j();
        if (iJ > 10000) {
            return null;
        }
        float[] fArr = new float[iJ];
        for (int i = 0; i < iJ; i++) {
            fArr[i] = ahVar.i();
        }
        int iJ2 = ahVar.j();
        if (iJ2 > 32000) {
            return null;
        }
        double d = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iJ) * 2.0d) / dLog);
        zg zgVar = new zg(ahVar.c());
        int i2 = 8;
        zgVar.c(ahVar.d() * 8);
        float[] fArr2 = new float[iJ2 * 5];
        int i3 = 5;
        int[] iArr = new int[5];
        int i4 = 0;
        int i5 = 0;
        while (i4 < iJ2) {
            int i6 = 0;
            while (i6 < i3) {
                int iA = iArr[i6] + a(zgVar.a(iCeil));
                if (iA >= iJ || iA < 0) {
                    return null;
                }
                fArr2[i5] = fArr[iA];
                iArr[i6] = iA;
                i6++;
                i5++;
                i3 = 5;
            }
            i4++;
            i3 = 5;
        }
        zgVar.c((zgVar.e() + 7) & (-8));
        int i7 = 32;
        int iA2 = zgVar.a(32);
        ci.b[] bVarArr = new ci.b[iA2];
        int i8 = 0;
        while (i8 < iA2) {
            int iA3 = zgVar.a(i2);
            int iA4 = zgVar.a(i2);
            int iA5 = zgVar.a(i7);
            if (iA5 > 128000) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iJ2) * d) / dLog);
            float[] fArr3 = new float[iA5 * 3];
            float[] fArr4 = new float[iA5 * 2];
            int iA6 = 0;
            for (int i9 = 0; i9 < iA5; i9++) {
                iA6 += a(zgVar.a(iCeil2));
                if (iA6 < 0 || iA6 >= iJ2) {
                    return null;
                }
                int i10 = i9 * 3;
                int i11 = iA6 * 5;
                fArr3[i10] = fArr2[i11];
                fArr3[i10 + 1] = fArr2[i11 + 1];
                fArr3[i10 + 2] = fArr2[i11 + 2];
                int i12 = i9 * 2;
                fArr4[i12] = fArr2[i11 + 3];
                fArr4[i12 + 1] = fArr2[i11 + 4];
            }
            bVarArr[i8] = new ci.b(iA3, fArr3, fArr4, iA4);
            i8++;
            i7 = 32;
            d = 2.0d;
            i2 = 8;
        }
        return new ci.a(bVarArr);
    }
}
