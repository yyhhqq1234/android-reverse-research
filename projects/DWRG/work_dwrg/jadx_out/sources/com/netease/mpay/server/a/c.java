package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c extends ax {
    String a;
    byte[] b;
    String c;

    public c(String str, String str2, byte[] bArr, String str3, String str4) {
        super(0, "/games/" + str + "/orders/" + str4 + "/payments/bankcard");
        this.a = str2;
        this.b = bArr;
        this.c = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.b b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.b bVar = new com.netease.mpay.server.response.b();
        JSONObject a = a(jSONObject, "epay_params");
        bVar.a = f(a, "clientLoginId");
        bVar.c = f(a, "clientLoginToken");
        bVar.d = f(a, "epayClientId");
        bVar.e = f(a, "platformSign");
        bVar.g = f(a, JsonBuilder.APPPLATFORM_ID);
        bVar.h = f(a, "orderPlatformId");
        bVar.f = j(a, "platformSignExpireTime");
        bVar.i = j(a, "clientTimeStamp");
        bVar.b = f(a, "clientOrderId");
        bVar.j = this.b != null ? com.netease.mpay.widget.bd.b(this.b) : "";
        return bVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        return arrayList;
    }
}
