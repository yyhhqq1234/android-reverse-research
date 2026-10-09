package com.applovin.impl;

import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ie extends me implements i8 {
    private final AtomicBoolean v;
    private final AtomicBoolean w;

    public ie(int i, Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.j jVar) {
        super(i, map, jSONObject, jSONObject2, null, jVar);
        this.v = new AtomicBoolean();
        this.w = new AtomicBoolean();
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.o.a(maxNativeAdView);
    }

    public MaxNativeAdView o0() {
        return this.o.f();
    }

    private ie(ie ieVar, com.applovin.impl.mediation.g gVar) {
        super(ieVar.J(), ieVar.i(), ieVar.a(), ieVar.g(), gVar, ieVar.a);
        this.v = new AtomicBoolean();
        this.w = new AtomicBoolean();
    }

    public ViewGroup p0() {
        return this.o.h();
    }

    public String r0() {
        return BundleUtils.getString("template", "", l());
    }

    public boolean t0() {
        return a("inacc", (Boolean) this.a.a(ue.z7)).booleanValue();
    }

    public boolean u0() {
        return this.o == null;
    }

    public AtomicBoolean q0() {
        return this.v;
    }

    public AtomicBoolean s0() {
        return this.w;
    }

    public void a(ViewGroup viewGroup) {
        this.o.a(viewGroup);
    }

    @Override // com.applovin.impl.fe
    public fe a(com.applovin.impl.mediation.g gVar) {
        return new ie(this, gVar);
    }

    @Override // com.applovin.impl.i8
    public long getTimeToLiveMillis() {
        return n0() - (SystemClock.elapsedRealtime() - K());
    }

    private long n0() {
        long jA = a("ad_expiration_ms", -1L);
        return jA < 0 ? b("ad_expiration_ms", ((Long) this.a.a(ue.h7)).longValue()) : jA;
    }

    @Override // com.applovin.impl.i8
    public void setExpired() {
        MaxNativeAd nativeAd = getNativeAd();
        if (nativeAd != null) {
            nativeAd.setExpired();
        }
    }
}
