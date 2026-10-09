package org.json;

import java.util.Calendar;
import java.util.Timer;
import java.util.TimerTask;
import org.json.lifecycle.b;

/* JADX INFO: loaded from: classes3.dex */
public class uk implements kj {
    private Timer b;
    private long e;
    private Runnable f;
    private String a = "INTERNAL";
    private boolean c = false;
    private Long d = null;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            uk.this.f.run();
        }
    }

    public uk(long j, Runnable runnable, boolean z) {
        this.e = j;
        this.f = runnable;
        if (z) {
            g();
        }
    }

    private synchronized void f() {
        Timer timer = this.b;
        if (timer != null) {
            timer.cancel();
            this.b = null;
        }
    }

    private synchronized void h() {
        if (this.b == null) {
            Timer timer = new Timer();
            this.b = timer;
            timer.schedule(new a(), this.e);
            Calendar.getInstance().setTimeInMillis(this.d.longValue());
        }
    }

    @Override // org.json.kj
    public void a() {
    }

    @Override // org.json.kj
    public void b() {
        if (this.b != null) {
            f();
        }
    }

    @Override // org.json.kj
    public void c() {
        Long l;
        if (this.b == null && (l = this.d) != null) {
            long jLongValue = l.longValue() - System.currentTimeMillis();
            this.e = jLongValue;
            if (jLongValue > 0) {
                h();
            } else {
                e();
                this.f.run();
            }
        }
    }

    @Override // org.json.kj
    public void d() {
    }

    public void e() {
        f();
        this.c = false;
        this.d = null;
        b.d().b(this);
    }

    public void g() {
        if (this.c) {
            return;
        }
        this.c = true;
        b.d().a(this);
        this.d = Long.valueOf(System.currentTimeMillis() + this.e);
        if (b.d().e()) {
            return;
        }
        h();
    }
}
