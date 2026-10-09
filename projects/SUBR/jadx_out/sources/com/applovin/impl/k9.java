package com.applovin.impl;

import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class k9 implements y4 {
    public static final boolean d;
    public final UUID a;
    public final byte[] b;
    public final boolean c;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z;
        if ("Amazon".equals(xp.c)) {
            String str = xp.d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        d = z;
    }

    public k9(UUID uuid, byte[] bArr, boolean z) {
        this.a = uuid;
        this.b = bArr;
        this.c = z;
    }
}
