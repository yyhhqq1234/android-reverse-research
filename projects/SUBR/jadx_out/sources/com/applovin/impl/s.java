package com.applovin.impl;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class s {
    private final String a;
    private final String b;
    private final Map c;
    private final boolean d;

    public String toString() {
        return "AdEventPostback{url='" + this.a + "', backupUrl='" + this.b + "', headers='" + this.c + "', shouldFireInWebView='" + this.d + "'}";
    }

    public s(String str, String str2) {
        this(str, str2, null, false);
    }

    public String c() {
        return this.a;
    }

    public String a() {
        return this.b;
    }

    public s(String str, String str2, Map map, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = map;
        this.d = z;
    }

    public Map b() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }
}
