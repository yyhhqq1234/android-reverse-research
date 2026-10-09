package com.applovin.impl.sdk;

import com.applovin.impl.sj;
import com.applovin.impl.ze;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private static final a j = new a();
    private final j a;
    private long c;
    private long f;
    private Object g;
    private final AtomicBoolean b = new AtomicBoolean();
    private final Object d = new Object();
    private final AtomicBoolean e = new AtomicBoolean();
    private final Map h = new HashMap();
    private final Object i = new Object();

    public static class a {
        private long a = -1;
        private int b;

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aVar.a((Object) this) && b() == aVar.b() && a() == aVar.a();
        }

        public int hashCode() {
            long jB = b();
            return ((((int) (jB ^ (jB >>> 32))) + 59) * 59) + a();
        }

        public String toString() {
            return "FullScreenAdTracker.LostShowAttemptsData(lastAttemptedTimeMillis=" + b() + ", attemptCount=" + a() + ")";
        }

        static /* synthetic */ int a(a aVar) {
            int i = aVar.b;
            aVar.b = i + 1;
            return i;
        }

        public int a() {
            return this.b;
        }
    }

    m(j jVar) {
        this.a = jVar;
    }

    public void a(boolean z) {
        synchronized (this.d) {
            this.e.set(z);
            if (z) {
                this.f = System.currentTimeMillis();
                this.a.I();
                if (n.a()) {
                    this.a.I().a("FullScreenAdTracker", "Setting fullscreen ad pending display: " + this.f);
                }
                final Long l = (Long) this.a.a(sj.Q1);
                if (l.longValue() >= 0) {
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.m$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(l);
                        }
                    }, l.longValue());
                }
            } else {
                this.f = 0L;
                this.a.I();
                if (n.a()) {
                    this.a.I().a("FullScreenAdTracker", "Setting fullscreen ad not pending display: " + System.currentTimeMillis());
                }
            }
        }
    }

    public long b() {
        return this.c;
    }

    public boolean c() {
        return this.b.get();
    }

    public boolean d() {
        return this.e.get();
    }

    public void b(Object obj) {
        if (!ze.a(obj) && this.b.compareAndSet(true, false)) {
            this.g = null;
            this.a.I();
            if (n.a()) {
                this.a.I().a("FullScreenAdTracker", "Setting fullscreen ad hidden: " + System.currentTimeMillis());
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_hidden", obj);
        }
    }

    public void c(String str) {
        synchronized (this.i) {
            a aVar = (a) this.h.get(str);
            if (aVar == null) {
                aVar = new a();
                this.h.put(str, aVar);
            }
            aVar.a = System.currentTimeMillis();
            a.a(aVar);
        }
    }

    public a b(String str) {
        a aVar;
        synchronized (this.i) {
            aVar = (a) this.h.get(str);
            if (aVar == null) {
                aVar = j;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l) {
        if (d() && System.currentTimeMillis() - this.f >= l.longValue()) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("FullScreenAdTracker", "Resetting \"pending display\" state...");
            }
            this.e.set(false);
        }
    }

    public Object a() {
        return this.g;
    }

    public void a(final Object obj) {
        if (!ze.a(obj) && this.b.compareAndSet(false, true)) {
            this.g = obj;
            this.c = System.currentTimeMillis();
            this.a.I();
            if (n.a()) {
                this.a.I().a("FullScreenAdTracker", "Setting fullscreen ad displayed: " + this.c);
            }
            AppLovinBroadcastManager.sendBroadcastWithAdObject("com.applovin.fullscreen_ad_displayed", obj);
            final Long l = (Long) this.a.a(sj.R1);
            if (l.longValue() >= 0) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.m$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(l, obj);
                    }
                }, l.longValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l, Object obj) {
        if (this.b.get() && System.currentTimeMillis() - this.c >= l.longValue()) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("FullScreenAdTracker", "Resetting \"display\" state...");
            }
            b(obj);
        }
    }

    public void a(String str) {
        synchronized (this.i) {
            this.h.remove(str);
        }
    }
}
