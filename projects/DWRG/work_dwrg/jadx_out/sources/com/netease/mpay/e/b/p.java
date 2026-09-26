package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import java.util.HashMap;

/* loaded from: classes.dex */
public class p {
    public long a;
    public int b;

    public p() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static p a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            p pVar = new p();
            String str = (String) a.remove("last_error_time");
            if (str == null) {
                str = "0";
            }
            pVar.a = Long.valueOf(str).longValue();
            String str2 = (String) a.remove("error_count");
            if (str2 == null) {
                str2 = "0";
            }
            pVar.b = Integer.valueOf(str2).intValue();
            return pVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public void a(long j, long j2) {
        if (this.a <= 0) {
            this.a = j;
        }
        if (j - this.a <= j2) {
            this.b++;
        } else {
            this.a = 0L;
            this.b = 1;
        }
        this.a = j;
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("last_error_time", String.valueOf(this.a));
        hashMap.put("error_count", String.valueOf(this.b));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
