package org.json;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.IronSourceQaProperties;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.SDKUtils;

/* JADX INFO: loaded from: classes3.dex */
public class mm {
    private final oe b = jl.P().f();
    qd a = new qd();

    public void a() {
        JSONObject jSONObject = new JSONObject(IronSourceQaProperties.getInstance().getParameters());
        if (jSONObject.length() > 0) {
            this.a.a("debug", jSONObject);
        }
    }

    public void a(Context context) {
        if (context instanceof Activity) {
            this.a.a(md.n, Boolean.valueOf(this.b.a((Activity) context)));
        }
    }

    public void a(dg.c cVar) {
        this.a.a(md.g1, Integer.valueOf(cVar.ordinal()));
    }

    public void a(List<String> list) {
        this.a.a(md.j1, list);
    }

    public void a(Map<String, JSONObject> map) {
        for (Map.Entry<String, JSONObject> entry : map.entrySet()) {
            this.a.a(entry.getKey(), (Object) entry.getValue());
        }
    }

    public void a(JSONObject jSONObject) {
        this.a.a(md.l, jSONObject);
    }

    public void a(boolean z) {
        this.a.a(md.A0, Boolean.valueOf(z));
    }

    public void b() {
        String controllerConfig = SDKUtils.getControllerConfig();
        if (TextUtils.isEmpty(controllerConfig)) {
            return;
        }
        try {
            this.a.a(md.i, new JSONObject(controllerConfig).opt(y8.a.p));
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void b(Context context) {
        this.a.a("gpi", Boolean.valueOf(zn.d(context)));
    }

    public void c() {
        this.a.a("uxt", Boolean.valueOf(IronSourceStorageUtils.isUxt()));
    }

    public void d() {
        this.a.a(md.M, "8.5.0");
    }

    public void e() {
        HashMap map = new HashMap();
        map.put(md.x, en.f);
        map.put(md.w, en.e);
        this.a.a(map);
    }
}
