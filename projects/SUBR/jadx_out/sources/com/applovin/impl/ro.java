package com.applovin.impl;

import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes.dex */
final class ro {
    public final lo a;
    public final int b;
    public final long[] c;
    public final int[] d;
    public final int e;
    public final long[] f;
    public final int[] g;
    public final long h;

    public ro(lo loVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        b1.a(iArr.length == jArr2.length);
        b1.a(jArr.length == jArr2.length);
        b1.a(iArr2.length == jArr2.length);
        this.a = loVar;
        this.c = jArr;
        this.d = iArr;
        this.e = i;
        this.f = jArr2;
        this.g = iArr2;
        this.h = j;
        this.b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | DriveFile.MODE_WRITE_ONLY;
        }
    }

    public int a(long j) {
        for (int iB = xp.b(this.f, j, true, false); iB >= 0; iB--) {
            if ((this.g[iB] & 1) != 0) {
                return iB;
            }
        }
        return -1;
    }

    public int b(long j) {
        for (int iA = xp.a(this.f, j, true, false); iA < this.f.length; iA++) {
            if ((this.g[iA] & 1) != 0) {
                return iA;
            }
        }
        return -1;
    }
}
