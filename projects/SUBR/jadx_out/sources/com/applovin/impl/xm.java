package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.mediation.MaxAdWaterfallInfoImpl;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.MaxNetworkResponseInfoImpl;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxErrorCode;
import com.applovin.mediation.MaxNetworkResponseInfo;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class xm extends yl {
    private static final AtomicBoolean q = new AtomicBoolean();
    private final String h;
    private final MaxAdFormat i;
    private final JSONObject j;
    private final List k;
    private final com.applovin.impl.mediation.ads.a.InterfaceC0024a l;
    private final WeakReference m;
    private final String n;
    private long o;
    private final List p;

    @Override // java.lang.Runnable
    public void run() {
        final MaxErrorImpl maxErrorImpl;
        this.o = SystemClock.elapsedRealtime();
        int i = 0;
        if (this.j.optBoolean("is_testing", false) && !this.a.k0().c() && q.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.xm$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e();
                }
            });
        }
        if (this.k.size() > 0) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Starting waterfall for " + this.i.getLabel() + " ad unit " + this.h + " with " + this.k.size() + " ad(s)...");
            }
            this.a.i0().a(new b(i, this.k));
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.k(this.b, "No ads were returned from the server for " + this.i.getLabel() + " ad unit " + this.h);
        }
        yp.a(this.h, this.i, this.j, this.a);
        JSONObject jSONObject = JsonUtils.getJSONObject(this.j, "settings", new JSONObject());
        long j = JsonUtils.getLong(jSONObject, "alfdcs", 0L);
        if (ze.a(this.j, this.h, this.a)) {
            maxErrorImpl = new MaxErrorImpl(MaxErrorCode.INVALID_AD_UNIT_ID, "Ad Unit ID " + this.h + " is invalid or disabled.\nMake sure to use an Ad Unit ID from the MAX dashboard that is enabled and configured for the current application.\nFor more information, see https://developers.applovin.com/en/getting-started#step-2-create-an-ad-unit\nNote: New ad units cannot load ads until 30-60 minutes after they are created");
            if (yp.c(this.a) && ((Boolean) this.a.a(sj.g6)).booleanValue()) {
                j = 0;
            }
        } else {
            maxErrorImpl = new MaxErrorImpl(204, "MAX returned no eligible ads from any mediated networks for this app/device");
        }
        if (j <= 0) {
            b(maxErrorImpl);
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(j);
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.xm$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(maxErrorImpl);
            }
        };
        if (JsonUtils.getBoolean(jSONObject, "alfdcs_iba", Boolean.FALSE).booleanValue()) {
            x1.a(millis, this.a, runnable);
        } else {
            AppLovinSdkUtils.runOnUiThreadDelayed(runnable, millis);
        }
    }

    xm(String str, MaxAdFormat maxAdFormat, Map map, JSONObject jSONObject, Context context, com.applovin.impl.sdk.j jVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        super("TaskProcessMediationWaterfall", jVar, str);
        this.h = str;
        this.i = maxAdFormat;
        this.j = jSONObject;
        this.l = interfaceC0024a;
        this.m = new WeakReference(context);
        this.n = JsonUtils.getString(jSONObject, "mcode", "");
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ads", new JSONArray());
        this.k = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            this.k.add(fe.a(i, map, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, jVar));
        }
        this.p = new ArrayList(this.k.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        yp.a("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", this.a.m0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(fe feVar) {
        this.a.S().c(feVar);
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.o;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d(this.b, "Waterfall loaded in " + jElapsedRealtime + "ms from " + feVar.c() + " for " + this.i.getLabel() + " ad unit " + this.h);
        }
        feVar.a(new MaxAdWaterfallInfoImpl(feVar, jElapsedRealtime, this.p, this.n));
        fc.f(this.l, feVar);
    }

    private class b extends yl {
        private final long h;
        private final int i;
        private final fe j;
        private final List k;

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Loading ad " + (this.i + 1) + " of " + this.k.size() + " from " + this.j.c() + " for " + xm.this.i.getLabel() + " ad unit " + xm.this.h);
            }
            b("started to load ad");
            Context context = (Context) xm.this.m.get();
            Activity activityM0 = context instanceof Activity ? (Activity) context : this.a.m0();
            this.a.S().b(this.j);
            this.a.P().loadThirdPartyMediatedAd(xm.this.h, this.j, activityM0, new a(xm.this.l));
        }

        private b(int i, List list) {
            super(xm.this.b, xm.this.a, xm.this.h);
            this.h = SystemClock.elapsedRealtime();
            this.i = i;
            this.j = (fe) list.get(i);
            this.k = list;
        }

        class a extends ne {
            a(com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
                super(interfaceC0024a);
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoaded(MaxAd maxAd) {
                b.this.b("loaded ad");
                long jElapsedRealtime = SystemClock.elapsedRealtime() - b.this.h;
                com.applovin.impl.sdk.n unused = b.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    b.this.c.a(b.this.b, "Ad loaded in " + jElapsedRealtime + "ms for " + xm.this.i.getLabel() + " ad unit " + xm.this.h);
                }
                fe feVar = (fe) maxAd;
                b.this.a(feVar, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, jElapsedRealtime, null);
                int i = b.this.i;
                while (true) {
                    i++;
                    if (i >= b.this.k.size()) {
                        xm.this.b(feVar);
                        return;
                    } else {
                        b bVar = b.this;
                        bVar.a((fe) bVar.k.get(i), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
                    }
                }
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoadFailed(String str, MaxError maxError) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - b.this.h;
                com.applovin.impl.sdk.n unused = b.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    b.this.c.a(b.this.b, "Ad failed to load in " + jElapsedRealtime + " ms for " + xm.this.i.getLabel() + " ad unit " + xm.this.h + " with error: " + maxError);
                }
                b.this.b("failed to load ad: " + maxError.getCode());
                b bVar = b.this;
                bVar.a(bVar.j, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, jElapsedRealtime, maxError);
                if (b.this.i < b.this.k.size() - 1) {
                    b bVar2 = b.this;
                    b.this.a.i0().a((yl) new b(bVar2.i + 1, b.this.k), tm.b.MEDIATION);
                } else {
                    xm.this.b(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(fe feVar, MaxNetworkResponseInfo.AdLoadState adLoadState, long j, MaxError maxError) {
            xm.this.p.add(new MaxNetworkResponseInfoImpl(adLoadState, ze.a(feVar.b()), feVar.F(), feVar.X(), j, feVar.B(), maxError));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(MaxError maxError) {
        if (maxError.getCode() == 204) {
            this.a.C().c(ba.u);
        } else if (maxError.getCode() == -5001) {
            this.a.C().c(ba.v);
        } else {
            this.a.C().c(ba.w);
        }
        ArrayList arrayList = new ArrayList(this.p.size());
        for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.p) {
            if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                arrayList.add(maxNetworkResponseInfo);
            }
        }
        if (arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder("======FAILED AD LOADS======\n");
            int i = 0;
            while (i < arrayList.size()) {
                MaxNetworkResponseInfo maxNetworkResponseInfo2 = (MaxNetworkResponseInfo) arrayList.get(i);
                i++;
                sb.append(i);
                sb.append(") ");
                sb.append(maxNetworkResponseInfo2.getMediatedNetwork().getName());
                sb.append("\n..code: ");
                sb.append(maxNetworkResponseInfo2.getError().getCode());
                sb.append("\n..message: ");
                sb.append(maxNetworkResponseInfo2.getError().getMessage());
                sb.append("\n");
            }
            ((MaxErrorImpl) maxError).setAdLoadFailureInfo(sb.toString());
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.o;
        if (com.applovin.impl.sdk.n.a()) {
            this.c.d(this.b, "Waterfall failed in " + jElapsedRealtime + "ms for " + this.i.getLabel() + " ad unit " + this.h + " with error: " + maxError);
        }
        ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.j, "waterfall_name", ""), JsonUtils.getString(this.j, "waterfall_test_name", ""), jElapsedRealtime, this.p, JsonUtils.optList(JsonUtils.getJSONArray(this.j, "mwf_info_urls", null), Collections.EMPTY_LIST), this.n));
        fc.a(this.l, this.h, maxError);
    }
}
