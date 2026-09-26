package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ak extends ax {
    String a;
    String b;
    String c;

    public ak(String str, String str2, String str3) {
        super(1, "/api/users/login/mobile/user_info");
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
    public com.netease.mpay.server.response.x b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.x xVar = new com.netease.mpay.server.response.x();
        xVar.a = l(jSONObject, "registered");
        xVar.b = l(jSONObject, "force_sms");
        JSONObject b = b(jSONObject, "yd_info");
        if (b != null) {
            xVar.d = l(b, "pass_set");
            xVar.e = l(b, "real_name_set");
            xVar.f = h(b, "real_name_verify");
            JSONObject b2 = b(b, "secure_email");
            xVar.g = (b2 == null || TextUtils.isEmpty(f(b2, "email"))) ? false : true;
            xVar.h = xVar.g && l(b2, "active");
        }
        return xVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        if (!TextUtils.isEmpty(this.b)) {
            arrayList.add(new com.netease.mpay.widget.a.a(BaseConstants.NET_KEY_mobile, this.b));
        }
        if (!TextUtils.isEmpty(this.c)) {
            arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        }
        return arrayList;
    }
}
