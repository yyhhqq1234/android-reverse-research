package com.applovin.impl;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ve {
    private static final Set b = new HashSet();
    public static final ve c = a("ar");
    public static final ve d = a("ttdasi_ms");
    private String a;

    public interface a {
        Object a(Object obj);
    }

    private ve(String str) {
        this.a = str;
    }

    protected boolean a(Object obj) {
        return obj instanceof ve;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ve)) {
            return false;
        }
        ve veVar = (ve) obj;
        if (!veVar.a(this)) {
            return false;
        }
        String strA = a();
        String strA2 = veVar.a();
        return strA != null ? strA.equals(strA2) : strA2 == null;
    }

    public int hashCode() {
        String strA = a();
        return (strA == null ? 43 : strA.hashCode()) + 59;
    }

    public String a() {
        return this.a;
    }

    private static ve a(String str) {
        Set set = b;
        if (!set.contains(str)) {
            set.add(str);
            return new ve(str);
        }
        throw new IllegalArgumentException("Key has already been used: " + str);
    }

    public String toString() {
        return this.a;
    }
}
