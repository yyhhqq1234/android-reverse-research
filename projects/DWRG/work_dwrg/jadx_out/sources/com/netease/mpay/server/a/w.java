package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class w extends u {
    String d;
    String e;

    public w(String str, String str2, String str3, String str4, String str5) {
        super(str, str2, str3);
        this.d = str4;
        this.e = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.netease.mpay.server.a.u, com.netease.mpay.server.a.d
    public void a(ArrayList arrayList) {
        super.a(arrayList);
        arrayList.add(new com.netease.mpay.widget.a.a("bind_user_id", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("bind_token", this.e));
    }
}
