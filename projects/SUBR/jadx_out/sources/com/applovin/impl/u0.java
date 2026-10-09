package com.applovin.impl;

import android.os.Handler;
import android.os.HandlerThread;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.messaging.Constants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class u0 {
    private static final u0 l = new u0();
    private Handler b;
    private Handler d;
    private com.applovin.impl.sdk.j g;
    private Thread h;
    private long i;
    private long j;
    private long k;
    private final AtomicLong a = new AtomicLong(0);
    private final HandlerThread c = new HandlerThread("AppLovinSdk:anr_detector");
    private final AtomicBoolean e = new AtomicBoolean();
    private final AtomicBoolean f = new AtomicBoolean();

    private u0() {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.i = timeUnit.toMillis(4L);
        this.j = timeUnit.toMillis(3L);
        this.k = timeUnit.toMillis(3L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.h = Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f.get()) {
            this.e.set(true);
        }
    }

    private class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.this.e.get()) {
                return;
            }
            u0.this.a.set(System.currentTimeMillis());
            u0.this.b.postDelayed(this, u0.this.j);
        }
    }

    private class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            if (u0.this.e.get()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - u0.this.a.get();
            if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > u0.this.i) {
                u0.this.a();
                if (u0.this.h == null || u0.this.h.getStackTrace().length <= 0) {
                    str = "None";
                } else {
                    StackTraceElement stackTraceElement = u0.this.h.getStackTrace()[0];
                    str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
                }
                long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - com.applovin.impl.sdk.j.l());
                HashMap map = new HashMap(3);
                map.put("top_main_method", str);
                map.put(Constants.ScionAnalytics.PARAM_SOURCE, u0.this.g.r0() ? "non_first_session" : "first_session");
                map.put("details", "seconds_since_app_launch=" + seconds);
                u0.this.g.D().a(ka.M, (Map) map);
            }
            u0.this.d.postDelayed(this, u0.this.k);
        }
    }

    private void a(com.applovin.impl.sdk.j jVar) {
        if (this.f.compareAndSet(false, true)) {
            this.g = jVar;
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.u0$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b();
                }
            });
            this.i = ((Long) jVar.a(sj.N5)).longValue();
            this.j = ((Long) jVar.a(sj.O5)).longValue();
            this.k = ((Long) jVar.a(sj.P5)).longValue();
            this.b = new Handler(com.applovin.impl.sdk.j.m().getMainLooper());
            this.c.start();
            this.b.post(new c());
            Handler handler = new Handler(this.c.getLooper());
            this.d = handler;
            handler.postDelayed(new b(), this.k / 2);
        }
    }

    public static void b(com.applovin.impl.sdk.j jVar) {
        if (jVar != null) {
            if (((Boolean) jVar.a(sj.M5)).booleanValue() && !yp.c(jVar)) {
                l.a(jVar);
            } else {
                l.a();
            }
        }
    }
}
