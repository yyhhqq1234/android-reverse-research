package com.applovin.impl;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class sg extends gl {
    private static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    private boolean n;

    sg() {
    }

    public static boolean b(ah ahVar) {
        int iA = ahVar.a();
        byte[] bArr = o;
        if (iA < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        ahVar.a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private long a(byte[] bArr) {
        int i;
        int i2;
        byte b = bArr[0];
        int i3 = b & 255;
        int i4 = b & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1 && i4 != 2) {
                i = bArr[1] & 63;
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        int i6 = i5 & 3;
        if (i5 >= 16) {
            i2 = com.ironsource.mediationsdk.demandOnly.e.b.INSTANCE_NOT_FOUND_IN_AVAILABILITY_CHECK << i6;
        } else if (i5 >= 12) {
            i2 = 10000 << (i5 & 1);
        } else {
            i2 = i6 == 3 ? 60000 : 10000 << i6;
        }
        return ((long) i) * ((long) i2);
    }

    @Override // com.applovin.impl.gl
    protected long a(ah ahVar) {
        return b(a(ahVar.c()));
    }

    @Override // com.applovin.impl.gl
    protected boolean a(ah ahVar, long j, gl.b bVar) {
        if (!this.n) {
            byte[] bArrCopyOf = Arrays.copyOf(ahVar.c(), ahVar.e());
            bVar.a = new e9.b().f("audio/opus").c(tg.b(bArrCopyOf)).n(48000).a(tg.a(bArrCopyOf)).a();
            this.n = true;
            return true;
        }
        b1.a(bVar.a);
        boolean z = ahVar.j() == 1332770163;
        ahVar.f(0);
        return z;
    }

    @Override // com.applovin.impl.gl
    protected void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = false;
        }
    }
}
