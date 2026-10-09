package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class f8 extends RuntimeException {
    public final int a;

    private static String a(int i) {
        if (i == 1) {
            return "Player release timed out.";
        }
        if (i != 2) {
            return i != 3 ? "Undefined timeout." : "Detaching surface timed out.";
        }
        return "Setting foreground mode timed out.";
    }

    public f8(int i) {
        super(a(i));
        this.a = i;
    }
}
