package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;
import java.util.Iterator;

/* loaded from: classes.dex */
public class p extends com.netease.mpay.e.c.a.e {
    public p(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.t a(String str) {
        byte[] a;
        com.netease.mpay.e.b.t a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.t.a(a)) != null) {
            Cdo.a("loadMcardStore", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.t();
    }

    private void a(com.netease.mpay.e.b.t tVar) {
        Cdo.a("saveMcardStore", tVar);
        byte[] b = b(tVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("mcards", bd.b(b));
        edit.commit();
    }

    private com.netease.mpay.e.b.a b(String str) {
        byte[] a;
        com.netease.mpay.e.b.a a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.a.a(a)) != null) {
            Cdo.a("loadAlipay", a2);
            return a2;
        }
        return new com.netease.mpay.e.b.a();
    }

    private com.netease.mpay.e.b.t c() {
        String string = this.a.getString("mcards", "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.t() : a(string);
    }

    public com.netease.mpay.e.b.s a(String str, String str2) {
        a();
        Iterator it = c().a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.s sVar = (com.netease.mpay.e.b.s) it.next();
            if (sVar.d.equals(str)) {
                return sVar;
            }
            if (str2 != null && sVar.d.equals(str2)) {
                return sVar;
            }
        }
        return new com.netease.mpay.e.b.s();
    }

    public void a() {
        Cdo.a("wipeDeprecatedMcard");
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove("mcard");
        edit.commit();
    }

    public void a(com.netease.mpay.e.b.a aVar) {
        Cdo.a("saveAlipay", aVar);
        byte[] b = b(aVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("alipay", bd.b(b));
        edit.commit();
    }

    public void a(com.netease.mpay.e.b.s sVar) {
        com.netease.mpay.e.b.t c = c();
        c.a.add(sVar);
        a(c);
    }

    public com.netease.mpay.e.b.a b() {
        String string = this.a.getString("alipay", "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.a() : b(string);
    }

    public com.netease.mpay.e.b.s b(String str, String str2) {
        com.netease.mpay.e.b.s sVar;
        com.netease.mpay.e.b.s sVar2 = new com.netease.mpay.e.b.s();
        com.netease.mpay.e.b.t c = c();
        Iterator it = c.a.iterator();
        while (it.hasNext()) {
            sVar = (com.netease.mpay.e.b.s) it.next();
            if (sVar.d.equals(str) || (str2 != null && sVar.d.equals(str2))) {
                c.a.remove(sVar);
                break;
            }
        }
        sVar = sVar2;
        a(c);
        return sVar;
    }
}
