package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ai {
    public String a;
    public HashMap b;

    public ai() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ai a(byte[] bArr) {
        ai aiVar = new ai();
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            aiVar.a = (String) a.remove("0");
            aiVar.b = a;
            return aiVar;
        } catch (ClassCastException e) {
            return aiVar;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.a);
        if (this.b != null) {
            hashMap.putAll(this.b);
        }
        return com.netease.mpay.e.a.a(hashMap);
    }
}
