package com.applovin.impl;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class go {
    private final com.applovin.impl.sdk.j a;
    private Timer b;
    private long c;
    private long d;
    private long e;
    private boolean f;
    private final Runnable g;
    private long h;
    private final Object i = new Object();

    private TimerTask b() {
        return new a();
    }

    private go(com.applovin.impl.sdk.j jVar, Runnable runnable) {
        this.a = jVar;
        this.g = runnable;
    }

    public long c() {
        if (this.b != null) {
            return this.d - (System.currentTimeMillis() - this.c);
        }
        return this.d - this.h;
    }

    public void d() {
        synchronized (this.i) {
            Timer timer = this.b;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.h = Math.max(1L, System.currentTimeMillis() - this.c);
                    this.b = null;
                } catch (Throwable th) {
                    try {
                        com.applovin.impl.sdk.j jVar = this.a;
                        if (jVar != null) {
                            jVar.I();
                            if (com.applovin.impl.sdk.n.a()) {
                                this.a.I();
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.a.I().a("Timer", "Encountered error while pausing timer", th);
                                }
                            }
                        }
                        this.b = null;
                    } catch (Throwable th2) {
                        this.b = null;
                        throw th2;
                    }
                }
            }
        }
    }

    public void e() {
        synchronized (this.i) {
            long j = this.h;
            if (j > 0) {
                try {
                    long j2 = this.d - j;
                    this.d = j2;
                    if (j2 < 0) {
                        this.d = 0L;
                    }
                    this.b = new Timer();
                    a(b(), this.d, this.f, this.e);
                    this.c = System.currentTimeMillis();
                    this.h = 0L;
                } catch (Throwable th) {
                    try {
                        com.applovin.impl.sdk.j jVar = this.a;
                        if (jVar != null) {
                            jVar.I();
                            if (com.applovin.impl.sdk.n.a()) {
                                this.a.I();
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.a.I().a("Timer", "Encountered error while resuming timer", th);
                                }
                            }
                        }
                        this.h = 0L;
                    } catch (Throwable th2) {
                        this.h = 0L;
                        throw th2;
                    }
                }
            }
        }
    }

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                go.this.g.run();
                synchronized (go.this.i) {
                    if (!go.this.f) {
                        go.this.b = null;
                    } else {
                        go.this.c = System.currentTimeMillis();
                        go goVar = go.this;
                        goVar.d = goVar.e;
                    }
                }
            } catch (Throwable th) {
                try {
                    if (go.this.a != null) {
                        go.this.a.I();
                        if (com.applovin.impl.sdk.n.a()) {
                            go.this.a.I().a("Timer", "Encountered error while executing timed task", th);
                        }
                        go.this.a.D().a("Timer", "executingTimedTask", th);
                    }
                } finally {
                    synchronized (go.this.i) {
                        if (!go.this.f) {
                            go.this.b = null;
                        } else {
                            go.this.c = System.currentTimeMillis();
                            go goVar2 = go.this;
                            goVar2.d = goVar2.e;
                        }
                    }
                }
            }
        }
    }

    public void a() {
        synchronized (this.i) {
            Timer timer = this.b;
            if (timer != null) {
                try {
                    timer.cancel();
                    this.b = null;
                } catch (Throwable th) {
                    try {
                        com.applovin.impl.sdk.j jVar = this.a;
                        if (jVar != null) {
                            jVar.I();
                            if (com.applovin.impl.sdk.n.a()) {
                                this.a.I();
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.a.I().a("Timer", "Encountered error while cancelling timer", th);
                                }
                            }
                        }
                        this.b = null;
                    } catch (Throwable th2) {
                        this.b = null;
                        this.h = 0L;
                        throw th2;
                    }
                }
                this.h = 0L;
            }
        }
    }

    public static go a(long j, com.applovin.impl.sdk.j jVar, Runnable runnable) {
        return a(j, false, jVar, runnable);
    }

    public static go a(long j, boolean z, com.applovin.impl.sdk.j jVar, Runnable runnable) {
        if (j < 0) {
            throw new IllegalArgumentException("Cannot create a scheduled timer. Invalid fire time passed in: " + j + ".");
        }
        if (runnable != null) {
            go goVar = new go(jVar, runnable);
            goVar.c = System.currentTimeMillis();
            goVar.d = j;
            goVar.f = z;
            goVar.e = j;
            try {
                goVar.b = new Timer();
                goVar.a(goVar.b(), j, z, goVar.e);
            } catch (OutOfMemoryError e) {
                jVar.I();
                if (com.applovin.impl.sdk.n.a()) {
                    jVar.I().a("Timer", "Failed to create timer due to OOM error", e);
                }
            }
            return goVar;
        }
        throw new IllegalArgumentException("Cannot create a scheduled timer. Runnable is null.");
    }

    private void a(TimerTask timerTask, long j, boolean z, long j2) {
        if (z) {
            this.b.schedule(timerTask, j, j2);
        } else {
            this.b.schedule(timerTask, j);
        }
    }
}
