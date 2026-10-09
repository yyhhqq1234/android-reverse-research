package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Charsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class w8 {

    public static final class a {
        public z8 a;

        public a(z8 z8Var) {
            this.a = z8Var;
        }
    }

    public static boolean a(k8 k8Var) {
        ah ahVar = new ah(4);
        k8Var.c(ahVar.c(), 0, 4);
        return ahVar.y() == 1716281667;
    }

    public static void d(k8 k8Var) throws ch {
        ah ahVar = new ah(4);
        k8Var.d(ahVar.c(), 0, 4);
        if (ahVar.y() != 1716281667) {
            throw ch.a("Failed to read FLAC stream marker.", null);
        }
    }

    public static af a(k8 k8Var, boolean z) {
        af afVarA = new ya().a(k8Var, z ? null : wa.b);
        if (afVarA == null || afVarA.c() == 0) {
            return null;
        }
        return afVarA;
    }

    public static int b(k8 k8Var) throws ch {
        k8Var.b();
        ah ahVar = new ah(2);
        k8Var.c(ahVar.c(), 0, 2);
        int iC = ahVar.C();
        if ((iC >> 2) == 16382) {
            k8Var.b();
            return iC;
        }
        k8Var.b();
        throw ch.a("First frame does not start with sync code.", null);
    }

    private static z8 c(k8 k8Var) {
        byte[] bArr = new byte[38];
        k8Var.d(bArr, 0, 38);
        return new z8(bArr, 4);
    }

    private static List c(k8 k8Var, int i) {
        ah ahVar = new ah(i);
        k8Var.d(ahVar.c(), 0, i);
        ahVar.g(4);
        return Arrays.asList(fr.a(ahVar, false, false).b);
    }

    public static boolean a(k8 k8Var, a aVar) {
        k8Var.b();
        zg zgVar = new zg(new byte[4]);
        k8Var.c(zgVar.a, 0, 4);
        boolean zF = zgVar.f();
        int iA = zgVar.a(7);
        int iA2 = zgVar.a(24) + 4;
        if (iA == 0) {
            aVar.a = c(k8Var);
        } else {
            z8 z8Var = aVar.a;
            if (z8Var == null) {
                throw new IllegalArgumentException();
            }
            if (iA == 3) {
                aVar.a = z8Var.a(b(k8Var, iA2));
            } else if (iA == 4) {
                aVar.a = z8Var.b(c(k8Var, iA2));
            } else if (iA == 6) {
                aVar.a = z8Var.a(Collections.singletonList(a(k8Var, iA2)));
            } else {
                k8Var.a(iA2);
            }
        }
        return zF;
    }

    public static af b(k8 k8Var, boolean z) {
        k8Var.b();
        long jD = k8Var.d();
        af afVarA = a(k8Var, z);
        k8Var.a((int) (k8Var.d() - jD));
        return afVarA;
    }

    public static z8.a a(ah ahVar) {
        ahVar.g(1);
        int iZ = ahVar.z();
        long jD = ((long) ahVar.d()) + ((long) iZ);
        int i = iZ / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            long jS = ahVar.s();
            if (jS == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jS;
            jArrCopyOf2[i2] = ahVar.s();
            ahVar.g(2);
        }
        ahVar.g((int) (jD - ((long) ahVar.d())));
        return new z8.a(jArrCopyOf, jArrCopyOf2);
    }

    private static lh a(k8 k8Var, int i) {
        ah ahVar = new ah(i);
        k8Var.d(ahVar.c(), 0, i);
        ahVar.g(4);
        int iJ = ahVar.j();
        String strA = ahVar.a(ahVar.j(), Charsets.US_ASCII);
        String strC = ahVar.c(ahVar.j());
        int iJ2 = ahVar.j();
        int iJ3 = ahVar.j();
        int iJ4 = ahVar.j();
        int iJ5 = ahVar.j();
        int iJ6 = ahVar.j();
        byte[] bArr = new byte[iJ6];
        ahVar.a(bArr, 0, iJ6);
        return new lh(iJ, strA, strC, iJ2, iJ3, iJ4, iJ5, bArr);
    }

    private static z8.a b(k8 k8Var, int i) {
        ah ahVar = new ah(i);
        k8Var.d(ahVar.c(), 0, i);
        return a(ahVar);
    }
}
