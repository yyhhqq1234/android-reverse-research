package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.server.response.w;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class aj extends ax {
    String a;
    String b;
    String c;
    String d;
    String e;
    boolean f;

    public aj(String str, String str2, String str3, String str4, String str5, boolean z) {
        super(1, "/api/users/login/mobile/verify_sms");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.w b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.w wVar = new com.netease.mpay.server.response.w();
        wVar.a = e(jSONObject, "ticket");
        wVar.b = f(jSONObject, "guide_text");
        wVar.c = new ArrayList();
        JSONArray d = d(jSONObject, "related_emails");
        if (d != null) {
            for (int i = 0; i < d.length(); i++) {
                JSONObject jSONObject2 = d.getJSONObject(i);
                wVar.c.add(new w.a(f(jSONObject2, "email"), f(jSONObject2, "relation_id")));
            }
        }
        return wVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a(BaseConstants.NET_KEY_mobile, this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("smscode", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("login_for", this.f ? Constants.VIA_SHARE_TYPE_INFO : com.netease.mpay.server.b.a(this.b)));
        if (!TextUtils.isEmpty(this.e)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.e));
        }
        return arrayList;
    }
}
