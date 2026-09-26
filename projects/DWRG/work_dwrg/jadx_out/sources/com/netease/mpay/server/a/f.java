package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class f extends ax {
    public f() {
        super(0, "/config/common.json");
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.c b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.c cVar = new com.netease.mpay.server.response.c();
        cVar.a = i(jSONObject, "version");
        JSONArray c = c(jSONObject, "email_web_url");
        JSONArray d = d(jSONObject, "unionpay_package");
        JSONObject b = b(jSONObject, "nettest");
        JSONObject b2 = b(jSONObject, "weixinpay");
        cVar.b = new ArrayList();
        for (int i = 0; i < c.length(); i++) {
            JSONObject a = a(c, i);
            com.netease.mpay.e.b.h hVar = new com.netease.mpay.e.b.h();
            hVar.a = e(a, "pattern");
            hVar.b = e(a, "url");
            cVar.b.add(hVar);
        }
        cVar.c = new ArrayList();
        if (d != null) {
            for (int i2 = 0; i2 < d.length(); i2++) {
                cVar.c.add(c(d, i2));
            }
        }
        if (b != null) {
            cVar.d = h(b, "limit_time");
            cVar.e = j(b, "limit_interval");
        }
        if (b2 != null) {
            cVar.f = f(b2, "download_url");
            cVar.g = h(b2, "min_pv");
            cVar.h = h(b2, "new_pv");
        }
        return cVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        return new ArrayList();
    }
}
