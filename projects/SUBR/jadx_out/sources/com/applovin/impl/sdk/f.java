package com.applovin.impl.sdk;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.go;
import com.applovin.impl.ue;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class f implements AppLovinBroadcastManager.Receiver {
    private go a;
    private final Object b = new Object();
    private final AtomicBoolean c = new AtomicBoolean();
    private boolean d;
    private final j f;
    private final WeakReference g;
    private long h;

    public interface a {
        void onAdRefresh();
    }

    public f(j jVar, a aVar) {
        this.g = new WeakReference(aVar);
        this.f = jVar;
    }

    private void e() {
        if (((Boolean) this.f.a(ue.T6)).booleanValue()) {
            k();
        }
    }

    private void f() {
        if (((Boolean) this.f.a(ue.T6)).booleanValue()) {
            synchronized (this.b) {
                if (this.d) {
                    this.f.I();
                    if (n.a()) {
                        this.f.I().a("AdRefreshManager", "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                    }
                } else if (this.f.e0().isApplicationPaused()) {
                    this.f.I();
                    if (n.a()) {
                        this.f.I().a("AdRefreshManager", "Waiting for the application to enter foreground to resume the timer.");
                    }
                } else {
                    go goVar = this.a;
                    if (goVar != null) {
                        goVar.e();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        l();
        a aVar = (a) this.g.get();
        if (aVar != null) {
            aVar.onAdRefresh();
        }
    }

    private void k() {
        synchronized (this.b) {
            go goVar = this.a;
            if (goVar != null) {
                goVar.d();
            } else {
                this.f.I();
                if (n.a()) {
                    this.f.I().a("AdRefreshManager", "An ad load is in progress. Will pause refresh once the ad finishes loading.");
                }
                this.c.set(true);
            }
        }
    }

    private void l() {
        synchronized (this.b) {
            this.a = null;
            if (!((Boolean) this.f.a(ue.U6)).booleanValue()) {
                AppLovinBroadcastManager.unregisterReceiver(this);
            }
        }
    }

    private void n() {
        synchronized (this.b) {
            go goVar = this.a;
            if (goVar != null) {
                goVar.e();
            } else {
                this.c.set(false);
            }
        }
    }

    public void a(long j) {
        synchronized (this.b) {
            a();
            this.h = j;
            this.a = go.a(j, this.f, new Runnable() { // from class: com.applovin.impl.sdk.f$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.i();
                }
            });
            if (!((Boolean) this.f.a(ue.U6)).booleanValue()) {
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_displayed"));
                AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_hidden"));
            }
            if (((Boolean) this.f.a(ue.T6)).booleanValue() && (this.f.B().c() || this.f.e0().isApplicationPaused())) {
                this.a.d();
            }
            if (this.c.compareAndSet(true, false) && ((Boolean) this.f.a(ue.V6)).booleanValue()) {
                this.f.I();
                if (n.a()) {
                    this.f.I().a("AdRefreshManager", "Pausing refresh for a previous request.");
                }
                this.a.d();
            }
        }
    }

    public long b() {
        long jC;
        synchronized (this.b) {
            go goVar = this.a;
            jC = goVar != null ? goVar.c() : -1L;
        }
        return jC;
    }

    public void c() {
        if (((Boolean) this.f.a(ue.S6)).booleanValue()) {
            k();
        }
    }

    public void d() {
        boolean z;
        a aVar;
        if (((Boolean) this.f.a(ue.S6)).booleanValue()) {
            synchronized (this.b) {
                if (this.d) {
                    this.f.I();
                    if (n.a()) {
                        this.f.I().a("AdRefreshManager", "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                    }
                    return;
                }
                if (this.f.B().c()) {
                    this.f.I();
                    if (n.a()) {
                        this.f.I().a("AdRefreshManager", "Waiting for the full screen ad to be dismissed to resume the timer.");
                    }
                    return;
                }
                if (this.a != null) {
                    long jB = this.h - b();
                    long jLongValue = ((Long) this.f.a(ue.R6)).longValue();
                    if (jLongValue < 0 || jB <= jLongValue) {
                        this.a.e();
                        z = false;
                    } else {
                        a();
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (!z || (aVar = (a) this.g.get()) == null) {
                    return;
                }
                aVar.onAdRefresh();
            }
        }
    }

    public boolean g() {
        return this.d;
    }

    public boolean h() {
        boolean z;
        synchronized (this.b) {
            z = this.a != null;
        }
        return z;
    }

    public void j() {
        synchronized (this.b) {
            k();
            this.d = true;
        }
    }

    public void m() {
        synchronized (this.b) {
            n();
            this.d = false;
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            c();
            return;
        }
        if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            d();
        } else if ("com.applovin.fullscreen_ad_displayed".equals(action)) {
            e();
        } else if ("com.applovin.fullscreen_ad_hidden".equals(action)) {
            f();
        }
    }

    public void a() {
        synchronized (this.b) {
            go goVar = this.a;
            if (goVar != null) {
                goVar.a();
                l();
            }
        }
    }
}
