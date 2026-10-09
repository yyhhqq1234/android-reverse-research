package com.applovin.impl;

import android.os.Looper;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class rh {
    private final b a;
    private final a b;
    private final l3 c;
    private final fo d;
    private int e;
    private Object f;
    private Looper g;
    private int h;
    private long i = -9223372036854775807L;
    private boolean j = true;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;

    public interface a {
        void a(rh rhVar);
    }

    public interface b {
        void a(int i, Object obj);
    }

    public rh(a aVar, b bVar, fo foVar, int i, l3 l3Var, Looper looper) {
        this.b = aVar;
        this.a = bVar;
        this.d = foVar;
        this.g = looper;
        this.c = l3Var;
        this.h = i;
    }

    public fo f() {
        return this.d;
    }

    public b e() {
        return this.a;
    }

    public int g() {
        return this.e;
    }

    public Object c() {
        return this.f;
    }

    public Looper b() {
        return this.g;
    }

    public long d() {
        return this.i;
    }

    public int h() {
        return this.h;
    }

    public rh j() {
        b1.b(!this.k);
        if (this.i == -9223372036854775807L) {
            b1.a(this.j);
        }
        this.k = true;
        this.b.a(this);
        return this;
    }

    public synchronized boolean i() {
        return this.n;
    }

    public synchronized boolean a(long j) {
        boolean z;
        b1.b(this.k);
        b1.b(this.g.getThread() != Thread.currentThread());
        long jC = this.c.c() + j;
        while (true) {
            z = this.m;
            if (z || j <= 0) {
                break;
            }
            this.c.b();
            wait(j);
            j = jC - this.c.c();
        }
        if (!z) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.l;
    }

    public boolean a() {
        return this.j;
    }

    public synchronized void a(boolean z) {
        this.l = z | this.l;
        this.m = true;
        notifyAll();
    }

    public rh a(Object obj) {
        b1.b(!this.k);
        this.f = obj;
        return this;
    }

    public rh a(int i) {
        b1.b(!this.k);
        this.e = i;
        return this;
    }
}
