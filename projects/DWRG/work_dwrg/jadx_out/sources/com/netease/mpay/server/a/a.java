package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a extends ax {
    String a;
    String b;

    public a(String str, String str2, String str3, String str4) {
        super(0, "/games/" + str + "/orders/" + str4 + "/payments/alitvpay");
        this.a = str2;
        this.b = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.a b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.a aVar = new com.netease.mpay.server.response.a();
        JSONObject a = a(jSONObject, "order");
        aVar.a = f(a, ResIdReader.RES_TYPE_ID);
        aVar.b = f(a, "goods_name");
        aVar.c = f(a, "price");
        aVar.d = f(a, "notify_url");
        return aVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        return arrayList;
    }
}
