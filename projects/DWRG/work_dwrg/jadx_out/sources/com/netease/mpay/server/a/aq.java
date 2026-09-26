package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class aq extends d {
    String a;
    String b;
    String c;

    public aq(String str, String str2, String str3) {
        super("/api/users/login/qq", str2);
        this.a = str;
        this.b = str2;
        this.c = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("ext_user_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("ext_access_token", this.c));
    }
}
