package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class a {
    public int a;
    public double b;

    public a() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static a a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            a aVar = new a();
            String str = (String) a.remove("0");
            if (str == null) {
                str = "0";
            }
            aVar.a = Integer.valueOf(str).intValue();
            String str2 = (String) a.remove("1");
            if (str2 == null) {
                str2 = "0";
            }
            aVar.b = Double.valueOf(str2).doubleValue();
            return aVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", String.valueOf(this.a));
        hashMap.put("1", String.valueOf(this.b));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
