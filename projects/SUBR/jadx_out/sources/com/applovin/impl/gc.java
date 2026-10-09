package com.applovin.impl;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public final class gc {
    private final l3 a;
    private final ia b;
    private final b c;
    private final CopyOnWriteArraySet d;
    private final ArrayDeque e;
    private final ArrayDeque f;
    private boolean g;

    public interface a {
        void a(Object obj);
    }

    public interface b {
        void a(Object obj, a9 a9Var);
    }

    public gc(Looper looper, l3 l3Var, b bVar) {
        this(new CopyOnWriteArraySet(), looper, l3Var, bVar);
    }

    public void a(Object obj) {
        if (this.g) {
            return;
        }
        b1.a(obj);
        this.d.add(new c(obj));
    }

    private gc(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, l3 l3Var, b bVar) {
        this.a = l3Var;
        this.d = copyOnWriteArraySet;
        this.c = bVar;
        this.e = new ArrayDeque();
        this.f = new ArrayDeque();
        this.b = l3Var.a(looper, new Handler.Callback() { // from class: com.applovin.impl.gc$$ExternalSyntheticLambda1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.a(message);
            }
        });
    }

    public void b() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b(this.c);
        }
        this.d.clear();
        this.g = true;
    }

    private static final class c {
        public final Object a;
        private a9.b b = new a9.b();
        private boolean c;
        private boolean d;

        public c(Object obj) {
            this.a = obj;
        }

        public void b(b bVar) {
            this.d = true;
            if (this.c) {
                bVar.a(this.a, this.b.a());
            }
        }

        public void a(int i, a aVar) {
            if (this.d) {
                return;
            }
            if (i != -1) {
                this.b.a(i);
            }
            this.c = true;
            aVar.a(this.a);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            return this.a.equals(((c) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public void a(b bVar) {
            if (this.d || !this.c) {
                return;
            }
            a9 a9VarA = this.b.a();
            this.b = new a9.b();
            this.c = false;
            bVar.a(this.a, a9VarA);
        }
    }

    public void a() {
        if (this.f.isEmpty()) {
            return;
        }
        if (!this.b.a(0)) {
            ia iaVar = this.b;
            iaVar.a(iaVar.d(0));
        }
        boolean z = !this.e.isEmpty();
        this.e.addAll(this.f);
        this.f.clear();
        if (z) {
            return;
        }
        while (!this.e.isEmpty()) {
            ((Runnable) this.e.peekFirst()).run();
            this.e.removeFirst();
        }
    }

    public void b(Object obj) {
        for (c cVar : this.d) {
            if (cVar.a.equals(obj)) {
                cVar.b(this.c);
                this.d.remove(cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Message message) {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(this.c);
            if (this.b.a(0)) {
                return true;
            }
        }
        return true;
    }

    public void b(int i, a aVar) {
        a(i, aVar);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(CopyOnWriteArraySet copyOnWriteArraySet, int i, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i, aVar);
        }
    }

    public void a(final int i, final a aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.d);
        this.f.add(new Runnable() { // from class: com.applovin.impl.gc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                gc.a(copyOnWriteArraySet, i, aVar);
            }
        });
    }

    public gc a(Looper looper, b bVar) {
        return new gc(this.d, looper, this.a, bVar);
    }
}
