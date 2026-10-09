package com.applovin.impl;

import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.SessionTracker;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class hr {
    private static final Set f = new HashSet();
    private final boolean a;
    private final com.applovin.impl.sdk.j b;
    private Runnable c;
    private final Object d = new Object();
    private final Timer e;

    private TimerTask b() {
        return new a();
    }

    private hr(long j, boolean z, com.applovin.impl.sdk.j jVar, Runnable runnable) {
        Timer timer = new Timer();
        this.e = timer;
        if (j < 0) {
            throw new IllegalArgumentException("Cannot create wall clock timer. Invalid timer length: " + j);
        }
        if (jVar == null) {
            throw new IllegalArgumentException("Cannot create wall clock timer. Sdk is null");
        }
        if (runnable != null) {
            this.a = z;
            this.b = jVar;
            this.c = runnable;
            f.add(this);
            timer.schedule(b(), j);
            return;
        }
        throw new IllegalArgumentException("Cannot create wall clock timer. Runnable is null.");
    }

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!hr.this.b.e0().isApplicationPaused() || hr.this.a) {
                hr.this.c();
            } else {
                AppLovinBroadcastManager.registerReceiver(new C0019a(), new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            }
        }

        /* JADX INFO: renamed from: com.applovin.impl.hr$a$a, reason: collision with other inner class name */
        class C0019a implements AppLovinBroadcastManager.Receiver {
            C0019a() {
            }

            @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
            public void onReceive(Intent intent, Map map) {
                AppLovinBroadcastManager.unregisterReceiver(this);
                hr.this.c();
            }
        }
    }

    public void a() {
        synchronized (this.d) {
            this.e.cancel();
            this.c = null;
            f.remove(this);
        }
    }

    public static hr a(long j, boolean z, com.applovin.impl.sdk.j jVar, Runnable runnable) {
        return new hr(j, z, jVar, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Runnable runnable = this.c;
        if (runnable != null) {
            runnable.run();
            a();
        }
    }
}
