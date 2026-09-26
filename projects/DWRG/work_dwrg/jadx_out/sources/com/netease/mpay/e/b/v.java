package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class v {
    public String a;
    public int b;
    public HashMap c;

    public v() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static v a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            v vVar = new v();
            vVar.a = (String) a.remove("0");
            String str = (String) a.remove("1");
            vVar.b = str == null ? 0 : Integer.valueOf(str).intValue();
            vVar.c = a;
            return vVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        if (this.c != null) {
            hashMap.putAll(this.c);
        }
        hashMap.put("0", this.a);
        hashMap.put("1", String.valueOf(this.b));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
