package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class om extends hm {
    private final AppLovinAdLoadListener j;

    public om(h0 h0Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        this(h0Var, appLovinAdLoadListener, "TaskFetchNextAd", jVar);
    }

    @Override // com.applovin.impl.hm
    protected String f() {
        return e4.b(this.a);
    }

    @Override // com.applovin.impl.hm
    protected String e() {
        return e4.a(this.a);
    }

    @Override // com.applovin.impl.hm
    protected void a(int i, String str) {
        super.a(i, str);
        AppLovinAdLoadListener appLovinAdLoadListener = this.j;
        if (appLovinAdLoadListener instanceof qb) {
            ((qb) this.j).failedToReceiveAdV2(new AppLovinError(i, str));
        } else {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
    }

    public om(h0 h0Var, AppLovinAdLoadListener appLovinAdLoadListener, String str, com.applovin.impl.sdk.j jVar) {
        super(h0Var, str, jVar);
        this.j = appLovinAdLoadListener;
    }

    @Override // com.applovin.impl.hm
    protected yl a(JSONObject jSONObject) {
        return new um(jSONObject, this.h, this.j, this.a);
    }
}
