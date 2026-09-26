package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.mpay.server.response.e;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class h extends ax {
    String a;
    String b;

    public h(String str, String str2, String str3) {
        super(0, "/games/" + str + "/deposit/pay_methods");
        this.a = str2;
        this.b = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.e b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.e eVar = new com.netease.mpay.server.response.e();
        eVar.b = new ArrayList();
        JSONArray c = c(jSONObject, "pay_methods");
        for (int i = 0; i < c.length(); i++) {
            JSONObject a = a(c, i);
            String e = e(a, "key");
            String a2 = an.a(e);
            if (a2 != null) {
                e.b a3 = com.netease.mpay.server.response.e.a(a2);
                if (e.equals("ecard")) {
                    eVar.a = h(a, PayConstants.PAY_METHOD_BALABCE);
                }
                a3.a(a);
                eVar.b.add(a3);
            }
        }
        return eVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        return arrayList;
    }
}
