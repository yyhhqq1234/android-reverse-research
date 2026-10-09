package com.applovin.impl;

import android.view.View;
import android.webkit.WebView;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.ErrorType;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class lg {
    protected final AppLovinAdBase a;
    protected final com.applovin.impl.sdk.j b;
    protected final com.applovin.impl.sdk.n c;
    protected final String d;
    protected boolean e;
    protected AdSession f;
    protected AdEvents g;

    protected abstract AdSessionConfiguration a();

    protected abstract AdSessionContext a(WebView webView);

    protected void a(AdSession adSession) {
    }

    public lg(AppLovinAdBase appLovinAdBase) {
        this.a = appLovinAdBase;
        this.b = appLovinAdBase.getSdk();
        this.c = appLovinAdBase.getSdk().I();
        String str = "AdEventTracker:" + appLovinAdBase.getAdIdNumber();
        if (StringUtils.isValidString(appLovinAdBase.getDspName())) {
            str = str + ":" + appLovinAdBase.getDspName();
        }
        this.d = str;
    }

    public void e() {
        c(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WebView webView) {
        AdSessionContext adSessionContextA;
        if (!this.a.isOpenMeasurementEnabled()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.d(this.d, "Skip starting session - Open Measurement disabled");
                return;
            }
            return;
        }
        if (this.f != null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.k(this.d, "Attempting to start session again for ad: " + this.a);
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.d, "Starting session");
        }
        AdSessionConfiguration adSessionConfigurationA = a();
        if (adSessionConfigurationA == null || (adSessionContextA = a(webView)) == null) {
            return;
        }
        try {
            AdSession adSessionCreateAdSession = AdSession.createAdSession(adSessionConfigurationA, adSessionContextA);
            this.f = adSessionCreateAdSession;
            try {
                this.g = AdEvents.createAdEvents(adSessionCreateAdSession);
                a(this.f);
                this.f.start();
                this.e = true;
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.d, "Session started");
                }
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.d, "Failed to create ad events", th);
                }
            }
        } catch (Throwable th2) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.d, "Failed to create session", th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.g.loaded();
    }

    public void h() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.lg$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.g.impressionOccurred();
    }

    public void g() {
        b("track impression event", new Runnable() { // from class: com.applovin.impl.lg$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.c();
            }
        });
    }

    public void f() {
        b("stop session", new Runnable() { // from class: com.applovin.impl.lg$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b();
            }
        });
    }

    public void c(final WebView webView) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.lg$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(webView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            if (this.e) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.d, "Running operation: " + str);
                }
                runnable.run();
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.d, "Failed to run operation: " + str, th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.e = false;
        this.f.finish();
        this.f = null;
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        this.f.error(ErrorType.VIDEO, str);
    }

    protected void b(final String str, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.lg$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, List list) {
        this.f.registerAdView(view);
        this.f.removeAllFriendlyObstructions();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ng ngVar = (ng) it.next();
            if (ngVar.c() != null) {
                try {
                    this.f.addFriendlyObstruction(ngVar.c(), ngVar.b(), ngVar.a());
                } catch (Throwable th) {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.d, "Failed to add friendly obstruction (" + ngVar + ")", th);
                    }
                }
            }
        }
    }

    public void b(final String str) {
        b("track error", new Runnable() { // from class: com.applovin.impl.lg$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str);
            }
        });
    }

    public void a(View view) {
        b(view, Collections.emptyList());
    }

    public void b(final View view, final List list) {
        b("update main view: " + view, new Runnable() { // from class: com.applovin.impl.lg$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(view, list);
            }
        });
    }
}
