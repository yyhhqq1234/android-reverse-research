package com.applovin.impl;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class eh {
    private final String a;
    private Map b;

    public String toString() {
        return "PendingReward{result='" + this.a + "'params='" + this.b + "'}";
    }

    public static eh a(String str) {
        return a(str, null);
    }

    private eh(String str, Map map) {
        this.a = str;
        this.b = map;
    }

    public String b() {
        return this.a;
    }

    public Map a() {
        return this.b;
    }

    public static eh a(String str, Map map) {
        return new eh(str, map);
    }
}
