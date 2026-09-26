package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ba extends d {
    String a;
    String b;
    String c;
    String d;
    boolean e;

    public ba(String str, String str2, String str3, String str4, String str5, boolean z) {
        super(0, "/games/" + str + "/devices/" + str3 + "/users/" + str2);
        this.a = str2;
        this.b = str4;
        this.c = null;
        this.d = str5;
        this.e = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.d, com.netease.mpay.server.a.ax
    /* renamed from: a */
    public com.netease.mpay.server.response.m b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.m b = super.b(context, jSONObject);
        b.b = this.a;
        if (TextUtils.isEmpty(b.a)) {
            b.a = this.b;
        }
        return b;
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        if (!TextUtils.isEmpty(this.c)) {
            arrayList.add(new com.netease.mpay.widget.a.a("username", this.c));
        }
        arrayList.add(new com.netease.mpay.widget.a.a("verify_status", this.e ? "1" : "0"));
        arrayList.add(new com.netease.mpay.widget.a.a("login_for", com.netease.mpay.server.b.a(this.d)));
    }

    public ba c(String str) {
        this.c = str;
        return this;
    }
}
