package com.netease.mpay.e.b;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class aa {
    public String a;
    public ArrayList b;
    public HashMap c;

    public aa() {
        this(new ArrayList());
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public aa(ArrayList arrayList) {
        this.a = "2.14.1";
        this.b = arrayList;
    }

    public static aa a(byte[] bArr) {
        ArrayList arrayList;
        aa aaVar = null;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a != null) {
                try {
                    arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("0"))), byte[].class);
                } catch (ClassCastException e) {
                    Cdo.a((Throwable) e);
                    arrayList = null;
                }
                aaVar = new aa();
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        z a2 = z.a((byte[]) it.next());
                        if (a2 != null) {
                            aaVar.b.add(a2);
                        }
                    }
                }
                aaVar.a = (String) a.remove("1");
                aaVar.c = a;
            }
        } catch (ClassCastException e2) {
        }
        return aaVar;
    }

    public z a(z zVar) {
        if (this.b == null) {
            return null;
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            z zVar2 = (z) it.next();
            if (zVar2.a(zVar)) {
                return zVar2;
            }
        }
        return null;
    }

    public boolean a() {
        return TextUtils.equals(this.a, "2.14.1");
    }

    public void b(z zVar) {
        z a = a(zVar);
        if (a != null) {
            this.b.remove(a);
        }
        this.b.add(zVar);
    }

    public byte[] b() {
        ArrayList arrayList = new ArrayList();
        if (this.b != null) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                arrayList.add(((z) it.next()).d());
            }
        }
        HashMap hashMap = new HashMap();
        if (this.c != null) {
            hashMap.putAll(this.c);
        }
        hashMap.put("1", this.a);
        hashMap.put("0", bd.b(com.netease.mpay.e.a.a(arrayList)));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
