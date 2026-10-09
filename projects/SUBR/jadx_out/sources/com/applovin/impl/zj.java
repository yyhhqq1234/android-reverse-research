package com.applovin.impl;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class zj extends oe {
    @Override // com.applovin.impl.oe
    public String toString() {
        return "SignalProviderSpec{adObject=" + a() + '}';
    }

    public zj(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.j jVar) {
        super(map, jSONObject, jSONObject2, jVar);
    }

    public boolean v() {
        return a("only_collect_signal_when_initialized", Boolean.FALSE).booleanValue();
    }

    public boolean z() {
        return a("initialize_before_collecting_signal", Boolean.TRUE).booleanValue();
    }

    public boolean w() {
        return a("prefer_collect_signal_when_initialized", Boolean.TRUE).booleanValue();
    }

    public boolean y() {
        return a("ignore_init_failure", Boolean.FALSE).booleanValue();
    }

    public boolean A() {
        return a("use_cached_adapter", Boolean.TRUE).booleanValue();
    }

    public long u() {
        return a("signal_expiration_ms", ((Long) this.a.a(ue.e7)).longValue());
    }

    public boolean x() {
        return a("fail_collection_for_empty_signal", (Boolean) this.a.a(ue.L7)).booleanValue();
    }

    public xj.b t() {
        return xj.b.values()[a("signal_cache_level", ((Integer) this.a.a(ue.f7)).intValue())];
    }
}
