package com.applovin.impl;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class sr {
    private static WebView a;
    private static String b;
    private static int e;
    private static String f;
    private static String g;
    private static final Object c = new Object();
    private static final AtomicBoolean d = new AtomicBoolean();
    private static final AtomicBoolean h = new AtomicBoolean();

    static {
        if (e()) {
            b = (String) vj.a(uj.K, "", com.applovin.impl.sdk.j.m());
            return;
        }
        b = "";
        vj.b(uj.K, (Object) null, com.applovin.impl.sdk.j.m());
        vj.b(uj.L, (Object) null, com.applovin.impl.sdk.j.m());
    }

    public static void a(final com.applovin.impl.sdk.j jVar) {
        if (d.getAndSet(true)) {
            return;
        }
        if (((Boolean) jVar.a(sj.c4)).booleanValue() && e()) {
            return;
        }
        if (z3.d()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sr$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    sr.d(jVar);
                }
            });
        } else {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sr$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    sr.e(jVar);
                }
            });
        }
    }

    public static String b() {
        return g;
    }

    public static String c() {
        return f;
    }

    public static int d() {
        return e;
    }

    public static void f(com.applovin.impl.sdk.j jVar) {
    }

    public static void b(com.applovin.impl.sdk.j jVar) {
        if (h.getAndSet(true)) {
            return;
        }
        PackageInfo packageInfoC = c(jVar);
        if (packageInfoC != null) {
            e = packageInfoC.versionCode;
            f = packageInfoC.versionName;
            g = packageInfoC.packageName;
        } else {
            jVar.I();
            if (com.applovin.impl.sdk.n.a()) {
                jVar.I().b("WebViewDataCollector", "Failed to get WebView package info");
            }
        }
    }

    private static PackageInfo c(com.applovin.impl.sdk.j jVar) {
        PackageManager packageManager = com.applovin.impl.sdk.j.m().getPackageManager();
        if (z3.i()) {
            return WebView.getCurrentWebViewPackage();
        }
        Iterator it = jVar.c(sj.q4).iterator();
        while (it.hasNext()) {
            try {
                return packageManager.getPackageInfo((String) it.next(), 0);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0028 */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void d(com.applovin.impl.sdk.j r4) {
        /*
            java.lang.Object r0 = com.applovin.impl.sr.c     // Catch: java.lang.Throwable -> L28
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L28
            android.content.Context r1 = com.applovin.impl.sdk.j.m()     // Catch: java.lang.Throwable -> L25
            java.lang.String r1 = android.webkit.WebSettings.getDefaultUserAgent(r1)     // Catch: java.lang.Throwable -> L25
            com.applovin.impl.sr.b = r1     // Catch: java.lang.Throwable -> L25
            com.applovin.impl.uj r1 = com.applovin.impl.uj.K     // Catch: java.lang.Throwable -> L25
            java.lang.String r2 = com.applovin.impl.sr.b     // Catch: java.lang.Throwable -> L25
            android.content.Context r3 = com.applovin.impl.sdk.j.m()     // Catch: java.lang.Throwable -> L25
            com.applovin.impl.vj.b(r1, r2, r3)     // Catch: java.lang.Throwable -> L25
            com.applovin.impl.uj r1 = com.applovin.impl.uj.L     // Catch: java.lang.Throwable -> L25
            java.lang.String r2 = android.os.Build.VERSION.RELEASE     // Catch: java.lang.Throwable -> L25
            android.content.Context r3 = com.applovin.impl.sdk.j.m()     // Catch: java.lang.Throwable -> L25
            com.applovin.impl.vj.b(r1, r2, r3)     // Catch: java.lang.Throwable -> L25
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L25
            goto L48
        L25:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L25
            throw r1     // Catch: java.lang.Throwable -> L28
        L28:
            r0 = move-exception
            r4.I()
            boolean r1 = com.applovin.impl.sdk.n.a()
            if (r1 == 0) goto L3d
            com.applovin.impl.sdk.n r1 = r4.I()
            java.lang.String r2 = "WebViewDataCollector"
            java.lang.String r3 = "Failed to collect user agent"
            r1.a(r2, r3, r0)
        L3d:
            com.applovin.impl.la r4 = r4.D()
            java.lang.String r1 = "WebViewDataCollector"
            java.lang.String r2 = "collectUserAgent"
            r4.a(r1, r2, r0)
        L48:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sr.d(com.applovin.impl.sdk.j):void");
    }

    public static String a() {
        String str;
        synchronized (c) {
            str = b;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x002d */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void e(com.applovin.impl.sdk.j r4) {
        /*
            f(r4)     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r0 = com.applovin.impl.sr.c     // Catch: java.lang.Throwable -> L2d
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L2d
            android.webkit.WebView r1 = com.applovin.impl.sr.a     // Catch: java.lang.Throwable -> L2a
            android.webkit.WebSettings r1 = r1.getSettings()     // Catch: java.lang.Throwable -> L2a
            java.lang.String r1 = r1.getUserAgentString()     // Catch: java.lang.Throwable -> L2a
            com.applovin.impl.sr.b = r1     // Catch: java.lang.Throwable -> L2a
            com.applovin.impl.uj r1 = com.applovin.impl.uj.K     // Catch: java.lang.Throwable -> L2a
            java.lang.String r2 = com.applovin.impl.sr.b     // Catch: java.lang.Throwable -> L2a
            android.content.Context r3 = com.applovin.impl.sdk.j.m()     // Catch: java.lang.Throwable -> L2a
            com.applovin.impl.vj.b(r1, r2, r3)     // Catch: java.lang.Throwable -> L2a
            com.applovin.impl.uj r1 = com.applovin.impl.uj.L     // Catch: java.lang.Throwable -> L2a
            java.lang.String r2 = android.os.Build.VERSION.RELEASE     // Catch: java.lang.Throwable -> L2a
            android.content.Context r3 = com.applovin.impl.sdk.j.m()     // Catch: java.lang.Throwable -> L2a
            com.applovin.impl.vj.b(r1, r2, r3)     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            goto L4d
        L2a:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2a
            throw r1     // Catch: java.lang.Throwable -> L2d
        L2d:
            r0 = move-exception
            r4.I()
            boolean r1 = com.applovin.impl.sdk.n.a()
            if (r1 == 0) goto L42
            com.applovin.impl.sdk.n r1 = r4.I()
            java.lang.String r2 = "WebViewDataCollector"
            java.lang.String r3 = "Failed to collect user agent"
            r1.a(r2, r3, r0)
        L42:
            com.applovin.impl.la r4 = r4.D()
            java.lang.String r1 = "WebViewDataCollector"
            java.lang.String r2 = "collectUserAgent"
            r4.a(r1, r2, r0)
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sr.e(com.applovin.impl.sdk.j):void");
    }

    public static boolean e() {
        boolean zEquals;
        synchronized (c) {
            zEquals = Build.VERSION.RELEASE.equals((String) vj.a(uj.L, "", com.applovin.impl.sdk.j.m()));
        }
        return zEquals;
    }
}
