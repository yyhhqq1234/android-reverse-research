package com.applovin.impl;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ch extends IOException {
    public final boolean a;
    public final int b;

    public static ch a(String str, Throwable th) {
        return new ch(str, th, true, 1);
    }

    public static ch b(String str, Throwable th) {
        return new ch(str, th, true, 0);
    }

    public static ch a(String str) {
        return new ch(str, null, false, 1);
    }

    protected ch(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.a = z;
        this.b = i;
    }
}
