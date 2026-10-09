package com.applovin.impl;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class w0 {
    private final Map a;
    private final List b;

    public String toString() {
        return "AppAdsTxt(domainEntries=" + a() + ", invalidEntries=" + b() + ")";
    }

    public w0(Map map, List list) {
        this.a = map;
        this.b = list;
    }

    protected boolean a(Object obj) {
        return obj instanceof w0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w0)) {
            return false;
        }
        w0 w0Var = (w0) obj;
        if (!w0Var.a(this)) {
            return false;
        }
        Map mapA = a();
        Map mapA2 = w0Var.a();
        if (mapA != null ? !mapA.equals(mapA2) : mapA2 != null) {
            return false;
        }
        List listB = b();
        List listB2 = w0Var.b();
        return listB != null ? listB.equals(listB2) : listB2 == null;
    }

    public int hashCode() {
        Map mapA = a();
        int iHashCode = mapA == null ? 43 : mapA.hashCode();
        List listB = b();
        return ((iHashCode + 59) * 59) + (listB != null ? listB.hashCode() : 43);
    }

    public List b() {
        return this.b;
    }

    public Map a() {
        return this.a;
    }
}
