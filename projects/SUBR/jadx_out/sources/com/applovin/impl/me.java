package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class me extends fe {
    protected me(int i, Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.g gVar, com.applovin.impl.sdk.j jVar) {
        super(i, map, jSONObject, jSONObject2, gVar, jVar);
    }

    public int l0() {
        sj sjVar;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            sjVar = sj.w1;
        } else if (format == MaxAdFormat.MREC) {
            sjVar = sj.y1;
        } else if (format == MaxAdFormat.LEADER) {
            sjVar = sj.A1;
        } else {
            sjVar = format == MaxAdFormat.NATIVE ? sj.C1 : null;
        }
        if (sjVar != null) {
            return a("viewability_min_width", ((Integer) this.a.a(sjVar)).intValue());
        }
        return 0;
    }

    public int h0() {
        sj sjVar;
        MaxAdFormat format = getFormat();
        if (format == MaxAdFormat.BANNER) {
            sjVar = sj.x1;
        } else if (format == MaxAdFormat.MREC) {
            sjVar = sj.z1;
        } else if (format == MaxAdFormat.LEADER) {
            sjVar = sj.B1;
        } else {
            sjVar = format == MaxAdFormat.NATIVE ? sj.D1 : null;
        }
        if (sjVar != null) {
            return a("viewability_min_height", ((Integer) this.a.a(sjVar)).intValue());
        }
        return 0;
    }

    public float f0() {
        return b("viewability_min_alpha", ((Float) this.a.a(sj.E1)).floatValue() / 100.0f);
    }

    public int g0() {
        return a("viewability_min_pixels", -1);
    }

    public float i0() {
        return b("viewability_min_percentage_dp", -1.0f);
    }

    public float j0() {
        return b("viewability_min_percentage_pixels", -1.0f);
    }

    public boolean m0() {
        return g0() >= 0 || i0() >= 0.0f || j0() >= 0.0f;
    }

    public long k0() {
        return a("viewability_timer_min_visible_ms", ((Long) this.a.a(sj.F1)).longValue());
    }
}
