package org.json;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.WaterfallConfiguration;
import org.json.mediationsdk.metadata.a;

/* JADX INFO: loaded from: classes3.dex */
public class xi {
    qd a = new qd();

    public void a(int i) {
        this.a.a(md.Y, Integer.valueOf(i));
    }

    public void a(Context context) {
        this.a.a(context);
    }

    public void a(hf hfVar) {
        try {
            HashMap map = new HashMap();
            map.put(md.x, hfVar.a());
            map.put(md.w, hfVar.b());
            map.put(md.M, hfVar.c());
            this.a.a(map);
        } catch (Exception e) {
            l9.d().a(e);
        }
    }

    public void a(IronSource.AD_UNIT ad_unit, WaterfallConfiguration waterfallConfiguration) {
        JSONObject jSONObject = new JSONObject();
        if (waterfallConfiguration != null) {
            try {
                jSONObject.put(md.c1, waterfallConfiguration.getCom.ironsource.unity.androidbridge.AndroidBridgeConstants.WATERFALL_CONFIG_FLOOR_KEY java.lang.String());
                jSONObject.put(md.d1, waterfallConfiguration.getCom.ironsource.unity.androidbridge.AndroidBridgeConstants.WATERFALL_CONFIG_CEILING_KEY java.lang.String());
            } catch (JSONException e) {
                l9.d().a(e);
            }
        }
        if (jSONObject.length() == 0) {
            this.a.a(md.b1, u2.a(ad_unit));
        } else {
            this.a.a(md.b1, jSONObject, u2.a(ad_unit));
        }
    }

    public void a(Boolean bool) {
        this.a.a(md.C0, bool);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(md.x0, str);
    }

    public void a(JSONObject jSONObject) {
        this.a.a(md.s, (Object) jSONObject);
    }

    public void a(boolean z) {
        this.a.a(md.z0, Boolean.valueOf(z));
    }

    public void b(int i) {
        if (i >= 0) {
            this.a.a(md.B0, Integer.valueOf(i));
        }
    }

    public void b(String str) {
        this.a.a(md.t0, str);
    }

    public void b(JSONObject jSONObject) {
        this.a.a(md.N0, (Object) jSONObject);
    }

    public void b(boolean z) {
        this.a.a("gpi", Boolean.valueOf(z));
    }

    public void c(int i) {
        this.a.a(md.W, Integer.valueOf(i));
    }

    public void c(String str) {
        this.a.a(md.v0, str);
    }

    public void d(String str) {
        this.a.a(a.i, str);
    }

    public void e(String str) {
        this.a.a(md.I0, str);
    }

    public void f(String str) {
        this.a.a(md.u, str);
    }

    public void g(String str) {
        this.a.a(md.E, str);
    }

    public void h(String str) {
        this.a.a(md.L0, str);
    }

    public void i(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(md.V, str);
    }
}
