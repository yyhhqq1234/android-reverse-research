package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class l {
    public long b;
    public boolean a = false;
    public boolean c = false;

    public l() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static l a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            l lVar = new l();
            String str = (String) a.remove("first_guide_showed");
            lVar.a = str != null && str.equals("1");
            String str2 = (String) a.remove("last_guide_time");
            if (str2 == null) {
                str2 = "0";
            }
            lVar.b = Long.valueOf(str2).longValue();
            String str3 = (String) a.remove("success_paid");
            lVar.c = str3 != null && str3.equals("1");
            return lVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("first_guide_showed", this.a ? "1" : "0");
        hashMap.put("last_guide_time", String.valueOf(this.b));
        hashMap.put("success_paid", this.c ? "1" : "0");
        return com.netease.mpay.e.a.a(hashMap);
    }
}
