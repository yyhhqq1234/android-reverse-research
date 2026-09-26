package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class af extends ax {
    String a;
    String b;
    boolean c;
    String d;

    public af(String str, String str2, String str3, boolean z) {
        super(1, "/api/users/login/mobile/user_info");
        this.a = str;
        this.b = str2;
        this.d = str3;
        this.c = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.v b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.v vVar = new com.netease.mpay.server.response.v();
        vVar.a = l(jSONObject, "registered");
        vVar.b = l(jSONObject, "force_sms");
        vVar.c = h(jSONObject, "pre_active") == 0;
        return vVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a(BaseConstants.NET_KEY_mobile, this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("login_for", this.c ? Constants.VIA_SHARE_TYPE_INFO : com.netease.mpay.server.b.a(this.d)));
        return arrayList;
    }
}
