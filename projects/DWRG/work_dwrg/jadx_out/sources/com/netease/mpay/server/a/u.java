package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class u extends d {
    String a;
    String b;
    String c;

    public u(String str, String str2, String str3) {
        super("/api/users/login/google", "");
        this.a = str;
        this.b = str2;
        this.c = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.netease.mpay.server.a.d
    public void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a(WBConstants.GAME_PARAMS_GAME_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("code", this.c));
    }
}
