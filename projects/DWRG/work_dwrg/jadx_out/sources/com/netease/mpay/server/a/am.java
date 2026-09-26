package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class am extends ax {
    String a;
    String b;

    public am(String str, String str2, String str3, String str4, String str5, String str6) {
        super(0, "/games/" + str + "/devices/" + str3 + "/users/" + str2 + "/outgoings/" + str6);
        this.a = str5;
        this.b = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(Context context, JSONObject jSONObject) {
        return new com.netease.mpay.server.response.ae(e(a(jSONObject, "outgoing"), "url"));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.a));
        if (!TextUtils.isEmpty(this.b)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.b));
        }
        return arrayList;
    }
}
