package com.applovin.impl;

/* JADX INFO: loaded from: classes.dex */
public final class u2 {
    private long a;
    private long b;
    private boolean c;
    private long d;
    private long e;
    private int f;
    private Throwable g;

    public String toString() {
        return "CacheStatsTracker{totalDownloadedBytes=" + this.a + ", totalCachedBytes=" + this.b + ", isHTMLCachingCancelled=" + this.c + ", htmlResourceCacheSuccessCount=" + this.d + ", htmlResourceCacheFailureCount=" + this.e + '}';
    }

    public void d() {
        this.d++;
    }

    public void c() {
        this.e++;
    }

    public Throwable a() {
        return this.g;
    }

    public int b() {
        return this.f;
    }

    public void a(Throwable th) {
        this.g = th;
    }

    public void a(int i) {
        this.f = i;
    }

    public void a(long j) {
        this.b += j;
    }
}
