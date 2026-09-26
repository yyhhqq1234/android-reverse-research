package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class b {
    public String a;
    public String b;

    public b() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static b a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            b bVar = new b();
            bVar.b = (String) a.remove("0");
            bVar.a = (String) a.remove("1");
            return bVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.b);
        hashMap.put("1", this.a);
        return com.netease.mpay.e.a.a(hashMap);
    }
}
