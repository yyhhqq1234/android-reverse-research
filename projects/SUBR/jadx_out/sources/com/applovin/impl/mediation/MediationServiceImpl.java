package com.applovin.impl.mediation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.an;
import com.applovin.impl.ba;
import com.applovin.impl.fc;
import com.applovin.impl.fe;
import com.applovin.impl.fi;
import com.applovin.impl.fn;
import com.applovin.impl.he;
import com.applovin.impl.ka;
import com.applovin.impl.la;
import com.applovin.impl.ln;
import com.applovin.impl.me;
import com.applovin.impl.oe;
import com.applovin.impl.rm;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.m;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.ue;
import com.applovin.impl.ve;
import com.applovin.impl.we;
import com.applovin.impl.xj;
import com.applovin.impl.yj;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.zj;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import org.json.unity.androidbridge.AndroidBridgeConstants;
import org.json.z8;

/* JADX INFO: loaded from: classes.dex */
public class MediationServiceImpl implements AppLovinBroadcastManager.Receiver {
    private final j a;
    private final n b;
    private final xj c;
    private final AtomicReference d = new AtomicReference();

    static /* synthetic */ class c {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[MaxAdapter.InitializationStatus.values().length];
            a = iArr;
            try {
                iArr[MaxAdapter.InitializationStatus.DOES_NOT_APPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[MaxAdapter.InitializationStatus.NOT_INITIALIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[MaxAdapter.InitializationStatus.INITIALIZING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class d implements MaxAdListener, MaxRewardedAdListener, MaxAdViewAdListener, MaxAdRevenueListener, com.applovin.impl.mediation.ads.a.InterfaceC0024a {
        private final fe a;
        private com.applovin.impl.mediation.ads.a.InterfaceC0024a b;

        public void a(com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
            this.b = interfaceC0024a;
        }

        public void b(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            fc.b(this.b, maxAd);
        }

        public void c(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            n unused = MediationServiceImpl.this.b;
            if (n.a()) {
                MediationServiceImpl.this.b.a("MediationService", "Scheduling impression for ad via callback...");
            }
            MediationServiceImpl.this.processCallbackAdImpressionPostback(this.a, this.b);
            if (!((Boolean) MediationServiceImpl.this.a.a(ue.K7)).booleanValue() || this.a.u().compareAndSet(false, true)) {
                MediationServiceImpl.this.a.k().a(this.a, com.applovin.impl.sdk.g.c.SHOW);
                MediationServiceImpl.this.a.C().c(ba.f);
                MediationServiceImpl.this.a.C().c(ba.i);
                if (!maxAd.getFormat().isFullscreenAd()) {
                    MediationServiceImpl.this.a.q().b(this.a, "DID_DISPLAY");
                    fc.c(this.b, maxAd);
                    return;
                }
                he heVar = (he) maxAd;
                if (heVar.q0()) {
                    MediationServiceImpl.this.a.q().b(this.a, "DID_DISPLAY");
                    MediationServiceImpl.this.a.B().a(this.a);
                    fc.c(this.b, maxAd);
                } else {
                    n unused2 = MediationServiceImpl.this.b;
                    if (n.a()) {
                        MediationServiceImpl.this.b.k("MediationService", "Received ad display callback before attempting show".concat(heVar.Y() ? " for hybrid ad" : ""));
                    }
                }
            }
        }

        public void d(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            fc.d(this.b, maxAd);
        }

        public void e(final MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            MediationServiceImpl.this.a.D().a(ka.K, this.a);
            MediationServiceImpl.this.a.k().a(this.a, com.applovin.impl.sdk.g.c.HIDE);
            MediationServiceImpl.this.a.q().b((fe) maxAd, "DID_HIDE");
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$d$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(maxAd);
                }
            }, maxAd instanceof he ? ((he) maxAd).h0() : 0L);
        }

        public void f(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            this.a.d0();
            MediationServiceImpl.this.a.k().a(this.a, com.applovin.impl.sdk.g.c.LOAD);
            MediationServiceImpl.this.a(this.a);
            fc.f(this.b, maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            a(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            b(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
            a(maxAd, maxError, (Bundle) null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            c(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            d(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            e(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            this.a.d0();
            MediationServiceImpl.this.b(this.a, maxError, this.b);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            f(maxAd, null);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            a(maxAd, maxReward, (Bundle) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAd maxAd) {
            if (maxAd.getFormat().isFullscreenAd()) {
                MediationServiceImpl.this.a.B().b(maxAd);
            }
            fc.e(this.b, maxAd);
        }

        public void a(MaxAd maxAd, Bundle bundle) {
            this.a.a(bundle);
            MediationServiceImpl.this.a.k().a(this.a, com.applovin.impl.sdk.g.c.CLICK);
            MediationServiceImpl.this.a(this.a, this.b);
            fc.a((MaxAdListener) this.b, maxAd);
        }

        public void a(MaxAd maxAd, MaxError maxError, Bundle bundle) {
            this.a.a(bundle);
            MediationServiceImpl.this.a(this.a, maxError, this.b);
            if ((maxAd.getFormat() == MaxAdFormat.REWARDED || maxAd.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) && (maxAd instanceof he)) {
                ((he) maxAd).f0();
            }
        }

        public void a(MaxAd maxAd, MaxReward maxReward, Bundle bundle) {
            this.a.a(bundle);
            fc.a(this.b, maxAd, maxReward);
            MediationServiceImpl.this.a.i0().a((yl) new fn((he) maxAd, MediationServiceImpl.this.a), tm.b.OTHER);
        }

        public d(fe feVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
            this.a = feVar;
            this.b = interfaceC0024a;
        }
    }

    public MediationServiceImpl(j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        this.c = new xj(jVar);
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
    }

    public void destroyAd(MaxAd maxAd) {
        if (maxAd instanceof fe) {
            if (n.a()) {
                this.b.d("MediationService", "Destroying " + maxAd);
            }
            fe feVar = (fe) maxAd;
            g gVarA = feVar.A();
            if (gVarA != null) {
                gVarA.a();
                feVar.t();
            }
            this.a.i().c(feVar.R());
            this.a.k().a(feVar, com.applovin.impl.sdk.g.c.DESTROY);
        }
    }

    public JSONObject getAndResetCustomPostBodyData() {
        return (JSONObject) this.d.getAndSet(null);
    }

    public void loadAd(String str, String str2, MaxAdFormat maxAdFormat, com.applovin.impl.mediation.d.b bVar, Map<String, Object> map, Map<String, Object> map2, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        List<String> adUnitIds;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No Ad Unit ID specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (interfaceC0024a == null) {
            throw new IllegalArgumentException("No listener specified");
        }
        if (TextUtils.isEmpty(this.a.N())) {
            n.h("AppLovinSdk", "Mediation provider is null. Please set AppLovin SDK mediation provider via AppLovinSdk.getInstance(context).setMediationProvider()");
        }
        if (!this.a.s0()) {
            n.j("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        if (this.a.x0().get()) {
            adUnitIds = this.a.f0().getInitializationAdUnitIds();
        } else {
            adUnitIds = this.a.G() != null ? this.a.G().getAdUnitIds() : null;
        }
        boolean zStartsWith = str.startsWith("test_mode");
        if (adUnitIds != null && adUnitIds.size() > 0 && !adUnitIds.contains(str) && !zStartsWith) {
            if (yp.c(this.a)) {
                String str3 = "Ad Unit ID " + str + " has not been initialized. When you use selective init, any ad units that you do not explicitly specify are excluded from serving ads for the current session. For more information visit our docs: https://developers.applovin.com/en/max/android/overview/advanced-settings#selective-init";
                if (((Boolean) this.a.a(sj.h6)).booleanValue()) {
                    throw new RuntimeException(str3);
                }
                if (n.a()) {
                    this.b.b("MediationService", str3);
                }
            }
            this.a.D().a(ka.V, "uninitialized_ad_unit_id", CollectionUtils.hashMap("ad_unit_id", str), "uninitialized_ad_unit_id" + str);
        }
        this.a.c();
        if (str.length() != 16 && !zStartsWith && !this.a.a0().startsWith("05TMD")) {
            n.h("MediationService", "Please double-check the ad unit " + str + " for " + maxAdFormat.getLabel() + " : " + Log.getStackTraceString(new Throwable("")));
        }
        if (!this.a.a(maxAdFormat)) {
            this.a.R0();
            fc.a((MaxAdRequestListener) interfaceC0024a, str, true);
            this.a.J().a(str, str2, maxAdFormat, bVar, map, map2, context, interfaceC0024a);
        } else {
            n.h("MediationService", "Ad load failed due to disabled ad format " + maxAdFormat.getLabel());
            fc.a(interfaceC0024a, str, new MaxErrorImpl(-1, "Disabled ad format " + maxAdFormat.getLabel()));
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map<String, Object> map) {
        if ("com.applovin.render_process_gone".equals(intent.getAction())) {
            Object objA = this.a.B().a();
            if (objA instanceof fe) {
                a((MaxError) MaxAdapterError.WEBVIEW_ERROR, (fe) objA, true);
            }
        }
    }

    public void processWaterfallInfoPostback(String str, MaxAdFormat maxAdFormat, MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl, MaxError maxError, long j, long j2) {
        HashMap map = new HashMap();
        CollectionUtils.putStringIfValid("ad_format", maxAdFormat.getLabel(), map);
        CollectionUtils.putStringIfValid("ad_unit_id", str, map);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j2), map);
        if (maxError != null) {
            map.putAll(la.a(maxError));
        }
        this.a.D().a(ka.H, (Map) map);
        if (CollectionUtils.isEmpty(maxAdWaterfallInfoImpl.getPostbackUrls())) {
            return;
        }
        HashMap map2 = new HashMap(8);
        CollectionUtils.putStringIfValid("mcode", maxAdWaterfallInfoImpl.getMCode(), map2);
        CollectionUtils.putStringIfValid("ad_unit_id", str, map2);
        CollectionUtils.putStringIfValid("ad_format", maxAdFormat.getLabel(), map2);
        CollectionUtils.putStringIfValid("name", maxAdWaterfallInfoImpl.getName(), map2);
        CollectionUtils.putLongIfValid("request_latency_ms", Long.valueOf(j2), map2);
        CollectionUtils.putLongIfValid("request_start_timestamp_ms", Long.valueOf(j), map2);
        CollectionUtils.putLongIfValid("wf_latency_ms", Long.valueOf(maxAdWaterfallInfoImpl.getLatencyMillis()), map2);
        List<MaxNetworkResponseInfo> networkResponses = maxAdWaterfallInfoImpl.getNetworkResponses();
        ArrayList arrayList = new ArrayList(networkResponses.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : networkResponses) {
            MaxMediatedNetworkInfo mediatedNetwork = maxNetworkResponseInfo.getMediatedNetwork();
            HashMap map3 = new HashMap(5);
            CollectionUtils.putStringIfValid("bcode", ((MaxNetworkResponseInfoImpl) maxNetworkResponseInfo).getBCode(), map3);
            map3.put("name", mediatedNetwork.getName());
            CollectionUtils.putLongIfValid("latency_ms", Long.valueOf(maxNetworkResponseInfo.getLatencyMillis()), map3);
            map3.put("load_state", Integer.valueOf(maxNetworkResponseInfo.getAdLoadState().ordinal()));
            MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxNetworkResponseInfo.getError();
            if (maxErrorImpl != null) {
                HashMap map4 = new HashMap(4);
                map4.put(AndroidBridgeConstants.ERROR_CODE, Integer.valueOf(maxErrorImpl.getCode()));
                map4.put("error_message", maxErrorImpl.getMessage());
                map4.put("third_party_sdk_error_code", Integer.valueOf(maxErrorImpl.getMediatedNetworkErrorCode()));
                map4.put("third_party_sdk_error_message", maxErrorImpl.getMediatedNetworkErrorMessage());
                map3.put("error_info", map4);
            }
            arrayList.add(map3);
        }
        map2.put("ads_info", arrayList);
        a("mwf_info", maxAdWaterfallInfoImpl.getPostbackUrls(), Collections.EMPTY_MAP, map2, null, null, false);
    }

    public void setCustomPostBodyData(JSONObject jSONObject) {
        this.d.set(jSONObject);
    }

    public void showFullscreenAd(final he heVar, final Activity activity, final com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        if (heVar != null) {
            if (activity == null && MaxAdFormat.APP_OPEN != heVar.getFormat()) {
                throw new IllegalArgumentException("No activity specified");
            }
            this.a.B().a(true);
            final g gVarB = b(heVar);
            long jN0 = heVar.n0();
            if (n.a()) {
                this.b.d("MediationService", "Showing ad " + heVar.getAdUnitId() + " with delay of " + jN0 + "ms...");
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(heVar, gVarB, activity, interfaceC0024a);
                }
            }, jN0);
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    public void loadThirdPartyMediatedAd(final String str, final fe feVar, final Activity activity, final com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        fi fiVarA;
        if (feVar != null) {
            if (n.a()) {
                this.b.a("MediationService", "Loading " + feVar + "...");
            }
            this.a.D().a(ka.E, feVar);
            this.a.q().b(feVar, "WILL_LOAD");
            final g gVarA = this.a.L().a(feVar);
            if (gVarA != null) {
                final MaxAdapterParametersImpl maxAdapterParametersImplA = MaxAdapterParametersImpl.a(feVar);
                if (feVar.b0()) {
                    fiVarA = this.a.K().a(feVar, activity);
                } else {
                    if (feVar.c0()) {
                        this.a.K().b(feVar, activity);
                    }
                    fiVarA = null;
                }
                fi fiVar = fiVarA;
                final fe feVarA = feVar.a(gVarA);
                gVarA.a(str, feVarA);
                feVarA.e0();
                if (fiVar != null) {
                    Executor executor = fi.i;
                    fiVar.a(executor, new fi.a() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda1
                        @Override // com.applovin.impl.fi.a
                        public final void a(Object obj) {
                            this.f$0.a(feVar, interfaceC0024a, (String) obj);
                        }
                    });
                    fiVar.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(gVarA, str, maxAdapterParametersImplA, feVarA, activity, interfaceC0024a);
                        }
                    });
                    return;
                }
                gVarA.a(str, maxAdapterParametersImplA, feVarA, activity, new d(feVarA, interfaceC0024a));
                return;
            }
            String str2 = "Failed to load " + feVar + ": adapter not loaded";
            n.h("MediationService", str2);
            b(feVar, new MaxErrorImpl(-5001, str2), interfaceC0024a);
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    public void collectSignal(String str, MaxAdFormat maxAdFormat, zj zjVar, Context context, yj.a aVar) {
        if (zjVar == null) {
            throw new IllegalArgumentException("No spec specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        if (aVar != null) {
            yj yjVarB = this.c.b(zjVar, str, maxAdFormat);
            if (yjVarB != null) {
                aVar.a(yj.a(yjVarB));
                return;
            }
            g gVarA = this.a.L().a(zjVar, zjVar.A());
            if (gVarA != null) {
                if (((Boolean) this.a.a(ue.J7)).booleanValue()) {
                    a(str, maxAdFormat, zjVar, context, aVar, gVarA);
                    return;
                }
                Activity activityM0 = context instanceof Activity ? (Activity) context : this.a.m0();
                MaxAdapterParametersImpl maxAdapterParametersImplA = MaxAdapterParametersImpl.a(zjVar, str, maxAdFormat);
                if (zjVar.z()) {
                    this.a.K().b(zjVar, activityM0);
                }
                a aVar2 = new a(gVarA, str, SystemClock.elapsedRealtime(), zjVar, maxAdFormat, aVar);
                if (zjVar.v()) {
                    if (this.a.K().b(zjVar)) {
                        if (n.a()) {
                            this.b.a("MediationService", "Collecting signal for now-initialized adapter: " + gVarA.g());
                        }
                        gVarA.a(maxAdapterParametersImplA, zjVar, activityM0, aVar2);
                        return;
                    }
                    if (n.a()) {
                        this.b.b("MediationService", "Skip collecting signal for not-initialized adapter: " + gVarA.g());
                    }
                    aVar.a(yj.a(zjVar, new MaxErrorImpl("Adapter not initialized yet")));
                    return;
                }
                if (n.a()) {
                    this.b.a("MediationService", "Collecting signal for adapter: " + gVarA.g());
                }
                gVarA.a(maxAdapterParametersImplA, zjVar, activityM0, aVar2);
                return;
            }
            aVar.a(yj.a(zjVar, new MaxErrorImpl("Could not load adapter")));
            return;
        }
        throw new IllegalArgumentException("No callback specified");
    }

    class a implements g.c {
        final /* synthetic */ g a;
        final /* synthetic */ String b;
        final /* synthetic */ long c;
        final /* synthetic */ zj d;
        final /* synthetic */ MaxAdFormat e;
        final /* synthetic */ yj.a f;

        @Override // com.applovin.impl.mediation.g.c
        public void a(MaxError maxError) {
            n unused = MediationServiceImpl.this.b;
            if (n.a()) {
                MediationServiceImpl.this.b.b("MediationService", "Signal collection failed from: " + this.a.g() + " for Ad Unit ID: " + this.b + " with error message: \"" + maxError.getMessage() + "\"");
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = this.c;
            yj yjVarA = yj.a(this.d, this.a, maxError, j, jElapsedRealtime - j);
            MediationServiceImpl.this.a(yjVarA, this.d, this.a);
            this.f.a(yjVarA);
            this.a.a();
        }

        @Override // com.applovin.impl.mediation.g.c
        public void onSignalCollected(String str) {
            n unused = MediationServiceImpl.this.b;
            if (n.a()) {
                MediationServiceImpl.this.b.a("MediationService", "Signal collection successful from: " + this.a.g() + " for Ad Unit ID: " + this.b + " with signal: \"" + str + "\"");
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = this.c;
            long j2 = jElapsedRealtime - j;
            yj yjVarA = yj.a(this.d, this.a, str, j, j2);
            MediationServiceImpl.this.c.a(yjVarA, this.d, this.b, this.e);
            HashMap map = new HashMap();
            CollectionUtils.putStringIfValid("network_name", this.d.c(), map);
            CollectionUtils.putStringIfValid("adapter_class", this.d.b(), map);
            CollectionUtils.putStringIfValid("adapter_version", this.a.b(), map);
            CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j2), map);
            CollectionUtils.putStringIfValid("ad_format", String.valueOf(this.e.getLabel()), map);
            CollectionUtils.putStringIfValid("ad_unit_id", this.b, map);
            MediationServiceImpl.this.a.D().a(ka.z, (Map) map);
            this.f.a(yjVarA);
            this.a.a();
        }

        a(g gVar, String str, long j, zj zjVar, MaxAdFormat maxAdFormat, yj.a aVar) {
            this.a = gVar;
            this.b = str;
            this.c = j;
            this.d = zjVar;
            this.e = maxAdFormat;
            this.f = aVar;
        }
    }

    public void showFullscreenAd(final he heVar, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity, final com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        if (heVar == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (activity != null) {
            this.a.B().a(true);
            final g gVarB = b(heVar);
            long jN0 = heVar.n0();
            if (n.a()) {
                this.b.d("MediationService", "Showing ad " + heVar.getAdUnitId() + " with delay of " + jN0 + "ms...");
            }
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(heVar, gVarB, viewGroup, lifecycle, activity, interfaceC0024a);
                }
            }, jN0);
            return;
        }
        throw new IllegalArgumentException("No activity specified");
    }

    class b implements g.c {
        final /* synthetic */ fi a;

        @Override // com.applovin.impl.mediation.g.c
        public void a(MaxError maxError) {
            this.a.a(maxError);
        }

        @Override // com.applovin.impl.mediation.g.c
        public void onSignalCollected(String str) {
            this.a.b(str);
        }

        b(fi fiVar) {
            this.a = fiVar;
        }
    }

    public void processAdapterInitializationPostback(oe oeVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        HashMap map = new HashMap(2);
        map.put("{INIT_STATUS}", String.valueOf(initializationStatus.getCode()));
        map.put("{INIT_TIME_MS}", String.valueOf(j));
        a("minit", map, new MaxErrorImpl(str), oeVar);
        Map mapA = la.a(oeVar);
        CollectionUtils.putStringIfValid("adapter_init_status", String.valueOf(initializationStatus.getCode()), mapA);
        CollectionUtils.putStringIfValid("error_message", str, mapA);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(j), mapA);
        switch (c.a[initializationStatus.ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.a.D().a(ka.x, mapA);
                break;
            case 4:
                this.a.D().a(ka.y, mapA);
                break;
            case 5:
            case 6:
                this.a.I();
                if (n.a()) {
                    this.a.I().k("MediationService", "Adapter init postback called while the adapter is not fully initialized.");
                }
                this.a.D().a(ka.d, "adapterNotInitializedForPostback", mapA);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(fe feVar, MaxError maxError, MaxAdListener maxAdListener) {
        a(maxError, feVar);
        destroyAd(feVar);
        fc.a(maxAdListener, feVar.getAdUnitId(), maxError);
    }

    private void a(final String str, final MaxAdFormat maxAdFormat, final zj zjVar, Context context, final yj.a aVar, final g gVar) {
        final fi fiVar = new fi("SignalCollection:" + zjVar.c());
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        Executor executor = fi.i;
        fiVar.a(executor, new fi.b() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda4
            @Override // com.applovin.impl.fi.b
            public final void a(boolean z, Object obj, Object obj2) {
                this.f$0.a(jElapsedRealtime, gVar, str, zjVar, maxAdFormat, aVar, z, (String) obj, (MaxError) obj2);
            }
        });
        an.a(zjVar.m(), fiVar, new MaxErrorImpl(MaxAdapterError.ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT, "The adapter (" + zjVar.c() + ") timed out collecting signal"), "MediationService", this.a);
        final g.c bVar = new b(fiVar);
        final Activity activityM0 = context instanceof Activity ? (Activity) context : this.a.m0();
        final MaxAdapterParametersImpl maxAdapterParametersImplA = MaxAdapterParametersImpl.a(zjVar, str, maxAdFormat);
        if (zjVar.v()) {
            fi fiVarA = this.a.K().a(zjVar, activityM0);
            fiVarA.a(executor, new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(fiVar, gVar, maxAdapterParametersImplA, zjVar, activityM0, bVar);
                }
            });
            fiVarA.a(executor, new fi.a() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda6
                @Override // com.applovin.impl.fi.a
                public final void a(Object obj) {
                    this.f$0.a(gVar, fiVar, (String) obj);
                }
            });
            return;
        }
        if (zjVar.w()) {
            fi fiVarA2 = this.a.K().a(zjVar, activityM0);
            if (fiVarA2.d() && !zjVar.y()) {
                if (n.a()) {
                    this.b.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + gVar.g());
                }
                fiVar.a(new MaxErrorImpl("Could not initialize adapter: " + ((String) fiVarA2.a())));
                return;
            }
        }
        if (n.a()) {
            this.b.a("MediationService", "Collecting signal for adapter: " + gVar.g());
        }
        gVar.a(maxAdapterParametersImplA, zjVar, activityM0, bVar);
    }

    public void processRawAdImpression(fe feVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        this.a.q().b(feVar, "WILL_DISPLAY");
        if (feVar.P().endsWith("mimp")) {
            this.a.q().b(feVar);
            fc.a((MaxAdRevenueListener) interfaceC0024a, (MaxAd) feVar);
        }
        if (((Boolean) this.a.a(sj.C4)).booleanValue()) {
            this.a.Q().a(ve.d, we.a(feVar), Long.valueOf(System.currentTimeMillis() - this.a.H()));
        }
        HashMap map = new HashMap(2);
        if (feVar instanceof he) {
            map.put("{TIME_TO_SHOW_MS}", String.valueOf(((he) feVar).l0()));
        }
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.o0().c());
        if (!((Boolean) this.a.a(sj.I3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mimp", map, feVar);
    }

    public void processViewabilityAdImpressionPostback(me meVar, long j, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        if (meVar.P().endsWith("vimp")) {
            this.a.q().b(meVar);
            fc.a((MaxAdRevenueListener) interfaceC0024a, (MaxAd) meVar);
        }
        HashMap map = new HashMap(3);
        map.put("{VIEWABILITY_FLAGS}", String.valueOf(j));
        map.put("{USED_VIEWABILITY_TIMER}", String.valueOf(meVar.m0()));
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.o0().c());
        if (!((Boolean) this.a.a(sj.I3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mvimp", map, meVar);
    }

    public void processCallbackAdImpressionPostback(fe feVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        if (feVar.P().endsWith("cimp")) {
            this.a.q().b(feVar);
            fc.a((MaxAdRevenueListener) interfaceC0024a, (MaxAd) feVar);
        }
        HashMap map = new HashMap(1);
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.o0().c());
        if (!((Boolean) this.a.a(sj.I3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mcimp", map, feVar);
        this.a.D().a(ka.I, feVar);
    }

    public void processAdDisplayErrorPostbackForUserError(MaxError maxError, fe feVar) {
        a(maxError, feVar, false);
    }

    private g b(he heVar) {
        g gVarA = heVar.A();
        if (gVarA != null) {
            return gVarA;
        }
        this.a.B().a(false);
        if (n.a()) {
            this.b.k("MediationService", "Failed to show " + heVar + ": adapter not found");
        }
        n.h("MediationService", "There may be an integration problem with the adapter for Ad Unit ID '" + heVar.getAdUnitId() + "'. Please check if you have a supported version of that SDK integrated into your project.");
        throw new IllegalStateException("Could not find adapter for provided ad");
    }

    private void a(he heVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        this.a.B().a(false);
        a(heVar, (MaxAdListener) interfaceC0024a);
        if (n.a()) {
            this.b.a("MediationService", "Scheduling impression for ad manually...");
        }
        processRawAdImpression(heVar, interfaceC0024a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(long j, g gVar, String str, zj zjVar, MaxAdFormat maxAdFormat, yj.a aVar, boolean z, String str2, MaxError maxError) {
        yj yjVarA;
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        if (z) {
            if (n.a()) {
                this.b.a("MediationService", "Signal collection successful from: " + gVar.g() + " for Ad Unit ID: " + str + " with signal: \"" + str2 + "\"");
            }
            yjVarA = yj.a(zjVar, gVar, str2, j, jElapsedRealtime);
            this.c.a(yjVarA, zjVar, str, maxAdFormat);
            HashMap map = new HashMap();
            CollectionUtils.putStringIfValid("network_name", zjVar.c(), map);
            CollectionUtils.putStringIfValid("adapter_class", zjVar.b(), map);
            CollectionUtils.putStringIfValid("adapter_version", gVar.b(), map);
            CollectionUtils.putStringIfValid("duration_ms", String.valueOf(jElapsedRealtime), map);
            CollectionUtils.putStringIfValid("ad_format", String.valueOf(maxAdFormat.getLabel()), map);
            CollectionUtils.putStringIfValid("ad_unit_id", str, map);
            this.a.D().a(ka.z, (Map) map);
        } else {
            if (n.a()) {
                this.b.b("MediationService", "Signal collection failed from: " + gVar.g() + " for Ad Unit ID: " + str + " with error message: \"" + maxError.getMessage() + "\"");
            }
            yjVarA = yj.a(zjVar, gVar, maxError, j, jElapsedRealtime);
            a(yjVarA, zjVar, gVar);
        }
        aVar.a(yjVarA);
        gVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(fi fiVar, g gVar, MaxAdapterParametersImpl maxAdapterParametersImpl, zj zjVar, Activity activity, g.c cVar) {
        if (fiVar.c()) {
            return;
        }
        if (n.a()) {
            this.b.a("MediationService", "Collecting signal for now-initialized adapter: " + gVar.g());
        }
        gVar.a(maxAdapterParametersImpl, zjVar, activity, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g gVar, String str, MaxAdapterParametersImpl maxAdapterParametersImpl, fe feVar, Activity activity, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        gVar.a(str, maxAdapterParametersImpl, feVar, activity, new d(feVar, interfaceC0024a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(he heVar, Long l, MaxAdListener maxAdListener) {
        if (heVar.u().get()) {
            return;
        }
        String str = "Ad (" + heVar.k() + ") has not been displayed after " + l + "ms. Failing ad display...";
        n.h("MediationService", str);
        a(heVar, new MaxErrorImpl(-1, str), maxAdListener);
        this.a.B().b(heVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(he heVar, g gVar, Activity activity, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        heVar.a(true);
        a(heVar);
        gVar.c(heVar, activity);
        a(heVar, interfaceC0024a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(he heVar, g gVar, ViewGroup viewGroup, Lifecycle lifecycle, Activity activity, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        heVar.a(true);
        a(heVar);
        gVar.a(heVar, viewGroup, lifecycle, activity);
        a(heVar, interfaceC0024a);
    }

    private void a(final he heVar, final MaxAdListener maxAdListener) {
        final Long l = (Long) this.a.a(ue.j7);
        if (l.longValue() <= 0) {
            return;
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.MediationServiceImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(heVar, l, maxAdListener);
            }
        }, l.longValue());
    }

    private void a(he heVar) {
        if (heVar.getFormat() == MaxAdFormat.REWARDED || heVar.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) {
            this.a.i0().a((yl) new ln(heVar, this.a), tm.b.OTHER);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(fe feVar, MaxError maxError, MaxAdListener maxAdListener) {
        this.a.k().a(feVar, com.applovin.impl.sdk.g.c.SHOW_ERROR);
        this.a.q().b(feVar, "DID_FAIL_DISPLAY");
        a(maxError, feVar, true);
        if (feVar.u().compareAndSet(false, true)) {
            fc.a(maxAdListener, feVar, maxError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(fe feVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        this.a.q().b(feVar, "DID_CLICKED");
        this.a.q().b(feVar, "DID_CLICK");
        if (feVar.P().endsWith(z8.CLICK)) {
            this.a.q().b(feVar);
            fc.a((MaxAdRevenueListener) interfaceC0024a, (MaxAd) feVar);
        }
        HashMap map = new HashMap(1);
        String strEmptyIfNull = StringUtils.emptyIfNull(this.a.o0().c());
        if (!((Boolean) this.a.a(sj.I3)).booleanValue()) {
            strEmptyIfNull = "";
        }
        map.put("{CUID}", strEmptyIfNull);
        a("mclick", map, feVar);
    }

    private void a(MaxError maxError, fe feVar, boolean z) {
        a("mierr", Collections.EMPTY_MAP, maxError, feVar, z);
        if (!z || feVar == null) {
            return;
        }
        this.a.D().a(ka.J, feVar, maxError);
    }

    private void a(MaxError maxError, fe feVar) {
        HashMap map = new HashMap(3);
        long jG = feVar.G();
        map.put("{LOAD_TIME_MS}", String.valueOf(jG));
        if (feVar.getFormat().isFullscreenAd()) {
            m.a aVarB = this.a.B().b(feVar.getAdUnitId());
            map.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(aVarB.a()));
            map.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(aVarB.b()));
        }
        a("mlerr", map, maxError, feVar);
        Map mapA = la.a(feVar);
        mapA.putAll(la.a(maxError));
        mapA.put("duration_ms", String.valueOf(jG));
        this.a.D().a(ka.G, mapA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(fe feVar) {
        this.a.q().b(feVar, "DID_LOAD");
        if (feVar.P().endsWith("load")) {
            this.a.q().b(feVar);
        }
        HashMap map = new HashMap(3);
        long jG = feVar.G();
        map.put("{LOAD_TIME_MS}", String.valueOf(jG));
        if (feVar.getFormat().isFullscreenAd()) {
            m.a aVarB = this.a.B().b(feVar.getAdUnitId());
            map.put("{SHOW_ATTEMPT_COUNT}", String.valueOf(aVarB.a()));
            map.put("{SHOW_ATTEMPT_TIMESTAMP_MS}", String.valueOf(aVarB.b()));
        }
        a("load", map, feVar);
        Map mapA = la.a(feVar);
        mapA.put("duration_ms", String.valueOf(jG));
        this.a.D().a(ka.F, mapA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(yj yjVar, zj zjVar, g gVar) {
        long jB = yjVar.b();
        HashMap map = new HashMap(3);
        map.put("{LOAD_TIME_MS}", String.valueOf(jB));
        CollectionUtils.putStringIfValid("{ADAPTER_VERSION}", gVar.b(), map);
        CollectionUtils.putStringIfValid("{SDK_VERSION}", gVar.i(), map);
        a("serr", map, yjVar.c(), zjVar);
        HashMap map2 = new HashMap();
        CollectionUtils.putStringIfValid("network_name", zjVar.c(), map2);
        CollectionUtils.putStringIfValid("adapter_class", zjVar.b(), map2);
        CollectionUtils.putStringIfValid("adapter_version", gVar.b(), map2);
        CollectionUtils.putStringIfValid("duration_ms", String.valueOf(jB), map2);
        this.a.D().a(ka.A, (Map) map2);
    }

    private void a(String str, List list, Map map, Map map2, MaxError maxError, oe oeVar, boolean z) {
        this.a.i0().a((yl) new rm(str, list, map, map2, maxError, oeVar, this.a, z), tm.b.OTHER);
    }

    private void a(String str, Map map, oe oeVar) {
        a(str, map, (MaxError) null, oeVar);
    }

    private void a(String str, Map map, MaxError maxError, oe oeVar) {
        a(str, map, maxError, oeVar, true);
    }

    private void a(String str, Map map, MaxError maxError, oe oeVar, boolean z) {
        Map map2 = CollectionUtils.map(map);
        map2.put("{PLACEMENT}", z ? StringUtils.emptyIfNull(oeVar.getPlacement()) : "");
        map2.put("{CUSTOM_DATA}", z ? StringUtils.emptyIfNull(oeVar.e()) : "");
        if (oeVar instanceof fe) {
            map2.put("{CREATIVE_ID}", z ? StringUtils.emptyIfNull(((fe) oeVar).getCreativeId()) : "");
        }
        a(str, null, map2, null, maxError, oeVar, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(fe feVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a, String str) {
        String str2 = "Failed to load " + feVar + ": adapter init failed with error: " + str;
        if (n.a()) {
            this.b.k("MediationService", str2);
        }
        b(feVar, new MaxErrorImpl(MaxAdapterError.NOT_INITIALIZED.getErrorCode(), "Adapter initialization failed"), interfaceC0024a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(g gVar, fi fiVar, String str) {
        if (n.a()) {
            this.b.b("MediationService", "Skip collecting signal for failed-initialized adapter: " + gVar.g());
        }
        fiVar.a(new MaxErrorImpl(MaxAdapterError.ERROR_CODE_NOT_INITIALIZED, "Could not initialize adapter: " + str));
    }
}
