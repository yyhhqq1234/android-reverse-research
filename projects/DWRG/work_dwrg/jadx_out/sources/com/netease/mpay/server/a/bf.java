package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.aj;
import com.netease.mpay.e.b.al;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class bf extends ax {
    String a;
    String b;

    public bf(String str, String str2, String str3, String str4) {
        super(0, "/games/" + str + "/devices/" + str2 + "/users/" + str3 + "/user_center");
        this.a = str3;
        this.b = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ag b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.ag agVar = new com.netease.mpay.server.response.ag();
        agVar.a.a = this.a;
        JSONArray c = c(jSONObject, "user_center");
        for (int i = 0; i < c.length(); i++) {
            JSONObject a = a(c, i);
            aj.a aVar = new aj.a(a);
            agVar.a.b.add(aVar);
            JSONObject b = b(a, "updates");
            if (aVar != null && b != null) {
                agVar.b.a.put(aVar.a, new al.a(b));
            }
        }
        return agVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        return arrayList;
    }
}
