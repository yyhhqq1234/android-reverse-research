package com.applovin.impl;

import android.net.Uri;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k5 {
    public final Uri a;
    public final long b;
    public final int c;
    public final byte[] d;
    public final Map e;
    public final long f;
    public final long g;
    public final long h;
    public final String i;
    public final int j;
    public final Object k;

    public String toString() {
        return "DataSpec[" + b() + " " + this.a + ", " + this.g + ", " + this.h + ", " + this.i + ", " + this.j + com.ironsource.y8.i.e;
    }

    public static final class b {
        private Uri a;
        private long b;
        private int c;
        private byte[] d;
        private Map e;
        private long f;
        private long g;
        private String h;
        private int i;
        private Object j;

        public b() {
            this.c = 1;
            this.e = Collections.emptyMap();
            this.g = -1L;
        }

        public b b(int i) {
            this.c = i;
            return this;
        }

        private b(k5 k5Var) {
            this.a = k5Var.a;
            this.b = k5Var.b;
            this.c = k5Var.c;
            this.d = k5Var.d;
            this.e = k5Var.e;
            this.f = k5Var.g;
            this.g = k5Var.h;
            this.h = k5Var.i;
            this.i = k5Var.j;
            this.j = k5Var.k;
        }

        public b b(String str) {
            this.a = Uri.parse(str);
            return this;
        }

        public k5 a() {
            b1.a(this.a, "The uri must be set.");
            return new k5(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
        }

        public b a(int i) {
            this.i = i;
            return this;
        }

        public b a(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        public b a(Map map) {
            this.e = map;
            return this;
        }

        public b a(String str) {
            this.h = str;
            return this;
        }

        public b a(long j) {
            this.f = j;
            return this;
        }

        public b a(Uri uri) {
            this.a = uri;
            return this;
        }
    }

    public static String a(int i) {
        if (i == 1) {
            return "GET";
        }
        if (i == 2) {
            return "POST";
        }
        if (i == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public b a() {
        return new b();
    }

    private k5(Uri uri, long j, int i, byte[] bArr, Map map, long j2, long j3, String str, int i2, Object obj) {
        byte[] bArr2 = bArr;
        long j4 = j + j2;
        boolean z = true;
        b1.a(j4 >= 0);
        b1.a(j2 >= 0);
        if (j3 <= 0 && j3 != -1) {
            z = false;
        }
        b1.a(z);
        this.a = uri;
        this.b = j;
        this.c = i;
        this.d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.e = Collections.unmodifiableMap(new HashMap(map));
        this.g = j2;
        this.f = j4;
        this.h = j3;
        this.i = str;
        this.j = i2;
        this.k = obj;
    }

    public final String b() {
        return a(this.c);
    }

    public boolean b(int i) {
        return (this.j & i) == i;
    }
}
