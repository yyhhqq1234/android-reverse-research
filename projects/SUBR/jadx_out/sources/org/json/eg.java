package org.json;

/* JADX INFO: loaded from: classes3.dex */
public class eg {
    public static final int c = 1001;
    private String a;
    private int b;

    public eg(int i, String str) {
        this.b = i;
        this.a = str == null ? "" : str;
    }

    public int a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public String toString() {
        return "error - code:" + this.b + ", message:" + this.a;
    }
}
