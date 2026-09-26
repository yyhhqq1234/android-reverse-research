package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.ah;
import com.netease.mpay.e.b.x;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class k extends com.netease.mpay.e.c.a.g {
    public k(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.q a(com.netease.mpay.e.b.q qVar, com.netease.mpay.e.b.o oVar, String str) {
        if (qVar != null && oVar != null && str != null) {
            if ("login".equals(str)) {
                qVar.d = oVar.a(true);
                qVar.b = oVar.c;
                qVar.c = oVar.f;
                qVar.e = oVar.m;
            }
            if ("webLogin".equals(str)) {
                qVar.j = oVar.a(true);
                qVar.i = oVar.c;
                qVar.k = oVar.f;
            }
            if ("pay".equals(str) || "webPay".equals(str)) {
                qVar.g = oVar.a(true);
                qVar.f = oVar.c;
                qVar.h = oVar.f;
            }
        }
        return qVar;
    }

    private com.netease.mpay.e.b.q a(String str, int i) {
        byte[] a;
        com.netease.mpay.e.b.q a2;
        byte[] a3 = bd.a(str);
        if (a3 != null && (a = a(a3)) != null && (a2 = com.netease.mpay.e.b.q.a(a)) != null) {
            a(a2, i);
            return a2;
        }
        return new com.netease.mpay.e.b.q();
    }

    private ArrayList a(String str, String str2, com.netease.mpay.e.b.q qVar) {
        ArrayList arrayList = new ArrayList();
        com.netease.mpay.e.b.q a = qVar == null ? a() : qVar;
        Iterator it = a.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (TextUtils.equals(oVar.c, str) && (str2 == null || TextUtils.equals(str2, oVar.d))) {
                arrayList.add(oVar);
                it.remove();
            }
        }
        if (qVar == null && arrayList.size() > 0) {
            c(a);
        }
        return arrayList;
    }

    private void a(com.netease.mpay.e.b.q qVar) {
        boolean z;
        com.netease.mpay.e.b.q a = qVar == null ? a() : qVar;
        boolean z2 = false;
        Iterator it = a.a.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            if (com.netease.mpay.e.a.a.a(((com.netease.mpay.e.b.o) it.next()).f)) {
                z2 = true;
                it.remove();
            } else {
                z2 = z;
            }
        }
        if (qVar == null && z) {
            c(a);
        }
    }

    private void a(com.netease.mpay.e.b.q qVar, int i) {
        boolean z;
        synchronized (k.class) {
            if (i >= 5 || qVar == null) {
                return;
            }
            if (i <= 1) {
                if (qVar.d == null) {
                    return;
                }
                Iterator it = qVar.a.iterator();
                while (it.hasNext()) {
                    com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
                    if (qVar.d.equals(oVar.a()) && qVar.c == oVar.f) {
                        qVar.e = oVar.m;
                    }
                }
            }
            if (i <= 3) {
                Iterator it2 = qVar.a.iterator();
                while (it2.hasNext()) {
                    com.netease.mpay.e.b.o oVar2 = (com.netease.mpay.e.b.o) it2.next();
                    if (oVar2.f == qVar.c && !TextUtils.isEmpty(qVar.d) && TextUtils.equals(oVar2.a(), qVar.d)) {
                        qVar.b = oVar2.c;
                    }
                    if (TextUtils.isEmpty(oVar2.a)) {
                        oVar2.a = 7 != oVar2.f ? com.netease.mpay.e.b.o.a(oVar2.a(), oVar2.f) : oVar2.a();
                    }
                    if (oVar2 != null && 1 == oVar2.f && TextUtils.isEmpty(ah.a(oVar2))) {
                        ah.a(oVar2, oVar2.a());
                    }
                }
            }
            if (i <= 4) {
                boolean z2 = false;
                Iterator it3 = qVar.a.iterator();
                while (it3.hasNext()) {
                    com.netease.mpay.e.b.o oVar3 = (com.netease.mpay.e.b.o) it3.next();
                    if (oVar3 == null || 5 != oVar3.f) {
                        z = z2;
                    } else if (z2) {
                        it3.remove();
                    } else {
                        z = true;
                    }
                    z2 = z;
                }
            }
            c(qVar);
        }
    }

    private void b(com.netease.mpay.e.b.q qVar) {
        boolean z;
        com.netease.mpay.e.b.q a = qVar == null ? a() : qVar;
        boolean z2 = false;
        Iterator it = a.a.iterator();
        while (true) {
            z = z2;
            if (!it.hasNext()) {
                break;
            }
            if (((com.netease.mpay.e.b.o) it.next()).f == 5) {
                z2 = true;
                it.remove();
            } else {
                z2 = z;
            }
        }
        if (qVar == null && z) {
            c(a);
        }
    }

    private void c(com.netease.mpay.e.b.q qVar) {
        Cdo.a("saveLogins", qVar);
        byte[] b = b(qVar.a());
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 5);
        edit.putString("data", bd.b(b));
        edit.commit();
    }

    private com.netease.mpay.e.b.o d() {
        com.netease.mpay.e.b.q a = a();
        if (a.b == null) {
            return null;
        }
        com.netease.mpay.e.b.o a2 = a(a.b);
        if (a2 != null) {
            a2.m = a.e;
        }
        if (a2 == null || a2.d == null) {
            a2 = null;
        }
        return a2;
    }

    private com.netease.mpay.e.b.o e() {
        com.netease.mpay.e.b.q a = a();
        return a.f == null ? d() : a(a.f);
    }

    private com.netease.mpay.e.b.o f() {
        com.netease.mpay.e.b.q a = a();
        return a.i == null ? d() : a(a.i);
    }

    public com.netease.mpay.e.b.o a(String str) {
        return a(str, (com.netease.mpay.e.b.q) null);
    }

    public com.netease.mpay.e.b.o a(String str, com.netease.mpay.e.b.q qVar) {
        if (str == null) {
            return null;
        }
        if (qVar == null) {
            qVar = a();
        }
        Iterator it = qVar.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (str.equals(oVar.c)) {
                return oVar;
            }
        }
        return null;
    }

    public com.netease.mpay.e.b.q a() {
        String string = this.a.getString("data", "");
        return (string == null || string.equals("")) ? new com.netease.mpay.e.b.q() : a(string, this.a.getInt("version", 5));
    }

    public ArrayList a(int i) {
        com.netease.mpay.e.b.q a = a();
        ArrayList arrayList = new ArrayList();
        Iterator it = a.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (oVar.f == i) {
                arrayList.add(oVar);
            }
        }
        return arrayList;
    }

    public ArrayList a(String str, String str2) {
        return a(str, str2, (com.netease.mpay.e.b.q) null);
    }

    public void a(com.netease.mpay.e.b.o oVar, String str, boolean z) {
        Cdo.a("saveLogin", oVar);
        if (oVar == null) {
            return;
        }
        com.netease.mpay.e.b.q a = a();
        switch (oVar.f) {
            case 5:
                b(a);
                a.a.add(oVar);
                break;
            case 6:
                a(a);
                a.a.add(oVar);
                break;
            case 7:
                if (a != null && a.a != null) {
                    Iterator it = a.a.iterator();
                    while (it.hasNext()) {
                        if (TextUtils.equals(x.a(oVar), x.a((com.netease.mpay.e.b.o) it.next()))) {
                            it.remove();
                        }
                    }
                }
                break;
            default:
                a(oVar.c, (String) null, a);
                a.a.add(oVar);
                break;
        }
        c((oVar.d == null || !z) ? a : a(a, oVar, str));
    }

    public void a(String str, int i, String str2) {
        com.netease.mpay.e.b.q a = a();
        a.f = str;
        a.g = str2;
        a.h = i;
        c(a);
    }

    public com.netease.mpay.e.b.o b(String str) {
        return str == null ? d() : (str.equals("pay") || str.equals("webPay")) ? e() : str.equals("webLogin") ? f() : d();
    }

    public com.netease.mpay.e.b.q b() {
        com.netease.mpay.e.b.q a = a();
        Iterator it = a.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (oVar != null && TextUtils.isEmpty(oVar.a)) {
                it.remove();
            }
        }
        return a;
    }

    public String b(String str, String str2) {
        com.netease.mpay.e.b.q a = a();
        Iterator it = a.a.iterator();
        String str3 = null;
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (oVar.c != null && TextUtils.equals(oVar.c, str)) {
                if (oVar.d != null) {
                    str3 = new String(oVar.d);
                }
                if (str2 == null || (oVar.d != null && str2.equals(oVar.d))) {
                    oVar.d = null;
                }
            }
            str3 = str3;
        }
        if (str3 != null) {
            c(a);
        }
        return str3;
    }

    public void c() {
        com.netease.mpay.e.b.q a = a();
        Iterator it = a.a.iterator();
        while (it.hasNext()) {
            ((com.netease.mpay.e.b.o) it.next()).d = null;
        }
        c(a);
    }

    public boolean c(String str, String str2) {
        com.netease.mpay.e.b.o a = a(str);
        if (a == null) {
            return false;
        }
        a.m = false;
        a(a, str2, true);
        return true;
    }
}
