package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.urslogin.EmailRelatedMobile;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class n extends ax {
    private String a;
    private String b;

    public n(String str, String str2) {
        super(1, "/api/users/binding/info");
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.urslogin.a b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.urslogin.a aVar = new com.netease.mpay.server.response.urslogin.a();
        aVar.a = f(jSONObject, "guide_text");
        JSONArray d = d(jSONObject, "relations");
        if (d != null) {
            int length = d.length();
            for (int i = 0; i < length; i++) {
                JSONObject a = a(d, i);
                aVar.b.add(new EmailRelatedMobile(e(a, "relation_id"), e(a, "mask_mobile")));
            }
        }
        return aVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(WBConstants.GAME_PARAMS_GAME_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("email", this.b));
        return arrayList;
    }
}
