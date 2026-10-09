package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class bn extends yl {
    private final JSONObject h;
    private final JSONObject i;
    private final AppLovinAdLoadListener j;

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Rendering ad...");
        }
        com.applovin.impl.sdk.ad.a aVar = new com.applovin.impl.sdk.ad.a(this.h, this.i, this.a);
        boolean zBooleanValue = JsonUtils.getBoolean(this.h, "gs_load_immediately", Boolean.FALSE).booleanValue();
        boolean zBooleanValue2 = JsonUtils.getBoolean(this.h, "vs_load_immediately", Boolean.TRUE).booleanValue();
        cm cmVar = new cm(aVar, this.a, this.j);
        cmVar.c(zBooleanValue2);
        cmVar.b(zBooleanValue);
        this.a.i0().a((yl) cmVar, tm.b.CACHING);
    }

    public bn(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super("TaskRenderAppLovinAd", jVar);
        this.h = jSONObject;
        this.i = jSONObject2;
        this.j = appLovinAdLoadListener;
    }
}
