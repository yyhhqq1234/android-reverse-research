package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.i;
import com.netease.mpay.widget.bd;
import java.io.File;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes.dex */
public class f extends com.netease.mpay.e.c.a.e {
    public f(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static boolean a(com.netease.mpay.e.b.i iVar, Context context, String str) {
        String b;
        com.netease.mpay.e.b.m a;
        if (!com.netease.mpay.e.c.a.d.d()) {
            return false;
        }
        if (iVar == null || iVar.b == null || iVar.b.size() <= 0) {
            return false;
        }
        Iterator it = iVar.b.iterator();
        while (it.hasNext()) {
            i.a aVar = (i.a) it.next();
            if (aVar.d >= new Date().getTime() && (a = new j(context, str).a((b = bd.b(bd.a(aVar.b.getBytes()))))) != null) {
                File file = new File(j.a() + b);
                if (!file.exists() || !file.isFile()) {
                    return false;
                }
                if (!a.b.equals(file.getName() + String.valueOf(file.length()))) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    private com.netease.mpay.e.b.i b(String str) {
        byte[] a;
        com.netease.mpay.e.b.i a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.i.a(a)) != null) {
            Cdo.a("loadExitInfo", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.i();
    }

    public com.netease.mpay.e.b.i a(String str) {
        String string = this.a.getString("exit", "");
        if (string == null || string.equals("")) {
            return new com.netease.mpay.e.b.i();
        }
        com.netease.mpay.e.b.i b = b(string);
        return (b == null || !TextUtils.equals(b.a, str)) ? new com.netease.mpay.e.b.i() : b;
    }

    public void a(com.netease.mpay.e.b.i iVar) {
        Cdo.a("saveExitInfo", iVar);
        byte[] b = b(iVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("exit", bd.b(b));
        edit.commit();
    }
}
