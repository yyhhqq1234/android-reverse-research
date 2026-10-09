package org.json;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class xp {
    private l5 a;
    private yp b;
    private Timer c = null;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            xp.this.b.a();
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            xp.this.b.a();
        }
    }

    public xp(l5 l5Var, yp ypVar) {
        this.a = l5Var;
        this.b = ypVar;
    }

    private void d() {
        Timer timer = this.c;
        if (timer != null) {
            timer.cancel();
            this.c = null;
        }
    }

    public synchronized void a() {
        d();
        Timer timer = new Timer();
        this.c = timer;
        timer.schedule(new b(), this.a.b());
    }

    public void b() {
        synchronized (this) {
            d();
        }
        this.b.a();
    }

    public synchronized void c() {
        d();
        Timer timer = new Timer();
        this.c = timer;
        timer.schedule(new a(), this.a.j());
    }
}
