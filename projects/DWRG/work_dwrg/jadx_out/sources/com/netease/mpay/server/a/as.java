package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class as extends ax {
    String a;
    String b;

    public as(String str, String str2) {
        super(0, "/api/qrcode/scan_external");
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ab b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.ab abVar = new com.netease.mpay.server.response.ab();
        JSONObject a = a(a(jSONObject, "qrcode_info"), "game");
        abVar.a = f(a, "name");
        abVar.b = f(a, "qrcode_channel_name");
        return abVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("uid", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("order_id", this.b));
        return arrayList;
    }
}
