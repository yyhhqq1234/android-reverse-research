package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.fc;
import com.applovin.impl.fe;
import com.applovin.impl.he;
import com.applovin.impl.i8;
import com.applovin.impl.jn;
import com.applovin.impl.ka;
import com.applovin.impl.kf;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.tm;
import com.applovin.impl.ue;
import com.applovin.impl.v;
import com.applovin.impl.yp;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class MaxFullscreenAdImpl extends com.applovin.impl.mediation.ads.a implements com.applovin.impl.sdk.a.InterfaceC0035a, v.b {
    private final b a;
    private final WeakReference b;
    private final c c;
    private final com.applovin.impl.mediation.b d;
    private final Object e;
    private he f;
    private d g;
    private final AtomicBoolean h;
    private final AtomicBoolean i;
    private boolean j;
    private boolean k;
    private String l;
    private String m;
    private WeakReference n;
    private WeakReference o;
    private WeakReference p;

    public interface b {
        Activity getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c implements MaxAdListener, MaxRewardedAdListener, MaxAdRevenueListener, com.applovin.impl.mediation.ads.a.InterfaceC0024a {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(MaxAd maxAd) {
            if (MaxFullscreenAdImpl.this.k) {
                MaxFullscreenAdImpl.this.d();
                return;
            }
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            fc.f(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            fc.a(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(final MaxAd maxAd, final MaxError maxError) {
            final boolean z = MaxFullscreenAdImpl.this.k;
            MaxFullscreenAdImpl.this.k = false;
            final he heVar = (he) maxAd;
            MaxFullscreenAdImpl.this.a(d.IDLE, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                public final void a() {
                    this.f$0.a(maxAd, z, heVar, maxError);
                }

                @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                public /* synthetic */ void a(MaxError maxError2) {
                    MaxFullscreenAdImpl.e.CC.$default$a(this, maxError2);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            final he heVar = (he) maxAd;
            MaxFullscreenAdImpl.this.k = false;
            MaxFullscreenAdImpl.this.sdk.f().a(heVar);
            Integer num = (Integer) MaxFullscreenAdImpl.this.sdk.a(ue.G7);
            if (num.intValue() > 0) {
                MaxFullscreenAdImpl.this.sdk.i0().b(new jn(MaxFullscreenAdImpl.this.sdk, "ReportAdHiddenCallbackNotCalled", new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(heVar);
                    }
                }), tm.b.TIMEOUT, TimeUnit.SECONDS.toMillis(num.intValue()));
            }
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            fc.c(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(final MaxAd maxAd) {
            MaxFullscreenAdImpl.this.k = false;
            MaxFullscreenAdImpl.this.a(d.IDLE, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c$$ExternalSyntheticLambda1
                @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                public final void a() {
                    this.f$0.a(maxAd);
                }

                @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                public /* synthetic */ void a(MaxError maxError) {
                    MaxFullscreenAdImpl.e.CC.$default$a(this, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, final MaxError maxError) {
            MaxFullscreenAdImpl.this.c();
            MaxFullscreenAdImpl.this.a(d.IDLE, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c$$ExternalSyntheticLambda5
                @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                public final void a() {
                    this.f$0.a(str, maxError);
                }

                @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                public /* synthetic */ void a(MaxError maxError2) {
                    MaxFullscreenAdImpl.e.CC.$default$a(this, maxError2);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            he heVar;
            synchronized (MaxFullscreenAdImpl.this.e) {
                heVar = MaxFullscreenAdImpl.this.f;
            }
            MaxFullscreenAdImpl.this.sdk.B().a(MaxFullscreenAdImpl.this.adUnitId);
            MaxFullscreenAdImpl.this.a((he) maxAd);
            if (!MaxFullscreenAdImpl.this.h.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.a(d.READY, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c$$ExternalSyntheticLambda3
                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public final void a() {
                        this.f$0.b(maxAd);
                    }

                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public /* synthetic */ void a(MaxError maxError) {
                        MaxFullscreenAdImpl.e.CC.$default$a(this, maxError);
                    }
                });
                return;
            }
            MaxFullscreenAdImpl.this.extraParameters.remove("expired_ad_ad_unit_id");
            if (MaxFullscreenAdImpl.this.i.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.d();
            }
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onExpiredAdReloaded(expiredAd=" + heVar + ", newAd=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.expirationListener);
            }
            fc.a(MaxFullscreenAdImpl.this.expirationListener, (MaxAd) heVar, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxFullscreenAdImpl.this.requestListener);
            }
            fc.a(MaxFullscreenAdImpl.this.requestListener, str, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.revenueListener);
            }
            fc.a(MaxFullscreenAdImpl.this.revenueListener, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxRewardedAdListener.onUserRewarded(ad=" + maxAd + ", reward=" + maxReward + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            fc.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxReward, true);
        }

        /* synthetic */ c(MaxFullscreenAdImpl maxFullscreenAdImpl, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd, boolean z, he heVar, MaxError maxError) {
            MaxFullscreenAdImpl.this.a(maxAd);
            if (!z && heVar.u0() && MaxFullscreenAdImpl.this.sdk.J().d(MaxFullscreenAdImpl.this.adUnitId)) {
                AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a();
                    }
                });
                return;
            }
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            fc.a(MaxFullscreenAdImpl.this.adListener, maxAd, maxError, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(he heVar) {
            if (heVar.w().get()) {
                return;
            }
            MaxFullscreenAdImpl.this.sdk.D().a(ka.L, heVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str, MaxError maxError) {
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            fc.a(MaxFullscreenAdImpl.this.adListener, str, maxError, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            MaxFullscreenAdImpl.this.a(maxAd);
            n nVar = MaxFullscreenAdImpl.this.logger;
            if (n.a()) {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxFullscreenAdImpl.this.adListener);
            }
            fc.e(MaxFullscreenAdImpl.this.adListener, maxAd, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            MaxFullscreenAdImpl.this.k = true;
            MaxFullscreenAdImpl.this.loadAd();
        }
    }

    public enum d {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface e {

        /* JADX INFO: renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$e$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            public static void $default$a(e _this, MaxError maxError) {
            }
        }

        void a();

        void a(MaxError maxError);
    }

    public MaxFullscreenAdImpl(String str, MaxAdFormat maxAdFormat, b bVar, String str2, j jVar, Context context) {
        super(str, maxAdFormat, str2, jVar);
        this.e = new Object();
        this.f = null;
        this.g = d.IDLE;
        this.h = new AtomicBoolean();
        this.i = new AtomicBoolean();
        this.n = new WeakReference(null);
        this.o = new WeakReference(null);
        this.p = new WeakReference(null);
        this.a = bVar;
        this.c = new c(this, null);
        this.d = new com.applovin.impl.mediation.b(jVar);
        this.b = new WeakReference(context);
        jVar.i().a(this);
        n.g(str2, "Created new " + str2 + " (" + this + ")");
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        a(d.DESTROYED, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$$ExternalSyntheticLambda0
            @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
            public final void a() {
                this.f$0.b();
            }

            @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
            public /* synthetic */ void a(MaxError maxError) {
                MaxFullscreenAdImpl.e.CC.$default$a(this, maxError);
            }
        });
    }

    public boolean isReady() {
        boolean z;
        synchronized (this.e) {
            he heVar = this.f;
            z = heVar != null && heVar.a0() && this.g == d.READY;
        }
        if (!z) {
            this.sdk.B().c(this.adUnitId);
        }
        return z;
    }

    public void loadAd() {
        loadAd(com.applovin.impl.mediation.d.b.PUBLISHER_INITIATED);
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0035a
    public void onAdExpired(i8 i8Var) {
        if (n.a()) {
            this.logger.a(this.tag, "Ad expired " + getAdUnitId());
        }
        this.h.set(true);
        b bVar = this.a;
        Activity activity = bVar != null ? bVar.getActivity() : null;
        if (activity == null && (activity = this.sdk.e().b()) == null) {
            c();
            this.c.onAdLoadFailed(this.adUnitId, MaxAdapterError.MISSING_ACTIVITY);
        } else {
            this.extraParameters.put("expired_ad_ad_unit_id", getAdUnitId());
            this.sdk.P().loadAd(this.adUnitId, null, this.adFormat, com.applovin.impl.mediation.d.b.EXPIRED, this.localExtraParameters, this.extraParameters, activity, this.c);
        }
    }

    @Override // com.applovin.impl.v.b
    public void onCreativeIdGenerated(String str, String str2) {
        he heVar = this.f;
        if (heVar == null || !heVar.R().equalsIgnoreCase(str)) {
            return;
        }
        this.f.h(str2);
        fc.b(this.adReviewListener, str2, this.f);
    }

    public void showAd(final String str, final String str2, final Activity activity) {
        he heVar;
        List listB = this.sdk.k0().b();
        if (!this.sdk.k0().d() || listB == null || (heVar = this.f) == null || listB.contains(heVar.c())) {
            if (activity == null) {
                activity = this.sdk.m0();
            }
            if (a(activity, str)) {
                a(d.SHOWING, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$$ExternalSyntheticLambda5
                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public final void a() {
                        this.f$0.a(str, str2, activity);
                    }

                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public /* synthetic */ void a(MaxError maxError) {
                        MaxFullscreenAdImpl.e.CC.$default$a(this, maxError);
                    }
                });
                return;
            }
            return;
        }
        final String str3 = "Attempting to show ad from <" + this.f.c() + "> which is not in the list of selected ad networks " + listB;
        n.h(this.tag, str3);
        a(d.IDLE, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$$ExternalSyntheticLambda4
            @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
            public final void a() {
                this.f$0.b(str3);
            }

            @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
            public /* synthetic */ void a(MaxError maxError) {
                MaxFullscreenAdImpl.e.CC.$default$a(this, maxError);
            }
        });
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.tag);
        sb.append("{adUnitId='");
        sb.append(this.adUnitId);
        sb.append("', adListener=");
        Object obj = this.adListener;
        if (obj == this.a) {
            obj = "this";
        }
        sb.append(obj);
        sb.append(", revenueListener=");
        sb.append(this.revenueListener);
        sb.append(", requestListener");
        sb.append(this.requestListener);
        sb.append(", adReviewListener");
        sb.append(this.adReviewListener);
        sb.append(", isReady=");
        sb.append(isReady());
        sb.append('}');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        synchronized (this.e) {
            if (this.f != null) {
                if (n.a()) {
                    this.logger.a(this.tag, "Destroying ad for '" + this.adUnitId + "'; current ad: " + this.f + "...");
                }
                this.sdk.P().destroyAd(this.f);
            }
        }
        this.sdk.i().b(this);
        this.d.a();
        super.destroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        he heVar = this.f;
        a((MaxAd) heVar);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (n.a()) {
            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + heVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        fc.a(this.adListener, (MaxAd) heVar, (MaxError) maxErrorImpl, true);
        this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl, heVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        Activity activityM0 = (Activity) this.n.get();
        if (activityM0 == null) {
            activityM0 = this.sdk.m0();
        }
        Activity activity = activityM0;
        if (this.j) {
            showAd(this.l, this.m, (ViewGroup) this.o.get(), (Lifecycle) this.p.get(), activity);
        } else {
            showAd(this.l, this.m, activity);
        }
    }

    public void loadAd(com.applovin.impl.mediation.d.b bVar) {
        if (n.a()) {
            this.logger.a(this.tag, "Loading ad for '" + this.adUnitId + "'...");
        }
        if (this.g == d.DESTROYED) {
            boolean zC = yp.c(this.sdk);
            this.sdk.D().a(ka.V, "attemptingToLoadDestroyedAd", (Map) CollectionUtils.hashMap("details", "debug=" + zC));
            if (zC) {
                throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
            }
        }
        if (!isReady()) {
            b bVar2 = this.a;
            a(d.LOADING, new a(bVar2 != null ? bVar2.getActivity() : null, (Context) this.b.get(), bVar));
            return;
        }
        if (n.a()) {
            this.logger.a(this.tag, "An ad is already loaded for '" + this.adUnitId + "'");
        }
        if (n.a()) {
            this.logger.a(this.tag, "MaxAdListener.onAdLoaded(ad=" + this.f + "), listener=" + this.adListener);
        }
        fc.f(this.adListener, (MaxAd) this.f, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        he heVar;
        if (this.h.compareAndSet(true, false)) {
            synchronized (this.e) {
                heVar = this.f;
                this.f = null;
            }
            this.sdk.P().destroyAd(heVar);
            this.extraParameters.remove("expired_ad_ad_unit_id");
        }
    }

    class a implements e {
        final /* synthetic */ Activity a;
        final /* synthetic */ Context b;
        final /* synthetic */ com.applovin.impl.mediation.d.b c;

        a(Activity activity, Context context, com.applovin.impl.mediation.d.b bVar) {
            this.a = activity;
            this.b = context;
            this.c = bVar;
        }

        @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
        public void a() {
            Context contextM0 = this.a;
            if (contextM0 == null && (contextM0 = this.b) == null) {
                contextM0 = MaxFullscreenAdImpl.this.sdk.m0() != null ? MaxFullscreenAdImpl.this.sdk.m0() : j.m();
            }
            Context context = contextM0;
            MediationServiceImpl mediationServiceImplP = MaxFullscreenAdImpl.this.sdk.P();
            MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
            mediationServiceImplP.loadAd(maxFullscreenAdImpl.adUnitId, null, maxFullscreenAdImpl.adFormat, this.c, maxFullscreenAdImpl.localExtraParameters, maxFullscreenAdImpl.extraParameters, context, maxFullscreenAdImpl.c);
        }

        @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
        public void a(MaxError maxError) {
            if (((Boolean) MaxFullscreenAdImpl.this.sdk.a(ue.F7)).booleanValue()) {
                n nVar = MaxFullscreenAdImpl.this.logger;
                if (n.a()) {
                    MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                    maxFullscreenAdImpl.logger.a(maxFullscreenAdImpl.tag, "MaxAdListener.onAdLoadFailed(adUnitId=" + MaxFullscreenAdImpl.this.adUnitId + ", error=" + maxError + "), listener=" + MaxFullscreenAdImpl.this.adListener);
                }
                MaxFullscreenAdImpl maxFullscreenAdImpl2 = MaxFullscreenAdImpl.this;
                fc.a(maxFullscreenAdImpl2.adListener, maxFullscreenAdImpl2.adUnitId, maxError, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str) {
        he heVar = this.f;
        a((MaxAd) heVar);
        MaxErrorImpl maxErrorImpl = new MaxErrorImpl(MaxAdapterError.ERROR_CODE_AD_DISPLAY_FAILED, str);
        if (n.a()) {
            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + heVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
        }
        fc.a(this.adListener, (MaxAd) heVar, (MaxError) maxErrorImpl, true);
        this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl, heVar);
    }

    public void showAd(final String str, final String str2, final ViewGroup viewGroup, final Lifecycle lifecycle, Activity activity) {
        he heVar;
        if (viewGroup != null && lifecycle != null) {
            if (!viewGroup.isShown() && ((Boolean) this.sdk.a(ue.x7)).booleanValue()) {
                n.h(this.tag, "Attempting to show ad when containerView and/or its ancestors are not visible");
                MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, "Attempting to show ad when containerView and/or its ancestors are not visible");
                fc.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl, true);
                this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f);
                return;
            }
            List listB = this.sdk.k0().b();
            if (this.sdk.k0().d() && listB != null && (heVar = this.f) != null && !listB.contains(heVar.c())) {
                final String str3 = "Attempting to show ad from <" + this.f.c() + "> which is not in the list of selected ad networks " + listB;
                n.h(this.tag, str3);
                a(d.IDLE, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$$ExternalSyntheticLambda1
                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public final void a() {
                        this.f$0.c(str3);
                    }

                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public /* synthetic */ void a(MaxError maxError) {
                        MaxFullscreenAdImpl.e.CC.$default$a(this, maxError);
                    }
                });
                return;
            }
            if (activity == null) {
                activity = this.sdk.m0();
            }
            final Activity activity2 = activity;
            if (a(activity2, str)) {
                a(d.SHOWING, new e() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$$ExternalSyntheticLambda2
                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public final void a() {
                        this.f$0.a(str, str2, activity2, viewGroup, lifecycle);
                    }

                    @Override // com.applovin.impl.mediation.ads.MaxFullscreenAdImpl.e
                    public /* synthetic */ void a(MaxError maxError) {
                        MaxFullscreenAdImpl.e.CC.$default$a(this, maxError);
                    }
                });
                return;
            }
            return;
        }
        n.h(this.tag, "Attempting to show ad with null containerView or lifecycle.");
        MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-1, "Attempting to show ad with null containerView or lifecycle.");
        if (n.a()) {
            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f + ", error=" + maxErrorImpl2 + "), listener=" + this.adListener);
        }
        fc.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl2, true);
        this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(he heVar) {
        if (this.sdk.f().a(heVar, this)) {
            if (n.a()) {
                this.logger.a(this.tag, "Handle ad loaded for regular ad: " + heVar);
            }
            this.f = heVar;
            return;
        }
        if (n.a()) {
            this.logger.a(this.tag, "Loaded an expired ad, running expire logic...");
        }
        onAdExpired(heVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity) {
        a(str, str2);
        this.j = false;
        this.n = new WeakReference(activity);
        this.sdk.P().showFullscreenAd(this.f, activity, this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Activity activity, ViewGroup viewGroup, Lifecycle lifecycle) {
        a(str, str2);
        this.j = true;
        this.n = new WeakReference(activity);
        this.o = new WeakReference(viewGroup);
        this.p = new WeakReference(lifecycle);
        this.sdk.P().showFullscreenAd(this.f, viewGroup, lifecycle, activity, this.c);
    }

    private boolean a(Activity activity, final String str) {
        if (activity == null && MaxAdFormat.APP_OPEN != this.adFormat) {
            throw new IllegalArgumentException("Attempting to show ad without a valid activity.");
        }
        if (this.g == d.DESTROYED) {
            boolean zC = yp.c(this.sdk);
            this.sdk.D().a(ka.V, "attemptingToShowDestroyedAd", (Map) CollectionUtils.hashMap("details", "debug=" + zC));
            if (zC) {
                throw new IllegalStateException("Attempting to show ad that is destroyed for ad unit ID: " + this.adUnitId);
            }
        }
        if (!isReady()) {
            String str2 = "Attempting to show ad before it is ready - please check ad readiness using " + this.tag + "#isReady()";
            n.h(this.tag, str2);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, str2);
            kf kfVar = new kf(this.adUnitId, this.adFormat, str);
            if (n.a()) {
                this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + kfVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            fc.a(this.adListener, (MaxAd) kfVar, (MaxError) maxErrorImpl, true);
            if (this.f != null) {
                this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f);
            }
            return false;
        }
        Long l = (Long) this.sdk.a(ue.k7);
        Long l2 = (Long) this.sdk.a(ue.d7);
        if (l.longValue() > 0 && (this.f.getTimeToLiveMillis() < l2.longValue() || this.h.get())) {
            this.i.set(true);
            this.sdk.i0().a(new jn(this.sdk, "handleShowOnLoadTimeoutError", new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(str);
                }
            }), tm.b.TIMEOUT, l.longValue());
            return false;
        }
        if (yp.a(j.m()) != 0 && this.sdk.f0().shouldFailAdDisplayIfDontKeepActivitiesIsEnabled()) {
            if (!yp.c(this.sdk)) {
                if (((Boolean) this.sdk.a(ue.w7)).booleanValue()) {
                    n.h(this.tag, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                    MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-5602, "Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
                    if (n.a()) {
                        this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f + ", error=" + maxErrorImpl2 + "), listener=" + this.adListener);
                    }
                    fc.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl2, true);
                    this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl2, this.f);
                    return false;
                }
            } else {
                throw new IllegalStateException("Ad failed to display! Please disable the \"Don't Keep Activities\" setting in your developer settings!");
            }
        }
        if (!this.sdk.B().d() && !this.sdk.B().c()) {
            return true;
        }
        n.h(this.tag, "Attempting to show ad when another fullscreen ad is already showing");
        MaxErrorImpl maxErrorImpl3 = new MaxErrorImpl(-23, "Attempting to show ad when another fullscreen ad is already showing");
        if (n.a()) {
            this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + this.f + ", error=" + maxErrorImpl3 + "), listener=" + this.adListener);
        }
        fc.a(this.adListener, (MaxAd) this.f, (MaxError) maxErrorImpl3, true);
        this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl3, this.f);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (this.i.compareAndSet(true, false)) {
            n.h(this.tag, "Failed to show an ad. Failed to load an ad in time to show.");
            this.sdk.B().c(this.adUnitId);
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-24, "Failed to show an ad. Failed to load an ad in time to show.");
            kf kfVar = new kf(this.adUnitId, this.adFormat, str);
            if (n.a()) {
                this.logger.a(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + kfVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            fc.a(this.adListener, (MaxAd) kfVar, (MaxError) maxErrorImpl, true);
            if (this.f != null) {
                this.sdk.P().processAdDisplayErrorPostbackForUserError(maxErrorImpl, this.f);
            }
        }
    }

    private void a(String str, String str2) {
        this.d.e(this.f);
        this.f.g(str);
        this.f.f(str2);
        this.l = str;
        this.m = str2;
        this.sdk.v().d(this.f);
        if (n.a()) {
            this.logger.a(this.tag, "Showing ad for '" + this.adUnitId + "'; loaded ad: " + this.f + "...");
        }
        a((fe) this.f);
    }

    private void a() {
        he heVar;
        synchronized (this.e) {
            heVar = this.f;
            this.f = null;
        }
        this.sdk.P().destroyAd(heVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(d dVar, e eVar) {
        MaxErrorImpl maxErrorImpl;
        boolean z;
        MaxErrorImpl maxErrorImpl2 = new MaxErrorImpl(-1);
        d dVar2 = this.g;
        synchronized (this.e) {
            d dVar3 = d.IDLE;
            if (dVar2 == dVar3) {
                if (dVar == d.LOADING || dVar == d.DESTROYED) {
                    z = true;
                } else {
                    if (dVar == d.SHOWING) {
                        n.h(this.tag, "No ad is loading or loaded");
                    } else if (n.a()) {
                        this.logger.b(this.tag, "Unable to transition to: " + dVar);
                    }
                    z = false;
                }
            } else {
                d dVar4 = d.LOADING;
                if (dVar2 == dVar4) {
                    if (dVar != dVar3) {
                        if (dVar == dVar4) {
                            maxErrorImpl = new MaxErrorImpl(-26, "An ad is already loading");
                            n.h(this.tag, maxErrorImpl.getMessage());
                            maxErrorImpl2 = maxErrorImpl;
                        } else if (dVar != d.READY) {
                            if (dVar == d.SHOWING) {
                                n.h(this.tag, "An ad is not ready to be shown yet");
                            } else if (dVar != d.DESTROYED) {
                                if (n.a()) {
                                    this.logger.b(this.tag, "Unable to transition to: " + dVar);
                                }
                            }
                        }
                        z = false;
                    }
                    z = true;
                } else {
                    d dVar5 = d.READY;
                    if (dVar2 == dVar5) {
                        if (dVar != dVar3) {
                            if (dVar == dVar4) {
                                n.h(this.tag, "An ad is already loaded");
                            } else if (dVar == dVar5) {
                                if (n.a()) {
                                    this.logger.b(this.tag, "An ad is already marked as ready");
                                }
                            } else if (dVar != d.SHOWING && dVar != d.DESTROYED) {
                                if (n.a()) {
                                    this.logger.b(this.tag, "Unable to transition to: " + dVar);
                                }
                            }
                            z = false;
                        }
                        z = true;
                    } else {
                        d dVar6 = d.SHOWING;
                        if (dVar2 == dVar6) {
                            if (dVar != dVar3) {
                                if (dVar == dVar4) {
                                    maxErrorImpl = new MaxErrorImpl(-27, "Can not load another ad while the ad is showing");
                                    n.h(this.tag, maxErrorImpl.getMessage());
                                    maxErrorImpl2 = maxErrorImpl;
                                } else if (dVar == dVar5) {
                                    if (n.a()) {
                                        this.logger.b(this.tag, "An ad is already showing, ignoring");
                                    }
                                } else if (dVar == dVar6) {
                                    n.h(this.tag, "The ad is already showing, not showing another one");
                                } else if (dVar != d.DESTROYED) {
                                    if (n.a()) {
                                        this.logger.b(this.tag, "Unable to transition to: " + dVar);
                                    }
                                }
                            }
                            z = true;
                        } else if (dVar2 == d.DESTROYED) {
                            n.h(this.tag, "No operations are allowed on a destroyed instance");
                        } else if (n.a()) {
                            this.logger.b(this.tag, "Unknown state: " + this.g);
                        }
                        z = false;
                    }
                }
                throw th;
            }
            if (z) {
                if (n.a()) {
                    this.logger.a(this.tag, "Transitioning from " + this.g + " to " + dVar + "...");
                }
                this.g = dVar;
            } else if (n.a()) {
                this.logger.k(this.tag, "Not allowed to transition from " + this.g + " to " + dVar);
            }
        }
        if (z) {
            eVar.a();
        } else {
            eVar.a(maxErrorImpl2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MaxAd maxAd) {
        this.sdk.f().a((he) maxAd);
        this.d.a();
        a();
        this.sdk.S().a((fe) maxAd);
    }
}
