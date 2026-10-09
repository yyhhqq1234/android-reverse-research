package com.applovin.impl;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ic implements Comparable {
    private final String a;
    private final String b;
    private final boolean c;
    private final je d;

    ic(String str, String str2, boolean z, je jeVar) {
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = jeVar;
    }

    public String c() {
        return this.a;
    }

    public List b() {
        List listL = this.d.l();
        return (listL == null || listL.isEmpty()) ? Collections.singletonList(this.a) : listL;
    }

    public je d() {
        return this.d;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(ic icVar) {
        return this.b.compareToIgnoreCase(icVar.b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ic icVar = (ic) obj;
        String str = this.a;
        if (str == null ? icVar.a != null : !str.equals(icVar.a)) {
            return false;
        }
        String str2 = this.b;
        if (str2 == null ? icVar.b == null : str2.equals(icVar.b)) {
            return this.c == icVar.c;
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.c ? 1 : 0);
    }

    public String a() {
        return this.b;
    }
}
