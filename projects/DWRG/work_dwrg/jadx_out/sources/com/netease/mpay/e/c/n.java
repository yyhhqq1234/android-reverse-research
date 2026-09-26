package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;

/* loaded from: classes.dex */
public class n extends com.netease.mpay.e.c.a.e {
    public n(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.p a(String str) {
        byte[] a;
        com.netease.mpay.e.b.p a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.p.a(a)) != null) {
            Cdo.a("loadLoginNetErrorCount", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.p();
    }

    public void a() {
        Cdo.a("wipeLoginNetErrorCount");
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove("login_error_count");
        edit.commit();
    }

    public void a(com.netease.mpay.e.b.p pVar) {
        Cdo.a("saveLoginNetErrorCount", pVar);
        byte[] b = b(pVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("login_error_count", bd.b(b));
        edit.commit();
    }

    public com.netease.mpay.e.b.p b() {
        String string = this.a.getString("login_error_count", "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.p() : a(string);
    }
}
