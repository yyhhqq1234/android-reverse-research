package com.applovin.impl;

import java.lang.ref.WeakReference;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public interface ub {

    public interface a {
        Object a();
    }

    public interface b {
        void a(Object obj);
    }

    Object a(a aVar);

    void a(Object obj, b bVar);

    public static class d implements ub {
        private final c a = new c();

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ WeakReference b(a aVar) {
            return new WeakReference(aVar.a());
        }

        @Override // com.applovin.impl.ub
        public Object a(final a aVar) {
            Object obj;
            do {
                obj = ((WeakReference) this.a.a(new a() { // from class: com.applovin.impl.ub$d$$ExternalSyntheticLambda0
                    @Override // com.applovin.impl.ub.a
                    public final Object a() {
                        return ub.d.b(aVar);
                    }
                })).get();
            } while (obj == null);
            return obj;
        }

        @Override // com.applovin.impl.ub
        public void a(final Object obj, final b bVar) {
            p6.a(obj);
            this.a.a(new WeakReference(obj), new b() { // from class: com.applovin.impl.ub$d$$ExternalSyntheticLambda1
                @Override // com.applovin.impl.ub.b
                public final void a(Object obj2) {
                    bVar.a(obj);
                }
            });
        }
    }

    public static class c implements ub {
        private final int a;
        private final Stack b;

        public c() {
            this(3);
        }

        @Override // com.applovin.impl.ub
        public synchronized Object a(a aVar) {
            return this.b.isEmpty() ? aVar.a() : this.b.pop();
        }

        public c(int i) {
            this.b = new Stack();
            this.a = i;
        }

        @Override // com.applovin.impl.ub
        public synchronized void a(Object obj, b bVar) {
            try {
                if (this.b.size() < this.a) {
                    this.b.push(obj);
                } else {
                    try {
                        bVar.a(obj);
                    } catch (RuntimeException e) {
                        p6.a((Throwable) e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
