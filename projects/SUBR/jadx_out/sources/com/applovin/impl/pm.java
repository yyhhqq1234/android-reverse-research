package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class pm extends hm {
    private final AppLovinNativeAdLoadListener j;

    public pm(h0 h0Var, String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super(h0Var, str, jVar);
        this.j = appLovinNativeAdLoadListener;
    }

    @Override // com.applovin.impl.hm
    protected String f() {
        return e4.e(this.a);
    }

    @Override // com.applovin.impl.hm
    protected String e() {
        return e4.d(this.a);
    }

    @Override // com.applovin.impl.hm
    protected void a(int i, String str) {
        super.a(i, str);
        this.j.onNativeAdLoadFailed(new AppLovinError(i, str));
    }

    @Override // com.applovin.impl.hm
    protected yl a(JSONObject jSONObject) {
        return new ym(jSONObject, this.j, this.a);
    }
}
