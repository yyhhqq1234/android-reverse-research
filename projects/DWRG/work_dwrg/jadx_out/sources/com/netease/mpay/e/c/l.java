package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.v;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class l extends com.netease.mpay.e.c.a.e {
    public l(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private String e(String str) {
        return "mailbox_" + str;
    }

    private com.netease.mpay.e.b.r f(String str) {
        byte[] a;
        com.netease.mpay.e.b.r a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.r.a(a)) != null) {
            Cdo.a("loadMailbox", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.r();
    }

    public com.netease.mpay.e.b.r a(String str) {
        String string = this.a.getString(e(str), "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.r() : f(string);
    }

    public void a(String str, com.netease.mpay.e.b.r rVar) {
        Cdo.a("saveMailbox", str, rVar);
        byte[] b = b(rVar.e());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString(e(str), bd.b(b));
        edit.commit();
    }

    public void a(String str, v vVar) {
        boolean z;
        boolean z2 = false;
        com.netease.mpay.e.b.r a = a(str);
        Iterator it = a.g.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            v vVar2 = (v) it.next();
            if (vVar2.a.equals(vVar.a)) {
                vVar2.b = vVar.b;
                vVar2.c = vVar.c;
                z2 = true;
            } else {
                z2 = z;
            }
        }
        if (!z) {
            a.b = true;
        }
        a.g.add(vVar);
        a(str, a);
    }

    public void a(String str, boolean z, String str2) {
        com.netease.mpay.e.b.r a = a(str);
        a.a = z;
        a.f = str2;
        a(str, a);
    }

    public void b(String str) {
        Cdo.a("removeMailbox", str);
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove(e(str));
        edit.commit();
    }

    public void c(String str) {
        com.netease.mpay.e.b.r a = a(str);
        a.b = false;
        a.g = new ArrayList();
        a(str, a);
    }

    public void d(String str) {
        com.netease.mpay.e.b.r a = a(str);
        a.b = true;
        a.a = false;
        a(str, a);
    }
}
