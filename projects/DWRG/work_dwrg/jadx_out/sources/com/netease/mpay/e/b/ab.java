package com.netease.mpay.e.b;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ab {
    public String a;
    public String b;

    public ab(String str, String str2) {
        this.a = str;
        this.b = str2;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Nullable
    public static ab a(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            return a != null ? new ab(b((String) a.remove("0")), b((String) a.remove("1"))) : null;
        } catch (ClassCastException e) {
            return null;
        } catch (NullPointerException e2) {
            Cdo.a((Throwable) e2);
            return null;
        }
    }

    private String a(String str) {
        return bd.b(com.netease.mpay.widget.y.c(str.getBytes(), 4));
    }

    private static String b(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(com.netease.mpay.widget.y.a(bd.a(str), 4));
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("0", a(this.a));
        hashMap.put("1", a(this.b));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
