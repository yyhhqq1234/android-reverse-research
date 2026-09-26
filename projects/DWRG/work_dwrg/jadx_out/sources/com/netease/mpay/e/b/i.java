package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class i {
    public String a;
    public ArrayList b = new ArrayList();

    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public String b;
        public String c;
        public long d;

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public i() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static i a(byte[] bArr) {
        try {
            HashMap a2 = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            i iVar = new i();
            iVar.a = (String) a2.remove("4");
            int size = a2.size() / 4;
            for (int i = 0; i < size; i++) {
                a aVar = new a();
                aVar.a = (String) a2.remove("0" + i);
                aVar.b = (String) a2.remove("1" + i);
                aVar.d = Long.valueOf((String) a2.remove("2" + i)).longValue();
                aVar.c = (String) a2.remove("3" + i);
                iVar.b.add(aVar);
            }
            return iVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        if (this.b == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("4", this.a);
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            a aVar = (a) this.b.get(i);
            hashMap.put("0" + i, aVar.a);
            hashMap.put("1" + i, aVar.b);
            hashMap.put("2" + i, String.valueOf(aVar.d));
            hashMap.put("3" + i, aVar.c);
        }
        return com.netease.mpay.e.a.a(hashMap);
    }
}
