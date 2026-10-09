package com.applovin.impl;

import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class nm extends pm {
    private final w k;

    @Override // com.applovin.impl.hm
    protected Map h() {
        HashMap map = new HashMap(2);
        map.put("adtoken", this.k.b());
        map.put("adtoken_prefix", this.k.d());
        return map;
    }

    public nm(w wVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super(h0.a("adtoken_zone"), "TaskFetchNativeTokenAd", appLovinNativeAdLoadListener, jVar);
        this.k = wVar;
    }
}
