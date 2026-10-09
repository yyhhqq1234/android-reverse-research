package com.applovin.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class nc {
    public static final c d = a(false, -9223372036854775807L);
    public static final c e = a(true, -9223372036854775807L);
    public static final c f;
    public static final c g;
    private final ExecutorService a;
    private d b;
    private IOException c;

    public interface b {
        c a(e eVar, long j, long j2, IOException iOException, int i);

        void a(e eVar, long j, long j2);

        void a(e eVar, long j, long j2, boolean z);
    }

    public interface e {
        void a();

        void b();
    }

    public interface f {
        void d();
    }

    public static final class h extends IOException {
        public h(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    static {
        long j = -9223372036854775807L;
        f = new c(2, j);
        g = new c(3, j);
    }

    public static final class c {
        private final int a;
        private final long b;

        private c(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public boolean a() {
            int i = this.a;
            return i == 0 || i == 1;
        }
    }

    public nc(String str) {
        this.a = xp.e("ExoPlayer:Loader:" + str);
    }

    public boolean c() {
        return this.c != null;
    }

    public boolean d() {
        return this.b != null;
    }

    public void b() {
        this.c = null;
    }

    private final class d extends Handler implements Runnable {
        public final int a;
        private final e b;
        private final long c;
        private b d;
        private IOException f;
        private int g;
        private Thread h;
        private boolean i;
        private volatile boolean j;

        public d(Looper looper, e eVar, b bVar, int i, long j) {
            super(looper);
            this.b = eVar;
            this.d = bVar;
            this.a = i;
            this.c = j;
        }

        public void a(boolean z) {
            this.j = z;
            this.f = null;
            if (hasMessages(0)) {
                this.i = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.i = true;
                    this.b.b();
                    Thread thread = this.h;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z) {
                b();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ((b) b1.a(this.d)).a(this.b, jElapsedRealtime, jElapsedRealtime - this.c, true);
                this.d = null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = !this.i;
                    this.h = Thread.currentThread();
                }
                if (z) {
                    ko.a("load:" + this.b.getClass().getSimpleName());
                    try {
                        this.b.a();
                        ko.a();
                    } catch (Throwable th) {
                        ko.a();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.h = null;
                    Thread.interrupted();
                }
                if (this.j) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (IOException e) {
                if (this.j) {
                    return;
                }
                obtainMessage(2, e).sendToTarget();
            } catch (OutOfMemoryError e2) {
                if (this.j) {
                    return;
                }
                oc.a("LoadTask", "OutOfMemory error loading stream", e2);
                obtainMessage(2, new h(e2)).sendToTarget();
            } catch (Error e3) {
                if (!this.j) {
                    oc.a("LoadTask", "Unexpected error loading stream", e3);
                    obtainMessage(3, e3).sendToTarget();
                }
                throw e3;
            } catch (Exception e4) {
                if (this.j) {
                    return;
                }
                oc.a("LoadTask", "Unexpected exception loading stream", e4);
                obtainMessage(2, new h(e4)).sendToTarget();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long jC;
            if (this.j) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                a();
                return;
            }
            if (i != 3) {
                b();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j = jElapsedRealtime - this.c;
                b bVar = (b) b1.a(this.d);
                if (this.i) {
                    bVar.a(this.b, jElapsedRealtime, j, false);
                    return;
                }
                int i2 = message.what;
                if (i2 == 1) {
                    try {
                        bVar.a(this.b, jElapsedRealtime, j);
                        return;
                    } catch (RuntimeException e) {
                        oc.a("LoadTask", "Unexpected exception handling load completed", e);
                        nc.this.c = new h(e);
                        return;
                    }
                }
                if (i2 != 2) {
                    return;
                }
                IOException iOException = (IOException) message.obj;
                this.f = iOException;
                int i3 = this.g + 1;
                this.g = i3;
                c cVarA = bVar.a(this.b, jElapsedRealtime, j, iOException, i3);
                if (cVarA.a != 3) {
                    if (cVarA.a != 2) {
                        if (cVarA.a == 1) {
                            this.g = 1;
                        }
                        if (cVarA.b != -9223372036854775807L) {
                            jC = cVarA.b;
                        } else {
                            jC = c();
                        }
                        a(jC);
                        return;
                    }
                    return;
                }
                nc.this.c = this.f;
                return;
            }
            throw ((Error) message.obj);
        }

        private void b() {
            nc.this.b = null;
        }

        private long c() {
            return Math.min((this.g - 1) * 1000, 5000);
        }

        private void a() {
            this.f = null;
            nc.this.a.execute((Runnable) b1.a(nc.this.b));
        }

        public void a(int i) throws IOException {
            IOException iOException = this.f;
            if (iOException != null && this.g > i) {
                throw iOException;
            }
        }

        public void a(long j) {
            b1.b(nc.this.b == null);
            nc.this.b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                a();
            }
        }
    }

    public void a() {
        ((d) b1.b(this.b)).a(false);
    }

    private static final class g implements Runnable {
        private final f a;

        public g(f fVar) {
            this.a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.d();
        }
    }

    public void a(int i) throws IOException {
        IOException iOException = this.c;
        if (iOException == null) {
            d dVar = this.b;
            if (dVar != null) {
                if (i == Integer.MIN_VALUE) {
                    i = dVar.a;
                }
                dVar.a(i);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void a(f fVar) {
        d dVar = this.b;
        if (dVar != null) {
            dVar.a(true);
        }
        if (fVar != null) {
            this.a.execute(new g(fVar));
        }
        this.a.shutdown();
    }

    public long a(e eVar, b bVar, int i) {
        Looper looper = (Looper) b1.b(Looper.myLooper());
        this.c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new d(looper, eVar, bVar, i, jElapsedRealtime).a(0L);
        return jElapsedRealtime;
    }

    public static c a(boolean z, long j) {
        return new c(z ? 1 : 0, j);
    }
}
