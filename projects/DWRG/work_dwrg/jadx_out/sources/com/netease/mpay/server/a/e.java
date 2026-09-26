package com.netease.mpay.server.a;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e extends d {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;

    public e(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        super("/api/users/login/relate/verify_sms", str5);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a(WBConstants.GAME_PARAMS_GAME_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("relation_id", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("smscode", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("email", this.e));
        if (!TextUtils.isEmpty(this.f)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.f));
        }
        arrayList.add(new com.netease.mpay.widget.a.a("login_for", com.netease.mpay.server.b.a(this.g)));
    }
}
