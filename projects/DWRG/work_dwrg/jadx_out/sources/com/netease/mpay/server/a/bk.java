package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class bk extends d {
    String a;
    String b;

    public bk(String str, String str2, String str3, String str4) {
        super("/games/" + str + "/devices/" + str2 + "/users/by_oauth/weibo", str3);
        this.a = str3;
        this.b = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("ext_user_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("ext_access_token", this.b));
    }
}
