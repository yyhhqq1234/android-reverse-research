package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.w;
import com.netease.mpay.widget.bd;

/* loaded from: classes.dex */
public class m extends com.netease.mpay.e.c.a.h {
    public m(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private String c(String str) {
        return "messageStore_" + str;
    }

    private w d(String str) {
        byte[] a;
        byte[] a2 = bd.a(str);
        if (a2 != null && (a = a(a2)) != null) {
            w a3 = w.a(a);
            Cdo.a("loadMessage", a3);
            return (a3 == null || a3.a == null) ? new w() : a3;
        }
        return new w();
    }

    public w a(String str) {
        String string = this.a.getString(c(str), "");
        return (string == null || string.equals("")) ? new w() : d(string);
    }

    public void a(String str, w wVar) {
        Cdo.a("saveMessage", str, wVar);
        byte[] b = b(wVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString(c(str), bd.b(b));
        edit.commit();
    }

    public void b(String str) {
        Cdo.a("removeMessage", str);
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove(c(str));
        edit.commit();
    }
}
