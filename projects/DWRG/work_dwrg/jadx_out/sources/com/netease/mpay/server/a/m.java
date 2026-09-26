package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class m extends ax {
    String a;
    String b;
    String c;
    String d;
    int e;
    String f;

    public m(String str, String str2, String str3, String str4, String str5, int i, String str6) {
        super(1, "/games/" + str + "/deposit/ecard");
        this.a = str2;
        this.b = str3;
        this.c = str4;
        this.d = str5;
        this.e = i;
        this.f = str6;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.h b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.h hVar = new com.netease.mpay.server.response.h();
        hVar.b = f(jSONObject, "result_ticket");
        hVar.a = "OK".equals(f(a(jSONObject, "info"), "status"));
        return hVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("cardno", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("cardpass", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("refer", this.e + ""));
        if (!TextUtils.isEmpty(this.f)) {
            arrayList.add(new com.netease.mpay.widget.a.a("pay_order_id", this.f));
        }
        return arrayList;
    }
}
