package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.download.Const;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ag {
    public String a;
    public HashMap b;

    public ag() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ag a(byte[] bArr) {
        ag agVar = new ag();
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            agVar.a = (String) a.remove(Const.NT_PARAM_DOMAIN);
            agVar.b = a;
            return agVar;
        } catch (ClassCastException e) {
            return agVar;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put(Const.NT_PARAM_DOMAIN, this.a);
        if (this.b != null) {
            hashMap.putAll(this.b);
        }
        return com.netease.mpay.e.a.a(hashMap);
    }
}
