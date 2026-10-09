package com.applovin.impl;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface z6 {

    /* JADX INFO: renamed from: com.applovin.impl.z6$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$e(z6 _this, int i, ae.a aVar) {
        }
    }

    void a(int i, ae.a aVar);

    void a(int i, ae.a aVar, int i2);

    void a(int i, ae.a aVar, Exception exc);

    void b(int i, ae.a aVar);

    void c(int i, ae.a aVar);

    void d(int i, ae.a aVar);

    void e(int i, ae.a aVar);

    public static class a {
        public final int a;
        public final ae.a b;
        private final CopyOnWriteArrayList c;

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public void a(Handler handler, z6 z6Var) {
            b1.a(handler);
            b1.a(z6Var);
            this.c.add(new C0046a(handler, z6Var));
        }

        public void e(z6 z6Var) {
            for (C0046a c0046a : this.c) {
                if (c0046a.b == z6Var) {
                    this.c.remove(c0046a);
                }
            }
        }

        public void c() {
            for (C0046a c0046a : this.c) {
                final z6 z6Var = c0046a.b;
                xp.a(c0046a.a, new Runnable() { // from class: com.applovin.impl.z6$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(z6Var);
                    }
                });
            }
        }

        public void b() {
            for (C0046a c0046a : this.c) {
                final z6 z6Var = c0046a.b;
                xp.a(c0046a.a, new Runnable() { // from class: com.applovin.impl.z6$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(z6Var);
                    }
                });
            }
        }

        public void d() {
            for (C0046a c0046a : this.c) {
                final z6 z6Var = c0046a.b;
                xp.a(c0046a.a, new Runnable() { // from class: com.applovin.impl.z6$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.d(z6Var);
                    }
                });
            }
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i, ae.a aVar) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = aVar;
        }

        /* JADX INFO: renamed from: com.applovin.impl.z6$a$a, reason: collision with other inner class name */
        private static final class C0046a {
            public Handler a;
            public z6 b;

            public C0046a(Handler handler, z6 z6Var) {
                this.a = handler;
                this.b = z6Var;
            }
        }

        public void a() {
            for (C0046a c0046a : this.c) {
                final z6 z6Var = c0046a.b;
                xp.a(c0046a.a, new Runnable() { // from class: com.applovin.impl.z6$a$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(z6Var);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(z6 z6Var) {
            z6Var.c(this.a, this.b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(z6 z6Var) {
            z6Var.a(this.a, this.b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(z6 z6Var) {
            z6Var.b(this.a, this.b);
        }

        public void a(final int i) {
            for (C0046a c0046a : this.c) {
                final z6 z6Var = c0046a.b;
                xp.a(c0046a.a, new Runnable() { // from class: com.applovin.impl.z6$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(z6Var, i);
                    }
                });
            }
        }

        public void a(final Exception exc) {
            for (C0046a c0046a : this.c) {
                final z6 z6Var = c0046a.b;
                xp.a(c0046a.a, new Runnable() { // from class: com.applovin.impl.z6$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(z6Var, exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(z6 z6Var) {
            z6Var.d(this.a, this.b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(z6 z6Var, int i) {
            z6Var.e(this.a, this.b);
            z6Var.a(this.a, this.b, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(z6 z6Var, Exception exc) {
            z6Var.a(this.a, this.b, exc);
        }

        public a a(int i, ae.a aVar) {
            return new a(this.c, i, aVar);
        }
    }
}
