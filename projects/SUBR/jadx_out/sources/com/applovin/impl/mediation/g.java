package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.fe;
import com.applovin.impl.he;
import com.applovin.impl.jn;
import com.applovin.impl.oe;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.ue;
import com.applovin.impl.yl;
import com.applovin.impl.zj;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private final j b;
    private final n c;
    private final String d;
    private final oe e;
    private final String f;
    private MaxAdapter g;
    private String h;
    private fe i;
    private View j;
    private MaxNativeAd k;
    private MaxNativeAdView l;
    private ViewGroup m;
    private MaxAdapterResponseParameters o;
    private final boolean s;
    private final Handler a = new Handler(Looper.getMainLooper());
    private final d n = new d(this, null);
    private final AtomicBoolean p = new AtomicBoolean(true);
    private final AtomicBoolean q = new AtomicBoolean(false);
    private final AtomicBoolean r = new AtomicBoolean(false);

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MaxAdapter maxAdapter = g.this.g;
            if (maxAdapter != null) {
                g.this.g = null;
                maxAdapter.onDestroy();
            } else {
                n unused = g.this.c;
                if (n.a()) {
                    g.this.c.k("MediationAdapterWrapper", "Mediation adapter '" + g.this.f + "' is already destroyed");
                }
            }
            g.this.j = null;
            g.this.k = null;
            g.this.l = null;
            g.this.m = null;
        }
    }

    public interface c {
        void a(MaxError maxError);

        void onSignalCollected(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class d implements MaxInterstitialAdapterListener, MaxAppOpenAdapterListener, MaxRewardedAdapterListener, MaxRewardedInterstitialAdapterListener, MaxAdViewAdapterListener, MaxNativeAdAdapterListener {
        private MediationServiceImpl.d a;

        private d() {
        }

        private void b(String str, final Bundle bundle) {
            if (g.this.i.w().compareAndSet(false, true)) {
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.j(bundle);
                    }
                });
            }
        }

        private void c(String str, final Bundle bundle) {
            if (!g.this.i.w().get()) {
                g.this.r.set(true);
                a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.k(bundle);
                    }
                });
                return;
            }
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.b("MediationAdapterWrapper", g.this.f + ": blocking ad loaded callback for " + g.this.i + " since onAdHidden() has been called");
            }
            g.this.b.q().a(g.this.i, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Bundle bundle) {
            this.a.a(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Bundle bundle) {
            this.a.a(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Bundle bundle) {
            this.a.a(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Bundle bundle) {
            this.a.a(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Bundle bundle) {
            this.a.c(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(Bundle bundle) {
            this.a.c(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(Bundle bundle) {
            this.a.e(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(Bundle bundle) {
            if (g.this.q.compareAndSet(false, true)) {
                this.a.f(g.this.i, bundle);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            onAdViewAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            onAdViewAdCollapsed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAdViewAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            onAdViewAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            onAdViewAdExpanded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            onAdViewAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": adview ad ad failed to load with error: " + maxAdapterError);
            }
            a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            onAdViewAdLoaded(view, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked() {
            onAppOpenAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAppOpenAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed() {
            onAppOpenAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden() {
            onAppOpenAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoadFailed(MaxAdapterError maxAdapterError) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": app open ad failed to load with error: " + maxAdapterError);
            }
            a("onAppOpenAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded() {
            onAppOpenAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            onInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onInterstitialAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            onInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            onInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": interstitial ad failed to load with error " + maxAdapterError);
            }
            a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            onInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked() {
            onNativeAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdDisplayed(Bundle bundle) {
            if (g.this.i.Y()) {
                return;
            }
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": native ad displayed with extra info: " + bundle);
            }
            a("onNativeAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoadFailed(MaxAdapterError maxAdapterError) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": native ad ad failed to load with error: " + maxAdapterError);
            }
            a("onNativeAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoaded(MaxNativeAd maxNativeAd, Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": native ad loaded with extra info: " + bundle);
            }
            g.this.k = maxNativeAd;
            c("onNativeAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            onRewardedAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onRewardedAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            onRewardedAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            onRewardedAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            onRewardedAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdClicked() {
            onRewardedInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onRewardedInterstitialAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed() {
            onRewardedInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdHidden() {
            onRewardedInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded() {
            onRewardedInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener, com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onUserRewarded(MaxReward maxReward) {
            onUserRewarded(maxReward, null);
        }

        /* synthetic */ d(g gVar, a aVar) {
            this();
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked(final Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": adview ad clicked with extra info: " + bundle);
            }
            a("onAdViewAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": adview ad collapsed");
            }
            a("onAdViewAdCollapsed", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": adview ad failed to display with error: " + maxAdapterError);
            }
            a("onAdViewAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed(Bundle bundle) {
            if (g.this.i.Y()) {
                return;
            }
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": adview ad displayed with extra info: " + bundle);
            }
            a("onAdViewAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded(final Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": adview ad expanded");
            }
            a("onAdViewAdExpanded", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": adview ad hidden with extra info: " + bundle);
            }
            b("onAdViewAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view, Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": adview ad loaded with extra info: " + bundle);
            }
            g.this.j = view;
            c("onAdViewAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked(final Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": app open ad clicked with extra info: " + bundle);
            }
            a("onAppOpenAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": app open ad display failed with error: " + maxAdapterError);
            }
            a("onAppOpenAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": app open ad displayed with extra info: " + bundle);
            }
            a("onAppOpenAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": app open ad hidden with extra info: " + bundle);
            }
            b("onAppOpenAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": app open ad loaded with extra info: " + bundle);
            }
            c("onAppOpenAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked(final Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": interstitial ad clicked with extra info: " + bundle);
            }
            a("onInterstitialAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.d(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": interstitial ad failed to display with error " + maxAdapterError);
            }
            a("onInterstitialAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": interstitial ad displayed with extra info: " + bundle);
            }
            a("onInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": interstitial ad hidden with extra info " + bundle);
            }
            b("onInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": interstitial ad loaded with extra info: " + bundle);
            }
            c("onInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked(final Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": native ad clicked");
            }
            a("onNativeAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked(final Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded ad clicked with extra info: " + bundle);
            }
            a("onRewardedAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.f(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": rewarded ad display failed with error: " + maxAdapterError);
            }
            a("onRewardedAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded ad displayed with extra info: " + bundle);
            }
            a("onRewardedAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded ad hidden with extra info: " + bundle);
            }
            b("onRewardedAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded ad loaded with extra info: " + bundle);
            }
            c("onRewardedAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdClicked(final Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded interstitial ad clicked with extra info: " + bundle);
            }
            a("onRewardedInterstitialAdClicked", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.g(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError, Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.k("MediationAdapterWrapper", g.this.f + ": rewarded interstitial ad display failed with error: " + maxAdapterError);
            }
            a("onRewardedInterstitialAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded interstitial ad displayed with extra info: " + bundle);
            }
            a("onRewardedInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdHidden(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded interstitial ad hidden with extra info: " + bundle);
            }
            b("onRewardedInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded(Bundle bundle) {
            n unused = g.this.c;
            if (n.a()) {
                g.this.c.d("MediationAdapterWrapper", g.this.f + ": rewarded interstitial ad loaded with extra info: " + bundle);
            }
            c("onRewardedInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener, com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onUserRewarded(final MaxReward maxReward, final Bundle bundle) {
            if (g.this.i instanceof he) {
                final he heVar = (he) g.this.i;
                if (heVar.p0().compareAndSet(false, true)) {
                    n unused = g.this.c;
                    if (n.a()) {
                        g.this.c.d("MediationAdapterWrapper", g.this.f + ": user was rewarded: " + maxReward);
                    }
                    a("onUserRewarded", this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(heVar, maxReward, bundle);
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Bundle bundle) {
            this.a.d(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Bundle bundle) {
            this.a.a(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(he heVar, MaxReward maxReward, Bundle bundle) {
            this.a.a(heVar, maxReward, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MediationServiceImpl.d dVar) {
            if (dVar != null) {
                this.a = dVar;
                return;
            }
            throw new IllegalArgumentException("No listener specified");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError) {
            if (g.this.i.w().get()) {
                n unused = g.this.c;
                if (n.a()) {
                    g.this.c.b("MediationAdapterWrapper", g.this.f + ": blocking ad load failed callback for " + g.this.i + " since onAdHidden() has been called");
                }
                g.this.b.q().a(g.this.i, str);
                return;
            }
            a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxError);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError) {
            if (g.this.q.compareAndSet(false, true)) {
                this.a.onAdLoadFailed(g.this.h, maxError);
            }
        }

        private void a(String str, final Bundle bundle) {
            if (g.this.i.w().get()) {
                n unused = g.this.c;
                if (n.a()) {
                    g.this.c.b("MediationAdapterWrapper", g.this.f + ": blocking ad displayed callback for " + g.this.i + " since onAdHidden() has been called");
                }
                g.this.b.q().a(g.this.i, str);
                return;
            }
            if (!((Boolean) g.this.b.a(ue.K7)).booleanValue()) {
                if (g.this.i.u().compareAndSet(false, true)) {
                    a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.i(bundle);
                        }
                    });
                    return;
                }
                return;
            }
            a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.h(bundle);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError, final Bundle bundle) {
            if (g.this.i.w().get()) {
                n unused = g.this.c;
                if (n.a()) {
                    g.this.c.b("MediationAdapterWrapper", g.this.f + ": blocking ad display failed callback for " + g.this.i + " since onAdHidden() has been called");
                }
                g.this.b.q().a(g.this.i, str);
                return;
            }
            a(str, this.a, new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxError, bundle);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError, Bundle bundle) {
            this.a.a(g.this.i, maxError, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Bundle bundle) {
            this.a.a(g.this.i, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            this.a.onAdCollapsed(g.this.i);
        }

        private void a(final String str, final MaxAdListener maxAdListener, final Runnable runnable) {
            g.this.a.post(new Runnable() { // from class: com.applovin.impl.mediation.g$d$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(runnable, maxAdListener, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Runnable runnable, MaxAdListener maxAdListener, String str) {
            try {
                runnable.run();
            } catch (Throwable th) {
                n.c("MediationAdapterWrapper", "Failed to forward call (" + str + ") to " + (maxAdListener != null ? maxAdListener.getClass().getName() : null), th);
                g.this.b.D().a("MediationAdapterWrapper", str, th, CollectionUtils.hashMap("adapter_class", g.this.e.b()));
            }
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.mediation.g$g, reason: collision with other inner class name */
    private class C0027g extends yl {
        private final WeakReference h;

        /* synthetic */ C0027g(g gVar, a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.q.get()) {
                return;
            }
            if (g.this.i.Z()) {
                if (n.a()) {
                    this.c.a(this.b, g.this.f + " is timing out, considering JS Tag ad loaded: " + g.this.i);
                }
                b(g.this.i);
                return;
            }
            if (n.a()) {
                this.c.b(this.b, g.this.f + " is timing out " + g.this.i + "...");
            }
            b(g.this.i);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-5101, "Adapter timed out");
            d dVar = (d) this.h.get();
            if (dVar != null) {
                dVar.a(this.b, maxErrorImpl);
            }
        }

        private C0027g() {
            super("TaskTimeoutMediatedAd", g.this.b);
            this.h = new WeakReference(g.this.n);
        }

        private void b(fe feVar) {
            if (feVar != null) {
                this.a.R().a(feVar);
            }
        }
    }

    private class h extends yl {
        private final f h;

        /* synthetic */ h(g gVar, f fVar, a aVar) {
            this(fVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.h.c.get()) {
                return;
            }
            if (n.a()) {
                this.c.b(this.b, g.this.f + " is timing out " + this.h.a + "...");
            }
            g.this.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + g.this.f + ") timed out"), this.h);
        }

        private h(f fVar) {
            super("TaskTimeoutSignalCollection", g.this.b);
            this.h = fVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        a("destroy");
        b bVar = new b();
        if (((Boolean) this.b.a(ue.M7)).booleanValue()) {
            AppLovinSdkUtils.runOnUiThread(bVar);
        } else {
            bVar.run();
        }
    }

    public String toString() {
        return "MediationAdapterWrapper{adapterTag='" + this.f + "'}";
    }

    public View d() {
        return this.j;
    }

    public MaxNativeAd e() {
        return this.k;
    }

    public MaxNativeAdView f() {
        return this.l;
    }

    public ViewGroup h() {
        return this.m;
    }

    public String i() {
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getSdkVersion();
        } catch (Throwable th) {
            n.c("MediationAdapterWrapper", "Failed to get adapter's SDK version for " + this.d, th);
            this.b.D().a("MediationAdapterWrapper", "sdk_version", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("sdk_version");
            this.b.L().a(this.e.b(), "sdk_version", this.i);
            return null;
        }
    }

    public boolean j() {
        return this.q.get() && this.r.get();
    }

    public boolean k() {
        return this.p.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxRewardedInterstitialAdapter) this.g).loadRewardedInterstitialAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MediationAdapterBase) this.g).loadNativeAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Activity activity) {
        ((MaxInterstitialAdapter) this.g).showInterstitialAd(this.o, activity, this.n);
    }

    public String g() {
        return this.d;
    }

    g(oe oeVar, MaxAdapter maxAdapter, boolean z, j jVar) {
        if (oeVar == null) {
            throw new IllegalArgumentException("No adapter name specified");
        }
        if (maxAdapter == null) {
            throw new IllegalArgumentException("No adapter specified");
        }
        if (jVar != null) {
            this.d = oeVar.c();
            this.g = maxAdapter;
            this.b = jVar;
            this.c = jVar.I();
            this.e = oeVar;
            this.f = maxAdapter.getClass().getSimpleName();
            this.s = z;
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public void c(final fe feVar, final Activity activity) {
        Runnable runnable;
        if (b(feVar, activity)) {
            if (feVar.Y()) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(feVar, activity);
                    }
                };
            } else if (feVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.d(activity);
                    }
                };
            } else if (feVar.getFormat() == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(activity);
                    }
                };
            } else if (feVar.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(activity);
                    }
                };
            } else if (feVar.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to show " + feVar + ": " + feVar.getFormat() + " is not a supported ad format");
            }
            a(runnable, feVar);
        }
    }

    public MediationServiceImpl.d c() {
        return this.n.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxRewardedAdapter) this.g).loadRewardedAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Activity activity) {
        ((MaxRewardedInterstitialAdapter) this.g).showRewardedInterstitialAd(this.o, activity, this.n);
    }

    private boolean b(fe feVar, Activity activity) {
        if (feVar != null) {
            if (feVar.A() == null) {
                n.h("MediationAdapterWrapper", "Adapter has been garbage collected");
                this.n.a("ad_show", new MaxErrorImpl(-1, "Adapter has been garbage collected"), (Bundle) null);
                return false;
            }
            if (feVar.A() == this) {
                if (activity == null && MaxAdFormat.APP_OPEN != feVar.getFormat()) {
                    throw new IllegalArgumentException("No activity specified");
                }
                if (!this.p.get()) {
                    String str = "Mediation adapter '" + this.f + "' is disabled. Showing ads with this adapter is disabled.";
                    n.h("MediationAdapterWrapper", str);
                    this.n.a("ad_show", new MaxErrorImpl(-1, str), (Bundle) null);
                    return false;
                }
                if (j()) {
                    return true;
                }
                throw new IllegalStateException("Mediation adapter '" + this.f + "' does not have an ad loaded. Please load an ad first");
            }
            throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxAppOpenAdapter) this.g).loadAppOpenAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Activity activity) {
        ((MaxRewardedAdapter) this.g).showRewardedAd(this.o, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxRewardedAdViewAdapter) this.g).showRewardedAd(this.o, viewGroup, lifecycle, activity, this.n);
    }

    public String b() {
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getAdapterVersion();
        } catch (Throwable th) {
            n.c("MediationAdapterWrapper", "Failed to get adapter version for " + this.d, th);
            this.b.D().a("MediationAdapterWrapper", "adapter_version", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("adapter_version");
            this.b.L().a(this.e.b(), "adapter_version", this.i);
            return null;
        }
    }

    private void b(String str, Runnable runnable) {
        a(str, (MaxAdFormat) null, runnable);
    }

    void a(final MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, final zj zjVar, final Activity activity, c cVar) {
        if (cVar != null) {
            if (!this.p.get()) {
                n.h("MediationAdapterWrapper", "Mediation adapter '" + this.f + "' is disabled. Signal collection ads with this adapter is disabled.");
                cVar.a(new MaxErrorImpl("The adapter (" + this.f + ") is disabled"));
                return;
            }
            final f fVar = new f(zjVar, cVar);
            MaxAdapter maxAdapter = this.g;
            if (maxAdapter instanceof MaxSignalProvider) {
                final MaxSignalProvider maxSignalProvider = (MaxSignalProvider) maxAdapter;
                b("collect_signal", new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(zjVar, fVar, maxSignalProvider, maxAdapterSignalCollectionParameters, activity);
                    }
                });
                return;
            } else {
                a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED, "The adapter (" + this.f + ") does not support signal collection"), fVar);
                return;
            }
        }
        throw new IllegalArgumentException("No callback specified");
    }

    class a implements MaxSignalCollectionListener {
        final /* synthetic */ zj a;
        final /* synthetic */ f b;

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollected(String str) {
            if (this.a.x() && TextUtils.isEmpty(str)) {
                g.this.a(new MaxErrorImpl("Signal is not a valid string"), this.b);
            } else {
                g.this.a(str, this.b);
            }
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
        public void onSignalCollectionFailed(String str) {
            g.this.a(new MaxErrorImpl(str), this.b);
        }

        a(zj zjVar, f fVar) {
            this.a = zjVar;
            this.b = fVar;
        }
    }

    private void a(final Runnable runnable, fe feVar) {
        a("show_ad", feVar.getFormat(), new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class f {
        private final zj a;
        private final c b;
        private final AtomicBoolean c = new AtomicBoolean();

        f(zj zjVar, c cVar) {
            this.a = zjVar;
            this.b = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class e implements MaxAdapter.OnCompletionListener {
        private final j a;
        private final oe b;
        private final long c;
        private final MaxAdapter.OnCompletionListener d;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
            this.a.K().a(this.b, SystemClock.elapsedRealtime() - this.c, initializationStatus, str);
            MaxAdapter.OnCompletionListener onCompletionListener = this.d;
            if (onCompletionListener != null) {
                onCompletionListener.onCompletion(initializationStatus, str);
            }
        }

        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
        public void onCompletion(final MaxAdapter.InitializationStatus initializationStatus, final String str) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.g$e$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(initializationStatus, str);
                }
            }, this.b.h());
        }

        public e(j jVar, oe oeVar, long j, MaxAdapter.OnCompletionListener onCompletionListener) {
            this.a = jVar;
            this.b = oeVar;
            this.c = j;
            this.d = onCompletionListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(zj zjVar, f fVar, MaxSignalProvider maxSignalProvider, MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity) {
        a(zjVar, fVar);
        try {
            maxSignalProvider.collectSignal(maxAdapterSignalCollectionParameters, activity, new a(zjVar, fVar));
        } catch (Throwable th) {
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl("Failed signal collection for " + this.d + " due to: " + th);
            n.h("MediationAdapterWrapper", maxErrorImpl.getMessage());
            a(maxErrorImpl, fVar);
            this.b.D().a("MediationAdapterWrapper", "collect_signal", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("collect_signal");
            this.b.L().a(this.e.b(), "collect_signal", this.i);
        }
        if (!fVar.c.get() && zjVar.m() == 0) {
            if (n.a()) {
                this.c.a("MediationAdapterWrapper", "Failing signal collection " + zjVar + " since it has 0 timeout");
            }
            a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + this.f + ") has 0 timeout"), fVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(fe feVar, Runnable runnable) {
        a(this.e, feVar);
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start loading ad for " + this.d + " due to: " + th;
            n.h("MediationAdapterWrapper", str);
            this.n.a("load_ad", new MaxErrorImpl(-1, str));
            this.b.D().a("MediationAdapterWrapper", "load_ad", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("load_ad");
            this.b.L().a(this.e.b(), "load_ad", this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(fe feVar, Activity activity) {
        this.b.E().a((he) feVar, activity, this.n);
    }

    public void a(String str, final MaxAdapterResponseParameters maxAdapterResponseParameters, final fe feVar, final Activity activity, MediationServiceImpl.d dVar) {
        final Runnable runnable;
        if (feVar != null) {
            if (!this.p.get()) {
                String str2 = "Mediation adapter '" + this.f + "' was disabled due to earlier failures. Loading ads with this adapter is disabled.";
                n.h("MediationAdapterWrapper", str2);
                dVar.onAdLoadFailed(str, new MaxErrorImpl(-1, str2));
                return;
            }
            this.o = maxAdapterResponseParameters;
            this.n.a(dVar);
            final MaxAdFormat maxAdFormatI = feVar.Y() ? feVar.I() : feVar.getFormat();
            if (maxAdFormatI == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (maxAdFormatI == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (maxAdFormatI == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.c(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (maxAdFormatI == MaxAdFormat.REWARDED_INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.d(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (maxAdFormatI == MaxAdFormat.NATIVE) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.e(maxAdapterResponseParameters, activity);
                    }
                };
            } else if (maxAdFormatI.isAdViewAd()) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(maxAdapterResponseParameters, maxAdFormatI, activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to load " + feVar + ": " + feVar.getFormat() + " (" + feVar.I() + ") is not a supported ad format");
            }
            a("load_ad", maxAdFormatI, new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(feVar, runnable);
                }
            });
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    private void a(oe oeVar, fe feVar) {
        a(new C0027g(this, null), oeVar, feVar);
    }

    private void a(oe oeVar, f fVar) {
        a(new h(this, fVar, null), oeVar, (fe) null);
    }

    private void a(yl ylVar, oe oeVar, fe feVar) {
        long jM = oeVar.m();
        if (jM <= 0) {
            if (n.a()) {
                n nVar = this.c;
                StringBuilder sb = new StringBuilder("Non-positive timeout set for ");
                if (feVar != null) {
                    oeVar = feVar;
                }
                sb.append(oeVar);
                sb.append(", not scheduling a timeout");
                nVar.a("MediationAdapterWrapper", sb.toString());
                return;
            }
            return;
        }
        if (n.a()) {
            n nVar2 = this.c;
            StringBuilder sb2 = new StringBuilder("Setting timeout ");
            sb2.append(jM);
            sb2.append("ms for ");
            if (feVar != null) {
                oeVar = feVar;
            }
            sb2.append(oeVar);
            nVar2.a("MediationAdapterWrapper", sb2.toString());
        }
        this.b.i0().a(ylVar, tm.b.TIMEOUT, jM);
    }

    void a(String str, fe feVar) {
        this.h = str;
        this.i = feVar;
    }

    public void a(fe feVar, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity) {
        Runnable runnable;
        if (b(feVar, activity)) {
            if (feVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(viewGroup, lifecycle, activity);
                    }
                };
            } else if (feVar.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(viewGroup, lifecycle, activity);
                    }
                };
            } else {
                throw new IllegalStateException("Failed to show " + feVar + ": " + feVar.getFormat() + " is not a supported ad format");
            }
            a(runnable, feVar);
        }
    }

    void a(final MaxAdapterInitializationParameters maxAdapterInitializationParameters, final Activity activity, final MaxAdapter.OnCompletionListener onCompletionListener) {
        b(MobileAdsBridgeBase.initializeMethodName, new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(onCompletionListener, maxAdapterInitializationParameters, activity);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapter.OnCompletionListener onCompletionListener, MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (n.a()) {
            this.c.a("MediationAdapterWrapper", "Initializing " + this.f + " on thread: " + Thread.currentThread() + " with 'run_on_ui_thread' value: " + this.e.r());
        }
        this.g.initialize(maxAdapterInitializationParameters, activity, new e(this.b, this.e, jElapsedRealtime, onCompletionListener));
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.l = maxNativeAdView;
    }

    public void a(ViewGroup viewGroup) {
        this.m = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxInterstitialAdapter) this.g).loadInterstitialAd(maxAdapterResponseParameters, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, Activity activity) {
        ((MaxAdViewAdapter) this.g).loadAdViewAd(maxAdapterResponseParameters, maxAdFormat, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        ((MaxAppOpenAdapter) this.g).showAppOpenAd(this.o, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxInterstitialAdViewAdapter) this.g).showInterstitialAd(this.o, viewGroup, lifecycle, activity, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start displaying ad for " + this.d + " due to: " + th;
            n.h("MediationAdapterWrapper", str);
            this.n.a("show_ad", new MaxErrorImpl(-1, str), (Bundle) null);
            this.b.D().a("MediationAdapterWrapper", "show_ad", th, CollectionUtils.hashMap("adapter_class", this.e.b()));
            a("show_ad");
            this.b.L().a(this.e.b(), "show_ad", this.i);
        }
    }

    void a() {
        if (this.s) {
            return;
        }
        b("destroy", new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.l();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, f fVar) {
        if (!fVar.c.compareAndSet(false, true) || fVar.b == null) {
            return;
        }
        fVar.b.onSignalCollected(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxError maxError, f fVar) {
        if (!fVar.c.compareAndSet(false, true) || fVar.b == null) {
            return;
        }
        fVar.b.a(maxError);
    }

    private void a(String str) {
        if (n.a()) {
            this.c.d("MediationAdapterWrapper", "Marking " + this.f + " as disabled due to: " + str);
        }
        this.p.set(false);
    }

    private void a(final String str, MaxAdFormat maxAdFormat, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.applovin.impl.mediation.g$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, runnable);
            }
        };
        if (a(str, maxAdFormat)) {
            this.a.post(runnable2);
            return;
        }
        jn jnVar = new jn(this.b, str + ":" + this.e.c(), runnable2);
        if (((Boolean) this.b.a(sj.b0)).booleanValue()) {
            this.b.i0().a(jnVar, this.e);
        } else {
            this.b.i0().a(jnVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, Runnable runnable) {
        try {
            if (n.a()) {
                this.c.a("MediationAdapterWrapper", this.f + ": running " + str + "...");
            }
            runnable.run();
            if (n.a()) {
                this.c.a("MediationAdapterWrapper", this.f + ": finished " + str + "");
            }
        } catch (Throwable th) {
            n.c("MediationAdapterWrapper", "Failed operation " + str + " for " + this.d, th);
            StringBuilder sb = new StringBuilder("fail_");
            sb.append(str);
            a(sb.toString());
            if (!str.equals("destroy")) {
                this.b.L().a(this.e.b(), str, this.i);
            }
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("is_wrapper", org.json.mediationsdk.metadata.a.g);
            CollectionUtils.putStringIfValid("adapter_class", this.e.b(), mapHashMap);
            this.b.D().a("MediationAdapterWrapper", str, th, mapHashMap);
        }
    }

    private boolean a(String str, MaxAdFormat maxAdFormat) {
        Boolean boolShouldShowAdsOnUiThread;
        MaxAdapter maxAdapter = this.g;
        if (maxAdapter == null) {
            return this.e.r();
        }
        if (MobileAdsBridgeBase.initializeMethodName.equals(str)) {
            Boolean boolShouldInitializeOnUiThread = maxAdapter.shouldInitializeOnUiThread();
            if (boolShouldInitializeOnUiThread != null) {
                return boolShouldInitializeOnUiThread.booleanValue();
            }
        } else if ("collect_signal".equals(str)) {
            Boolean boolShouldCollectSignalsOnUiThread = maxAdapter.shouldCollectSignalsOnUiThread();
            if (boolShouldCollectSignalsOnUiThread != null) {
                return boolShouldCollectSignalsOnUiThread.booleanValue();
            }
        } else if ("load_ad".equals(str) && maxAdFormat != null) {
            Boolean boolShouldLoadAdsOnUiThread = maxAdapter.shouldLoadAdsOnUiThread(maxAdFormat);
            if (boolShouldLoadAdsOnUiThread != null) {
                return boolShouldLoadAdsOnUiThread.booleanValue();
            }
        } else if ("show_ad".equals(str) && maxAdFormat != null && (boolShouldShowAdsOnUiThread = maxAdapter.shouldShowAdsOnUiThread(maxAdFormat)) != null) {
            return boolShouldShowAdsOnUiThread.booleanValue();
        }
        return this.e.r();
    }
}
