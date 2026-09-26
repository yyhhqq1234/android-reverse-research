package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class i extends ax {
    String a;
    String b;
    String c;
    int d;
    String e;

    public i(String str, String str2, String str3, String str4, int i, String str5) {
        super(1, "/games/" + str + "/deposit/orders");
        this.a = str2;
        this.b = str3;
        this.c = str4;
        this.d = i;
        this.e = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(Context context, JSONObject jSONObject) {
        return new com.netease.mpay.server.response.ae(f(a(jSONObject, "order"), ResIdReader.RES_TYPE_ID));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("price", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("refer", this.d + ""));
        if (!TextUtils.isEmpty(this.e)) {
            arrayList.add(new com.netease.mpay.widget.a.a("pay_order_id", this.e));
        }
        return arrayList;
    }
}
