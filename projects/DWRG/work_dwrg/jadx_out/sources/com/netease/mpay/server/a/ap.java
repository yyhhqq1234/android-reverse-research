package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.z;
import com.netease.mpay.server.b;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ap extends ax {
    String a;
    String b;

    public ap(String str, String str2) {
        super(1, "/api/patches/list");
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.z b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.z zVar = new com.netease.mpay.server.response.z();
        JSONArray c = c(jSONObject, "patches");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= c.length()) {
                return zVar;
            }
            JSONObject jSONObject2 = c.getJSONObject(i2);
            JSONObject b = b(jSONObject2, "ext_info");
            com.netease.mpay.e.b.z zVar2 = new com.netease.mpay.e.b.z(f(jSONObject2, ResIdReader.RES_TYPE_ID), f(jSONObject2, "app_id"), f(jSONObject2, "name"), f(jSONObject2, "signature"), f(jSONObject2, "url"), b != null ? f(b, "code_version") : null, z.a.INIT);
            if (!TextUtils.isEmpty(zVar2.a)) {
                zVar.a.add(zVar2);
            }
            i = i2 + 1;
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("app_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("unique_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("app_mode", b.C0048b.a(com.netease.mpay.bk.b.booleanValue())));
        return arrayList;
    }
}
