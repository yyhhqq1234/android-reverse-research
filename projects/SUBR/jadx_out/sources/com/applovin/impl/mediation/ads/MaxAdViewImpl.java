package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.applovin.impl.ar;
import com.applovin.impl.br;
import com.applovin.impl.e0;
import com.applovin.impl.fc;
import com.applovin.impl.fe;
import com.applovin.impl.ge;
import com.applovin.impl.jn;
import com.applovin.impl.ka;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.sdk.f;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.tm;
import com.applovin.impl.ue;
import com.applovin.impl.v;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.impl.zq;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class MaxAdViewImpl extends com.applovin.impl.mediation.ads.a implements f.a, br.a, v.b {
    private boolean A;
    private final Context a;
    private final MaxAdView b;
    private final String c;
    private final View d;
    private long e;
    private ge f;
    private String g;
    private String h;
    private final b i;
    private final d j;
    private final f k;
    private final ar l;
    private final br m;
    private final Object n;
    private final Object o;
    private ge p;
    private boolean q;
    private boolean r;
    private final AtomicBoolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    private class b extends c {
        private b() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            n nVar = MaxAdViewImpl.this.logger;
            if (n.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            fc.a(MaxAdViewImpl.this.adListener, str, maxError, true);
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.a()) {
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "Precache ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.P().destroyAd(maxAd);
                return;
            }
            ge geVar = (ge) maxAd;
            geVar.g(MaxAdViewImpl.this.g);
            geVar.f(MaxAdViewImpl.this.h);
            if (geVar.y() == null) {
                MaxAdViewImpl.this.sdk.P().destroyAd(geVar);
                onAdLoadFailed(geVar.getAdUnitId(), new MaxErrorImpl(-5001, "Ad view not fully loaded"));
                return;
            }
            if (geVar.s0()) {
                long jN0 = geVar.n0();
                MaxAdViewImpl.this.sdk.I();
                if (n.a()) {
                    MaxAdViewImpl.this.sdk.I().a(MaxAdViewImpl.this.tag, "Scheduling banner ad refresh " + jN0 + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                }
                MaxAdViewImpl.this.k.a(jN0);
                if (MaxAdViewImpl.this.k.g() || MaxAdViewImpl.this.r) {
                    n nVar2 = MaxAdViewImpl.this.logger;
                    if (n.a()) {
                        MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                        maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Pausing ad refresh for publisher");
                    }
                    MaxAdViewImpl.this.k.j();
                }
            }
            n nVar3 = MaxAdViewImpl.this.logger;
            if (n.a()) {
                MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
                maxAdViewImpl3.logger.a(maxAdViewImpl3.tag, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            fc.f(MaxAdViewImpl.this.adListener, maxAd, true);
            MaxAdViewImpl.this.d(geVar);
        }
    }

    private abstract class c implements MaxAdListener, MaxAdViewAdListener, MaxAdRevenueListener, com.applovin.impl.mediation.ads.a.InterfaceC0024a {
        private boolean a;

        private c() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.p)) {
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                fc.a(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.p)) {
                if ((MaxAdViewImpl.this.p.t0() || MaxAdViewImpl.this.y) && this.a) {
                    this.a = false;
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdViewAdListener.onAdCollapsed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                fc.b(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            if (maxAd.equals(MaxAdViewImpl.this.p)) {
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                fc.a(MaxAdViewImpl.this.adListener, maxAd, maxError, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.p)) {
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                fc.c(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.p)) {
                if ((MaxAdViewImpl.this.p.t0() || MaxAdViewImpl.this.y) && !MaxAdViewImpl.this.k.g()) {
                    this.a = true;
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdViewAdListener.onAdExpanded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                fc.d(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.p)) {
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                fc.e(MaxAdViewImpl.this.adListener, maxAd, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            n nVar = MaxAdViewImpl.this.logger;
            if (n.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxAdViewImpl.this.requestListener);
            }
            fc.a(MaxAdViewImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            n nVar = MaxAdViewImpl.this.logger;
            if (n.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.revenueListener);
            }
            fc.a(MaxAdViewImpl.this.revenueListener, maxAd, true);
        }
    }

    private class d extends c {
        private d() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            n nVar = MaxAdViewImpl.this.logger;
            if (n.a()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.a(maxAdViewImpl.tag, "Failed to precache ad for refresh with error code: " + maxError.getCode());
            }
            MaxAdViewImpl.this.a(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (!MaxAdViewImpl.this.u) {
                n nVar = MaxAdViewImpl.this.logger;
                if (n.a()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.a(maxAdViewImpl.tag, "Successfully precached ad for refresh");
                }
                if (((Boolean) MaxAdViewImpl.this.sdk.a(ue.X6)).booleanValue()) {
                    MaxAdViewImpl.this.b(maxAd);
                    return;
                } else {
                    MaxAdViewImpl.this.a(maxAd);
                    return;
                }
            }
            n nVar2 = MaxAdViewImpl.this.logger;
            if (n.a()) {
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                maxAdViewImpl2.logger.a(maxAdViewImpl2.tag, "Ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
            }
            MaxAdViewImpl.this.sdk.P().destroyAd(maxAd);
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdView maxAdView, View view, j jVar, Context context) {
        super(str, maxAdFormat, "MaxAdView", jVar);
        this.c = UUID.randomUUID().toString().toLowerCase(Locale.US);
        this.e = Long.MAX_VALUE;
        this.n = new Object();
        this.o = new Object();
        this.p = null;
        this.s = new AtomicBoolean();
        this.u = false;
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.a = context.getApplicationContext();
        this.b = maxAdView;
        this.d = view;
        this.i = new b();
        this.j = new d();
        this.k = new f(jVar, this);
        this.l = new ar(maxAdView, jVar);
        this.m = new br(maxAdView, jVar, this);
        jVar.i().a(this);
        if (n.a()) {
            this.logger.a(this.tag, "Created new MaxAdView (" + this + ")");
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        g();
        if (this.f != null) {
            this.sdk.P().destroyAd(this.f);
        }
        synchronized (this.n) {
            this.u = true;
        }
        this.k.a();
        this.sdk.i().b(this);
        this.sdk.J().c(this.adUnitId, this.c);
        super.destroy();
    }

    public MaxAdFormat getAdFormat() {
        return this.adFormat;
    }

    public String getPlacement() {
        return this.g;
    }

    public void loadAd() {
        loadAd(com.applovin.impl.mediation.d.b.PUBLISHER_INITIATED);
    }

    @Override // com.applovin.impl.sdk.f.a
    public void onAdRefresh() {
        if (((Boolean) this.sdk.a(ue.X6)).booleanValue()) {
            f();
        } else {
            e();
        }
    }

    @Override // com.applovin.impl.v.b
    public void onCreativeIdGenerated(String str, String str2) {
        ge geVar = this.p;
        if (geVar != null && geVar.R().equalsIgnoreCase(str)) {
            this.p.h(str2);
            fc.b(this.adReviewListener, str2, this.p);
            return;
        }
        ge geVar2 = this.f;
        if (geVar2 == null || !geVar2.R().equalsIgnoreCase(str)) {
            return;
        }
        this.f.h(str2);
    }

    @Override // com.applovin.impl.br.a
    public void onLogVisibilityImpression() {
        a(this.p, this.l.a(this.p));
    }

    public void onWindowVisibilityChanged(int i) {
        if (((Boolean) this.sdk.a(ue.U6)).booleanValue() && this.k.h()) {
            if (zq.b(i)) {
                if (n.a()) {
                    this.logger.a(this.tag, "Ad view visible");
                }
                this.k.d();
            } else {
                if (n.a()) {
                    this.logger.a(this.tag, "Ad view hidden");
                }
                this.k.c();
            }
        }
    }

    public void setCustomData(String str) {
        if (this.p != null && n.a()) {
            this.logger.k(this.tag, "Setting custom data (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        yp.b(str, this.tag);
        this.h = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setExtraParameter(String str, String str2) {
        super.setExtraParameter(str, str2);
        a(str, str2);
    }

    public void setPlacement(String str) {
        if (this.p != null && n.a()) {
            this.logger.k(this.tag, "Setting placement (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        this.g = str;
    }

    public void setPublisherBackgroundColor(int i) {
        this.e = i;
    }

    public void startAutoRefresh() {
        this.r = false;
        if (!this.k.g()) {
            if (n.a()) {
                this.logger.a(this.tag, "Ignoring call to startAutoRefresh() - ad refresh is not paused");
                return;
            }
            return;
        }
        this.k.m();
        if (n.a()) {
            this.logger.a(this.tag, "Resumed auto-refresh with remaining time: " + this.k.b() + "ms");
        }
    }

    public void stopAutoRefresh() {
        if (this.p == null) {
            if (this.v || ((Boolean) this.sdk.a(ue.W6)).booleanValue()) {
                this.r = true;
                return;
            } else {
                n.j(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
                return;
            }
        }
        if (n.a()) {
            this.logger.a(this.tag, "Pausing auto-refresh with remaining time: " + this.k.b() + "ms");
        }
        this.k.j();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("MaxAdView{adUnitId='");
        sb.append(this.adUnitId);
        sb.append("', adListener=");
        Object obj = this.adListener;
        if (obj == this.b) {
            obj = "this";
        }
        sb.append(obj);
        sb.append(", isDestroyed=");
        sb.append(a());
        sb.append('}');
        return sb.toString();
    }

    private void e() {
        this.s.set(false);
        if (this.f != null) {
            h();
            return;
        }
        if (!b()) {
            if (n.a()) {
                this.logger.a(this.tag, "Refreshing ad from network...");
            }
            loadAd(com.applovin.impl.mediation.d.b.REFRESH);
        } else if (this.q) {
            if (n.a()) {
                this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
            }
            loadAd(com.applovin.impl.mediation.d.b.REFRESH);
        } else {
            if (n.a()) {
                this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            }
            this.s.set(true);
        }
    }

    private void f() {
        boolean z;
        boolean z2;
        synchronized (this.o) {
            z = false;
            this.s.set(false);
            z2 = this.f != null;
            if (!z2) {
                if (b()) {
                    if (!this.q) {
                        if (n.a()) {
                            this.logger.b(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
                        }
                        this.s.set(true);
                    } else if (n.a()) {
                        this.logger.a(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
                    }
                } else if (n.a()) {
                    this.logger.a(this.tag, "Refreshing ad from network...");
                }
                z = true;
            }
        }
        if (z2) {
            h();
        } else if (z) {
            loadAd(com.applovin.impl.mediation.d.b.REFRESH);
        }
    }

    private void g() {
        ge geVar;
        MaxAdView maxAdView = this.b;
        if (maxAdView != null) {
            e0.a(maxAdView, this.d);
        }
        this.m.b();
        synchronized (this.n) {
            geVar = this.p;
        }
        if (geVar != null) {
            this.sdk.P().destroyAd(geVar);
        }
    }

    private void h() {
        if (n.a()) {
            this.logger.a(this.tag, "Rendering for cached ad: " + this.f + "...");
        }
        this.i.onAdLoaded(this.f);
        this.f = null;
    }

    public void loadAd(com.applovin.impl.mediation.d.b bVar) {
        if (n.a()) {
            this.logger.a(this.tag, "" + this + " Loading ad for " + this.adUnitId + "...");
        }
        boolean z = this.v || ((Boolean) this.sdk.a(ue.W6)).booleanValue();
        if (z && !this.k.g() && this.k.h()) {
            n.h(this.tag, "Unable to load a new ad. An ad refresh has already been scheduled in " + TimeUnit.MILLISECONDS.toSeconds(this.k.b()) + " seconds.");
            return;
        }
        if (!z) {
            if (n.a()) {
                this.logger.a(this.tag, "Loading ad...");
            }
            a(bVar, this.i);
        } else if (this.f != null) {
            if (n.a()) {
                this.logger.a(this.tag, "Rendering cached ad");
            }
            h();
        } else if (this.t) {
            if (n.a()) {
                this.logger.a(this.tag, "Waiting for precache ad to load to render");
            }
            this.s.set(true);
        } else {
            if (n.a()) {
                this.logger.a(this.tag, "Loading ad...");
            }
            a(bVar, this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final ge geVar) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(geVar);
            }
        });
    }

    private void d() {
        if (b()) {
            if (n.a()) {
                this.logger.a(this.tag, "Scheduling refresh precache request now");
            }
            this.t = true;
            this.sdk.i0().a((yl) new jn(this.sdk, "loadMaxAdForPrecacheRequest", new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            }), tm.b.MEDIATION);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final ge geVar) {
        View viewY = geVar.y();
        String str = viewY == null ? "MaxAdView does not have a loaded ad view" : null;
        MaxAdView maxAdView = this.b;
        if (maxAdView == null) {
            str = "MaxAdView does not have a parent view";
        }
        if (str != null) {
            if (n.a()) {
                this.logger.b(this.tag, str);
            }
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, str);
            if (n.a()) {
                this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + geVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            fc.a(this.adListener, (MaxAd) geVar, (MaxError) maxErrorImpl, true);
            this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl, geVar);
            return;
        }
        g();
        a((fe) geVar);
        if (geVar.m0()) {
            this.m.a(geVar);
        }
        maxAdView.setDescendantFocusability(393216);
        if (geVar.o0() != Long.MAX_VALUE) {
            this.d.setBackgroundColor((int) geVar.o0());
        } else {
            long j = this.e;
            if (j != Long.MAX_VALUE) {
                this.d.setBackgroundColor((int) j);
            } else {
                this.d.setBackgroundColor(0);
            }
        }
        maxAdView.addView(viewY);
        a(viewY, geVar);
        this.sdk.v().d(geVar);
        c(geVar);
        synchronized (this.n) {
            this.p = geVar;
        }
        if (n.a()) {
            this.logger.a(this.tag, "Scheduling impression for ad manually...");
        }
        this.sdk.P().processRawAdImpression(geVar, this.i);
        if (StringUtils.isValidString(this.p.getAdReviewCreativeId())) {
            fc.a(this.adReviewListener, this.p.getAdReviewCreativeId(), (MaxAd) this.p, true);
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(geVar);
            }
        }, geVar.q0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MaxAd maxAd) {
        boolean zCompareAndSet;
        this.t = false;
        synchronized (this.o) {
            zCompareAndSet = this.s.compareAndSet(true, false);
            if (!zCompareAndSet) {
                if (n.a()) {
                    this.logger.a(this.tag, "Saving precache ad...");
                }
                ge geVar = (ge) maxAd;
                this.f = geVar;
                geVar.g(this.g);
                this.f.f(this.h);
            }
        }
        if (zCompareAndSet) {
            if (n.a()) {
                this.logger.a(this.tag, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.i.onAdLoaded(maxAd);
        }
    }

    private boolean b() {
        if (this.x) {
            return false;
        }
        return ((Boolean) this.sdk.a(ue.c7)).booleanValue();
    }

    private void c(ge geVar) {
        int height = this.b.getHeight();
        int width = this.b.getWidth();
        if (height > 0 || width > 0) {
            int iPxToDp = AppLovinSdkUtils.pxToDp(this.a, height);
            int iPxToDp2 = AppLovinSdkUtils.pxToDp(this.a, width);
            MaxAdFormat format = geVar.getFormat();
            int height2 = (this.A ? format.getAdaptiveSize(iPxToDp2, this.b.getContext()) : format.getSize()).getHeight();
            int iMin = Math.min(format.getSize().getWidth(), z3.b(this.a).x);
            if (iPxToDp < height2 || iPxToDp2 < iMin) {
                StringBuilder sb = new StringBuilder("\n**************************************************\n`MaxAdView` size ");
                sb.append(iPxToDp2);
                sb.append("x");
                sb.append(iPxToDp);
                sb.append(" dp smaller than required ");
                sb.append(this.A ? "adaptive " : "");
                sb.append("size: ");
                sb.append(iMin);
                sb.append("x");
                sb.append(height2);
                sb.append(" dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n");
                String string = sb.toString();
                if (n.a()) {
                    this.logger.b("AppLovinSdk", string);
                }
            }
        }
    }

    private void a(View view, ge geVar) {
        int iR0 = geVar.r0();
        int iP0 = geVar.p0();
        int iDpToPx = iR0 == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), iR0);
        int iDpToPx2 = iP0 != -1 ? AppLovinSdkUtils.dpToPx(view.getContext(), iP0) : -1;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(iDpToPx, iDpToPx2);
        } else {
            layoutParams.width = iDpToPx;
            layoutParams.height = iDpToPx2;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            if (n.a()) {
                this.logger.a(this.tag, "Pinning ad view to MAX ad view with width: " + iDpToPx + " and height: " + iDpToPx2 + ".");
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            for (int i : zq.a(this.b.getGravity(), 10, 14)) {
                layoutParams2.addRule(i);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        if (n.a()) {
            this.logger.a(this.tag, "Loading ad for precache request...");
        }
        a(com.applovin.impl.mediation.d.b.SEQUENTIAL_OR_PRECACHE, this.j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ge geVar) {
        long jA = this.l.a(geVar);
        if (!geVar.m0()) {
            a(geVar, jA);
        }
        a(jA);
    }

    private void a(final com.applovin.impl.mediation.d.b bVar, final com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        if (a()) {
            boolean zC = yp.c(this.sdk);
            this.sdk.D().a(ka.V, "attemptingToLoadDestroyedAdView", (Map) CollectionUtils.hashMap("details", "debug=" + zC));
            if (!zC) {
                n.h(this.tag, "Failed to load new ad - this instance is already destroyed");
                return;
            } else {
                throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
            }
        }
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxAdViewImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(interfaceC0024a, bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a, com.applovin.impl.mediation.d.b bVar) {
        ge geVar = this.p;
        if (geVar != null) {
            long jA = this.l.a(geVar);
            this.extraParameters.put("visible_ad_ad_unit_id", this.p.getAdUnitId());
            this.extraParameters.put("viewability_flags", Long.valueOf(jA));
        } else {
            this.extraParameters.remove("visible_ad_ad_unit_id");
            this.extraParameters.remove("viewability_flags");
        }
        int iPxToDp = AppLovinSdkUtils.pxToDp(this.b.getContext(), this.b.getWidth());
        int iPxToDp2 = AppLovinSdkUtils.pxToDp(this.b.getContext(), this.b.getHeight());
        this.extraParameters.put("viewport_width", Integer.valueOf(iPxToDp));
        this.extraParameters.put("viewport_height", Integer.valueOf(iPxToDp2));
        this.extraParameters.put("auto_refresh_stopped", Boolean.valueOf(this.k.g() || this.r));
        this.extraParameters.put("auto_retries_disabled", Boolean.valueOf(this.w));
        if (n.a()) {
            this.logger.a(this.tag, "Loading " + this.adFormat.getLabel().toLowerCase(Locale.ENGLISH) + " ad for '" + this.adUnitId + "' and notifying " + interfaceC0024a + "...");
        }
        this.sdk.P().loadAd(this.adUnitId, this.c, this.adFormat, bVar, this.localExtraParameters, this.extraParameters, this.a, interfaceC0024a);
    }

    private void a(String str, String str2) {
        if ("allow_pause_auto_refresh_immediately".equalsIgnoreCase(str)) {
            if (n.a()) {
                this.logger.a(this.tag, "Updated allow immediate auto-refresh pause and ad load to: " + str2);
            }
            this.v = Boolean.parseBoolean(str2);
            return;
        }
        if ("disable_auto_retries".equalsIgnoreCase(str)) {
            if (n.a()) {
                this.logger.a(this.tag, "Updated disable auto-retries to: " + str2);
            }
            this.w = Boolean.parseBoolean(str2);
            return;
        }
        if ("disable_precache".equalsIgnoreCase(str)) {
            if (n.a()) {
                this.logger.a(this.tag, "Updated precached disabled to: " + str2);
            }
            this.x = Boolean.parseBoolean(str2);
            return;
        }
        if ("should_stop_auto_refresh_on_ad_expand".equals(str)) {
            if (n.a()) {
                this.logger.a(this.tag, "Updated should stop auto-refresh on ad expand to: " + str2);
            }
            this.y = Boolean.parseBoolean(str2);
            return;
        }
        if ("force_precache".equals(str)) {
            if (n.a()) {
                this.logger.a(this.tag, "Updated force precache to: " + str2);
            }
            this.z = Boolean.parseBoolean(str2);
            return;
        }
        if ("adaptive_banner".equalsIgnoreCase(str)) {
            if (n.a()) {
                this.logger.a(this.tag, "Updated is adaptive banner to: " + str2);
            }
            this.A = Boolean.parseBoolean(str2);
            setLocalExtraParameter(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxError maxError) {
        if (a()) {
            if (n.a()) {
                this.logger.a(this.tag, "Ad load failure with ad unit ID '" + this.adUnitId + "' occured after MaxAdView was destroyed.");
                return;
            }
            return;
        }
        if (this.sdk.c(ue.Q6).contains(String.valueOf(maxError.getCode()))) {
            this.sdk.I();
            if (n.a()) {
                this.sdk.I().a(this.tag, "Ignoring banner ad refresh for error code " + maxError.getCode());
                return;
            }
            return;
        }
        if (!this.r && !this.k.g()) {
            this.q = true;
            this.t = false;
            long jLongValue = ((Long) this.sdk.a(ue.P6)).longValue();
            if (jLongValue >= 0) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().a(this.tag, "Scheduling failed banner ad refresh " + jLongValue + " milliseconds from now for '" + this.adUnitId + "'...");
                }
                this.k.a(jLongValue);
                return;
            }
            return;
        }
        if (this.t) {
            if (n.a()) {
                this.logger.a(this.tag, "Refresh precache failed when auto-refresh is stopped");
            }
            this.t = false;
        }
        if (this.s.get()) {
            if (n.a()) {
                this.logger.a(this.tag, "Refresh precache failed - MaxAdListener.onAdLoadFailed(adUnitId=" + this.adUnitId + ", error=" + maxError + "), listener=" + this.adListener);
            }
            fc.a(this.adListener, this.adUnitId, maxError, true);
        }
    }

    private void a(ge geVar, long j) {
        if (n.a()) {
            this.logger.a(this.tag, "Scheduling viewability impression for ad...");
        }
        this.sdk.P().processViewabilityAdImpressionPostback(geVar, j, this.i);
    }

    private void a(long j) {
        if (yp.a(j, ((Long) this.sdk.a(ue.b7)).longValue()) && !this.z) {
            if (n.a()) {
                this.logger.a(this.tag, "Undesired flags matched - current: " + Long.toBinaryString(j) + ", undesired: " + Long.toBinaryString(j));
            }
            if (n.a()) {
                this.logger.a(this.tag, "Waiting for refresh timer to manually fire request");
            }
            this.q = true;
            return;
        }
        if (n.a()) {
            this.logger.a(this.tag, "No undesired viewability flags matched or forcing precache - scheduling viewability");
        }
        this.q = false;
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.t = false;
        if (this.s.compareAndSet(true, false)) {
            if (n.a()) {
                this.logger.a(this.tag, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            }
            this.i.onAdLoaded(maxAd);
            return;
        }
        if (n.a()) {
            this.logger.a(this.tag, "Saving precache ad...");
        }
        ge geVar = (ge) maxAd;
        this.f = geVar;
        geVar.g(this.g);
        this.f.f(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        boolean z;
        synchronized (this.n) {
            z = this.u;
        }
        return z;
    }
}
