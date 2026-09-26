package com.netease.mcount.a;

/* loaded from: classes.dex */
public final class b extends Exception {
    private int a;
    private String b;

    public b(int i, String str) {
        super("Error Code: " + i);
        this.a = i;
        this.b = str;
    }
}
