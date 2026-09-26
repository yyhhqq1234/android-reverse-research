package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.RoleInfoKeys;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class t extends ax {
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;

    public t(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        super(1, "/games/" + str + "/feedback");
        this.a = str2;
        this.b = str3;
        this.c = str4;
        this.d = str5;
        this.e = str6;
        this.f = str7;
        this.g = str8;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("content", this.d));
        arrayList.add(new com.netease.mpay.widget.a.a("telephone", this.e));
        if (!TextUtils.isEmpty(this.f)) {
            arrayList.add(new com.netease.mpay.widget.a.a(RoleInfoKeys.KEY_ROLE_ID, this.f));
        }
        if (!TextUtils.isEmpty(this.g)) {
            arrayList.add(new com.netease.mpay.widget.a.a(RoleInfoKeys.KEY_HOST_ID, this.g));
        }
        return arrayList;
    }
}
