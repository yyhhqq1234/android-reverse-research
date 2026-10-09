package org.json;

import java.util.Map;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public class pi {
    private String a;
    private String e;
    private Map<String, String> f;
    private final fn g;
    private boolean h;
    private boolean b = false;
    private boolean c = false;
    private uf d = null;
    protected boolean i = false;
    protected String j = null;

    public pi(String str, fn fnVar) throws NullPointerException {
        this.a = SDKUtils.requireNonEmptyOrNull(str, "Instance name can't be null");
        this.g = (fn) SDKUtils.requireNonNull(fnVar, "AdListener name can't be null");
    }

    public oi a() {
        return new oi(b(), this.a, this.b, this.c, this.h, this.i, this.j, this.f, this.g, this.d);
    }

    public pi a(uf ufVar) {
        this.d = ufVar;
        return this;
    }

    public pi a(String str) {
        this.e = str;
        return this;
    }

    public pi a(Map<String, String> map) {
        this.f = map;
        return this;
    }

    public pi a(boolean z) {
        this.c = z;
        return this;
    }

    public pi b(String str) {
        this.j = str;
        return this;
    }

    public pi b(boolean z) {
        this.i = z;
        return this;
    }

    public String b() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", this.a);
            jSONObject.put("rewarded", this.b);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return (this.c || this.h) ? zi.a() : zi.a(jSONObject);
    }

    public pi c() {
        this.b = true;
        return this;
    }

    public pi c(boolean z) {
        this.h = z;
        return this;
    }
}
