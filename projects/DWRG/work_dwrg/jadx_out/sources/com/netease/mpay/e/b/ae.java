package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ae {
    public ArrayList a = new ArrayList();
    public HashMap b;

    public ae() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ae a(byte[] bArr) {
        ArrayList arrayList;
        ae aeVar = null;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a != null) {
                try {
                    arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("0"))), byte[].class);
                } catch (ClassCastException e) {
                    arrayList = null;
                }
                aeVar = new ae();
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ad a2 = ad.a((byte[]) it.next());
                        if (a2 != null) {
                            aeVar.a.add(a2);
                        }
                    }
                }
                aeVar.b = a;
            }
        } catch (ClassCastException e2) {
        }
        return aeVar;
    }

    public byte[] a() {
        ArrayList arrayList = new ArrayList();
        if (this.a != null) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                arrayList.add(((ad) it.next()).a());
            }
        }
        HashMap hashMap = new HashMap();
        if (this.b != null) {
            hashMap.putAll(this.b);
        }
        hashMap.put("0", bd.b(com.netease.mpay.e.a.a(arrayList)));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
