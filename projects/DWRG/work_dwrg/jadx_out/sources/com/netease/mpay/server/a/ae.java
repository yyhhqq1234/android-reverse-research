package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ae extends ax {
    String a;
    String b;
    String c;
    String d;
    String e;

    public ae(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        super(1, "/games/" + str + "/orders/" + str4 + "/payments/mobilecard");
        this.a = str2;
        this.b = str3;
        this.c = str5;
        this.d = str6;
        this.e = str7;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(Context context, JSONObject jSONObject) {
        JSONObject b = b(jSONObject, "order");
        if (b == null || 1 != h(b, "status")) {
            throw new JSONException("");
        }
        return null;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("select_amount", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("cardnum1", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("cardnum2", this.e));
        return arrayList;
    }
}
