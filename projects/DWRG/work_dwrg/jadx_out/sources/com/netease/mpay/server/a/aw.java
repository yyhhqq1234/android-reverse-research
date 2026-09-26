package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class aw extends ax {
    String a;
    String b;
    String c;
    String d;

    public aw(String str, String str2, String str3, String str4) {
        super(1, "/api/users/login/relate/get_sms");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("relation_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("email", this.c));
        if (!TextUtils.isEmpty(this.d)) {
            arrayList.add(new com.netease.mpay.widget.a.a("urs_udid", this.d));
        }
        return arrayList;
    }
}
