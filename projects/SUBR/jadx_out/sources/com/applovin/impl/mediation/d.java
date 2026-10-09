package com.applovin.impl.mediation;

import android.content.Context;
import android.os.SystemClock;
import com.applovin.impl.fc;
import com.applovin.impl.fe;
import com.applovin.impl.fm;
import com.applovin.impl.lm;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.ue;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private final j a;
    private final Map b = new HashMap(4);
    private final Object c = new Object();
    private final Map d = new HashMap(4);
    private final Object e = new Object();
    private final Map f = new HashMap();
    private final Object g = new Object();

    class a implements fm.b {
        final /* synthetic */ long a;
        final /* synthetic */ Map b;
        final /* synthetic */ String c;
        final /* synthetic */ MaxAdFormat d;
        final /* synthetic */ Map e;
        final /* synthetic */ Map f;
        final /* synthetic */ Context g;
        final /* synthetic */ com.applovin.impl.mediation.ads.a.InterfaceC0024a h;

        a(long j, Map map, String str, MaxAdFormat maxAdFormat, Map map2, Map map3, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
            this.a = j;
            this.b = map;
            this.c = str;
            this.d = maxAdFormat;
            this.e = map2;
            this.f = map3;
            this.g = context;
            this.h = interfaceC0024a;
        }

        @Override // com.applovin.impl.fm.b
        public void a(JSONArray jSONArray) {
            this.b.put("sct_ms", Long.valueOf(SystemClock.elapsedRealtime() - this.a));
            this.b.put("calfc", Integer.valueOf(d.this.b(this.c)));
            lm lmVar = new lm(this.c, this.d, this.e, this.f, this.b, jSONArray, this.g, d.this.a, this.h);
            if (((Boolean) d.this.a.a(ue.E7)).booleanValue()) {
                d.this.a.i0().a((yl) lmVar, tm.b.MEDIATION);
            } else {
                d.this.a.i0().a(lmVar);
            }
        }
    }

    public enum b {
        PUBLISHER_INITIATED("publisher_initiated"),
        SEQUENTIAL_OR_PRECACHE("sequential_or_precache"),
        REFRESH("refresh"),
        EXPONENTIAL_RETRY("exponential_retry"),
        EXPIRED("expired"),
        NATIVE_AD_PLACER("native_ad_placer");

        private final String a;

        b(String str) {
            this.a = str;
        }

        public String b() {
            return this.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c implements com.applovin.impl.mediation.ads.a.InterfaceC0024a {
        private final j a;
        private final WeakReference b;
        private final d c;
        private final C0025d d;
        private final MaxAdFormat f;
        private final Map g;
        private final Map h;
        private final Map i;
        private final int j;
        private long k;
        private long l;

        /* synthetic */ c(Map map, Map map2, Map map3, C0025d c0025d, MaxAdFormat maxAdFormat, long j, long j2, d dVar, j jVar, Context context, a aVar) {
            this(map, map2, map3, c0025d, maxAdFormat, j, j2, dVar, jVar, context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(int i, String str) {
            this.h.put("retry_delay_sec", Integer.valueOf(i));
            this.h.put("retry_attempt", Integer.valueOf(this.d.d));
            Context contextM = (Context) this.b.get();
            if (contextM == null) {
                contextM = j.m();
            }
            this.i.put("art", b.EXPONENTIAL_RETRY.b());
            this.i.put("era", Integer.valueOf(this.d.d));
            this.l = System.currentTimeMillis();
            this.c.a(str, this.f, this.g, this.h, this.i, contextM, this);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            throw new IllegalStateException("Wrong callback invoked for ad: " + maxAd);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(final String str, MaxError maxError) {
            this.c.c(str);
            if (((Boolean) this.a.a(ue.v7)).booleanValue() && this.d.c.get()) {
                this.a.I();
                if (n.a()) {
                    this.a.I().a("MediationAdLoadManager", "Ad failed to load but its load state was destroyed");
                    return;
                }
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.k;
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) maxError.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.a.P().processWaterfallInfoPostback(str, this.f, maxAdWaterfallInfoImpl, maxError, this.l, jElapsedRealtime);
            }
            boolean z = maxError.getCode() == -5603 && yp.c(this.a) && ((Boolean) this.a.a(sj.g6)).booleanValue();
            if (this.a.a(ue.u7, this.f) && this.d.d < this.j && !z) {
                C0025d.f(this.d);
                final int iPow = (int) Math.pow(2.0d, this.d.d);
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.d$c$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(iPow, str);
                    }
                }, TimeUnit.SECONDS.toMillis(iPow));
                return;
            }
            this.d.d = 0;
            this.d.b.set(false);
            if (this.d.e != null) {
                MaxErrorImpl maxErrorImpl = (MaxErrorImpl) maxError;
                maxErrorImpl.setLoadTag(this.d.a);
                maxErrorImpl.setRequestLatencyMillis(jElapsedRealtime);
                fc.a(this.d.e, str, maxError);
                this.d.e = null;
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (((Boolean) this.a.a(ue.v7)).booleanValue() && this.d.c.get()) {
                this.a.I();
                if (n.a()) {
                    this.a.I().a("MediationAdLoadManager", "Ad loaded but its load state was destroyed");
                }
                this.a.P().destroyAd(maxAd);
                return;
            }
            fe feVar = (fe) maxAd;
            feVar.i(this.d.a);
            feVar.a(SystemClock.elapsedRealtime() - this.k);
            MaxAdWaterfallInfoImpl maxAdWaterfallInfoImpl = (MaxAdWaterfallInfoImpl) feVar.getWaterfall();
            if (maxAdWaterfallInfoImpl != null) {
                this.a.P().processWaterfallInfoPostback(feVar.getAdUnitId(), this.f, maxAdWaterfallInfoImpl, null, this.l, feVar.getRequestLatencyMillis());
            }
            this.c.a(maxAd.getAdUnitId());
            this.d.d = 0;
            if (this.d.e == null) {
                this.c.a(feVar);
                this.d.b.set(false);
                return;
            }
            feVar.A().c().a(this.d.e);
            this.d.e.onAdLoaded(feVar);
            if (feVar.P().endsWith("load")) {
                this.d.e.onAdRevenuePaid(feVar);
            }
            this.d.e = null;
            if ((!this.a.c(ue.s7).contains(maxAd.getAdUnitId()) && !this.a.a(ue.r7, maxAd.getFormat())) || this.a.k0().c() || this.a.k0().d()) {
                this.d.b.set(false);
                return;
            }
            Context contextM = (Context) this.b.get();
            if (contextM == null) {
                contextM = j.m();
            }
            this.k = SystemClock.elapsedRealtime();
            this.l = System.currentTimeMillis();
            this.i.put("art", b.SEQUENTIAL_OR_PRECACHE.b());
            this.c.a(maxAd.getAdUnitId(), maxAd.getFormat(), this.g, this.h, this.i, contextM, this);
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
        }

        private c(Map map, Map map2, Map map3, C0025d c0025d, MaxAdFormat maxAdFormat, long j, long j2, d dVar, j jVar, Context context) {
            this.a = jVar;
            this.b = new WeakReference(context);
            this.c = dVar;
            this.d = c0025d;
            this.f = maxAdFormat;
            this.h = map2;
            this.g = map;
            this.i = map3;
            this.k = j;
            this.l = j2;
            if (CollectionUtils.getBoolean(map2, "disable_auto_retries")) {
                this.j = -1;
            } else if (maxAdFormat.isAdViewAd() && CollectionUtils.getBoolean(map2, "auto_refresh_stopped")) {
                this.j = Math.min(2, ((Integer) jVar.a(ue.t7)).intValue());
            } else {
                this.j = ((Integer) jVar.a(ue.t7)).intValue();
            }
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.mediation.d$d, reason: collision with other inner class name */
    private static class C0025d {
        private final String a;
        private final AtomicBoolean b;
        private final AtomicBoolean c;
        private int d;
        private volatile com.applovin.impl.mediation.ads.a.InterfaceC0024a e;

        /* synthetic */ C0025d(String str, a aVar) {
            this(str);
        }

        static /* synthetic */ int f(C0025d c0025d) {
            int i = c0025d.d;
            c0025d.d = i + 1;
            return i;
        }

        private C0025d(String str) {
            this.b = new AtomicBoolean();
            this.c = new AtomicBoolean();
            this.a = str;
        }
    }

    public d(j jVar) {
        this.a = jVar;
    }

    private String b(String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (str2 != null) {
            str3 = "-" + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        return sb.toString();
    }

    public void c(String str, String str2) {
        synchronized (this.c) {
            String strB = b(str, str2);
            a(str, str2).c.set(true);
            this.b.remove(strB);
        }
    }

    public boolean d(String str) {
        boolean z;
        synchronized (this.e) {
            z = this.d.get(str) != null;
        }
        return z;
    }

    public int b(String str) {
        int iIntValue;
        synchronized (this.g) {
            Integer num = (Integer) this.f.get(str);
            iIntValue = num != null ? num.intValue() : 0;
        }
        return iIntValue;
    }

    public void c(String str) {
        synchronized (this.g) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("MediationAdLoadManager", "Incrementing ad load failures count for ad unit ID: " + str);
            }
            Integer num = (Integer) this.f.get(str);
            if (num == null) {
                num = 0;
            }
            this.f.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    private fe e(String str) {
        fe feVar;
        synchronized (this.e) {
            feVar = (fe) this.d.get(str);
            this.d.remove(str);
        }
        return feVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(fe feVar) {
        synchronized (this.e) {
            if (this.d.containsKey(feVar.getAdUnitId())) {
                n.h("AppLovinSdk", "Ad in cache already: " + feVar.getAdUnitId());
            }
            this.d.put(feVar.getAdUnitId(), feVar);
        }
    }

    public void a(String str, String str2, MaxAdFormat maxAdFormat, b bVar, Map map, Map map2, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        fe feVarE = (this.a.k0().d() || yp.f(j.m())) ? null : e(str);
        if (feVarE != null) {
            feVarE.i(str2);
            feVarE.A().c().a(interfaceC0024a);
            interfaceC0024a.onAdLoaded(feVarE);
            if (feVarE.P().endsWith("load")) {
                interfaceC0024a.onAdRevenuePaid(feVarE);
            }
        }
        C0025d c0025dA = a(str, str2);
        if (!c0025dA.b.compareAndSet(false, true)) {
            if (c0025dA.e != null && c0025dA.e != interfaceC0024a) {
                n.j("MediationAdLoadManager", "Attempting to load ad for same ad unit id (" + str + ") while another ad load is already in progress!");
            }
            c0025dA.e = interfaceC0024a;
            return;
        }
        if (feVarE == null) {
            c0025dA.e = interfaceC0024a;
        }
        Map mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
        mapSynchronizedMap.put("art", bVar.b());
        if (StringUtils.isValidString(str2)) {
            mapSynchronizedMap.put("alt", str2);
        }
        a(str, maxAdFormat, map, map2, mapSynchronizedMap, context, new c(map, map2, mapSynchronizedMap, c0025dA, maxAdFormat, SystemClock.elapsedRealtime(), System.currentTimeMillis(), this, this.a, context, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, Context context, com.applovin.impl.mediation.ads.a.InterfaceC0024a interfaceC0024a) {
        this.a.i0().a((yl) new fm(str, maxAdFormat, map, context, this.a, new a(SystemClock.elapsedRealtime(), map3, str, maxAdFormat, map, map2, context, interfaceC0024a)), tm.b.MEDIATION);
    }

    private C0025d a(String str, String str2) {
        C0025d c0025d;
        synchronized (this.c) {
            String strB = b(str, str2);
            c0025d = (C0025d) this.b.get(strB);
            if (c0025d == null) {
                c0025d = new C0025d(str2, null);
                this.b.put(strB, c0025d);
            }
        }
        return c0025d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (this.g) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("MediationAdLoadManager", "Clearing ad load failures count for ad unit ID: " + str);
            }
            this.f.remove(str);
        }
    }
}
