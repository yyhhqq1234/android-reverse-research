package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class bb extends ax {
    String a;
    String b;
    String c;
    int d;

    public bb(String str, String str2, String str3, int i) {
        super(1, "/api/users/login/refresh_token");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(Context context, JSONObject jSONObject) {
        return new com.netease.mpay.server.response.ae(jSONObject.optString("token"));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("refresh_for", "" + this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("password", this.c));
        return arrayList;
    }
}
