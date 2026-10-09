package com.applovin.impl;

import androidx.privacysandbox.ads.adservices.adid.AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class fi {
    public static final Executor h = new Executor() { // from class: com.applovin.impl.fi$$ExternalSyntheticLambda4
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        }
    };
    public static final Executor i = new AdIdManager$Api33Ext4Impl$$ExternalSyntheticLambda0();
    private final String b;
    private volatile Object f;
    private volatile Object g;
    private final Object a = new Object();
    private final List c = new ArrayList();
    private volatile boolean d = false;
    private volatile boolean e = false;

    public interface a {
        void a(Object obj);
    }

    public interface b {
        void a(boolean z, Object obj, Object obj2);
    }

    public fi(String str) {
        this.b = str;
    }

    public void a(Executor executor, b bVar) {
        Runnable runnableC = c(executor, bVar);
        synchronized (this.a) {
            if (!this.d) {
                this.c.add(runnableC);
            } else {
                runnableC.run();
            }
        }
    }

    public boolean c() {
        return this.d;
    }

    public boolean d() {
        return this.d && !this.e;
    }

    public String b() {
        String str = this.b;
        return str != null ? str : super.toString();
    }

    public String toString() {
        String str;
        if (!this.d) {
            str = "Waiting";
        } else if (this.e) {
            str = "Success -> " + this.f;
        } else {
            str = "Failed -> " + this.g;
        }
        return "Promise(" + b() + ": " + str + ")";
    }

    public void a(Executor executor, final a aVar) {
        a(executor, new b() { // from class: com.applovin.impl.fi$$ExternalSyntheticLambda3
            @Override // com.applovin.impl.fi.b
            public final void a(boolean z, Object obj, Object obj2) {
                fi.a(aVar, z, obj, obj2);
            }
        });
    }

    public void a(Executor executor, final Runnable runnable) {
        a(executor, new b() { // from class: com.applovin.impl.fi$$ExternalSyntheticLambda1
            @Override // com.applovin.impl.fi.b
            public final void a(boolean z, Object obj, Object obj2) {
                fi.a(runnable, z, obj, obj2);
            }
        });
    }

    private Runnable c(final Executor executor, final b bVar) {
        return new Runnable() { // from class: com.applovin.impl.fi$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(executor, bVar);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Executor executor, final b bVar) {
        try {
            executor.execute(new Runnable() { // from class: com.applovin.impl.fi$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(bVar);
                }
            });
        } catch (Throwable th) {
            a(th);
        }
    }

    public fi b(Object obj) {
        a(true, obj, null);
        return this;
    }

    public Object a() {
        p6.a(d());
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, boolean z, Object obj, Object obj2) {
        if (z) {
            return;
        }
        aVar.a(obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Runnable runnable, boolean z, Object obj, Object obj2) {
        if (z) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar) {
        try {
            bVar.a(this.e, this.f, this.g);
        } catch (Throwable th) {
            a(th);
        }
    }

    private void a(Throwable th) {
        p6.a(th);
        com.applovin.impl.sdk.j jVar = com.applovin.impl.sdk.j.u0;
        if (jVar != null) {
            jVar.D().a("Promise", "PromiseCallback: " + b(), th);
        }
    }

    public fi a(Object obj) {
        a(false, null, obj);
        return this;
    }

    private void a(boolean z, Object obj, Object obj2) {
        synchronized (this.a) {
            if (this.d) {
                return;
            }
            this.f = obj;
            this.g = obj2;
            this.e = z;
            this.d = true;
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
            this.c.clear();
        }
    }

    public static fi a(String str, Object obj) {
        return new fi(str).b(obj);
    }
}
