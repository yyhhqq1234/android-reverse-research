package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class av extends ax {
    String a;
    String b;
    String c;

    public av(String str, String str2, String str3, String str4, String str5) {
        super(0, "/games/" + str + "/orders/" + str4 + "/payments");
        this.a = str2;
        this.b = str3;
        this.c = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(Context context, JSONObject jSONObject) {
        return new com.netease.mpay.server.response.ae(e(a(jSONObject, "order"), "qrcode_img_url"));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("pay_method", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        return arrayList;
    }
}
