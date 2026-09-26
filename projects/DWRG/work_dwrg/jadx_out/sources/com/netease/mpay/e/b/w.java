package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class w {
    public ArrayList a;

    public w() {
        this.a = new ArrayList();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public w(ArrayList arrayList) {
        this.a = arrayList;
    }

    public static w a(byte[] bArr) {
        ArrayList arrayList;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a == null) {
                return null;
            }
            w wVar = new w();
            try {
                arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("0"))), byte[].class);
            } catch (ClassCastException e) {
                arrayList = null;
            }
            wVar.a = new ArrayList();
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    u a2 = u.a((byte[]) it.next());
                    if (a2 != null) {
                        wVar.a.add(a2);
                    }
                }
            }
            return wVar;
        } catch (ClassCastException e2) {
            return null;
        }
    }

    public byte[] a() {
        ArrayList arrayList = new ArrayList();
        if (this.a != null) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                arrayList.add(((u) it.next()).a());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("0", bd.b(com.netease.mpay.e.a.a(arrayList)));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
