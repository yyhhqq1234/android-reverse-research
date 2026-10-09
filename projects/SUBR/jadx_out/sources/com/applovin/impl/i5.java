package com.applovin.impl;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class i5 extends IOException {
    public final int a;

    public static boolean a(IOException iOException) {
        for (Throwable cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof i5) && ((i5) cause).a == 2008) {
                return true;
            }
        }
        return false;
    }

    public i5(int i) {
        this.a = i;
    }

    public i5(String str, int i) {
        super(str);
        this.a = i;
    }

    public i5(String str, Throwable th, int i) {
        super(str, th);
        this.a = i;
    }

    public i5(Throwable th, int i) {
        super(th);
        this.a = i;
    }
}
