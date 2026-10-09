package com.applovin.impl;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.work.WorkRequest;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
final class u1 {
    private long A;
    private long B;
    private long C;
    private boolean D;
    private long E;
    private long F;
    private final a a;
    private final long[] b;
    private AudioTrack c;
    private int d;
    private int e;
    private t1 f;
    private int g;
    private boolean h;
    private long i;
    private float j;
    private boolean k;
    private long l;
    private long m;
    private Method n;
    private long o;
    private boolean p;
    private boolean q;
    private long r;
    private long s;
    private long t;
    private long u;
    private int v;
    private int w;
    private long x;
    private long y;
    private long z;

    public interface a {
        void a(int i, long j);

        void a(long j);

        void a(long j, long j2, long j3, long j4);

        void b(long j);

        void b(long j, long j2, long j3, long j4);
    }

    public u1(a aVar) {
        this.a = (a) b1.a(aVar);
        if (xp.a >= 18) {
            try {
                this.n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.b = new long[10];
    }

    public void i() {
        ((t1) b1.a(this.f)).f();
    }

    public boolean g(long j) {
        int playState = ((AudioTrack) b1.a(this.c)).getPlayState();
        if (this.h) {
            if (playState == 2) {
                this.p = false;
                return false;
            }
            if (playState == 1 && b() == 0) {
                return false;
            }
        }
        boolean z = this.p;
        boolean zE = e(j);
        this.p = zE;
        if (z && !zE && playState != 1) {
            this.a.a(this.e, t2.b(this.i));
        }
        return true;
    }

    public int b(long j) {
        return this.e - ((int) (j - (b() * ((long) this.d))));
    }

    public long c(long j) {
        return t2.b(a(j - b()));
    }

    public boolean f(long j) {
        return this.y != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.y >= 200;
    }

    public void d(long j) {
        this.z = b();
        this.x = SystemClock.elapsedRealtime() * 1000;
        this.A = j;
    }

    public boolean e(long j) {
        return j > b() || a();
    }

    private void h(long j) {
        Method method;
        if (!this.q || (method = this.n) == null || j - this.r < 500000) {
            return;
        }
        try {
            long jIntValue = (((long) ((Integer) xp.a((Integer) method.invoke(b1.a(this.c), new Object[0]))).intValue()) * 1000) - this.i;
            this.o = jIntValue;
            long jMax = Math.max(jIntValue, 0L);
            this.o = jMax;
            if (jMax > 5000000) {
                this.a.b(jMax);
                this.o = 0L;
            }
        } catch (Exception unused) {
            this.n = null;
        }
        this.r = j;
    }

    private boolean a() {
        return this.h && ((AudioTrack) b1.a(this.c)).getPlayState() == 2 && b() == 0;
    }

    public boolean d() {
        return ((AudioTrack) b1.a(this.c)).getPlayState() == 3;
    }

    public void g() {
        h();
        this.c = null;
        this.f = null;
    }

    public boolean f() {
        h();
        if (this.x != -9223372036854775807L) {
            return false;
        }
        ((t1) b1.a(this.f)).f();
        return true;
    }

    private void e() {
        long jC = c();
        if (jC == 0) {
            return;
        }
        long jNanoTime = System.nanoTime() / 1000;
        if (jNanoTime - this.m >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
            long[] jArr = this.b;
            int i = this.v;
            jArr[i] = jC - jNanoTime;
            this.v = (i + 1) % 10;
            int i2 = this.w;
            if (i2 < 10) {
                this.w = i2 + 1;
            }
            this.m = jNanoTime;
            this.l = 0L;
            int i3 = 0;
            while (true) {
                int i4 = this.w;
                if (i3 >= i4) {
                    break;
                }
                this.l += this.b[i3] / ((long) i4);
                i3++;
            }
        }
        if (this.h) {
            return;
        }
        a(jNanoTime, jC);
        h(jNanoTime);
    }

    private long c() {
        return a(b());
    }

    private long b() {
        AudioTrack audioTrack = (AudioTrack) b1.a(this.c);
        if (this.x != -9223372036854775807L) {
            return Math.min(this.A, this.z + ((((SystemClock.elapsedRealtime() * 1000) - this.x) * ((long) this.g)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (this.h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.u = this.s;
            }
            playbackHeadPosition += this.u;
        }
        if (xp.a <= 29) {
            if (playbackHeadPosition == 0 && this.s > 0 && playState == 3) {
                if (this.y == -9223372036854775807L) {
                    this.y = SystemClock.elapsedRealtime();
                }
                return this.s;
            }
            this.y = -9223372036854775807L;
        }
        if (this.s > playbackHeadPosition) {
            this.t++;
        }
        this.s = playbackHeadPosition;
        return playbackHeadPosition + (this.t << 32);
    }

    private void h() {
        this.l = 0L;
        this.w = 0;
        this.v = 0;
        this.m = 0L;
        this.C = 0L;
        this.F = 0L;
        this.k = false;
    }

    private long a(long j) {
        return (j * 1000000) / ((long) this.g);
    }

    public long a(boolean z) {
        long jMax;
        if (((AudioTrack) b1.a(this.c)).getPlayState() == 3) {
            e();
        }
        long jNanoTime = System.nanoTime() / 1000;
        t1 t1Var = (t1) b1.a(this.f);
        boolean zD = t1Var.d();
        if (zD) {
            jMax = a(t1Var.b()) + xp.a(jNanoTime - t1Var.c(), this.j);
        } else {
            if (this.w == 0) {
                jMax = c();
            } else {
                jMax = this.l + jNanoTime;
            }
            if (!z) {
                jMax = Math.max(0L, jMax - this.o);
            }
        }
        if (this.D != zD) {
            this.F = this.C;
            this.E = this.B;
        }
        long j = jNanoTime - this.F;
        if (j < 1000000) {
            long jA = this.E + xp.a(j, this.j);
            long j2 = (j * 1000) / 1000000;
            jMax = ((jMax * j2) + ((1000 - j2) * jA)) / 1000;
        }
        if (!this.k) {
            long j3 = this.B;
            if (jMax > j3) {
                this.k = true;
                this.a.a(System.currentTimeMillis() - t2.b(xp.b(t2.b(jMax - j3), this.j)));
            }
        }
        this.C = jNanoTime;
        this.B = jMax;
        this.D = zD;
        return jMax;
    }

    private void a(long j, long j2) {
        t1 t1Var = (t1) b1.a(this.f);
        if (t1Var.a(j)) {
            long jC = t1Var.c();
            long jB = t1Var.b();
            if (Math.abs(jC - j) > 5000000) {
                this.a.b(jB, jC, j, j2);
                t1Var.e();
            } else if (Math.abs(a(jB) - j2) > 5000000) {
                this.a.a(jB, jC, j, j2);
                t1Var.e();
            } else {
                t1Var.a();
            }
        }
    }

    public void a(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.c = audioTrack;
        this.d = i2;
        this.e = i3;
        this.f = new t1(audioTrack);
        this.g = audioTrack.getSampleRate();
        this.h = z && a(i);
        boolean zG = xp.g(i);
        this.q = zG;
        this.i = zG ? a(i3 / i2) : -9223372036854775807L;
        this.s = 0L;
        this.t = 0L;
        this.u = 0L;
        this.p = false;
        this.x = -9223372036854775807L;
        this.y = -9223372036854775807L;
        this.r = 0L;
        this.o = 0L;
        this.j = 1.0f;
    }

    public void a(float f) {
        this.j = f;
        t1 t1Var = this.f;
        if (t1Var != null) {
            t1Var.f();
        }
    }

    private static boolean a(int i) {
        return xp.a < 23 && (i == 5 || i == 6);
    }
}
