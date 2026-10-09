package com.applovin.impl;

import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class f6 implements lc {
    private final int a;

    @Override // com.applovin.impl.lc
    public /* synthetic */ void a(long j) {
        lc.CC.$default$a(this, j);
    }

    public f6() {
        this(-1);
    }

    @Override // com.applovin.impl.lc
    public int a(int i) {
        int i2 = this.a;
        if (i2 == -1) {
            return i == 7 ? 6 : 3;
        }
        return i2;
    }

    public f6(int i) {
        this.a = i;
    }

    @Override // com.applovin.impl.lc
    public long a(lc.a aVar) {
        IOException iOException = aVar.c;
        if ((iOException instanceof ch) || (iOException instanceof FileNotFoundException) || (iOException instanceof pa.a) || (iOException instanceof nc.h) || i5.a(iOException)) {
            return -9223372036854775807L;
        }
        return Math.min((aVar.d - 1) * 1000, 5000);
    }
}
