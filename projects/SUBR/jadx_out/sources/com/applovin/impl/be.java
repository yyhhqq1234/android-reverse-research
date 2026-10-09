package com.applovin.impl;

import android.os.Handler;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface be {
    void a(int i, ae.a aVar, mc mcVar, td tdVar);

    void a(int i, ae.a aVar, mc mcVar, td tdVar, IOException iOException, boolean z);

    void a(int i, ae.a aVar, td tdVar);

    void b(int i, ae.a aVar, mc mcVar, td tdVar);

    void c(int i, ae.a aVar, mc mcVar, td tdVar);

    public static class a {
        public final int a;
        public final ae.a b;
        private final CopyOnWriteArrayList c;
        private final long d;

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        public void a(Handler handler, be beVar) {
            b1.a(handler);
            b1.a(beVar);
            this.c.add(new C0016a(handler, beVar));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(be beVar, mc mcVar, td tdVar) {
            beVar.b(this.a, this.b, mcVar, tdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(be beVar, mc mcVar, td tdVar) {
            beVar.c(this.a, this.b, mcVar, tdVar);
        }

        private a(CopyOnWriteArrayList copyOnWriteArrayList, int i, ae.a aVar, long j) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = aVar;
            this.d = j;
        }

        /* JADX INFO: renamed from: com.applovin.impl.be$a$a, reason: collision with other inner class name */
        private static final class C0016a {
            public Handler a;
            public be b;

            public C0016a(Handler handler, be beVar) {
                this.a = handler;
                this.b = beVar;
            }
        }

        public void c(mc mcVar, int i, int i2, e9 e9Var, int i3, Object obj, long j, long j2) {
            c(mcVar, new td(i, i2, e9Var, i3, obj, a(j), a(j2)));
        }

        public void b(mc mcVar, int i, int i2, e9 e9Var, int i3, Object obj, long j, long j2) {
            b(mcVar, new td(i, i2, e9Var, i3, obj, a(j), a(j2)));
        }

        private long a(long j) {
            long jB = t2.b(j);
            if (jB == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.d + jB;
        }

        public void c(final mc mcVar, final td tdVar) {
            for (C0016a c0016a : this.c) {
                final be beVar = c0016a.b;
                xp.a(c0016a.a, new Runnable() { // from class: com.applovin.impl.be$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(beVar, mcVar, tdVar);
                    }
                });
            }
        }

        public void b(final mc mcVar, final td tdVar) {
            for (C0016a c0016a : this.c) {
                final be beVar = c0016a.b;
                xp.a(c0016a.a, new Runnable() { // from class: com.applovin.impl.be$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(beVar, mcVar, tdVar);
                    }
                });
            }
        }

        public void a(int i, e9 e9Var, int i2, Object obj, long j) {
            a(new td(1, i, e9Var, i2, obj, a(j), -9223372036854775807L));
        }

        public void a(final td tdVar) {
            for (C0016a c0016a : this.c) {
                final be beVar = c0016a.b;
                xp.a(c0016a.a, new Runnable() { // from class: com.applovin.impl.be$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(beVar, tdVar);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(be beVar, td tdVar) {
            beVar.a(this.a, this.b, tdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(be beVar, mc mcVar, td tdVar) {
            beVar.a(this.a, this.b, mcVar, tdVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(be beVar, mc mcVar, td tdVar, IOException iOException, boolean z) {
            beVar.a(this.a, this.b, mcVar, tdVar, iOException, z);
        }

        public void a(mc mcVar, int i, int i2, e9 e9Var, int i3, Object obj, long j, long j2) {
            a(mcVar, new td(i, i2, e9Var, i3, obj, a(j), a(j2)));
        }

        public void a(final mc mcVar, final td tdVar) {
            for (C0016a c0016a : this.c) {
                final be beVar = c0016a.b;
                xp.a(c0016a.a, new Runnable() { // from class: com.applovin.impl.be$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(beVar, mcVar, tdVar);
                    }
                });
            }
        }

        public void a(mc mcVar, int i, int i2, e9 e9Var, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
            a(mcVar, new td(i, i2, e9Var, i3, obj, a(j), a(j2)), iOException, z);
        }

        public void a(final mc mcVar, final td tdVar, final IOException iOException, final boolean z) {
            for (C0016a c0016a : this.c) {
                final be beVar = c0016a.b;
                xp.a(c0016a.a, new Runnable() { // from class: com.applovin.impl.be$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(beVar, mcVar, tdVar, iOException, z);
                    }
                });
            }
        }

        public void a(be beVar) {
            for (C0016a c0016a : this.c) {
                if (c0016a.b == beVar) {
                    this.c.remove(c0016a);
                }
            }
        }

        public a a(int i, ae.a aVar, long j) {
            return new a(this.c, i, aVar, j);
        }
    }
}
