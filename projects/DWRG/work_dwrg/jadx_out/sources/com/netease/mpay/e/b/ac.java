package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ac {
    public ArrayList a;

    public ac() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ac a(byte[] bArr) {
        ArrayList arrayList;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a == null) {
                return null;
            }
            ac acVar = new ac();
            try {
                arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("0"))), byte[].class);
            } catch (ClassCastException e) {
                arrayList = null;
            }
            acVar.a = new ArrayList();
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ab a2 = ab.a((byte[]) it.next());
                    if (a2 != null) {
                        acVar.a.add(a2);
                    }
                }
            }
            return acVar;
        } catch (ClassCastException e2) {
            return null;
        } catch (NullPointerException e3) {
            Cdo.a((Throwable) e3);
            return null;
        }
    }

    public byte[] a() {
        ArrayList arrayList = new ArrayList();
        if (this.a != null) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                arrayList.add(((ab) it.next()).a());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("0", bd.b(com.netease.mpay.e.a.a(arrayList)));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
