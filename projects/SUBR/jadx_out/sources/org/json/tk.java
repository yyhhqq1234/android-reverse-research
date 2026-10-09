package org.json;

import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class tk {
    private static final String g = "tk";
    private final org.json.lifecycle.b a;
    private final Runnable b;
    private final st c;
    private Timer e;
    private final Object d = new Object();
    private final kj f = new a();

    class a implements kj {
        a() {
        }

        @Override // org.json.kj
        public void a() {
        }

        @Override // org.json.kj
        public void b() {
            tk.this.c.c(System.currentTimeMillis());
            tk.this.c();
        }

        @Override // org.json.kj
        public void c() {
            tk.this.c.b(System.currentTimeMillis());
            tk tkVar = tk.this;
            tkVar.b(tkVar.c.a());
        }

        @Override // org.json.kj
        public void d() {
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            tk.this.a.b(tk.this.f);
            tk.this.c.b();
            tk.this.b.run();
        }
    }

    public tk(Runnable runnable, org.json.lifecycle.b bVar, st stVar) {
        this.b = runnable;
        this.a = bVar;
        this.c = stVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j) {
        synchronized (this.d) {
            c();
            Timer timer = new Timer();
            this.e = timer;
            timer.schedule(new b(), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this.d) {
            Timer timer = this.e;
            if (timer != null) {
                timer.cancel();
                this.e = null;
            }
        }
    }

    public void a() {
        a(0L);
    }

    public void a(long j) {
        if (j < 0) {
            Log.d(g, "cannot start timer with delay < 0");
            return;
        }
        this.a.a(this.f);
        this.c.a(j);
        if (this.a.e()) {
            this.c.c(System.currentTimeMillis());
        } else {
            b(j);
        }
    }

    public void b() {
        c();
        this.a.b(this.f);
        this.c.b();
    }
}
