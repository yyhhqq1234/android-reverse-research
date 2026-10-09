package com.applovin.impl;

import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class qm extends om {
    private final w k;

    @Override // com.applovin.impl.hm
    protected Map h() {
        HashMap map = new HashMap(2);
        map.put("adtoken", this.k.b());
        map.put("adtoken_prefix", this.k.d());
        return map;
    }

    public qm(w wVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super(h0.a("adtoken_zone"), appLovinAdLoadListener, "TaskFetchTokenAd", jVar);
        this.k = wVar;
    }
}
