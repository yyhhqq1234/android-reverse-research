package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ge extends me {
    @Override // com.applovin.impl.fe
    public fe a(com.applovin.impl.mediation.g gVar) {
        return new ge(this, gVar);
    }

    public ge(int i, Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.j jVar) {
        super(i, map, jSONObject, jSONObject2, null, jVar);
    }

    public int r0() {
        int iA = a("ad_view_width", -2);
        if (iA != -2) {
            return iA;
        }
        MaxAdFormat format = getFormat();
        if (format.isAdViewAd()) {
            return format.getSize().getWidth();
        }
        throw new IllegalStateException("Invalid ad format");
    }

    public int p0() {
        int iA = a("ad_view_height", -2);
        if (iA != -2) {
            return iA;
        }
        MaxAdFormat format = getFormat();
        if (format.isAdViewAd()) {
            return format.getSize().getHeight();
        }
        throw new IllegalStateException("Invalid ad format");
    }

    private ge(ge geVar, com.applovin.impl.mediation.g gVar) {
        super(geVar.J(), geVar.i(), geVar.a(), geVar.g(), gVar, geVar.a);
    }

    public long q0() {
        return a("viewability_imp_delay_ms", ((Long) this.a.a(sj.v1)).longValue());
    }

    public boolean s0() {
        return n0() >= 0;
    }

    public long n0() {
        long jA = a("ad_refresh_ms", -1L);
        return jA >= 0 ? jA : b("ad_refresh_ms", ((Long) this.a.a(ue.O6)).longValue());
    }

    public boolean t0() {
        return a("proe", (Boolean) this.a.a(ue.p7)).booleanValue();
    }

    public long o0() {
        return yp.d(a("bg_color", (String) null));
    }
}
