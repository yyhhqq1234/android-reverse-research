package com.netease.mpay.server.a;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ag extends d {
    String c;
    String d;
    String e;
    String f;
    String g;
    String h;

    public ag(String str, String str2, String str3, String str4, String str5, String str6) {
        super("/api/users/login/mobile/finish", str3);
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = str6;
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
        arrayList.add(new com.netease.mpay.widget.a.a("ticket", this.f));
        if (!TextUtils.isEmpty(this.g)) {
            arrayList.add(new com.netease.mpay.widget.a.a("relation_id", this.g));
        }
        if (TextUtils.isEmpty(this.h)) {
            return;
        }
        arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.h));
    }
}
