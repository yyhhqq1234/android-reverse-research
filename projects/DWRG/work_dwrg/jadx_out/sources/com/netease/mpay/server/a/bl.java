package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class bl extends d {
    String a;
    String b;

    public bl(String str, String str2) {
        super("/api/users/login/weixin/auth", str2);
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("code", this.b));
    }
}
