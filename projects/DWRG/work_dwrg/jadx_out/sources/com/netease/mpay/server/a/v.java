package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class v extends s {
    String d;
    String e;

    public v(String str, String str2, String str3, String str4, String str5, String str6) {
        super(str, str2, str3, str4);
        this.d = str5;
        this.e = str6;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.netease.mpay.server.a.s, com.netease.mpay.server.a.d
    public void a(ArrayList arrayList) {
        super.a(arrayList);
        arrayList.add(new com.netease.mpay.widget.a.a("bind_user_id", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("bind_token", this.e));
    }
}
