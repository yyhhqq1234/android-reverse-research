package org.json;

import java.util.Timer;
import java.util.TimerTask;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class n2 {
    private final l2 a;
    private final cl b;
    private final tk c = c();
    private Timer d;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n2.this.b.a();
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            n2.this.b.a();
        }
    }

    public n2(l2 l2Var, cl clVar) {
        this.a = l2Var;
        this.b = clVar;
    }

    private synchronized void b(long j) {
        j();
        Timer timer = new Timer();
        this.d = timer;
        timer.schedule(new b(), j);
    }

    private tk c() {
        return new tk(new a(), org.json.lifecycle.b.d(), new st());
    }

    private synchronized void j() {
        Timer timer = this.d;
        if (timer != null) {
            timer.cancel();
            this.d = null;
        }
    }

    public void a() {
        if (this.a.a() == l2.a.MANUAL_WITH_AUTOMATIC_RELOAD) {
            IronLog.INTERNAL.verbose();
            i();
        }
    }

    protected void a(long j) {
        tk tkVar = this.c;
        if (tkVar != null) {
            tkVar.a(j);
        }
    }

    protected l2 b() {
        return this.a;
    }

    protected boolean d() {
        return this.a.c() > 0;
    }

    public void e() {
        if (this.a.e()) {
            IronLog.INTERNAL.verbose();
            b(this.a.c());
        }
    }

    public void f() {
        if (this.a.a() == l2.a.AUTOMATIC_LOAD_AFTER_CLOSE) {
            IronLog.INTERNAL.verbose();
            b(this.a.d());
        }
    }

    public void g() {
        if (this.a.e()) {
            IronLog.INTERNAL.verbose();
            b(0L);
        }
    }

    public void h() {
        if (this.a.a() != l2.a.AUTOMATIC_LOAD_WHILE_SHOW || this.a.d() < 0) {
            return;
        }
        IronLog.INTERNAL.verbose();
        b(this.a.d());
    }

    protected void i() {
        tk tkVar = this.c;
        if (tkVar != null) {
            tkVar.b();
        }
    }

    public void k() {
        if (this.a.a() != l2.a.MANUAL_WITH_AUTOMATIC_RELOAD || this.a.b() <= 0) {
            return;
        }
        IronLog.INTERNAL.verbose();
        a(this.a.b());
    }
}
