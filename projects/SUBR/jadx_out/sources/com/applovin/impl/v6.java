package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public class v6 {
    private final long a;
    private final Object b;
    private String c;
    private String d;

    public v6(Object obj, long j) {
        this.b = obj;
        this.a = j;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) obj;
            this.c = bVar.getAdZone().d() != null ? bVar.getAdZone().d().getLabel() : null;
            this.d = "AppLovin";
        } else if (obj instanceof fe) {
            fe feVar = (fe) obj;
            this.c = feVar.getFormat().getLabel();
            this.d = feVar.getNetworkName();
        }
    }

    public String c() {
        String str = this.c;
        return str != null ? str : "Unknown";
    }

    public String d() {
        String str = this.d;
        return str != null ? str : "Unknown";
    }

    public Object a() {
        return this.b;
    }

    public long b() {
        return this.a;
    }
}
