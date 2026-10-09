package com.applovin.impl;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class er extends gl {
    private a n;
    private int o;
    private boolean p;
    private fr.d q;
    private fr.b r;

    static int a(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    er() {
    }

    @Override // com.applovin.impl.gl
    protected void c(long j) {
        super.c(j);
        this.p = j != 0;
        fr.d dVar = this.q;
        this.o = dVar != null ? dVar.g : 0;
    }

    public static boolean c(ah ahVar) {
        try {
            return fr.a(1, ahVar, true);
        } catch (ch unused) {
            return false;
        }
    }

    a b(ah ahVar) throws ch {
        fr.d dVar = this.q;
        if (dVar == null) {
            this.q = fr.b(ahVar);
            return null;
        }
        fr.b bVar = this.r;
        if (bVar == null) {
            this.r = fr.a(ahVar);
            return null;
        }
        byte[] bArr = new byte[ahVar.e()];
        System.arraycopy(ahVar.c(), 0, bArr, 0, ahVar.e());
        fr.c[] cVarArrA = fr.a(ahVar, dVar.b);
        return new a(dVar, bVar, bArr, cVarArrA, fr.a(cVarArrA.length - 1));
    }

    static void a(ah ahVar, long j) {
        if (ahVar.b() < ahVar.e() + 4) {
            ahVar.a(Arrays.copyOf(ahVar.c(), ahVar.e() + 4));
        } else {
            ahVar.e(ahVar.e() + 4);
        }
        byte[] bArrC = ahVar.c();
        bArrC[ahVar.e() - 4] = (byte) (j & 255);
        bArrC[ahVar.e() - 3] = (byte) ((j >>> 8) & 255);
        bArrC[ahVar.e() - 2] = (byte) ((j >>> 16) & 255);
        bArrC[ahVar.e() - 1] = (byte) ((j >>> 24) & 255);
    }

    static final class a {
        public final fr.d a;
        public final fr.b b;
        public final byte[] c;
        public final fr.c[] d;
        public final int e;

        public a(fr.d dVar, fr.b bVar, byte[] bArr, fr.c[] cVarArr, int i) {
            this.a = dVar;
            this.b = bVar;
            this.c = bArr;
            this.d = cVarArr;
            this.e = i;
        }
    }

    private static int a(byte b, a aVar) {
        if (!aVar.d[a(b, aVar.e, 1)].a) {
            return aVar.a.g;
        }
        return aVar.a.h;
    }

    @Override // com.applovin.impl.gl
    protected long a(ah ahVar) {
        if ((ahVar.c()[0] & 1) == 1) {
            return -1L;
        }
        int iA = a(ahVar.c()[0], (a) b1.b(this.n));
        long j = this.p ? (this.o + iA) / 4 : 0;
        a(ahVar, j);
        this.p = true;
        this.o = iA;
        return j;
    }

    @Override // com.applovin.impl.gl
    protected boolean a(ah ahVar, long j, gl.b bVar) throws ch {
        if (this.n != null) {
            b1.a(bVar.a);
            return false;
        }
        a aVarB = b(ahVar);
        this.n = aVarB;
        if (aVarB == null) {
            return true;
        }
        fr.d dVar = aVarB.a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.j);
        arrayList.add(aVarB.c);
        bVar.a = new e9.b().f("audio/vorbis").b(dVar.e).k(dVar.d).c(dVar.b).n(dVar.c).a(arrayList).a();
        return true;
    }

    @Override // com.applovin.impl.gl
    protected void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }
}
