package com.netease.mpay.server.a;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class bj extends d {
    private String a;
    private boolean b;
    private String c;
    private String d;
    private String e;
    private String f;

    public bj(String str, String str2, String str3, String str4, String str5, boolean z) {
        super("/api/users/login/mobile/verify_sms2", str2);
        this.a = str;
        this.b = z;
        this.c = str2;
        this.e = str3;
        this.d = str4;
        this.f = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("smscode", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.e));
        arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("login_for", this.b ? "4" : "5"));
        if (TextUtils.isEmpty(this.f)) {
            return;
        }
        arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.f));
    }
}
