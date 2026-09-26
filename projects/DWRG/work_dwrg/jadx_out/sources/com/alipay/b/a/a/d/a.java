package com.alipay.b.a.a.d;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
public class a {
    public static String a(Context context, String str, String str2) {
        String a;
        String str3 = null;
        synchronized (a.class) {
            if (context != null) {
                if (!com.alipay.b.a.a.a.a.a(str) && !com.alipay.b.a.a.a.a.a(str2)) {
                    try {
                        a = d.a(context, str, str2, "");
                    } catch (Throwable th) {
                    }
                    if (!com.alipay.b.a.a.a.a.a(a)) {
                        str3 = com.alipay.b.a.a.a.a.c.b(com.alipay.b.a.a.a.a.c.a(), a);
                    }
                }
            }
        }
        return str3;
    }

    public static void a(Context context, String str, String str2, String str3) {
        synchronized (a.class) {
            if (com.alipay.b.a.a.a.a.a(str) || com.alipay.b.a.a.a.a.a(str2) || context == null) {
                return;
            }
            try {
                String a = com.alipay.b.a.a.a.a.c.a(com.alipay.b.a.a.a.a.c.a(), str3);
                HashMap hashMap = new HashMap();
                hashMap.put(str2, a);
                d.a(context, str, hashMap);
            } catch (Throwable th) {
            }
        }
    }
}
