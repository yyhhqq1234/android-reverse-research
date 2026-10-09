package com.applovin.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class tm {
    private static final ExecutorService o = Executors.newFixedThreadPool(4);
    private final com.applovin.impl.sdk.j a;
    private final com.applovin.impl.sdk.n b;
    private final ScheduledThreadPoolExecutor c;
    private final ScheduledThreadPoolExecutor d;
    private final ScheduledThreadPoolExecutor e;
    private final ScheduledThreadPoolExecutor f;
    private final ScheduledThreadPoolExecutor g;
    private final ScheduledThreadPoolExecutor h;
    private final ScheduledThreadPoolExecutor i;
    private final Map j = new HashMap();
    private final List k = new ArrayList(5);
    private final Object l = new Object();
    private boolean m;
    private boolean n;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.CORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.CACHING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.MEDIATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[b.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum b {
        CORE,
        CACHING,
        MEDIATION,
        TIMEOUT,
        OTHER
    }

    public tm(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        this.n = ((Boolean) jVar.a(sj.V)).booleanValue();
        this.c = b("auxiliary_operations", ((Integer) jVar.a(sj.Q)).intValue());
        this.d = b("shared_thread_pool", ((Integer) jVar.a(sj.P)).intValue());
        this.e = b("core", ((Integer) jVar.a(sj.W)).intValue());
        this.g = b("caching", ((Integer) jVar.a(sj.X)).intValue());
        this.h = b("mediation", ((Integer) jVar.a(sj.Y)).intValue());
        this.f = b("timeout", ((Integer) jVar.a(sj.Z)).intValue());
        this.i = b("other", ((Integer) jVar.a(sj.a0)).intValue());
    }

    public boolean d() {
        return this.m;
    }

    public Executor c() {
        return this.n ? this.e : this.d;
    }

    public ExecutorService b() {
        return this.n ? this.g : o;
    }

    public void f() {
        synchronized (this.l) {
            this.m = false;
        }
    }

    public ExecutorService a(String str, int i) {
        return Executors.newFixedThreadPool(i, new c(str));
    }

    public void e() {
        synchronized (this.l) {
            this.m = true;
            for (d dVar : this.k) {
                a(dVar.d, dVar.f);
            }
            this.k.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class d implements Runnable {
        private final com.applovin.impl.sdk.j a;
        private final String b;
        private final com.applovin.impl.sdk.n c;
        private final yl d;
        private final b f;

        @Override // java.lang.Runnable
        public void run() {
            try {
                z3.a();
                if (!this.a.v0() || this.d.d()) {
                    ScheduledFuture scheduledFutureB = this.d.b(Thread.currentThread(), ((Long) this.a.a(sj.y)).longValue());
                    this.d.run();
                    if (scheduledFutureB != null) {
                        scheduledFutureB.cancel(false);
                    }
                } else {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.d(this.b, "Task re-scheduled...");
                    }
                    this.a.i0().a(this.d, this.f, 2000L);
                }
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.d(this.b, this.f + " queue finished task " + this.d.c());
                }
            } catch (Throwable th) {
                try {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.b, "Task failed execution", th);
                    }
                    this.d.a(th);
                } finally {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.d(this.b, this.f + " queue finished task " + this.d.c());
                    }
                }
            }
        }

        public d(com.applovin.impl.sdk.j jVar, yl ylVar, b bVar) {
            this.a = jVar;
            this.c = jVar.I();
            this.b = ylVar.c();
            this.d = ylVar;
            this.f = bVar;
        }
    }

    private class c implements ThreadFactory {
        private final String a;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:" + this.a);
            thread.setDaemon(true);
            thread.setPriority(((Integer) tm.this.a.a(sj.S)).intValue());
            thread.setUncaughtExceptionHandler(new a());
            return thread;
        }

        c(String str) {
            this.a = str;
        }

        class a implements Thread.UncaughtExceptionHandler {
            a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                com.applovin.impl.sdk.n unused = tm.this.b;
                if (com.applovin.impl.sdk.n.a()) {
                    tm.this.b.a("TaskManager", "Caught unhandled exception", th);
                }
            }
        }
    }

    public void a(yl ylVar, b bVar) {
        a(ylVar, bVar, 0L);
    }

    public void a(yl ylVar, b bVar, long j) {
        a(ylVar, bVar, j, false);
    }

    private boolean b(d dVar) {
        if (dVar.d.d()) {
            return false;
        }
        synchronized (this.l) {
            if (this.m) {
                return false;
            }
            this.k.add(dVar);
            return true;
        }
    }

    public void a(yl ylVar, b bVar, long j, boolean z) {
        if (ylVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j >= 0) {
            d dVar = new d(this.a, ylVar, bVar);
            if (!b(dVar)) {
                a(dVar, j, z);
                return;
            } else {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.d(ylVar.c(), "Task execution delayed until after init");
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException("Invalid delay (millis) specified: " + j);
    }

    public ScheduledFuture b(yl ylVar, b bVar, long j) {
        if (this.n) {
            return a(new d(this.a, ylVar, bVar)).schedule(ylVar, j, TimeUnit.MILLISECONDS);
        }
        return this.c.schedule(ylVar, j, TimeUnit.MILLISECONDS);
    }

    private ScheduledThreadPoolExecutor b(String str, int i) {
        return new ScheduledThreadPoolExecutor(i, new c(str));
    }

    public void a(yl ylVar, oe oeVar) {
        String strB = oeVar.b();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorB = (ScheduledThreadPoolExecutor) this.j.get(strB);
        if (scheduledThreadPoolExecutorB == null) {
            scheduledThreadPoolExecutorB = b(strB, 1);
            this.j.put(strB, scheduledThreadPoolExecutorB);
        }
        scheduledThreadPoolExecutorB.submit(new d(this.a, ylVar, b.MEDIATION));
    }

    public void a(Runnable runnable, b bVar) {
        if (this.n) {
            com.applovin.impl.sdk.j jVar = this.a;
            d dVar = new d(jVar, new jn(jVar, "auxiliaryOperation", runnable), bVar);
            a(dVar).submit(dVar);
            return;
        }
        this.c.submit(runnable);
    }

    public void a(yl ylVar) {
        if (ylVar != null) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.n ? this.e : this.d;
            try {
                if (yp.h()) {
                    scheduledThreadPoolExecutor.submit(new d(this.a, ylVar, b.CORE));
                    return;
                }
                ScheduledFuture scheduledFutureB = ylVar.b(Thread.currentThread(), ((Long) this.a.a(sj.y)).longValue());
                ylVar.run();
                if (scheduledFutureB != null) {
                    scheduledFutureB.cancel(false);
                    return;
                }
                return;
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.a(ylVar.c(), "Task failed execution", th);
                }
                ylVar.a(th);
                return;
            }
        }
        throw new IllegalArgumentException("No task specified");
    }

    public ExecutorService a() {
        return this.n ? this.i : this.c;
    }

    private void a(final d dVar, long j, boolean z) {
        final ScheduledThreadPoolExecutor scheduledThreadPoolExecutorA = this.n ? a(dVar) : this.d;
        if (j <= 0) {
            scheduledThreadPoolExecutorA.submit(dVar);
        } else if (z) {
            x1.a(j, this.a, new Runnable() { // from class: com.applovin.impl.tm$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    scheduledThreadPoolExecutorA.execute(dVar);
                }
            });
        } else {
            scheduledThreadPoolExecutorA.schedule(dVar, j, TimeUnit.MILLISECONDS);
        }
    }

    private ScheduledThreadPoolExecutor a(d dVar) {
        int i = a.a[dVar.f.ordinal()];
        if (i == 1) {
            return this.e;
        }
        if (i == 2) {
            return this.g;
        }
        if (i == 3) {
            return this.h;
        }
        if (i != 4) {
            return this.i;
        }
        return this.f;
    }

    public List a(List list, ExecutorService executorService) {
        try {
            if (com.applovin.impl.sdk.n.a()) {
                this.b.a("TaskManager", "Awaiting " + list.size() + " tasks...");
            }
            return executorService.invokeAll(list);
        } catch (Throwable th) {
            if (!com.applovin.impl.sdk.n.a()) {
                return null;
            }
            this.b.a("TaskManager", "Awaiting tasks were interrupted", th);
            return null;
        }
    }
}
