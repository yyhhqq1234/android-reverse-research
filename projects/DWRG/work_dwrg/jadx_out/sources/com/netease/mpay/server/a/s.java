package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class s extends d {
    String a;
    String b;
    String c;

    public s(String str, String str2, String str3, String str4) {
        super("/games/" + str + "/devices/" + str2 + "/users/by_oauth/facebook", str3);
        this.a = str2;
        this.b = str3;
        this.c = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.netease.mpay.server.a.d
    public void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("ext_user_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("ext_access_token", this.c));
    }
}
