package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class bh extends ax {
    String a;
    String b;
    String c;

    public bh(String str, String str2, String str3) {
        super(1, "/api/users/create_ticket");
        this.a = str;
        this.b = str2;
        this.c = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(Context context, JSONObject jSONObject) {
        return new com.netease.mpay.server.response.ae(f(jSONObject, "ticket"));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        return arrayList;
    }
}
