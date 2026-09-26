package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class m {
    public String a;
    public String b;

    public m() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static m a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            m mVar = new m();
            mVar.a = (String) a.remove("0");
            mVar.b = (String) a.remove("1");
            return mVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.a);
        hashMap.put("1", this.b);
        return com.netease.mpay.e.a.a(hashMap);
    }
}
