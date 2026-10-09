package com.applovin.impl;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public interface q1 {

    /* JADX INFO: renamed from: com.applovin.impl.q1$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$b(q1 _this, e9 e9Var) {
        }
    }

    void a(long j);

    void a(m5 m5Var);

    void a(Exception exc);

    void a(String str, long j, long j2);

    void a(boolean z);

    void b(int i, long j, long j2);

    void b(e9 e9Var);

    void b(e9 e9Var, p5 p5Var);

    void b(String str);

    void c(m5 m5Var);

    void c(Exception exc);

    public static final class a {
        private final Handler a;
        private final q1 b;

        public a(Handler handler, q1 q1Var) {
            this.a = q1Var != null ? (Handler) b1.a(handler) : null;
            this.b = q1Var;
        }

        public void b(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.d(exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Exception exc) {
            ((q1) xp.a(this.b)).a(exc);
        }

        public void a(final Exception exc) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Exception exc) {
            ((q1) xp.a(this.b)).c(exc);
        }

        public void b(final m5 m5Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.d(m5Var);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(m5 m5Var) {
            ((q1) xp.a(this.b)).a(m5Var);
        }

        public void a(final String str, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda0
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
            ((q1) xp.a(this.b)).c(m5Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, long j, long j2) {
            ((q1) xp.a(this.b)).a(str, j, j2);
        }

        public void a(final String str) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(str);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            ((q1) xp.a(this.b)).b(str);
        }

        public void a(final m5 m5Var) {
            m5Var.a();
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(m5Var);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(e9 e9Var, p5 p5Var) {
            ((q1) xp.a(this.b)).b(e9Var);
            ((q1) xp.a(this.b)).b(e9Var, p5Var);
        }

        public void a(final e9 e9Var, final p5 p5Var) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(e9Var, p5Var);
                    }
                });
            }
        }

        public void b(final long j) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(j);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(long j) {
            ((q1) xp.a(this.b)).a(j);
        }

        public void b(final boolean z) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(boolean z) {
            ((q1) xp.a(this.b)).a(z);
        }

        public void b(final int i, final long j, final long j2) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.impl.q1$a$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(i, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, long j, long j2) {
            ((q1) xp.a(this.b)).b(i, j, j2);
        }
    }
}
