package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class h {
    public String a;
    public String b;
    public HashMap c;

    public h() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static h a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            h hVar = new h();
            hVar.a = (String) a.remove("pattern");
            hVar.b = (String) a.remove("url");
            hVar.c = a;
            return hVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        if (this.c != null) {
            hashMap.putAll(this.c);
        }
        hashMap.put("pattern", this.a);
        hashMap.put("url", this.b);
        return com.netease.mpay.e.a.a(hashMap);
    }
}
