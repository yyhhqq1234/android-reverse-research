package com.netease.mpay.server.a;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ai extends d {
    String c;
    String d;
    String e;
    String f;
    String g;

    public ai(String str, String str2, String str3, String str4, String str5) {
        super("/api/users/login/mobile/verify_pwd", str3);
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        b(arrayList);
        arrayList.add(new com.netease.mpay.widget.a.a("login_for", com.netease.mpay.server.b.a(this.d)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a(BaseConstants.NET_KEY_mobile, this.e));
        arrayList.add(new com.netease.mpay.widget.a.a("password", this.f));
        if (TextUtils.isEmpty(this.g)) {
            return;
        }
        arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.g));
    }
}
