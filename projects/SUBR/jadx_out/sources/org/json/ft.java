package org.json;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.sdk.LevelPlayBannerListener;
import org.json.mediationsdk.sdk.LevelPlayInterstitialListener;
import org.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener;
import org.json.mediationsdk.sdk.LevelPlayRewardedVideoListener;
import org.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J(\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tH\u0002J\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/ironsource/ft;", "", "", "b", "c", "", "callbackName", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "adUnit", "", "args", "a", "d", "Lcom/ironsource/ws;", "Lcom/ironsource/ws;", "mJavaScriptEvaluator", "javaScriptEvaluator", "<init>", "(Lcom/ironsource/ws;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ft {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ws mJavaScriptEvaluator;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u000b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u000e"}, d2 = {"com/ironsource/ft$a", "Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "", gt.a, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", gt.b, gt.c, gt.d, gt.e, gt.f, gt.g, "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements LevelPlayInterstitialListener {
        a() {
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdClicked(AdInfo adInfo) {
            ft.this.a(gt.f, IronSource.AD_UNIT.INTERSTITIAL, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdClosed(AdInfo adInfo) {
            ft.this.a(gt.g, IronSource.AD_UNIT.INTERSTITIAL, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdLoadFailed(IronSourceError error) {
            ft ftVar = ft.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
            kt ktVar = kt.a;
            Object[] objArr = new Object[1];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            ftVar.a(gt.b, ad_unit, ktVar.a(objArr));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdOpened(AdInfo adInfo) {
            ft.this.a(gt.c, IronSource.AD_UNIT.INTERSTITIAL, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdReady(AdInfo adInfo) {
            ft.this.a(gt.a, IronSource.AD_UNIT.INTERSTITIAL, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdShowFailed(IronSourceError error, AdInfo adInfo) {
            ft ftVar = ft.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
            kt ktVar = kt.a;
            Object[] objArr = new Object[2];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            objArr[1] = adInfo;
            ftVar.a(gt.e, ad_unit, ktVar.a(objArr));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdShowSucceeded(AdInfo adInfo) {
            ft.this.a(gt.d, IronSource.AD_UNIT.INTERSTITIAL, kt.a.a(adInfo));
        }
    }

    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\n\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0016J\u0012\u0010\f\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010\r\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010\u0011\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0012\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¨\u0006\u0013"}, d2 = {"com/ironsource/ft$b", "Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;", "Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "", gt.a, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", gt.b, gt.h, gt.n, gt.c, gt.e, "Lcom/ironsource/mediationsdk/model/Placement;", "placement", gt.f, gt.i, gt.g, "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class b implements LevelPlayRewardedVideoManualListener, LevelPlayRewardedVideoListener {
        b() {
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoListener
        public void onAdAvailable(AdInfo adInfo) {
            ft.this.a(gt.h, IronSource.AD_UNIT.REWARDED_VIDEO, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdClicked(Placement placement, AdInfo adInfo) {
            ft.this.a(gt.f, IronSource.AD_UNIT.REWARDED_VIDEO, kt.a.a(et.a.a(placement), adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdClosed(AdInfo adInfo) {
            ft.this.a(gt.g, IronSource.AD_UNIT.REWARDED_VIDEO, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener
        public void onAdLoadFailed(IronSourceError error) {
            ft ftVar = ft.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
            kt ktVar = kt.a;
            Object[] objArr = new Object[1];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            ftVar.a(gt.b, ad_unit, ktVar.a(objArr));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdOpened(AdInfo adInfo) {
            ft.this.a(gt.c, IronSource.AD_UNIT.REWARDED_VIDEO, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener
        public void onAdReady(AdInfo adInfo) {
            ft.this.a(gt.a, IronSource.AD_UNIT.REWARDED_VIDEO, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdRewarded(Placement placement, AdInfo adInfo) {
            ft.this.a(gt.i, IronSource.AD_UNIT.REWARDED_VIDEO, kt.a.a(et.a.a(placement), adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdShowFailed(IronSourceError error, AdInfo adInfo) {
            ft ftVar = ft.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
            kt ktVar = kt.a;
            Object[] objArr = new Object[2];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            objArr[1] = adInfo;
            ftVar.a(gt.e, ad_unit, ktVar.a(objArr));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayRewardedVideoListener
        public void onAdUnavailable() {
            ft.this.a(gt.n, IronSource.AD_UNIT.REWARDED_VIDEO, kt.a.a(new Object[0]));
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\r"}, d2 = {"com/ironsource/ft$c", "Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "", gt.j, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", gt.b, gt.f, gt.k, gt.l, gt.m, "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class c implements LevelPlayBannerListener {
        c() {
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdClicked(AdInfo adInfo) {
            ft.this.a(gt.f, IronSource.AD_UNIT.BANNER, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdLeftApplication(AdInfo adInfo) {
            ft.this.a(gt.k, IronSource.AD_UNIT.BANNER, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdLoadFailed(IronSourceError error) {
            ft ftVar = ft.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
            kt ktVar = kt.a;
            Object[] objArr = new Object[1];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            ftVar.a(gt.b, ad_unit, ktVar.a(objArr));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdLoaded(AdInfo adInfo) {
            ft.this.a(gt.j, IronSource.AD_UNIT.BANNER, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdScreenDismissed(AdInfo adInfo) {
            ft.this.a(gt.m, IronSource.AD_UNIT.BANNER, kt.a.a(adInfo));
        }

        @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdScreenPresented(AdInfo adInfo) {
            ft.this.a(gt.l, IronSource.AD_UNIT.BANNER, kt.a.a(adInfo));
        }
    }

    public ft(ws javaScriptEvaluator) {
        Intrinsics.checkNotNullParameter(javaScriptEvaluator, "javaScriptEvaluator");
        this.mJavaScriptEvaluator = javaScriptEvaluator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String callbackName, IronSource.AD_UNIT adUnit, List<? extends Object> args) {
        this.mJavaScriptEvaluator.a(callbackName, adUnit, args);
    }

    private final void b() {
        et etVar = et.a;
        etVar.a((LevelPlayInterstitialListener) null);
        etVar.a((LevelPlayRewardedVideoBaseListener) null);
        etVar.a((LevelPlayBannerListener) null);
    }

    private final void c() {
        et.a.i();
    }

    public final void a() {
        b();
        c();
    }

    public final void d() {
        et etVar = et.a;
        etVar.a(new a());
        etVar.a(new b());
        etVar.a(new c());
    }
}
