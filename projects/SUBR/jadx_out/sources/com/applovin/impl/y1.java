package com.applovin.impl;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface y1 {
    xo a();

    void a(Handler handler, a aVar);

    void a(a aVar);

    public interface a {
        void a(int i, long j, long j2);

        /* JADX INFO: renamed from: com.applovin.impl.y1$a$a, reason: collision with other inner class name */
        public static final class C0042a {
            private final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

            public void a(Handler handler, a aVar) {
                b1.a(handler);
                b1.a(aVar);
                a(aVar);
                this.a.add(new C0043a(handler, aVar));
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: com.applovin.impl.y1$a$a$a, reason: collision with other inner class name */
            static final class C0043a {
                private final Handler a;
                private final a b;
                private boolean c;

                public C0043a(Handler handler, a aVar) {
                    this.a = handler;
                    this.b = aVar;
                }

                public void a() {
                    this.c = true;
                }
            }

            public void a(final int i, final long j, final long j2) {
                for (final C0043a c0043a : this.a) {
                    if (!c0043a.c) {
                        c0043a.a.post(new Runnable() { // from class: com.applovin.impl.y1$a$a$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                y1.a.C0042a.a(c0043a, i, j, j2);
                            }
                        });
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void a(C0043a c0043a, int i, long j, long j2) {
                c0043a.b.a(i, j, j2);
            }

            public void a(a aVar) {
                for (C0043a c0043a : this.a) {
                    if (c0043a.b == aVar) {
                        c0043a.a();
                        this.a.remove(c0043a);
                    }
                }
            }
        }
    }
}
