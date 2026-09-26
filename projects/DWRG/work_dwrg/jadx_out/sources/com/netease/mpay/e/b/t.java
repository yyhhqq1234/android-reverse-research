package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class t {
    public ArrayList a = new ArrayList();
    public HashMap b = new HashMap();

    public t() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static t a(byte[] bArr) {
        ArrayList arrayList;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a == null) {
                return null;
            }
            t tVar = new t();
            ArrayList arrayList2 = new ArrayList();
            try {
                arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("0"))), byte[].class);
            } catch (ClassCastException e) {
                arrayList = arrayList2;
            }
            tVar.a = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                s a2 = s.a((byte[]) it.next());
                if (a2 != null) {
                    tVar.a.add(a2);
                }
            }
            tVar.b = a;
            return tVar;
        } catch (ClassCastException e2) {
            return null;
        }
    }

    public byte[] a() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            arrayList.add(((s) it.next()).a());
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(this.b);
        hashMap.put("0", bd.b(com.netease.mpay.e.a.a(arrayList)));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
