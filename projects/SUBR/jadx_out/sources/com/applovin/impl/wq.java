package com.applovin.impl;

import android.os.Handler;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public interface wq {

    /* JADX INFO: renamed from: com.applovin.impl.wq$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$a(wq _this, e9 e9Var) {
        }
    }

    void a(int i, long j);

    void a(long j, int i);

    void a(e9 e9Var);

    void a(e9 e9Var, p5 p5Var);

    void a(xq xqVar);

    void a(Object obj, long j);

    void a(String str);

    void b(m5 m5Var);

    void b(Exception exc);

    void b(String str, long j, long j2);

    void d(m5 m5Var);

    public static final class a {
        private final Handler a;
        private final wq b;

        public a(Handler handler, wq wqVar) {
            this.a = wqVar != null ? (Handler) b1.a(handler) : null;
            this.b = wqVar;
        }

        public void b(final m5 m5Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.d(m5Var);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(m5 m5Var) {
            ((wq) xp.a(this.b)).d(m5Var);
        }

        public void a(final String str, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(str, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(m5 m5Var) {
            m5Var.a();
            ((wq) xp.a(this.b)).b(m5Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, long j, long j2) {
            ((wq) xp.a(this.b)).b(str, j, j2);
        }

        public void a(final String str) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(str);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            ((wq) xp.a(this.b)).a(str);
        }

        public void a(final m5 m5Var) {
            m5Var.a();
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(m5Var);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i, long j) {
            ((wq) xp.a(this.b)).a(i, j);
        }

        public void a(final int i, final long j) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(i, j);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(e9 e9Var, p5 p5Var) {
            ((wq) xp.a(this.b)).a(e9Var);
            ((wq) xp.a(this.b)).a(e9Var, p5Var);
        }

        public void a(final e9 e9Var, final p5 p5Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(e9Var, p5Var);
                    }
                });
            }
        }

        public void b(final long j, final int i) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(j, i);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj, long j) {
            ((wq) xp.a(this.b)).a(obj, j);
        }

        public void b(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(long j, int i) {
            ((wq) xp.a(this.b)).a(j, i);
        }

        public void b(final xq xqVar) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(xqVar);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Exception exc) {
            ((wq) xp.a(this.b)).b(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(xq xqVar) {
            ((wq) xp.a(this.b)).a(xqVar);
        }

        public void a(final Object obj) {
            if (this.a != null) {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.a.post(new Runnable() { // from class: com.applovin.impl.wq$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(obj, jElapsedRealtime);
                    }
                });
            }
        }
    }
}
