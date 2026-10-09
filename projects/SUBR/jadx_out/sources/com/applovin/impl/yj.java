package com.applovin.impl;

import com.applovin.mediation.MaxError;

/* JADX INFO: loaded from: classes.dex */
public class yj {
    private final zj a;
    private final String b;
    private final String c;
    private final String d;
    private final MaxError e;
    private final long f;
    private final long g;
    private final boolean h;

    public interface a {
        void a(yj yjVar);
    }

    public long b() {
        return this.g;
    }

    public boolean g() {
        return this.h;
    }

    public static yj a(zj zjVar, com.applovin.impl.mediation.g gVar, MaxError maxError, long j, long j2) {
        if (zjVar != null) {
            return new yj(zjVar, gVar, null, maxError, j, j2);
        }
        throw new IllegalArgumentException("No spec specified");
    }

    private yj(zj zjVar, com.applovin.impl.mediation.g gVar, String str, MaxError maxError, long j, long j2) {
        this(zjVar, str, maxError, j, j2, gVar != null ? gVar.i() : null, gVar != null ? gVar.b() : null, false);
    }

    public zj f() {
        return this.a;
    }

    public String d() {
        return this.b;
    }

    public static yj a(zj zjVar, MaxError maxError) {
        return a(zjVar, (com.applovin.impl.mediation.g) null, maxError, -1L, -1L);
    }

    public String e() {
        return this.d;
    }

    public MaxError c() {
        return this.e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SignalCollectionResult{mSignalProviderSpec=");
        sb.append(this.a);
        sb.append(", mSdkVersion='");
        sb.append(this.b);
        sb.append("', mAdapterVersion='");
        sb.append(this.c);
        sb.append("', mSignalDataLength='");
        String str = this.d;
        sb.append(str != null ? str.length() : 0);
        sb.append("', mErrorMessage=");
        MaxError maxError = this.e;
        sb.append(maxError != null ? maxError.getMessage() : "");
        sb.append('}');
        return sb.toString();
    }

    public static yj a(zj zjVar, com.applovin.impl.mediation.g gVar, String str, long j, long j2) {
        if (zjVar == null) {
            throw new IllegalArgumentException("No spec specified");
        }
        if (gVar != null) {
            return new yj(zjVar, gVar, str, null, j, j2);
        }
        throw new IllegalArgumentException("No adapterWrapper specified");
    }

    private yj(zj zjVar, String str, MaxError maxError, long j, long j2, String str2, String str3, boolean z) {
        this.a = zjVar;
        this.d = str;
        this.e = maxError;
        this.f = j;
        this.g = j2;
        this.b = str2;
        this.c = str3;
        this.h = z;
    }

    public String a() {
        return this.c;
    }

    public static yj a(yj yjVar) {
        return new yj(yjVar.f(), yjVar.e(), yjVar.c(), yjVar.f, yjVar.g, yjVar.d(), yjVar.a(), true);
    }
}
