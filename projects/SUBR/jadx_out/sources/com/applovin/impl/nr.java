package com.applovin.impl;

import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
abstract class nr {
    public static mr a(k8 k8Var) {
        byte[] bArr;
        b1.a(k8Var);
        ah ahVar = new ah(16);
        if (a.a(k8Var, ahVar).a != 1380533830) {
            return null;
        }
        k8Var.c(ahVar.c(), 0, 4);
        ahVar.f(0);
        int iJ = ahVar.j();
        if (iJ != 1463899717) {
            oc.b("WavHeaderReader", "Unsupported RIFF format: " + iJ);
            return null;
        }
        a aVarA = a.a(k8Var, ahVar);
        while (aVarA.a != 1718449184) {
            k8Var.c((int) aVarA.b);
            aVarA = a.a(k8Var, ahVar);
        }
        b1.b(aVarA.b >= 16);
        k8Var.c(ahVar.c(), 0, 16);
        ahVar.f(0);
        int iR = ahVar.r();
        int iR2 = ahVar.r();
        int iQ = ahVar.q();
        int iQ2 = ahVar.q();
        int iR3 = ahVar.r();
        int iR4 = ahVar.r();
        int i = ((int) aVarA.b) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            k8Var.c(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = xp.f;
        }
        return new mr(iR, iR2, iQ, iQ2, iR3, iR4, bArr);
    }

    public static Pair b(k8 k8Var) throws ch {
        b1.a(k8Var);
        k8Var.b();
        ah ahVar = new ah(8);
        a aVarA = a.a(k8Var, ahVar);
        while (true) {
            int i = aVarA.a;
            if (i != 1684108385) {
                if (i != 1380533830 && i != 1718449184) {
                    oc.d("WavHeaderReader", "Ignoring unknown WAV chunk: " + aVarA.a);
                }
                long j = aVarA.b + 8;
                if (aVarA.a == 1380533830) {
                    j = 12;
                }
                if (j <= 2147483647L) {
                    k8Var.a((int) j);
                    aVarA = a.a(k8Var, ahVar);
                } else {
                    throw ch.a("Chunk is too large (~2GB+) to skip; id: " + aVarA.a);
                }
            } else {
                k8Var.a(8);
                long jF = k8Var.f();
                long j2 = aVarA.b + jF;
                long jA = k8Var.a();
                if (jA != -1 && j2 > jA) {
                    oc.d("WavHeaderReader", "Data exceeds input length: " + j2 + ", " + jA);
                    j2 = jA;
                }
                return Pair.create(Long.valueOf(jF), Long.valueOf(j2));
            }
        }
    }

    private static final class a {
        public final int a;
        public final long b;

        private a(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public static a a(k8 k8Var, ah ahVar) {
            k8Var.c(ahVar.c(), 0, 8);
            ahVar.f(0);
            return new a(ahVar.j(), ahVar.p());
        }
    }
}
