package com.applovin.impl;

import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.google.android.gms.ads.AdError;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class um extends yl implements qb {
    private final JSONObject h;
    private final h0 i;
    private final AppLovinAdLoadListener j;
    private final boolean k;

    public um(JSONObject jSONObject, h0 h0Var, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        this(jSONObject, h0Var, false, appLovinAdLoadListener, jVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.h, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Processing ad...");
            }
            a(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()));
        } else {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.k(this.b, "No ads were returned from the server");
            }
            yp.a(this.i.e(), this.i.d(), this.h, this.a);
            failedToReceiveAdV2(AppLovinError.NO_FILL);
        }
    }

    private void a(JSONObject jSONObject) {
        String string = JsonUtils.getString(jSONObject, "type", AdError.UNDEFINED_DOMAIN);
        if ("applovin".equalsIgnoreCase(string)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Starting task for AppLovin ad...");
            }
            this.a.i0().a(new bn(jSONObject, this.h, this, this.a));
            return;
        }
        if ("vast".equalsIgnoreCase(string)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Starting task for VAST ad...");
            }
            this.a.i0().a(zm.a(jSONObject, this.h, this, this.a));
            return;
        }
        if ("js_tag".equalsIgnoreCase(string)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Starting task for JS tag ad...");
            }
            this.a.i0().a(new vm(jSONObject, this.h, this, this.a));
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Unable to process ad of unknown type: " + string);
        }
        failedToReceiveAdV2(new AppLovinError(AppLovinErrorCodes.INVALID_RESPONSE, "Unknown ad type: " + string));
    }

    public um(JSONObject jSONObject, h0 h0Var, boolean z, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super("TaskProcessAdResponse", jVar);
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (h0Var != null) {
            this.h = jSONObject;
            this.i = h0Var;
            this.j = appLovinAdLoadListener;
            this.k = z;
            return;
        }
        throw new IllegalArgumentException("No zone specified");
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.j;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(appLovinAd);
        }
        if (this.k || !(appLovinAd instanceof com.applovin.impl.sdk.ad.b)) {
            return;
        }
        this.a.D().a(ka.i, (com.applovin.impl.sdk.ad.b) appLovinAd);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        failedToReceiveAdV2(new AppLovinError(i, ""));
    }

    @Override // com.applovin.impl.qb
    public void failedToReceiveAdV2(AppLovinError appLovinError) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.j;
        if (appLovinAdLoadListener == null) {
            return;
        }
        if (appLovinAdLoadListener instanceof qb) {
            ((qb) appLovinAdLoadListener).failedToReceiveAdV2(appLovinError);
        } else {
            appLovinAdLoadListener.failedToReceiveAd(appLovinError.getCode());
        }
        if (this.k) {
            return;
        }
        this.a.D().a(ka.j, this.i, appLovinError);
    }
}
