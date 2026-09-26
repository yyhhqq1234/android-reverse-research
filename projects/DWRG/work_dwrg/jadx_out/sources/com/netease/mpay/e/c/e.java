package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;

/* loaded from: classes.dex */
public class e extends com.netease.mpay.e.c.a.g {
    /* JADX INFO: Access modifiers changed from: protected */
    public e(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.f a(String str) {
        byte[] a;
        byte[] a2 = bd.a(str);
        if (a2 == null || (a = a(a2)) == null) {
            return null;
        }
        com.netease.mpay.e.b.f a3 = com.netease.mpay.e.b.f.a(this.b, this.c, a);
        Cdo.a("loadDeviceInfo", a3);
        return a3;
    }

    public com.netease.mpay.e.b.f a() {
        String string = this.a.getString("dev", "");
        if (string == null || string.equals("")) {
            return null;
        }
        com.netease.mpay.e.b.f a = a(string);
        if (a == null) {
            return a;
        }
        a.h = this.c;
        return a;
    }

    public void a(com.netease.mpay.e.b.f fVar) {
        Cdo.a("saveDeviceInfo", fVar);
        byte[] b = b(fVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("dev", bd.b(b));
        edit.commit();
    }
}
