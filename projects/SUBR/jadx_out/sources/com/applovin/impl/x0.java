package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public class x0 {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final int f;
    private final boolean g;

    public String toString() {
        return "AppAdsTxtEntry(domainName=" + b() + ", publisherId=" + c() + ", relationship=" + e() + ", certificateAuthorityId=" + a() + ", rawValue=" + d() + ", rowNumber=" + f() + ", valid=" + h() + ")";
    }

    protected boolean a(Object obj) {
        return obj instanceof x0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof x0)) {
            return false;
        }
        x0 x0Var = (x0) obj;
        if (!x0Var.a(this)) {
            return false;
        }
        String strB = b();
        String strB2 = x0Var.b();
        if (strB != null ? !strB.equals(strB2) : strB2 != null) {
            return false;
        }
        String strC = c();
        String strC2 = x0Var.c();
        if (strC != null ? !strC.equals(strC2) : strC2 != null) {
            return false;
        }
        String strE = e();
        String strE2 = x0Var.e();
        if (strE != null ? !strE.equals(strE2) : strE2 != null) {
            return false;
        }
        String strA = a();
        String strA2 = x0Var.a();
        return strA != null ? strA.equals(strA2) : strA2 == null;
    }

    public int hashCode() {
        String strB = b();
        int iHashCode = strB == null ? 43 : strB.hashCode();
        String strC = c();
        int iHashCode2 = ((iHashCode + 59) * 59) + (strC == null ? 43 : strC.hashCode());
        String strE = e();
        int iHashCode3 = (iHashCode2 * 59) + (strE == null ? 43 : strE.hashCode());
        String strA = a();
        return (iHashCode3 * 59) + (strA != null ? strA.hashCode() : 43);
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public String d() {
        return this.e;
    }

    public String a() {
        return this.d;
    }

    public int f() {
        return this.f;
    }

    public boolean h() {
        return this.g;
    }

    public x0(String str) {
        this(str, -1);
    }

    public boolean g() {
        return this.a.equals("applovin.com");
    }

    public x0(String str, int i) {
        this.e = str;
        this.f = i;
        String[] strArrSplit = str.split(",");
        boolean z = strArrSplit.length == 3 || strArrSplit.length == 4;
        this.g = z;
        if (z) {
            this.a = a(strArrSplit[0]);
            this.b = a(strArrSplit[1]);
            this.c = a(strArrSplit[2]);
            this.d = strArrSplit.length == 4 ? a(strArrSplit[3]) : "";
            return;
        }
        this.a = "";
        this.b = "";
        this.c = "";
        this.d = "";
    }

    private String a(String str) {
        return str.replace((char) 173, ' ').trim();
    }
}
