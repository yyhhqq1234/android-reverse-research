package com.alipay.sdk.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.mobilesecuritysdk.face.SecurityClientMobile;
import com.alipay.sdk.util.i;
import com.alipay.sdk.util.l;
import com.alipay.sdk.util.m;
import java.util.HashMap;
import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class c {
    private static final String d = "virtualImeiAndImsi";
    private static final String e = "virtual_imei";
    private static final String f = "virtual_imsi";
    private static c g;
    public String a;
    public String b = "sdk-and-lite";
    public String c;

    private String c() {
        return this.c;
    }

    private c() {
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (g == null) {
                g = new c();
            }
            cVar = g;
        }
        return cVar;
    }

    public final synchronized void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            PreferenceManager.getDefaultSharedPreferences(com.alipay.sdk.sys.b.a().a).edit().putString(com.alipay.sdk.cons.b.i, str).commit();
            com.alipay.sdk.cons.a.c = str;
        }
    }

    private static String d() {
        return "1";
    }

    private static String a(Context context) {
        return Float.toString(new TextView(context).getTextSize());
    }

    private static String e() {
        return "-1;-1";
    }

    private String a(com.alipay.sdk.tid.b bVar) {
        String str;
        String str2;
        Context context = com.alipay.sdk.sys.b.a().a;
        com.alipay.sdk.util.a a = com.alipay.sdk.util.a.a(context);
        if (TextUtils.isEmpty(this.a)) {
            String b = m.b();
            String c = m.c();
            String f2 = m.f(context);
            String a2 = l.a(context);
            this.a = "Msp/15.4.1 (" + b + i.b + c + i.b + f2 + i.b + a2.substring(0, a2.indexOf("://")) + i.b + m.g(context) + i.b + Float.toString(new TextView(context).getTextSize());
        }
        String str3 = com.alipay.sdk.util.a.b(context).p;
        String a3 = a.a();
        String b2 = a.b();
        Context context2 = com.alipay.sdk.sys.b.a().a;
        SharedPreferences sharedPreferences = context2.getSharedPreferences(d, 0);
        String string = sharedPreferences.getString(f, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
                String c2 = com.alipay.sdk.sys.b.a().c();
                if (TextUtils.isEmpty(c2)) {
                    string = b();
                } else {
                    string = c2.substring(3, 18);
                }
            } else {
                string = com.alipay.sdk.util.a.a(context2).a();
            }
            sharedPreferences.edit().putString(f, string).commit();
        }
        String str4 = string;
        Context context3 = com.alipay.sdk.sys.b.a().a;
        SharedPreferences sharedPreferences2 = context3.getSharedPreferences(d, 0);
        String string2 = sharedPreferences2.getString(e, null);
        if (TextUtils.isEmpty(string2)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
                string2 = b();
            } else {
                string2 = com.alipay.sdk.util.a.a(context3).b();
            }
            sharedPreferences2.edit().putString(e, string2).commit();
        }
        String str5 = string2;
        if (bVar != null) {
            this.c = bVar.b;
        }
        String replace = Build.MANUFACTURER.replace(i.b, " ");
        String replace2 = Build.MODEL.replace(i.b, " ");
        boolean b3 = com.alipay.sdk.sys.b.b();
        String str6 = a.a;
        WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo != null) {
            str = connectionInfo.getSSID();
        } else {
            str = "-1";
        }
        WifiInfo connectionInfo2 = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        if (connectionInfo2 != null) {
            str2 = connectionInfo2.getBSSID();
        } else {
            str2 = "00";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.a).append(i.b).append(str3).append(i.b).append("-1;-1").append(i.b).append("1").append(i.b).append(a3).append(i.b).append(b2).append(i.b).append(this.c).append(i.b).append(replace).append(i.b).append(replace2).append(i.b).append(b3).append(i.b).append(str6).append(";-1;-1;").append(this.b).append(i.b).append(str4).append(i.b).append(str5).append(i.b).append(str).append(i.b).append(str2);
        if (bVar != null) {
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put(com.alipay.sdk.cons.b.c, bVar.a);
            hashMap.put(com.alipay.sdk.cons.b.g, com.alipay.sdk.sys.b.a().c());
            String b4 = b(context, hashMap);
            if (!TextUtils.isEmpty(b4)) {
                sb.append(i.b).append(b4);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    private static String f() {
        Context context = com.alipay.sdk.sys.b.a().a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(d, 0);
        String string = sharedPreferences.getString(e, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
                string = b();
            } else {
                string = com.alipay.sdk.util.a.a(context).b();
            }
            sharedPreferences.edit().putString(e, string).commit();
        }
        return string;
    }

    private static String g() {
        Context context = com.alipay.sdk.sys.b.a().a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(d, 0);
        String string = sharedPreferences.getString(f, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(com.alipay.sdk.tid.b.a().a)) {
                String c = com.alipay.sdk.sys.b.a().c();
                if (TextUtils.isEmpty(c)) {
                    string = b();
                } else {
                    string = c.substring(3, 18);
                }
            } else {
                string = com.alipay.sdk.util.a.a(context).a();
            }
            sharedPreferences.edit().putString(f, string).commit();
        }
        return string;
    }

    public static String b() {
        return Long.toHexString(System.currentTimeMillis()) + (new Random().nextInt(9000) + 1000);
    }

    private static String b(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getSSID() : "-1";
    }

    private static String c(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getBSSID() : "00";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context, HashMap<String, String> hashMap) {
        String str = "";
        try {
            str = SecurityClientMobile.GetApdid(context, hashMap);
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.e, com.alipay.sdk.app.statistic.c.g, th);
        }
        if (TextUtils.isEmpty(str)) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.e, com.alipay.sdk.app.statistic.c.h, "apdid == null");
        }
        return str;
    }

    public final String b(Context context, HashMap<String, String> hashMap) {
        try {
            return (String) Executors.newFixedThreadPool(2).submit(new d(this, context, hashMap)).get(3000L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.e, com.alipay.sdk.app.statistic.c.i, th);
            return "";
        }
    }
}
