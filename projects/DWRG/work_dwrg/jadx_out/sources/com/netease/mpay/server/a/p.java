package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.i;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p extends ax {
    String a;
    String b;
    String c;
    String d;

    public p(String str, String str2, String str3, String str4) {
        super(1, "/api/game/get_enter_game_info");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.i b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.i iVar = new com.netease.mpay.server.response.i();
        iVar.a = f(jSONObject, "op");
        iVar.b = f(jSONObject, "params");
        iVar.c = f(jSONObject, "tips");
        JSONObject b = b(jSONObject, "user");
        if (b != null) {
            iVar.d = new i.a();
            iVar.d.a = f(b, ResIdReader.RES_TYPE_ID);
            iVar.d.b = h(b, "login_type");
            iVar.d.c = f(b, "username");
        }
        return iVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("ticket", this.b));
        if (!TextUtils.isEmpty(this.c) && !TextUtils.isEmpty(this.d)) {
            arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.c));
            arrayList.add(new com.netease.mpay.widget.a.a("token", this.d));
        }
        return arrayList;
    }
}
