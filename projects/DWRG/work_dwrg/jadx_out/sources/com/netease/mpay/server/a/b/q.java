package com.netease.mpay.server.a.b;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class q extends n {
    String a;
    String b;
    String c;
    String d;

    public q(String str, String str2, String str3, String str4) {
        super("");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    public String a(Activity activity, String str) {
        return this.a;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList b = b(this.b);
        if (!TextUtils.isEmpty(this.c)) {
            b.add(new com.netease.mpay.widget.a.a("urs_udid", this.c));
        }
        if (!TextUtils.isEmpty(this.d)) {
            b.add(new com.netease.mpay.widget.a.a("user_id", this.d));
        }
        return b;
    }
}
