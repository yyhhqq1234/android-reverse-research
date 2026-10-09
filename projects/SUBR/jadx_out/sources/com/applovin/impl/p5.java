package com.applovin.impl;

import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class p5 {
    public final String a;
    public final e9 b;
    public final e9 c;
    public final int d;
    public final int e;

    public p5(String str, e9 e9Var, e9 e9Var2, int i, int i2) {
        b1.a(i == 0 || i2 == 0);
        this.a = b1.a(str);
        this.b = (e9) b1.a(e9Var);
        this.c = (e9) b1.a(e9Var2);
        this.d = i;
        this.e = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p5.class != obj.getClass()) {
            return false;
        }
        p5 p5Var = (p5) obj;
        return this.d == p5Var.d && this.e == p5Var.e && this.a.equals(p5Var.a) && this.b.equals(p5Var.b) && this.c.equals(p5Var.c);
    }

    public int hashCode() {
        return ((((((((this.d + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.e) * 31) + this.a.hashCode()) * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }
}
