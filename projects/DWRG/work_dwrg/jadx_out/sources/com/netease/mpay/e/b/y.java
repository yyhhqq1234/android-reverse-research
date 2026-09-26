package com.netease.mpay.e.b;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class y {
    public String a;
    public String b;
    public String c;
    public long d;
    public long e;

    public y() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static y a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a == null) {
                return null;
            }
            y yVar = new y();
            yVar.a = (String) a.remove("0");
            yVar.b = (String) a.remove("1");
            yVar.c = (String) a.remove("2");
            String str = (String) a.remove("3");
            if (str != null) {
                str = String.valueOf(str);
            }
            yVar.d = Long.valueOf(str).longValue();
            String str2 = (String) a.remove("4");
            if (str2 != null) {
                str2 = String.valueOf(str2);
            }
            yVar.e = Long.valueOf(str2).longValue();
            return yVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public boolean a() {
        return !b() || this.d >= this.e;
    }

    public boolean b() {
        return !TextUtils.isEmpty(this.a) && this.d > 0;
    }

    public byte[] c() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.a);
        hashMap.put("1", this.b);
        hashMap.put("2", this.c);
        hashMap.put("3", String.valueOf(this.d));
        hashMap.put("4", String.valueOf(this.e));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
