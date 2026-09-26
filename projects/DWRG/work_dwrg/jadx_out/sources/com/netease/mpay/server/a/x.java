package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class x extends ai {
    String a;
    String b;

    public x(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        super(str, str2, str3, str4, str5);
        this.a = str6;
        this.b = str7;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ai, com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        super.b(arrayList);
        arrayList.add(new com.netease.mpay.widget.a.a("login_for", Constants.VIA_SHARE_TYPE_INFO));
        arrayList.add(new com.netease.mpay.widget.a.a("bind_user_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("bind_token", this.b));
    }
}
