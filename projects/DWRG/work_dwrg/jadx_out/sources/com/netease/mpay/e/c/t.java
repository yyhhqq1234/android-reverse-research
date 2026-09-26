package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.ad;
import com.netease.mpay.e.b.ae;
import com.netease.mpay.e.b.y;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class t extends com.netease.mpay.e.c.a.e {
    public t(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private ae a(String str) {
        byte[] a;
        ae a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = ae.a(a)) != null) {
            Cdo.a("loadRoleStore", a2);
            return a2;
        }
        return new ae();
    }

    private void a(ae aeVar) {
        Cdo.a("saveRoleStore", aeVar);
        byte[] b = b(aeVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("roleStore", bd.b(b));
        edit.commit();
    }

    private void a(y yVar) {
        Cdo.a("saveOnlineTime", yVar);
        byte[] b = b(yVar.c());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("onlineTime", bd.b(b));
        edit.commit();
    }

    private y b(String str) {
        byte[] a;
        y a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = y.a(a)) != null) {
            Cdo.a("loadOnlineTime", a2);
            return a2;
        }
        return new y();
    }

    private ae c() {
        String string = this.a.getString("roleStore", "");
        return (string == null || string.equals("")) ? new ae() : a(string);
    }

    public y a() {
        String string = this.a.getString("onlineTime", "");
        return (string == null || string.equals("")) ? new y() : b(string);
    }

    public void a(String str, String str2, String str3, long j) {
        y yVar = new y();
        yVar.a = str;
        yVar.b = str2;
        yVar.c = str3;
        yVar.d = j;
        yVar.e = j;
        a(yVar);
    }

    public boolean a(String str, HashMap hashMap) {
        ae c = c();
        if (c == null || c.a == null) {
            return false;
        }
        Iterator it = c.a.iterator();
        while (it.hasNext()) {
            ad adVar = (ad) it.next();
            if (adVar != null && adVar.a(str, hashMap)) {
                return true;
            }
        }
        return false;
    }

    public void b() {
        Cdo.a("resetOnlineTime");
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove("onlineTime");
        edit.commit();
    }

    public void b(String str, HashMap hashMap) {
        if (str == null) {
            return;
        }
        ae c = c();
        ae aeVar = c == null ? new ae() : c;
        if (aeVar.a == null) {
            aeVar.a = new ArrayList();
        }
        ad adVar = new ad(str, hashMap);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= aeVar.a.size()) {
                aeVar.a.add(new ad(str, hashMap));
                a(aeVar);
                return;
            }
            ad adVar2 = (ad) aeVar.a.get(i2);
            if (adVar2 != null && str.equals(adVar2.a)) {
                if (hashMap == null || hashMap.size() < 1) {
                    aeVar.a.remove(adVar2);
                } else {
                    aeVar.a.set(i2, adVar);
                }
                a(aeVar);
                return;
            }
            i = i2 + 1;
        }
    }

    public boolean b(String str, String str2, String str3, long j) {
        y yVar = new y();
        yVar.a = str;
        yVar.b = str2;
        yVar.c = str3;
        y a = a();
        if (!bd.b(str, a.a) || !bd.b(str2, a.b) || !bd.b(str3, a.c)) {
            return false;
        }
        yVar.d = a.d;
        yVar.e = j;
        a(yVar);
        return true;
    }
}
