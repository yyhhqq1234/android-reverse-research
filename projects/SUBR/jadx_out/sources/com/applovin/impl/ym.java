package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ym extends yl {
    private final JSONObject h;
    private final AppLovinNativeAdLoadListener i;

    public ym(JSONObject jSONObject, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super("TaskProcessNativeAdResponse", jVar);
        this.h = jSONObject;
        this.i = appLovinNativeAdLoadListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.h, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Processing ad...");
            }
            this.a.i0().a(new com.applovin.impl.sdk.nativeAd.b(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()), this.h, this.i, this.a));
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.k(this.b, "No ads were returned from the server");
        }
        yp.a("native_native", MaxAdFormat.NATIVE, this.h, this.a);
        this.i.onNativeAdLoadFailed(AppLovinError.NO_FILL);
    }
}
