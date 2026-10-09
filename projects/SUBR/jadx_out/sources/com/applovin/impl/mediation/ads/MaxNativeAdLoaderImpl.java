package com.applovin.impl.mediation.ads;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.impl.fc;
import com.applovin.impl.fe;
import com.applovin.impl.i8;
import com.applovin.impl.ie;
import com.applovin.impl.jn;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.tm;
import com.applovin.impl.ue;
import com.applovin.impl.v;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class MaxNativeAdLoaderImpl extends com.applovin.impl.mediation.ads.a implements com.applovin.impl.sdk.a.InterfaceC0035a, v.b {
    public static final String KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE = "ad_request_type";
    private final c a;
    private String b;
    private String c;
    private d.b d;
    private final Object e;
    private MaxNativeAdListener f;
    private final Map g;
    private final Set h;

    class a implements Runnable {
        final /* synthetic */ MaxNativeAd a;
        final /* synthetic */ List b;
        final /* synthetic */ ViewGroup c;

        a(MaxNativeAd maxNativeAd, List list, ViewGroup viewGroup) {
            this.a = maxNativeAd;
            this.b = list;
            this.c = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a.prepareForInteraction(this.b, this.c)) {
                return;
            }
            n.h(MaxNativeAdLoaderImpl.this.tag, "Failed to prepare native ad for interaction...");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c implements com.applovin.impl.mediation.ads.a.InterfaceC0024a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            n nVar = MaxNativeAdLoaderImpl.this.logger;
            if (n.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "Native ad loaded");
            }
            ie ieVar = (ie) maxAd;
            ieVar.g(MaxNativeAdLoaderImpl.this.b);
            ieVar.f(MaxNativeAdLoaderImpl.this.c);
            MaxNativeAdLoaderImpl.this.sdk.v().d(ieVar);
            synchronized (MaxNativeAdLoaderImpl.this.e) {
                MaxNativeAdLoaderImpl.this.h.add(ieVar);
            }
            MaxNativeAdView maxNativeAdViewA = MaxNativeAdLoaderImpl.this.a(ieVar.M());
            if (maxNativeAdViewA == null) {
                n nVar2 = MaxNativeAdLoaderImpl.this.logger;
                if (n.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl2 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl2.logger.a(maxNativeAdLoaderImpl2.tag, "No custom view provided, checking template");
                }
                String strR0 = ieVar.r0();
                if (StringUtils.isValidString(strR0)) {
                    n nVar3 = MaxNativeAdLoaderImpl.this.logger;
                    if (n.a()) {
                        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl3 = MaxNativeAdLoaderImpl.this;
                        maxNativeAdLoaderImpl3.logger.a(maxNativeAdLoaderImpl3.tag, "Using template: " + strR0 + "...");
                    }
                    maxNativeAdViewA = new MaxNativeAdView(strR0, j.m());
                }
            }
            if (maxNativeAdViewA == null) {
                n nVar4 = MaxNativeAdLoaderImpl.this.logger;
                if (n.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl4 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl4.logger.a(maxNativeAdLoaderImpl4.tag, "No native ad view to render. Returning the native ad to be rendered later.");
                }
                n nVar5 = MaxNativeAdLoaderImpl.this.logger;
                if (n.a()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl5 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl5.logger.a(maxNativeAdLoaderImpl5.tag, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=null, nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f);
                }
                fc.a(MaxNativeAdLoaderImpl.this.f, (MaxNativeAdView) null, maxAd, true);
                MaxNativeAdLoaderImpl.this.a(ieVar);
                return;
            }
            a(maxNativeAdViewA);
            MaxNativeAdLoaderImpl.this.a(maxNativeAdViewA, ieVar, ieVar.getNativeAd());
            n nVar6 = MaxNativeAdLoaderImpl.this.logger;
            if (n.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl6 = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl6.logger.a(maxNativeAdLoaderImpl6.tag, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=" + maxNativeAdViewA + ", nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f);
            }
            fc.a(MaxNativeAdLoaderImpl.this.f, maxNativeAdViewA, maxAd, true);
            MaxNativeAdLoaderImpl.this.a(ieVar);
            MaxNativeAdLoaderImpl.this.a(maxNativeAdViewA);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            n nVar = MaxNativeAdLoaderImpl.this.logger;
            if (n.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "MaxNativeAdListener.onNativeAdClicked(nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.f);
            }
            fc.a(MaxNativeAdLoaderImpl.this.f, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            MaxNativeAdLoaderImpl.this.a(((MaxErrorImpl) maxError).getLoadTag());
            n nVar = MaxNativeAdLoaderImpl.this.logger;
            if (n.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "MaxNativeAdListener.onNativeAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxNativeAdLoaderImpl.this.f);
            }
            fc.a(MaxNativeAdLoaderImpl.this.f, str, maxError, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl$c$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxAd);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            n nVar = MaxNativeAdLoaderImpl.this.logger;
            if (n.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.revenueListener);
            }
            fc.a(MaxNativeAdLoaderImpl.this.revenueListener, maxAd, true);
        }

        /* synthetic */ c(MaxNativeAdLoaderImpl maxNativeAdLoaderImpl, a aVar) {
            this();
        }

        private void a(MaxNativeAdView maxNativeAdView) {
            ie ieVarB;
            com.applovin.impl.mediation.ads.b adViewTracker = maxNativeAdView.getAdViewTracker();
            if (adViewTracker == null || (ieVarB = adViewTracker.b()) == null) {
                return;
            }
            n nVar = MaxNativeAdLoaderImpl.this.logger;
            if (n.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "Destroying previous ad");
            }
            MaxNativeAdLoaderImpl.this.destroy(ieVarB);
        }
    }

    public MaxNativeAdLoaderImpl(String str, j jVar) {
        super(str, MaxAdFormat.NATIVE, "MaxNativeAdLoader", jVar);
        this.a = new c(this, null);
        this.d = d.b.PUBLISHER_INITIATED;
        this.e = new Object();
        this.g = new HashMap();
        this.h = new HashSet();
        jVar.i().a(this);
        if (n.a()) {
            this.logger.a(this.tag, "Created new MaxNativeAdLoader (" + this + ")");
        }
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        this.f = null;
        this.sdk.i().b(this);
        synchronized (this.e) {
            this.g.clear();
            this.h.clear();
        }
        super.destroy();
    }

    public String getPlacement() {
        return this.b;
    }

    public void handleNativeAdViewRendered(MaxAd maxAd) {
        MaxNativeAd nativeAd = ((ie) maxAd).getNativeAd();
        if (nativeAd == null) {
            if (n.a()) {
                this.logger.b(this.tag, "Failed to handle native ad rendered. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        com.applovin.impl.mediation.ads.b adViewTracker = nativeAd.getAdViewTracker();
        if (adViewTracker != null) {
            adViewTracker.c();
        } else if (n.a()) {
            this.logger.b(this.tag, "Failed to handle native ad rendered. Could not retrieve tracker. Ad might not have been registered via MaxNativeAdLoader.a(...).");
        }
    }

    public void loadAd(MaxNativeAdView maxNativeAdView) {
        if (n.a()) {
            this.logger.a(this.tag, "Loading native ad for '" + this.adUnitId + "' into '" + maxNativeAdView + "' and notifying " + this.a + "...");
        }
        this.extraParameters.put("integration_type", maxNativeAdView != null ? "custom_ad_view" : "no_ad_view");
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        a(lowerCase, maxNativeAdView);
        this.sdk.P().loadAd(this.adUnitId, lowerCase, MaxAdFormat.NATIVE, this.d, this.localExtraParameters, this.extraParameters, j.m(), this.a);
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0035a
    public void onAdExpired(i8 i8Var) {
        if (n.a()) {
            this.logger.a(this.tag, "Ad expired for ad unit id " + getAdUnitId());
        }
        if (n.a()) {
            this.logger.a(this.tag, "MaxNativeAdListener.onNativeAdExpired(nativeAd=" + i8Var + "), listener=" + this.f);
        }
        fc.b(this.f, (MaxAd) i8Var, true);
    }

    @Override // com.applovin.impl.v.b
    public void onCreativeIdGenerated(String str, String str2) {
        ie ieVar;
        Iterator it = this.h.iterator();
        do {
            if (!it.hasNext()) {
                ieVar = null;
                break;
            }
            ieVar = (ie) it.next();
        } while (!ieVar.R().equalsIgnoreCase(str));
        if (ieVar != null) {
            ieVar.h(str2);
            fc.b(this.adReviewListener, str2, ieVar);
            synchronized (this.e) {
                this.h.remove(ieVar);
            }
        }
    }

    public void registerClickableViews(List<View> list, ViewGroup viewGroup, MaxAd maxAd) {
        ie ieVar = (ie) maxAd;
        MaxNativeAd nativeAd = ieVar.getNativeAd();
        if (nativeAd == null) {
            if (n.a()) {
                this.logger.b(this.tag, "Failed to register native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        ieVar.a(viewGroup);
        this.sdk.v().d(ieVar);
        a((fe) ieVar);
        nativeAd.setClickableViews(list);
        nativeAd.setAdViewTracker(new com.applovin.impl.mediation.ads.b(ieVar, viewGroup, this.a, this.sdk));
        a aVar = new a(nativeAd, list, viewGroup);
        if (nativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(aVar);
        } else {
            this.sdk.i0().a((yl) new jn(this.sdk, "renderMaxNativeAd", aVar), tm.b.MEDIATION);
        }
    }

    public boolean render(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        if (!(maxAd instanceof ie)) {
            n.h(this.tag, "Failed to render native ad. `ad` needs to be of type `MediatedNativeAd` to render.");
            return false;
        }
        if (maxNativeAdView == null) {
            n.h(this.tag, "Failed to render native ad. `adView` to render cannot be null.");
            return false;
        }
        ie ieVar = (ie) maxAd;
        MaxNativeAd nativeAd = ieVar.getNativeAd();
        if (nativeAd == null) {
            if (n.a()) {
                this.logger.b(this.tag, "Failed to render native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
            }
            return false;
        }
        if (nativeAd.isExpired() && !((Boolean) this.sdk.a(ue.i7)).booleanValue()) {
            n.h(this.tag, "Cancelled rendering for expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
            return false;
        }
        a(maxNativeAdView, ieVar, nativeAd);
        a(maxNativeAdView);
        return true;
    }

    public void setCustomData(String str) {
        yp.b(str, this.tag);
        this.c = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setLocalExtraParameter(String str, Object obj) {
        super.setLocalExtraParameter(str, obj);
        if (KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE.equalsIgnoreCase(str) && (obj instanceof d.b)) {
            this.d = (d.b) obj;
        }
    }

    public void setNativeAdListener(MaxNativeAdListener maxNativeAdListener) {
        if (n.a()) {
            this.logger.a(this.tag, "Setting native ad listener: " + maxNativeAdListener);
        }
        this.f = maxNativeAdListener;
    }

    public void setPlacement(String str) {
        this.b = str;
    }

    public String toString() {
        return "MaxNativeAdLoader{adUnitId='" + this.adUnitId + "', nativeAdListener=" + this.f + ", revenueListener=" + this.revenueListener + '}';
    }

    public void destroy(MaxAd maxAd) {
        com.applovin.impl.mediation.ads.b adViewTracker;
        if (maxAd instanceof ie) {
            ie ieVar = (ie) maxAd;
            if (ieVar.u0()) {
                if (n.a()) {
                    this.logger.a(this.tag, "Native ad (" + ieVar + ") has already been destroyed");
                    return;
                }
                return;
            }
            synchronized (this.e) {
                this.h.remove(ieVar);
            }
            MaxNativeAdView maxNativeAdViewO0 = ieVar.o0();
            if (maxNativeAdViewO0 != null && (adViewTracker = maxNativeAdViewO0.getAdViewTracker()) != null && maxAd.equals(adViewTracker.b())) {
                maxNativeAdViewO0.recycle();
            }
            MaxNativeAd nativeAd = ieVar.getNativeAd();
            if (nativeAd != null && nativeAd.getAdViewTracker() != null) {
                nativeAd.getAdViewTracker().a();
            }
            this.sdk.f().a(ieVar);
            this.sdk.P().destroyAd(ieVar);
            this.sdk.J().c(this.adUnitId, ieVar.M());
            return;
        }
        if (n.a()) {
            this.logger.a(this.tag, "Destroy failed on non-native ad(" + maxAd + ")");
        }
    }

    class b implements Runnable {
        final /* synthetic */ MaxNativeAdView a;
        final /* synthetic */ ie b;
        final /* synthetic */ MaxNativeAd c;

        @Override // java.lang.Runnable
        public void run() {
            n nVar = MaxNativeAdLoaderImpl.this.logger;
            if (n.a()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.a(maxNativeAdLoaderImpl.tag, "Rendering native ad view: " + this.a);
            }
            this.a.render(this.b, MaxNativeAdLoaderImpl.this.a, MaxNativeAdLoaderImpl.this.sdk);
            this.c.setNativeAdView(this.a);
            if (this.c.prepareForInteraction(this.a.getClickableViews(), this.a)) {
                return;
            }
            this.c.prepareViewForInteraction(this.a);
        }

        b(MaxNativeAdView maxNativeAdView, ie ieVar, MaxNativeAd maxNativeAd) {
            this.a = maxNativeAdView;
            this.b = ieVar;
            this.c = maxNativeAd;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxNativeAdView maxNativeAdView, ie ieVar, MaxNativeAd maxNativeAd) {
        ieVar.a(maxNativeAdView);
        a((fe) ieVar);
        b bVar = new b(maxNativeAdView, ieVar, maxNativeAd);
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(bVar);
        } else {
            this.sdk.i0().a((yl) new jn(this.sdk, "renderMaxNativeAd", bVar), tm.b.MEDIATION);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ie ieVar) {
        if (ieVar.q0().get()) {
            return;
        }
        this.sdk.f().a(ieVar, this);
    }

    private void a(String str, MaxNativeAdView maxNativeAdView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.e) {
            this.g.put(str, maxNativeAdView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxNativeAdView a(String str) {
        MaxNativeAdView maxNativeAdView;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.e) {
            maxNativeAdView = (MaxNativeAdView) this.g.remove(str);
        }
        return maxNativeAdView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxNativeAdView maxNativeAdView) {
        com.applovin.impl.mediation.ads.b adViewTracker = maxNativeAdView.getAdViewTracker();
        if (adViewTracker != null) {
            if (z3.e()) {
                if (maxNativeAdView.isAttachedToWindow()) {
                    adViewTracker.c();
                }
            } else if (maxNativeAdView.getParent() != null) {
                adViewTracker.c();
            }
        }
    }
}
