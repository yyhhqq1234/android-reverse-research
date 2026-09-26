package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class q extends ax {
    String a;
    byte[] b;
    String c;

    public q(String str, String str2, byte[] bArr, String str3, String str4) {
        super(0, "/games/" + str + "/orders/" + str4 + "/payments/epay");
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
    public com.netease.mpay.server.response.j b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.j jVar = new com.netease.mpay.server.response.j();
        JSONObject a = a(jSONObject, "epay_params");
        jVar.j = f(a, "pay_url");
        jVar.a = f(a, "clientLoginId");
        jVar.c = f(a, "clientLoginToken");
        jVar.d = f(a, "epayClientId");
        jVar.e = f(a, "platformSign");
        jVar.g = f(a, JsonBuilder.APPPLATFORM_ID);
        jVar.h = f(a, "orderPlatformId");
        jVar.f = j(a, "platformSignExpireTime");
        jVar.i = j(a, "clientTimeStamp");
        jVar.b = f(a, "clientOrderId");
        jVar.k = this.b != null ? com.netease.mpay.widget.bd.b(this.b) : "";
        return jVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("use_wap", com.netease.mpay.bj.a() ? "0" : "1"));
        return arrayList;
    }
}
