package com.applovin.impl;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public final class vq {
    private final q8 a = new q8();
    private final b b;
    private final e c;
    private boolean d;
    private Surface e;
    private float f;
    private float g;
    private float h;
    private float i;
    private int j;
    private long k;
    private long l;
    private long m;
    private long n;
    private long o;
    private long p;
    private long q;

    /* JADX INFO: Access modifiers changed from: private */
    interface b {

        public interface a {
            void a(Display display);
        }

        void a();

        void a(a aVar);
    }

    private void h() {
        if (xp.a < 30 || this.e == null) {
            return;
        }
        float fB = this.a.e() ? this.a.b() : this.f;
        float f = this.g;
        if (fB == f) {
            return;
        }
        if (fB != -1.0f && f != -1.0f) {
            if (Math.abs(fB - this.g) < ((!this.a.e() || this.a.d() < 5000000000L) ? 1.0f : 0.02f)) {
                return;
            }
        } else if (fB == -1.0f && this.a.c() < 30) {
            return;
        }
        this.g = fB;
        a(false);
    }

    public vq(Context context) {
        b bVarA = a(context);
        this.b = bVarA;
        this.c = bVarA != null ? e.d() : null;
        this.k = -9223372036854775807L;
        this.l = -9223372036854775807L;
        this.f = -1.0f;
        this.i = 1.0f;
        this.j = 0;
    }

    public void c() {
        if (this.b != null) {
            ((e) b1.a(this.c)).a();
            this.b.a(new b.a() { // from class: com.applovin.impl.vq$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.vq.b.a
                public final void a(Display display) {
                    this.f$0.a(display);
                }
            });
        }
    }

    public void e() {
        this.d = true;
        g();
        a(false);
    }

    public void d() {
        g();
    }

    public void f() {
        this.d = false;
        a();
    }

    public void b() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.a();
            ((e) b1.a(this.c)).e();
        }
    }

    public long a(long j) {
        long j2;
        if (this.p == -1 || !this.a.e()) {
            j2 = j;
        } else {
            long jA = this.q + ((long) ((this.a.a() * (this.m - this.p)) / this.i));
            if (a(j, jA)) {
                j2 = jA;
            } else {
                g();
                j2 = j;
            }
        }
        this.n = this.m;
        this.o = j2;
        e eVar = this.c;
        if (eVar == null || this.k == -9223372036854775807L) {
            return j2;
        }
        long j3 = eVar.a;
        return j3 == -9223372036854775807L ? j2 : a(j2, j3, this.k) - this.l;
    }

    private void g() {
        this.m = 0L;
        this.p = -1L;
        this.n = -1L;
    }

    private static final class a {
        public static void a(Surface surface, float f) {
            try {
                surface.setFrameRate(f, f == 0.0f ? 0 : 1);
            } catch (IllegalStateException e) {
                oc.a("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
            }
        }
    }

    public void b(long j) {
        long j2 = this.n;
        if (j2 != -1) {
            this.p = j2;
            this.q = this.o;
        }
        this.m++;
        this.a.a(j * 1000);
        h();
    }

    private static final class c implements b {
        private final WindowManager a;

        @Override // com.applovin.impl.vq.b
        public void a() {
        }

        public static b a(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        private c(WindowManager windowManager) {
            this.a = windowManager;
        }

        @Override // com.applovin.impl.vq.b
        public void a(b.a aVar) {
            aVar.a(this.a.getDefaultDisplay());
        }
    }

    private static final class d implements b, DisplayManager.DisplayListener {
        private final DisplayManager a;
        private b.a b;

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }

        public static b a(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        private d(DisplayManager displayManager) {
            this.a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            b.a aVar = this.b;
            if (aVar == null || i != 0) {
                return;
            }
            aVar.a(b());
        }

        private Display b() {
            return this.a.getDisplay(0);
        }

        @Override // com.applovin.impl.vq.b
        public void a(b.a aVar) {
            this.b = aVar;
            this.a.registerDisplayListener(this, xp.a());
            aVar.a(b());
        }

        @Override // com.applovin.impl.vq.b
        public void a() {
            this.a.unregisterDisplayListener(this);
            this.b = null;
        }
    }

    private static boolean a(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    private static final class e implements Choreographer.FrameCallback, Handler.Callback {
        private static final e g = new e();
        public volatile long a = -9223372036854775807L;
        private final Handler b;
        private final HandlerThread c;
        private Choreographer d;
        private int f;

        public static e d() {
            return g;
        }

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.c = handlerThread;
            handlerThread.start();
            Handler handlerA = xp.a(handlerThread.getLooper(), (Handler.Callback) this);
            this.b = handlerA;
            handlerA.sendEmptyMessage(0);
        }

        public void a() {
            this.b.sendEmptyMessage(1);
        }

        public void e() {
            this.b.sendEmptyMessage(2);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.a = j;
            ((Choreographer) b1.a(this.d)).postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                c();
                return true;
            }
            if (i == 1) {
                b();
                return true;
            }
            if (i != 2) {
                return false;
            }
            f();
            return true;
        }

        private void c() {
            this.d = Choreographer.getInstance();
        }

        private void b() {
            int i = this.f + 1;
            this.f = i;
            if (i == 1) {
                ((Choreographer) b1.a(this.d)).postFrameCallback(this);
            }
        }

        private void f() {
            int i = this.f - 1;
            this.f = i;
            if (i == 0) {
                ((Choreographer) b1.a(this.d)).removeFrameCallback(this);
                this.a = -9223372036854775807L;
            }
        }
    }

    public void b(float f) {
        this.i = f;
        g();
        a(false);
    }

    private static long a(long j, long j2, long j3) {
        long j4;
        long j5 = j2 + (((j - j2) / j3) * j3);
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j5 = j3 + j5;
            j4 = j5;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    private static b a(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        b bVarA = xp.a >= 17 ? d.a(applicationContext) : null;
        return bVarA == null ? c.a(applicationContext) : bVarA;
    }

    public void a(float f) {
        this.f = f;
        this.a.f();
        h();
    }

    public void a(Surface surface) {
        if (surface instanceof g7) {
            surface = null;
        }
        if (this.e == surface) {
            return;
        }
        a();
        this.e = surface;
        a(true);
    }

    public void a(int i) {
        if (this.j == i) {
            return;
        }
        this.j = i;
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.k = refreshRate;
            this.l = (refreshRate * 80) / 100;
        } else {
            oc.d("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            this.k = -9223372036854775807L;
            this.l = -9223372036854775807L;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    private void a(boolean z) {
        Surface surface;
        float f;
        if (xp.a < 30 || (surface = this.e) == null || this.j == Integer.MIN_VALUE) {
            return;
        }
        if (this.d) {
            float f2 = this.g;
            if (f2 != -1.0f) {
                f = f2 * this.i;
            } else {
                f = 0.0f;
            }
        } else {
            f = 0.0f;
        }
        if (z || this.h != f) {
            this.h = f;
            a.a(surface, f);
        }
    }

    private void a() {
        Surface surface;
        if (xp.a < 30 || (surface = this.e) == null || this.j == Integer.MIN_VALUE || this.h == 0.0f) {
            return;
        }
        this.h = 0.0f;
        a.a(surface, 0.0f);
    }
}
