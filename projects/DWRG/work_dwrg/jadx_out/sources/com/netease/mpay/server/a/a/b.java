package com.netease.mpay.server.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.u;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.ArrayList;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b extends a {
    String a;
    String b;
    String c;
    String d;
    int e;
    String f;

    public b(String str, String str2, String str3, String str4, int i, String str5) {
        super(0, "/fetch_list");
        this.a = str;
        this.b = str3;
        this.c = str2;
        this.d = str4;
        this.e = i;
        this.f = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.a.a b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.a.a aVar = new com.netease.mpay.server.response.a.a();
        aVar.a = k(jSONObject, "remind");
        aVar.b = e(jSONObject, "cursors");
        aVar.c = new ArrayList();
        JSONArray c = c(jSONObject, "messages");
        for (int i = 0; i < c.length(); i++) {
            JSONObject a = a(c, i);
            JSONObject a2 = a(a, "info");
            u uVar = new u();
            uVar.a = e(a, ResIdReader.RES_TYPE_ID);
            uVar.b = e(a, "title");
            uVar.c = e(a, "abstract");
            uVar.d = f(a, WBConstants.GAME_PARAMS_GAME_IMAGE_URL);
            uVar.e = g(a, "status");
            uVar.f = e(a2, "url");
            uVar.g = k(a2, "need_ticket");
            uVar.h = f(a2, "shared_content");
            uVar.i = i(a, WBConstants.GAME_PARAMS_GAME_CREATE_TIME) * 1000;
            uVar.j = i(a, "update_time") * 1000;
            aVar.c.add(uVar);
        }
        Collections.sort(aVar.c);
        return aVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(WBConstants.GAME_PARAMS_GAME_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("fetch_type", String.valueOf(this.e)));
        if (!TextUtils.isEmpty(this.f)) {
            arrayList.add(new com.netease.mpay.widget.a.a("cursors", this.f));
        }
        return arrayList;
    }
}
