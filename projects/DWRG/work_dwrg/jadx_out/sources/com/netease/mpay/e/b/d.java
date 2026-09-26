package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class d {
    public String a;

    public d() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static d a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            d dVar = new d();
            dVar.a = (String) a.remove("0");
            return dVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.a);
        return com.netease.mpay.e.a.a(hashMap);
    }
}
