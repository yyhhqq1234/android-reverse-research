package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ak {
    public boolean a = false;
    public long b = -1;
    public long c = 0;

    public ak() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static ak a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            ak akVar = new ak();
            String str = (String) a.remove("0");
            akVar.a = str != null && str.equals("1");
            String str2 = (String) a.remove("1");
            if (str2 == null) {
                str2 = "-1";
            }
            akVar.b = Long.valueOf(str2).longValue();
            String str3 = (String) a.remove("2");
            if (str3 == null) {
                str3 = "0";
            }
            akVar.c = Long.valueOf(str3).longValue();
            return akVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.a ? "1" : "0");
        hashMap.put("1", String.valueOf(this.b));
        hashMap.put("2", String.valueOf(this.c));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
