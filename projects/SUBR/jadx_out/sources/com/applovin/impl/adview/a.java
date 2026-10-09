package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.browser.customtabs.CustomTabsSession;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.ba;
import com.applovin.impl.da;
import com.applovin.impl.e0;
import com.applovin.impl.fc;
import com.applovin.impl.g0;
import com.applovin.impl.jn;
import com.applovin.impl.ka;
import com.applovin.impl.lg;
import com.applovin.impl.ng;
import com.applovin.impl.pb;
import com.applovin.impl.pc;
import com.applovin.impl.pi;
import com.applovin.impl.s6;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.tr;
import com.applovin.impl.ub;
import com.applovin.impl.yp;
import com.applovin.impl.zq;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.unity3d.services.UnityAdsConstants;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class a implements AppLovinCommunicatorSubscriber {
    private static final AtomicReference H = new AtomicReference();
    private volatile AppLovinAdLoadListener C;
    private volatile AppLovinAdDisplayListener D;
    private volatile AppLovinAdViewEventListener E;
    private volatile AppLovinAdClickListener F;
    private Context a;
    private ViewGroup b;
    private com.applovin.impl.sdk.j c;
    private AppLovinAdServiceImpl d;
    private com.applovin.impl.sdk.n f;
    private AppLovinCommunicator g;
    private b h;
    private AppLovinAdSize j;
    private String k;
    private CustomTabsSession l;
    private com.applovin.impl.adview.c m;
    private e n;
    private com.applovin.impl.adview.b o;
    private WebView p;
    private k q;
    private Runnable r;
    private Runnable s;
    private final Map i = Collections.synchronizedMap(new HashMap());
    private volatile com.applovin.impl.sdk.ad.b t = null;
    private volatile AppLovinAd u = null;
    private f v = null;
    private f w = null;
    private final AtomicReference x = new AtomicReference();
    private final AtomicBoolean y = new AtomicBoolean();
    private volatile boolean z = false;
    private volatile boolean A = false;
    private volatile boolean B = false;
    private volatile g0 G = null;

    public interface b {
        void a(a aVar);
    }

    private class c implements Runnable {
        private c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.o != null) {
                a.this.o.setVisibility(8);
            }
        }
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: com.applovin.impl.adview.a$d$a, reason: collision with other inner class name */
        class C0013a implements k.a {
            C0013a() {
            }

            @Override // com.applovin.impl.adview.k.a
            public void a() {
                a.this.o.addView(a.this.q, new ViewGroup.LayoutParams(-1, -1));
            }

            @Override // com.applovin.impl.adview.k.a
            public void onFailure() {
                com.applovin.impl.sdk.n unused = a.this.f;
                if (com.applovin.impl.sdk.n.a()) {
                    a.this.f.b("AppLovinAdView", "Watermark failed to render.");
                }
            }
        }

        private d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.t != null) {
                if (a.this.o == null) {
                    com.applovin.impl.sdk.n.h("AppLovinAdView", "Unable to render advertisement for ad #" + a.this.t.getAdIdNumber() + ". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
                    fc.a(a.this.E, a.this.t, (AppLovinAdView) null, AppLovinAdViewDisplayErrorCode.WEBVIEW_NOT_FOUND);
                    return;
                }
                a.this.w();
                com.applovin.impl.sdk.n unused = a.this.f;
                if (com.applovin.impl.sdk.n.a()) {
                    a.this.f.a("AppLovinAdView", "Rendering advertisement ad for #" + a.this.t.getAdIdNumber() + "...");
                }
                a.b(a.this.o, a.this.t.getSize());
                if (a.this.q != null) {
                    zq.c(a.this.q);
                    a.this.q = null;
                }
                da daVar = new da(a.this.i, a.this.c);
                if (daVar.c()) {
                    a.this.q = new k(daVar, a.this.a);
                    a.this.q.a(new C0013a());
                }
                a.this.o.setAdHtmlLoaded(false);
                a.this.o.a(a.this.t);
                if (a.this.t.getSize() == AppLovinAdSize.INTERSTITIAL || a.this.A) {
                    return;
                }
                a.this.t.setHasShown(true);
            }
        }
    }

    static class e implements AppLovinAdLoadListener {
        private final a a;

        e(a aVar, com.applovin.impl.sdk.j jVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("No view specified");
            }
            if (jVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.a = aVar;
        }

        private a a() {
            return this.a;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            a aVarA = a();
            if (aVarA != null) {
                aVarA.b(appLovinAd);
            } else {
                com.applovin.impl.sdk.n.h("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            a aVarA = a();
            if (aVarA != null) {
                aVarA.b(i);
            }
        }
    }

    private void G() {
        com.applovin.impl.adview.b bVar;
        if (this.f != null && com.applovin.impl.sdk.n.a() && com.applovin.impl.sdk.n.a()) {
            this.f.a("AppLovinAdView", "Destroying...");
        }
        if (!((Boolean) this.c.a(sj.u1)).booleanValue() || (bVar = this.o) == null) {
            tr.d(this.o);
        } else {
            tr.a(bVar);
            f().a(this.o, new ub.b() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda6
                @Override // com.applovin.impl.ub.b
                public final void a(Object obj) {
                    tr.d((b) obj);
                }
            });
        }
        this.o = null;
        tr.d(this.p);
        this.p = null;
        this.l = null;
        this.C = null;
        this.D = null;
        this.F = null;
        this.E = null;
        this.A = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.applovin.impl.adview.b o() {
        return new com.applovin.impl.adview.b(this.c, this.a.getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        this.o.loadDataWithBaseURL(UnityAdsConstants.DefaultUrls.AD_ASSET_PATH, "<html></html>", "text/html", null, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        com.applovin.impl.adview.b bVar;
        d();
        if (this.b == null || (bVar = this.o) == null || bVar.getParent() != null) {
            return;
        }
        this.b.addView(this.o);
        b(this.o, this.t.getSize());
        if (this.t.isOpenMeasurementEnabled()) {
            this.t.getAdEventTracker().a((View) this.o);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        if (this.o != null && this.v != null) {
            a();
        }
        G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        if (this.v != null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.f.a("AppLovinAdView", "Detaching expanded ad: " + this.v.b());
            }
            this.w = this.v;
            this.v = null;
            a(this.j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        com.applovin.impl.sdk.ad.a aVarB;
        f fVar = this.w;
        if (fVar == null && this.v == null) {
            return;
        }
        if (fVar != null) {
            aVarB = fVar.b();
            this.w.dismiss();
            this.w = null;
        } else {
            aVarB = this.v.b();
            this.v.dismiss();
            this.v = null;
        }
        fc.a(this.E, aVarB, (AppLovinAdView) this.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        g().loadUrl("chrome://crash");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        com.applovin.impl.sdk.ad.b bVar = this.t;
        pc pcVar = new pc();
        pcVar.a().a(bVar).a(k());
        if (!yp.a(bVar.getSize())) {
            pcVar.a().a("Fullscreen Ad Properties").b(bVar);
        }
        pcVar.a(this.c);
        pcVar.a();
        if (com.applovin.impl.sdk.n.a()) {
            this.f.a("AppLovinAdView", pcVar.toString());
        }
    }

    private void y() {
        if (this.t.X0()) {
            int iA = this.c.o().a();
            if (com.applovin.impl.sdk.h.a(iA)) {
                this.o.a("javascript:al_muteSwitchOn();");
            } else if (iA == 2) {
                this.o.a("javascript:al_muteSwitchOff();");
            }
        }
    }

    public void A() {
        if (com.applovin.impl.sdk.n.a()) {
            this.f.a("AppLovinAdView", "AdView fully watched...");
        }
        b bVar = this.h;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public void B() {
        if (e0.a(this.o)) {
            this.c.C().c(ba.r);
        }
    }

    public void C() {
        if (this.z) {
            fc.b(this.D, this.t);
            if (this.t != null && this.t.isOpenMeasurementEnabled() && yp.a(this.t.getSize())) {
                this.t.getAdEventTracker().f();
            }
            if (this.o == null || this.v == null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.f.a("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
                }
            } else {
                if (com.applovin.impl.sdk.n.a()) {
                    this.f.a("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
                }
                c();
            }
        }
    }

    public void D() {
        this.B = true;
    }

    public void E() {
        this.B = false;
    }

    public void F() {
        if (!this.z || this.A) {
            return;
        }
        this.A = true;
    }

    public void H() {
        if (this.z) {
            AppLovinAd appLovinAd = (AppLovinAd) this.x.getAndSet(null);
            if (appLovinAd != null) {
                c(appLovinAd);
            }
            this.A = false;
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "a";
    }

    public AppLovinAdView k() {
        return (AppLovinAdView) this.b;
    }

    public com.applovin.impl.sdk.j l() {
        return this.c;
    }

    public AppLovinAdSize m() {
        return this.j;
    }

    public String n() {
        return this.k;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.u();
                }
            });
        }
    }

    public void v() {
        if (this.c == null || this.n == null || this.a == null || !this.z) {
            com.applovin.impl.sdk.n.i("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
        } else {
            this.d.loadNextAd(this.k, this.j, this.n);
        }
    }

    public void x() {
        if ((this.a instanceof s6) && this.t != null && this.t.S() == com.applovin.impl.sdk.ad.b.EnumC0036b.DISMISS) {
            ((s6) this.a).dismiss();
        }
    }

    public void z() {
        if (this.v != null || this.w != null) {
            a();
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.f.a("AppLovinAdView", "Ad: " + this.t + " closed.");
        }
        a(this.s);
        fc.b(this.D, this.t);
        this.t = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, AppLovinAdSize appLovinAdSize) {
        int iApplyDimension;
        if (view == null) {
            return;
        }
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        String label = appLovinAdSize.getLabel();
        AppLovinAdSize appLovinAdSize2 = AppLovinAdSize.INTERSTITIAL;
        int iApplyDimension2 = -1;
        if (label.equals(appLovinAdSize2.getLabel())) {
            iApplyDimension = -1;
        } else {
            iApplyDimension = appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        }
        if (!appLovinAdSize.getLabel().equals(appLovinAdSize2.getLabel())) {
            iApplyDimension2 = appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = iApplyDimension;
        layoutParams.height = iApplyDimension2;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(13);
        }
        view.setLayoutParams(layoutParams);
    }

    private void c() {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.s();
            }
        });
    }

    private void d() {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.t();
            }
        });
    }

    public static ub f() {
        AtomicReference atomicReference = H;
        Object dVar = atomicReference.get();
        if (dVar == null) {
            synchronized (atomicReference) {
                dVar = atomicReference.get();
                if (dVar == null) {
                    dVar = new ub.d();
                    atomicReference.set(dVar);
                }
            }
        }
        if (dVar == atomicReference) {
            dVar = null;
        }
        return (ub) dVar;
    }

    public AppLovinAdViewEventListener e() {
        return this.E;
    }

    public com.applovin.impl.adview.b g() {
        return this.o;
    }

    public com.applovin.impl.sdk.ad.b i() {
        return this.t;
    }

    public CustomTabsSession j() {
        return this.l;
    }

    public void c(AppLovinAd appLovinAd) {
        a(appLovinAd, (String) null);
    }

    public void c(WebView webView) {
        a(webView, (String) null);
    }

    public void b() {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.r();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(WebView webView) {
        this.t.getAdEventTracker().c(webView);
        k kVar = this.q;
        if (kVar != null && kVar.a()) {
            lg adEventTracker = this.t.getAdEventTracker();
            k kVar2 = this.q;
            adEventTracker.b(webView, Collections.singletonList(new ng(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier())));
        } else {
            this.t.getAdEventTracker().a((View) webView);
        }
        this.t.getAdEventTracker().h();
        this.t.getAdEventTracker().g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MotionEvent motionEvent) {
        if (this.v == null && (this.t instanceof com.applovin.impl.sdk.ad.a) && this.o != null) {
            com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.t;
            Context context = this.a;
            Activity activityA = context instanceof Activity ? (Activity) context : zq.a(this.o, this.c);
            if (activityA != null && !activityA.isFinishing()) {
                ViewGroup viewGroup = this.b;
                if (viewGroup != null) {
                    viewGroup.removeView(this.o);
                }
                f fVar = new f(aVar, this.o, activityA, this.c);
                this.v = fVar;
                fVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda9
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        this.f$0.a(dialogInterface);
                    }
                });
                this.v.show();
                fc.c(this.E, this.t, (AppLovinAdView) this.b);
                if (this.t.isOpenMeasurementEnabled()) {
                    this.t.getAdEventTracker().a((View) this.v.c());
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.n.h("AppLovinAdView", "Unable to expand ad. No Activity found.");
            Uri uriJ = aVar.j();
            if (uriJ != null) {
                this.d.trackAndLaunchClick(aVar, k(), this, uriJ, motionEvent, this.B, null);
            }
            this.o.a("javascript:al_onFailedExpand();");
        }
    }

    void b(final AppLovinAd appLovinAd) {
        if (appLovinAd != null) {
            if (!this.A) {
                c(appLovinAd);
            } else {
                this.x.set(appLovinAd);
                if (com.applovin.impl.sdk.n.a()) {
                    this.f.a("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
                }
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(appLovinAd);
                }
            });
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.f.b("AppLovinAdView", "No provided when to the view controller");
        }
        b(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i) {
        if (!this.A) {
            a(this.s);
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(i);
            }
        });
    }

    public void b(Uri uri) {
        if (this.t != null && this.t.E0() && this.p == null) {
            String queryParameter = uri.getQueryParameter("tracking_id");
            if (TextUtils.isEmpty(queryParameter)) {
                this.c.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.I().b("AppLovinAdView", "Invalid tracking id. Cannot initialize GA");
                    return;
                }
                return;
            }
            WebView webView = new WebView(this.a);
            this.p = webView;
            webView.setWebViewClient(new pi());
            this.p.getSettings().setJavaScriptEnabled(true);
            this.p.loadDataWithBaseURL((String) this.c.a(sj.A6), "<html><head><link rel=\"icon\" href=\"data:,\"><G-SCRIPT_TAG></head><body></body></html>".replace("<G-SCRIPT_TAG>", "<script src='https://www.googletagmanager.com/gtag/js?id=<G-TRACKING_ID>'></script><script>window.dataLayer = window.dataLayer || [];function gtag(){dataLayer.push(arguments);}gtag('js', new Date());gtag('config', '<G-TRACKING_ID>')</script>".replace("<G-TRACKING_ID>", queryParameter)), "text/html", "UTF-8", null);
        }
    }

    public g0 h() {
        return this.G;
    }

    public void a(g0 g0Var) {
        this.G = g0Var;
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.C = appLovinAdLoadListener;
    }

    public void a(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.D = appLovinAdDisplayListener;
    }

    public void a(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.E = appLovinAdViewEventListener;
    }

    public void a(AppLovinAdClickListener appLovinAdClickListener) {
        this.F = appLovinAdClickListener;
    }

    private void a(AppLovinAdView appLovinAdView, com.applovin.impl.sdk.j jVar, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize != null) {
            this.c = jVar;
            this.d = jVar.j();
            this.f = jVar.I();
            this.g = AppLovinCommunicator.getInstance(context);
            this.j = appLovinAdSize;
            this.k = str;
            if (!(context instanceof AppLovinFullscreenActivity)) {
                context = context.getApplicationContext();
            }
            this.a = context;
            this.b = appLovinAdView;
            this.m = new com.applovin.impl.adview.c(this, jVar);
            this.s = new c();
            this.r = new d();
            this.n = new e(this, jVar);
            a(appLovinAdSize);
            return;
        }
        throw new IllegalArgumentException("No ad size specified");
    }

    protected void a(AppLovinAdSize appLovinAdSize) {
        try {
            if (((Boolean) this.c.a(sj.u1)).booleanValue()) {
                this.o = (com.applovin.impl.adview.b) f().a(new ub.a() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda3
                    @Override // com.applovin.impl.ub.a
                    public final Object a() {
                        return this.f$0.o();
                    }
                });
            } else {
                this.o = new com.applovin.impl.adview.b(this.c, this.a);
            }
            this.o.a(this.m);
            this.o.setBackgroundColor(0);
            this.o.setWillNotCacheDrawing(false);
            this.b.setBackgroundColor(0);
            this.b.addView(this.o);
            b(this.o, appLovinAdSize);
            if (!this.z) {
                a(this.s);
            }
            a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.p();
                }
            });
            this.z = true;
        } catch (Throwable th) {
            com.applovin.impl.sdk.n.c("AppLovinAdView", "Failed to initialize AdWebView", th);
            this.c.D().a("AppLovinAdView", "initAdWebView", th);
            this.y.set(true);
        }
    }

    public void a(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            com.applovin.impl.sdk.n.h("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = e0.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk != null) {
            a(appLovinAdView, appLovinSdk.a(), appLovinAdSize2, str, context);
            if (e0.b(attributeSet)) {
                v();
            }
        }
    }

    public void a(String str, Object obj) {
        this.i.put(str, obj);
    }

    public void a(AppLovinAd appLovinAd, String str) {
        if (appLovinAd != null) {
            yp.b(appLovinAd, this.c);
            if (this.z) {
                com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) yp.a(appLovinAd, this.c);
                if (bVar == null) {
                    com.applovin.impl.sdk.n.h("AppLovinAdView", "Unable to retrieve the loaded ad: " + appLovinAd);
                    fc.a(this.D, "Unable to retrieve the loaded ad");
                    return;
                }
                if (bVar == this.t) {
                    com.applovin.impl.sdk.n.h("AppLovinAdView", "Attempting to show ad again: " + bVar);
                    if (((Boolean) this.c.a(sj.M1)).booleanValue()) {
                        if (this.D instanceof pb) {
                            fc.a(this.D, "Attempting to show ad again");
                            return;
                        }
                        throw new IllegalStateException("Attempting to show ad again");
                    }
                    return;
                }
                if (com.applovin.impl.sdk.n.a()) {
                    this.f.a("AppLovinAdView", "Rendering ad #" + bVar.getAdIdNumber() + " (" + bVar.getSize() + ")");
                }
                fc.b(this.D, this.t);
                if (this.t != null && this.t.isOpenMeasurementEnabled()) {
                    this.t.getAdEventTracker().f();
                }
                this.x.set(null);
                this.u = null;
                this.t = bVar;
                if (this.t.C0()) {
                    this.l = this.c.w().a(this);
                    this.c.w().b(this.t.A(), this.l);
                }
                if (!this.A && yp.a(this.j)) {
                    this.c.j().trackImpression(bVar);
                }
                if (this.v != null) {
                    c();
                }
                a(this.r);
                return;
            }
            com.applovin.impl.sdk.n.i("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    public void a(final WebView webView, String str) {
        if (this.t == null) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                webView.setVisibility(0);
            }
        });
        if (!((Boolean) this.c.a(sj.e6)).booleanValue() || (str != null && str.startsWith(this.t.h()))) {
            try {
                if (this.t != this.u) {
                    this.u = this.t;
                    y();
                    this.o.setAdHtmlLoaded(true);
                    if (this.D != null) {
                        this.c.v().d(this.t);
                        this.c.D().a(ka.k, this.t);
                        fc.a(this.D, this.t);
                        this.o.a("javascript:al_onAdViewRendered();");
                    }
                    if ((this.t instanceof com.applovin.impl.sdk.ad.a) && this.t.isOpenMeasurementEnabled()) {
                        this.c.i0().a(new jn(this.c, "StartOMSDK", new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda11
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.b(webView);
                            }
                        }), tm.b.OTHER, 500L);
                    }
                }
            } catch (Throwable th) {
                com.applovin.impl.sdk.n.c("AppLovinAdView", "Exception while notifying ad display listener", th);
                com.applovin.impl.sdk.j jVar = this.c;
                if (jVar != null) {
                    jVar.D().a("AppLovinAdView", "onAdHtmlLoaded", th);
                }
            }
        }
    }

    public void a(final MotionEvent motionEvent) {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        a();
    }

    public void a() {
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.q();
            }
        });
    }

    public void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, Uri uri, MotionEvent motionEvent, Bundle bundle) {
        if (appLovinAdView != null) {
            this.d.trackAndLaunchClick(bVar, appLovinAdView, this, uri, motionEvent, this.B, bundle);
        } else if (com.applovin.impl.sdk.n.a()) {
            this.f.b("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
        }
        fc.a(this.F, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAd appLovinAd) {
        if (this.y.compareAndSet(true, false)) {
            a(this.j);
        }
        try {
            if (this.C != null) {
                this.C.adReceived(appLovinAd);
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.n.h("AppLovinAdView", "Exception while running ad load callback: " + th.getMessage());
            com.applovin.impl.sdk.j jVar = this.c;
            if (jVar != null) {
                jVar.D().a("AppLovinAdView", "notifyAdLoaded", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        try {
            if (this.C != null) {
                this.C.failedToReceiveAd(i);
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.n.c("AppLovinAdView", "Exception while running app load callback", th);
            com.applovin.impl.sdk.j jVar = this.c;
            if (jVar != null) {
                jVar.D().a("AppLovinAdView", "notifyAdLoadFailed", th);
            }
        }
    }

    private void a(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    public void a(b bVar) {
        this.h = bVar;
    }

    public void a(Uri uri) {
        if (this.t == null || !this.t.E0()) {
            return;
        }
        if (this.p == null) {
            this.c.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.c.I().a("AppLovinAdView", "GA is not initialized. Cannot fire GA event");
                return;
            }
            return;
        }
        final String queryParameter = uri.getQueryParameter("event_name");
        final String queryParameter2 = uri.getQueryParameter("event_params_json");
        if (TextUtils.isEmpty(queryParameter)) {
            this.c.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.c.I().a("AppLovinAdView", "Invalid GA event name. Cannot fire GA event");
                return;
            }
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.adview.a$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(queryParameter2, queryParameter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        String str3;
        if (StringUtils.isValidString(str)) {
            str3 = "gtag('event', '" + str2 + "', " + str + ");";
        } else {
            str3 = "gtag('event', '" + str2 + "')";
        }
        tr.a(this.p, str3);
    }
}
