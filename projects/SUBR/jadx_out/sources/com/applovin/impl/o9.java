package com.applovin.impl;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class o9 implements jb.a, AppLovinBroadcastManager.Receiver, com.applovin.impl.adview.a.b {
    protected boolean A;
    protected AppLovinAdClickListener B;
    protected AppLovinAdDisplayListener C;
    protected AppLovinAdVideoPlaybackListener D;
    protected final jb E;
    protected go F;
    protected go G;
    protected boolean H;
    private final j2 I;
    protected final com.applovin.impl.sdk.ad.b a;
    protected final com.applovin.impl.sdk.j b;
    protected final com.applovin.impl.sdk.n c;
    protected Activity d;
    private final p g;
    private final com.applovin.impl.sdk.h.a h;
    protected AppLovinAdView i;
    protected com.applovin.impl.adview.k j;
    protected final com.applovin.impl.adview.g k;
    protected final com.applovin.impl.adview.g l;
    protected long q;
    private boolean r;
    protected boolean s;
    protected int t;
    protected boolean u;
    private final Handler f = new Handler(Looper.getMainLooper());
    protected final long m = SystemClock.elapsedRealtime();
    private final AtomicBoolean n = new AtomicBoolean();
    private final AtomicBoolean o = new AtomicBoolean();
    protected long p = -1;
    private int v = 0;
    private final ArrayList w = new ArrayList();
    protected int x = 0;
    protected int y = 0;
    protected int z = com.applovin.impl.sdk.h.i;
    private boolean J = false;

    public interface d {
        void a(o9 o9Var);

        void a(String str, Throwable th);
    }

    public abstract void a(long j);

    public abstract void a(ViewGroup viewGroup);

    public void h() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "Handling al_onPoststitialShow evaluation error");
        }
    }

    public void i() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "Handling render process crash");
        }
        this.s = true;
    }

    protected boolean k() {
        return AppLovinAdType.INCENTIVIZED == this.a.getType() || AppLovinAdType.AUTO_INCENTIVIZED == this.a.getType();
    }

    protected abstract void o();

    public void s() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "onBackPressed()");
        }
        if (this.J) {
            f();
        }
        if (this.a.W0()) {
            c("javascript:onBackPressed();");
        }
    }

    public void u() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "onPause()");
        }
        b("javascript:al_onAppPaused();");
        if (this.E.b()) {
            this.E.a();
        }
        p();
    }

    public void v() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "onResume()");
        }
        b("javascript:al_onAppResumed();");
        q();
        if (this.E.b()) {
            this.E.a();
        }
    }

    public void w() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "onStop()");
        }
    }

    public abstract void x();

    public abstract void y();

    static /* synthetic */ int c(o9 o9Var) {
        int i = o9Var.v;
        o9Var.v = i + 1;
        return i;
    }

    o9(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.j jVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.a = bVar;
        this.b = jVar;
        this.c = jVar.I();
        this.d = activity;
        this.B = appLovinAdClickListener;
        this.C = appLovinAdDisplayListener;
        this.D = appLovinAdVideoPlaybackListener;
        jb jbVar = new jb(activity, jVar);
        this.E = jbVar;
        jbVar.a(this);
        this.I = new j2(jVar);
        e eVar = new e(this, null);
        if (((Boolean) jVar.a(sj.A2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
        }
        if (((Boolean) jVar.a(sj.G2)).booleanValue()) {
            AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.al_onPoststitialShow_evaluation_error"));
        }
        m9 m9Var = new m9(jVar.q0(), AppLovinAdSize.INTERSTITIAL, activity);
        this.i = m9Var;
        m9Var.setAdClickListener(eVar);
        this.i.setAdDisplayListener(new a());
        bVar.e().putString("ad_view_address", zq.a(this.i));
        this.i.getController().a(this);
        da daVar = new da(map, jVar);
        if (daVar.c()) {
            this.j = new com.applovin.impl.adview.k(daVar, activity);
        }
        jVar.j().trackImpression(bVar);
        List listL = bVar.L();
        if (bVar.p() < 0 && listL == null) {
            this.k = null;
        } else {
            com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.n(), activity);
            this.k = gVar;
            gVar.setVisibility(8);
            gVar.setOnClickListener(eVar);
        }
        com.applovin.impl.adview.g gVar2 = new com.applovin.impl.adview.g(com.applovin.impl.adview.e.a.WHITE_ON_TRANSPARENT, activity);
        this.l = gVar2;
        gVar2.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.o9$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.b(view);
            }
        });
        if (bVar.Y0()) {
            this.h = new b();
        } else {
            this.h = null;
        }
        this.g = new c();
    }

    class a implements AppLovinAdDisplayListener {
        a() {
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.n nVar = o9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                o9.this.c.a("AppLovinFullscreenActivity", "Web content rendered");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.n nVar = o9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                o9.this.c.a("AppLovinFullscreenActivity", "Closing from WebView");
            }
            o9.this.f();
        }
    }

    class b implements com.applovin.impl.sdk.h.a {
        b() {
        }

        @Override // com.applovin.impl.sdk.h.a
        public void a(int i) {
            o9 o9Var = o9.this;
            if (o9Var.z != com.applovin.impl.sdk.h.i) {
                o9Var.A = true;
            }
            com.applovin.impl.adview.b bVarG = o9Var.i.getController().g();
            if (bVarG == null) {
                com.applovin.impl.sdk.n nVar = o9.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    o9.this.c.k("AppLovinFullscreenActivity", "Unable to handle ringer mode change: no valid web view.");
                }
            } else if (com.applovin.impl.sdk.h.a(i) && !com.applovin.impl.sdk.h.a(o9.this.z)) {
                bVarG.a("javascript:al_muteSwitchOn();");
            } else if (i == 2) {
                bVarG.a("javascript:al_muteSwitchOff();");
            }
            o9.this.z = i;
        }
    }

    class c extends p {
        c() {
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (!activity.getClass().getName().equals(yp.l(activity.getApplicationContext())) || o9.this.o.get()) {
                return;
            }
            com.applovin.impl.sdk.n.h("AppLovinFullscreenActivity", "Dismissing on-screen ad due to app relaunched via launcher.");
            try {
                o9.this.f();
            } catch (Throwable th) {
                com.applovin.impl.sdk.n.c("AppLovinFullscreenActivity", "Failed to dismiss ad.", th);
                try {
                    o9.this.n();
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        f();
    }

    private void z() {
        if (this.h != null) {
            this.b.o().a(this.h);
        }
        if (this.g != null) {
            this.b.e().a(this.g);
        }
    }

    protected boolean a(boolean z) {
        List listA = yp.a(z, this.a, this.b, this.d);
        if (listA.isEmpty()) {
            return false;
        }
        if (((Boolean) this.b.a(sj.G5)).booleanValue()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b("AppLovinFullscreenActivity", "Dismissing ad due to missing resources: " + listA);
            }
            sb.a(this.a, this.C, "Missing ad resources", null, null);
            f();
            HashMap map = new HashMap();
            CollectionUtils.putStringIfValid("error_message", "Missing ad resources: " + listA, map);
            CollectionUtils.putStringIfValid("details", "Failing ad display", map);
            this.b.D().a(ka.Q, "missingCachedAdResources", (Map) map);
            return ((Boolean) this.b.a(sj.I5)).booleanValue();
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b("AppLovinFullscreenActivity", "Streaming ad due to missing ad resources: " + listA);
        }
        this.a.N0();
        HashMap map2 = new HashMap();
        CollectionUtils.putStringIfValid("error_message", "Missing ad resources: " + listA, map2);
        CollectionUtils.putStringIfValid("details", "Streaming ad", map2);
        this.b.D().a(ka.Q, "missingCachedAdResources", (Map) map2);
        return false;
    }

    public void f() {
        this.r = true;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "dismiss()");
        }
        com.applovin.impl.sdk.ad.b bVar = this.a;
        if (bVar != null) {
            bVar.getAdEventTracker().f();
        }
        this.f.removeCallbacksAndMessages(null);
        com.applovin.impl.sdk.ad.b bVar2 = this.a;
        a("javascript:al_onPoststitialDismiss();", bVar2 != null ? bVar2.C() : 0L);
        n();
        this.I.b();
        if (this.h != null) {
            this.b.o().b(this.h);
        }
        if (this.g != null) {
            this.b.e().b(this.g);
        }
        if (l()) {
            this.d.finish();
            return;
        }
        this.b.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.b.I().a("AppLovinFullscreenActivity", "Fullscreen ad shown in container view dismissed, destroying the presenter.");
        }
        t();
    }

    public boolean j() {
        return this.r;
    }

    public void t() {
        AppLovinAdView appLovinAdView = this.i;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            this.i.destroy();
            this.i = null;
            if ((parent instanceof ViewGroup) && l()) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        o();
        n();
        this.B = null;
        this.C = null;
        this.D = null;
        this.d = null;
        AppLovinBroadcastManager.unregisterReceiver(this);
    }

    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, Map map, com.applovin.impl.sdk.j jVar, Activity activity, d dVar) {
        o9 p9Var;
        boolean zI1 = bVar.i1();
        if (bVar instanceof aq) {
            if (zI1) {
                try {
                    p9Var = new r9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th) {
                    jVar.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        jVar.I().d("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th);
                    }
                    jVar.D().a("AppLovinFullscreenActivity", "createVastVideoAdExoPlayerPresenter", th, la.a(bVar));
                    try {
                        p9Var = new s9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                    } catch (Throwable th2) {
                        dVar.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + jVar + " and throwable: " + th2.getMessage(), th2);
                        return;
                    }
                }
            } else {
                try {
                    p9Var = new s9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th3) {
                    dVar.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + jVar + " and throwable: " + th3.getMessage(), th3);
                    return;
                }
            }
        } else if (bVar.hasVideoUrl()) {
            if (bVar.M0()) {
                try {
                    p9Var = new w9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th4) {
                    dVar.a("Failed to create FullscreenWebVideoAdPresenter with sdk: " + jVar + " and throwable: " + th4.getMessage(), th4);
                    return;
                }
            } else if (zI1) {
                try {
                    p9Var = new t9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th5) {
                    jVar.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        jVar.I().d("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th5);
                    }
                    jVar.D().a("AppLovinFullscreenActivity", "createVideoAdExoPlayerPresenter", th5, la.a(bVar));
                    try {
                        p9Var = new u9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                    } catch (Throwable th6) {
                        dVar.a("Failed to create FullscreenVideoAdExoPlayerPresenter with sdk: " + jVar + " and throwable: " + th6.getMessage(), th6);
                        return;
                    }
                }
            } else {
                try {
                    p9Var = new u9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th7) {
                    dVar.a("Failed to create FullscreenVideoAdPresenter with sdk: " + jVar + " and throwable: " + th7.getMessage(), th7);
                    return;
                }
            }
        } else {
            try {
                p9Var = new p9(bVar, activity, map, jVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th8) {
                dVar.a("Failed to create FullscreenGraphicAdPresenter with sdk: " + jVar + " and throwable: " + th8.getMessage(), th8);
                return;
            }
        }
        p9Var.z();
        dVar.a(p9Var);
    }

    protected int g() {
        int iR = this.a.r();
        return (iR <= 0 && ((Boolean) this.b.a(sj.x2)).booleanValue()) ? this.t + 1 : iR;
    }

    protected void n() {
        if (this.o.compareAndSet(false, true)) {
            fc.b(this.C, this.a);
            this.b.B().b(this.a);
            this.b.D().a(ka.l, this.a);
        }
    }

    protected boolean l() {
        return this.d instanceof AppLovinFullscreenActivity;
    }

    protected void p() {
        go goVar = this.F;
        if (goVar != null) {
            goVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.o9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                o9.b(gVar, runnable);
            }
        });
    }

    protected void q() {
        go goVar = this.F;
        if (goVar != null) {
            goVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        if (this.a.H0().getAndSet(true)) {
            return;
        }
        this.b.i0().a((yl) new en(this.a, this.b), tm.b.OTHER);
    }

    protected void r() {
        com.applovin.impl.adview.b bVarG;
        if (this.i == null || !this.a.z0() || (bVarG = this.i.getController().g()) == null) {
            return;
        }
        this.I.a(bVarG, new j2.c() { // from class: com.applovin.impl.o9$$ExternalSyntheticLambda5
            @Override // com.applovin.impl.j2.c
            public final void a(View view) {
                this.f$0.a(view);
            }
        });
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction()) && !this.s) {
            i();
        } else if ("com.applovin.al_onPoststitialShow_evaluation_error".equals(intent.getAction())) {
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class e implements AppLovinAdClickListener, View.OnClickListener {
        private e() {
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            com.applovin.impl.sdk.n nVar = o9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                o9.this.c.a("AppLovinFullscreenActivity", "Clicking through graphic");
            }
            fc.a(o9.this.B, appLovinAd);
            o9.this.y++;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o9 o9Var = o9.this;
            if (view == o9Var.k && ((Boolean) o9Var.b.a(sj.e2)).booleanValue()) {
                o9.c(o9.this);
                if (o9.this.a.W0()) {
                    o9.this.c("javascript:al_onCloseButtonTapped(" + o9.this.v + "," + o9.this.x + "," + o9.this.y + ");");
                }
                List listL = o9.this.a.L();
                com.applovin.impl.sdk.n nVar = o9.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    o9.this.c.a("AppLovinFullscreenActivity", "Handling close button tap " + o9.this.v + " with multi close delay: " + listL);
                }
                if (listL != null && listL.size() > o9.this.v) {
                    o9.this.w.add(Long.valueOf(SystemClock.elapsedRealtime() - o9.this.p));
                    List listJ = o9.this.a.J();
                    if (listJ != null && listJ.size() > o9.this.v) {
                        o9 o9Var2 = o9.this;
                        o9Var2.k.a((com.applovin.impl.adview.e.a) listJ.get(o9Var2.v));
                    }
                    com.applovin.impl.sdk.n nVar2 = o9.this.c;
                    if (com.applovin.impl.sdk.n.a()) {
                        o9.this.c.a("AppLovinFullscreenActivity", "Scheduling next close button with delay: " + listL.get(o9.this.v));
                    }
                    o9.this.k.setVisibility(8);
                    o9 o9Var3 = o9.this;
                    o9Var3.a(o9Var3.k, ((Integer) listL.get(o9Var3.v)).intValue(), new Runnable() { // from class: com.applovin.impl.o9$e$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a();
                        }
                    });
                    return;
                }
                o9.this.f();
                return;
            }
            com.applovin.impl.sdk.n nVar3 = o9.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                o9.this.c.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            o9.this.p = SystemClock.elapsedRealtime();
        }

        /* synthetic */ e(o9 o9Var, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(final com.applovin.impl.adview.g gVar, final Runnable runnable) {
        zq.a(gVar, 400L, new Runnable() { // from class: com.applovin.impl.o9$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                o9.a(gVar, runnable);
            }
        });
    }

    protected void c(String str) {
        a(str, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        com.applovin.impl.adview.b bVarG;
        AppLovinAdView appLovinAdView = this.i;
        if (appLovinAdView == null || (bVarG = appLovinAdView.getController().g()) == null) {
            return;
        }
        bVarG.a(str);
    }

    protected void b(String str) {
        if (this.a.D0()) {
            a(str, 0L);
        }
    }

    public void b(boolean z) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "onWindowFocusChanged(boolean) - " + z);
        }
        b("javascript:al_onWindowFocusChanged( " + z + " );");
        go goVar = this.G;
        if (goVar != null) {
            if (z) {
                goVar.e();
            } else {
                goVar.d();
            }
        }
    }

    protected void b(long j) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Scheduling report reward in " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds...");
        }
        this.F = go.a(j, this.b, new Runnable() { // from class: com.applovin.impl.o9$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m();
            }
        });
    }

    protected void c(boolean z) {
        a(z, ((Long) this.b.a(sj.y2)).longValue());
        fc.a(this.C, this.a);
        this.b.B().a(this.a);
        if (this.a.hasVideoUrl() || k()) {
            fc.a(this.D, this.a);
        }
        new xg(this.d).a(this.a);
        this.a.setHasShown(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.adview.g gVar, Runnable runnable) {
        gVar.bringToFront();
        runnable.run();
    }

    protected void a(final String str, long j) {
        if (j < 0 || !StringUtils.isValidString(str)) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.o9$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str);
            }
        }, j);
    }

    protected void a(int i, boolean z, boolean z2, long j) {
        if (this.n.compareAndSet(false, true)) {
            if (this.a.hasVideoUrl() || k()) {
                fc.a(this.D, this.a, i, z2);
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.m;
            this.b.j().trackVideoEnd(this.a, TimeUnit.MILLISECONDS.toSeconds(jElapsedRealtime), i, z);
            long jElapsedRealtime2 = this.p != -1 ? SystemClock.elapsedRealtime() - this.p : -1L;
            this.b.j().trackFullScreenAdClosed(this.a, jElapsedRealtime2, this.w, j, this.A, this.z);
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AppLovinFullscreenActivity", "Video ad ended at percent: " + i + "%, elapsedTime: " + jElapsedRealtime + "ms, skipTimeMillis: " + j + "ms, closeTimeMillis: " + jElapsedRealtime2 + "ms");
            }
        }
    }

    protected void a(boolean z, long j) {
        if (this.a.O0()) {
            a(z ? "javascript:al_mute();" : "javascript:al_unmute();", j);
        }
    }

    public void a(int i, KeyEvent keyEvent) {
        if (this.c == null || !com.applovin.impl.sdk.n.a()) {
            return;
        }
        this.c.d("AppLovinFullscreenActivity", "onKeyDown(int, KeyEvent) -  " + i + ", " + keyEvent);
    }

    protected void a(Runnable runnable, long j) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j, this.f);
    }

    protected void a(final com.applovin.impl.adview.g gVar, long j, final Runnable runnable) {
        if (j >= ((Long) this.b.a(sj.d2)).longValue()) {
            return;
        }
        this.G = go.a(TimeUnit.SECONDS.toMillis(j), this.b, new Runnable() { // from class: com.applovin.impl.o9$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                o9.c(gVar, runnable);
            }
        });
    }

    public void a(Configuration configuration) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d("AppLovinFullscreenActivity", "onConfigurationChanged(Configuration) -  " + configuration);
        }
    }

    @Override // com.applovin.impl.adview.a.b
    public void a(com.applovin.impl.adview.a aVar) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AppLovinFullscreenActivity", "Fully watched from ad web view...");
        }
        this.H = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        com.applovin.impl.adview.g gVar;
        if (yp.a(sj.P0, this.b)) {
            this.b.A().c(this.a, com.applovin.impl.sdk.j.m());
        }
        this.b.D().a(ka.P, la.a(this.a, true, this.b));
        if (((Boolean) this.b.a(sj.X5)).booleanValue()) {
            f();
            return;
        }
        this.J = ((Boolean) this.b.a(sj.Y5)).booleanValue();
        if (!((Boolean) this.b.a(sj.Z5)).booleanValue() || (gVar = this.k) == null) {
            return;
        }
        gVar.setVisibility(0);
    }
}
