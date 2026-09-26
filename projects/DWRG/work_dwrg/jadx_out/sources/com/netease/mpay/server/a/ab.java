package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class ab extends ax {
    String a;
    String b;

    public ab(String str, String str2, String str3, String str4) {
        super(0, "/games/" + str + "/orders/" + str4 + "/payments");
        this.a = str2;
        this.b = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.l b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.l lVar = new com.netease.mpay.server.response.l();
        JSONObject a = a(jSONObject, "order");
        lVar.a = e(a, "pay_url");
        lVar.b = e(a, "deeplink_pattern");
        return lVar;
    }
}
