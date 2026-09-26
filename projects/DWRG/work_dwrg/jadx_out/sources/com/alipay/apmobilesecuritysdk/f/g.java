package com.alipay.apmobilesecuritysdk.f;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class g {
    public static synchronized String a(Context context, String str) {
        String b;
        synchronized (g.class) {
            String a = com.alipay.b.a.a.d.d.a(context, "openapi_file_pri", "openApi" + str, "");
            if (com.alipay.b.a.a.a.a.a(a)) {
                b = "";
            } else {
                b = com.alipay.b.a.a.a.a.c.b(com.alipay.b.a.a.a.a.c.a(), a);
                if (com.alipay.b.a.a.a.a.a(b)) {
                    b = "";
                }
            }
        }
        return b;
    }

    public static synchronized void a() {
        synchronized (g.class) {
        }
    }

    public static synchronized void a(Context context) {
        synchronized (g.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("openapi_file_pri", 0).edit();
            if (edit != null) {
                edit.clear();
                edit.commit();
            }
        }
    }

    public static synchronized void a(Context context, String str, String str2) {
        synchronized (g.class) {
            try {
                SharedPreferences.Editor edit = context.getSharedPreferences("openapi_file_pri", 0).edit();
                if (edit != null) {
                    edit.putString("openApi" + str, com.alipay.b.a.a.a.a.c.a(com.alipay.b.a.a.a.a.c.a(), str2));
                    edit.commit();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
