package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.applovin.impl.ba;
import com.applovin.impl.sj;
import com.applovin.impl.yp;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class SessionTracker {
    public static final String ACTION_APPLICATION_PAUSED = "com.applovin.application_paused";
    public static final String ACTION_APPLICATION_RESUMED = "com.applovin.application_resumed";
    final j a;
    private final AtomicBoolean b = new AtomicBoolean();
    private final AtomicBoolean c = new AtomicBoolean();
    private final AtomicInteger d = new AtomicInteger();
    private final AtomicLong e = new AtomicLong();
    private final AtomicLong f = new AtomicLong();
    private Date g;
    private Date h;

    class a extends com.applovin.impl.p {
        a() {
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            SessionTracker.this.b();
        }
    }

    class b implements ComponentCallbacks2 {
        b() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            SessionTracker.this.d.set(i);
            if (i == 20) {
                SessionTracker.this.a();
            }
        }
    }

    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                if (yp.g()) {
                    SessionTracker.this.b();
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                SessionTracker.this.a();
            }
        }
    }

    SessionTracker(j jVar) {
        this.a = jVar;
        Application application = (Application) j.m();
        application.registerActivityLifecycleCallbacks(new a());
        application.registerComponentCallbacks(new b());
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new c(), intentFilter);
    }

    private void d() {
        this.a.I();
        if (n.a()) {
            this.a.I().a("SessionTracker", "Application Resumed");
        }
        this.f.set(System.currentTimeMillis());
        boolean zBooleanValue = ((Boolean) this.a.a(sj.v3)).booleanValue();
        long jLongValue = ((Long) this.a.a(sj.w3)).longValue();
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_RESUMED), null);
        if (this.b.getAndSet(false)) {
            return;
        }
        long millis = TimeUnit.MINUTES.toMillis(jLongValue);
        if (this.h == null || System.currentTimeMillis() - this.h.getTime() >= millis) {
            this.a.z().trackEvent("resumed");
            if (zBooleanValue) {
                this.h = new Date();
            }
        }
        if (!zBooleanValue) {
            this.h = new Date();
        }
        this.a.C().c(ba.p);
    }

    public long getAppEnteredBackgroundTimeMillis() {
        return this.e.get();
    }

    public long getAppEnteredForegroundTimeMillis() {
        return this.f.get();
    }

    public int getLastTrimMemoryLevel() {
        return this.d.get();
    }

    public boolean isApplicationPaused() {
        return this.c.get();
    }

    public void pauseForClick() {
        this.b.set(true);
    }

    public void resumeForClick() {
        this.b.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.c.compareAndSet(false, true)) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.c.compareAndSet(true, false)) {
            d();
        }
    }

    private void c() {
        this.a.I();
        if (n.a()) {
            this.a.I().a("SessionTracker", "Application Paused");
        }
        this.e.set(System.currentTimeMillis());
        AppLovinBroadcastManager.sendBroadcastSync(new Intent(ACTION_APPLICATION_PAUSED), null);
        if (this.b.get()) {
            return;
        }
        boolean zBooleanValue = ((Boolean) this.a.a(sj.v3)).booleanValue();
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.a.a(sj.x3)).longValue());
        if (this.g == null || System.currentTimeMillis() - this.g.getTime() >= millis) {
            this.a.z().trackEvent(y8.h.e0);
            if (zBooleanValue) {
                this.g = new Date();
            }
        }
        if (zBooleanValue) {
            return;
        }
        this.g = new Date();
    }
}
