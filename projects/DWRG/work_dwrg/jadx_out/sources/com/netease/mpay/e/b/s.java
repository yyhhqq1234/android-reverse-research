package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class s {
    public String a;
    public String b;
    public String c;
    public String d;

    public s() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static s a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            s sVar = new s();
            sVar.a = (String) a.remove("0");
            sVar.b = (String) a.remove("1");
            sVar.c = (String) a.remove("2");
            sVar.d = (String) a.remove("3");
            return sVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.a);
        hashMap.put("1", this.b);
        hashMap.put("2", this.c);
        hashMap.put("3", this.d);
        return com.netease.mpay.e.a.a(hashMap);
    }
}
