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
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class wm extends yl {
    private static final AtomicBoolean z = new AtomicBoolean();
    private final String h;
    private final MaxAdFormat i;
    private final JSONObject j;
    private final com.applovin.impl.mediation.ads.a.InterfaceC0024a k;
    private final WeakReference l;
    private final String m;
    private final Queue n;
    private final Object o;
    private final Queue p;
    private final Object q;
    private final int r;
    private long s;
    private final List t;
    private final AtomicBoolean u;
    private final AtomicBoolean v;
    private final AtomicBoolean w;
    private fe x;
    private go y;

    private enum c {
        BIDDING,
        TAG
    }

    @Override // java.lang.Runnable
    public void run() {
        final MaxErrorImpl maxErrorImpl;
        this.s = SystemClock.elapsedRealtime();
        if (this.j.optBoolean("is_testing", false) && !this.a.k0().c() && z.compareAndSet(false, true)) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.wm$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e();
                }
            });
        }
        if (this.r != 0) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Starting waterfall for " + this.i.getLabel() + " ad unit " + this.h + " with " + this.r + " ad(s)...");
            }
            d(c.TAG);
            d(c.BIDDING);
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
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.wm$$ExternalSyntheticLambda1
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

    public wm(String str, MaxAdFormat maxAdFormat, Map map, JSONObject jSONObject, Context context, com.applovin.impl.sdk.j jVar, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        super("TaskProcessMediationWaterfallV2", jVar, str);
        this.n = new LinkedList();
        this.o = new Object();
        this.p = new LinkedList();
        this.q = new Object();
        this.u = new AtomicBoolean();
        this.v = new AtomicBoolean();
        this.w = new AtomicBoolean();
        this.h = str;
        this.i = maxAdFormat;
        this.j = jSONObject;
        this.k = interfaceC0024a;
        this.l = new WeakReference(context);
        this.m = JsonUtils.getString(jSONObject, "mCode", "");
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "ads", new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            fe feVarA = fe.a(i, map, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, jVar);
            if (feVarA.X()) {
                this.p.add(feVarA);
            } else {
                this.n.add(feVarA);
            }
        }
        int size = this.n.size() + this.p.size();
        this.r = size;
        this.t = new ArrayList(size);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        yp.a("MAX SDK Not Initialized In Test Mode", "Test ads may not load. Please force close and restart the app if you experience issues.", this.a.m0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(c cVar) {
        fe feVarA = a(cVar);
        if (feVarA == null) {
            b(cVar);
            return false;
        }
        this.a.i0().a((yl) new b(feVarA, cVar), tm.b.MEDIATION);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public fe c(c cVar) {
        return a(cVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b extends yl {
        private final String h;
        private final long i;
        private final fe j;
        private final c k;
        private final int l;

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.h, "Loading ad " + this.l + " of " + wm.this.r + " from " + this.j.c() + " for " + wm.this.i + " ad unit " + wm.this.h);
            }
            b("started to load ad");
            Context context = (Context) wm.this.l.get();
            Activity activityM0 = context instanceof Activity ? (Activity) context : this.a.m0();
            this.a.S().b(this.j);
            this.a.P().loadThirdPartyMediatedAd(wm.this.h, this.j, activityM0, new a(wm.this.k));
        }

        private b(fe feVar, c cVar) {
            super(wm.this.b, wm.this.a, wm.this.h);
            this.h = this.b + ":" + cVar;
            this.i = SystemClock.elapsedRealtime();
            this.j = feVar;
            this.k = cVar;
            this.l = feVar.J() + 1;
        }

        class a extends ne {
            a(com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
                super(interfaceC0024a);
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoaded(MaxAd maxAd) {
                boolean z;
                long jE;
                fe feVar;
                b.this.b("loaded ad");
                fe feVar2 = (fe) maxAd;
                long jElapsedRealtime = SystemClock.elapsedRealtime() - b.this.i;
                com.applovin.impl.sdk.n unused = b.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    b.this.c.a(b.this.h, "Ad (" + b.this.l + ") loaded in " + jElapsedRealtime + "ms for " + wm.this.i + " ad unit " + wm.this.h);
                }
                wm.this.a(feVar2, MaxNetworkResponseInfo.AdLoadState.AD_LOADED, jElapsedRealtime, null);
                b bVar = b.this;
                wm.this.b(bVar.k);
                if (c.BIDDING == b.this.k) {
                    z = wm.this.v.get();
                    jE = feVar2.S();
                } else {
                    z = wm.this.u.get();
                    jE = feVar2.E();
                }
                if (!z && jE != 0) {
                    wm.this.x = feVar2;
                    if (jE < 0) {
                        return;
                    }
                    b bVar2 = b.this;
                    wm.this.y = go.a(jE, bVar2.a, new Runnable() { // from class: com.applovin.impl.wm$b$a$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a();
                        }
                    });
                    return;
                }
                if (b.this.b(feVar2)) {
                    feVar = feVar2;
                    feVar2 = wm.this.x;
                } else {
                    feVar = wm.this.x;
                }
                wm.this.a(feVar2, feVar);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void a() {
                wm wmVar = wm.this;
                wmVar.b(wmVar.x);
            }

            @Override // com.applovin.mediation.MaxAdListener
            public void onAdLoadFailed(String str, MaxError maxError) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - b.this.i;
                com.applovin.impl.sdk.n unused = b.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    b.this.c.a(b.this.h, "Ad (" + b.this.l + ") failed to load in " + jElapsedRealtime + "ms for " + wm.this.i + " ad unit " + str + " with error: " + maxError);
                }
                b.this.b("failed to load ad: " + maxError.getCode());
                b bVar = b.this;
                wm.this.a(bVar.j, MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD, jElapsedRealtime, maxError);
                if (wm.this.w.get()) {
                    return;
                }
                if (wm.this.x != null) {
                    b bVar2 = b.this;
                    if (b.this.b(wm.this.c(bVar2.k))) {
                        wm wmVar = wm.this;
                        wmVar.b(wmVar.x);
                        return;
                    }
                }
                b bVar3 = b.this;
                if ((!wm.this.d(bVar3.k)) && wm.this.v.get() && wm.this.u.get()) {
                    wm.this.b(new MaxErrorImpl(-5001, "MAX returned eligible ads from mediated networks, but all ads failed to load. Inspect getWaterfall() for more info."));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(fe feVar) {
            if (wm.this.x == null) {
                return false;
            }
            if (feVar == null) {
                return true;
            }
            double dN = wm.this.x.N();
            double dN2 = feVar.N();
            if (dN < 0.0d || dN2 < 0.0d) {
                return wm.this.x.J() < feVar.J();
            }
            return dN > dN2;
        }
    }

    private void g() {
        a(this.n);
        a(this.p);
    }

    private void f() {
        go goVar = this.y;
        if (goVar == null) {
            return;
        }
        goVar.a();
        this.y = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(fe feVar) {
        a(feVar, (fe) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(c cVar) {
        if (c.BIDDING == cVar) {
            this.u.compareAndSet(false, true);
        } else if (c.TAG == cVar) {
            this.v.compareAndSet(false, true);
        }
    }

    private fe a(c cVar) {
        return a(cVar, false);
    }

    private fe a(c cVar, boolean z2) {
        Object objPoll;
        fe feVar;
        Object objPoll2;
        fe feVar2;
        if (cVar == c.BIDDING) {
            synchronized (this.q) {
                try {
                    if (z2) {
                        objPoll2 = this.p.peek();
                    } else {
                        objPoll2 = this.p.poll();
                    }
                    feVar2 = (fe) objPoll2;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return feVar2;
        }
        synchronized (this.o) {
            try {
                if (z2) {
                    objPoll = this.n.peek();
                } else {
                    objPoll = this.n.poll();
                }
                feVar = (fe) objPoll;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return feVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(fe feVar, fe feVar2) {
        if (this.w.compareAndSet(false, true)) {
            f();
            g();
            this.a.S().a(feVar, feVar2);
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.s;
            if (com.applovin.impl.sdk.n.a()) {
                this.c.d(this.b, "Waterfall loaded in " + jElapsedRealtime + "ms from " + feVar.c() + " for " + this.i + " ad unit " + this.h);
            }
            feVar.a(new MaxAdWaterfallInfoImpl(feVar, jElapsedRealtime, this.t, this.m));
            fc.f(this.k, feVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(MaxError maxError) {
        int i = 0;
        if (this.w.compareAndSet(false, true)) {
            if (maxError.getCode() == 204) {
                this.a.C().c(ba.u);
            } else if (maxError.getCode() == -5001) {
                this.a.C().c(ba.v);
            } else {
                this.a.C().c(ba.w);
            }
            ArrayList arrayList = new ArrayList(this.t.size());
            for (MaxNetworkResponseInfo maxNetworkResponseInfo : this.t) {
                if (maxNetworkResponseInfo.getAdLoadState() == MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD) {
                    arrayList.add(maxNetworkResponseInfo);
                }
            }
            if (arrayList.size() > 0) {
                StringBuilder sb = new StringBuilder("======FAILED AD LOADS======\n");
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
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.s;
            if (com.applovin.impl.sdk.n.a()) {
                this.c.d(this.b, "Waterfall failed in " + jElapsedRealtime + "ms for " + this.i + " ad unit " + this.h + " with error: " + maxError);
            }
            ((MaxErrorImpl) maxError).setWaterfall(new MaxAdWaterfallInfoImpl(null, JsonUtils.getString(this.j, "waterfall_name", ""), JsonUtils.getString(this.j, "waterfall_test_name", ""), jElapsedRealtime, this.t, JsonUtils.optList(JsonUtils.getJSONArray(this.j, "mwf_info_urls", null), Collections.EMPTY_LIST), this.m));
            fc.a(this.k, this.h, maxError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(fe feVar, MaxNetworkResponseInfo.AdLoadState adLoadState, long j, MaxError maxError) {
        this.t.add(new MaxNetworkResponseInfoImpl(adLoadState, ze.a(feVar.b()), feVar.F(), feVar.X(), j, feVar.B(), maxError));
    }

    private void a(Queue queue) {
        Iterator it = queue.iterator();
        while (it.hasNext()) {
            a((fe) it.next(), MaxNetworkResponseInfo.AdLoadState.AD_LOAD_NOT_ATTEMPTED, -1L, null);
        }
    }
}
