package com.netease.mpay.widget.a;

import android.os.Build;
import com.dodola.rocoo.Hack;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class b {

    /* loaded from: classes.dex */
    public static final class a extends Exception {
        private int a;
        private String b;

        public a(int i, String str) {
            super("Error Code: " + i);
            this.a = i;
            this.b = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public int a() {
            return this.a;
        }

        public String b() {
            switch (this.a) {
                case 1:
                    return "Unsupported parameter encoding: " + this.b;
                case 2:
                    return "Server error: " + this.b;
                case 3:
                    return "Server read error: " + this.b;
                case 4:
                    return "Client protocol error: " + this.b;
                case 5:
                    return "Request method not allowed: " + this.b;
                case 6:
                case 8:
                    return "No peer certificate: " + this.b;
                case 7:
                default:
                    return "Unknown error: " + this.b;
                case 9:
                    return "Illegal paramters" + this.b;
            }
        }
    }

    /* renamed from: com.netease.mpay.widget.a.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0055b {
        public int a;
        public byte[] b;
        public HashMap c;

        public C0055b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public static long a() {
        try {
            URLConnection openConnection = new URL("http://service.mkey.163.com/mpay/static/date.json").openConnection();
            openConnection.connect();
            return openConnection.getDate();
        } catch (Exception e) {
            return 0L;
        }
    }

    public static C0055b a(int i, String str, HashMap hashMap, ArrayList arrayList, int i2, int i3) {
        return c().a(i, str, hashMap, arrayList, i2, i3);
    }

    public static String a(String str, ArrayList arrayList) {
        return c().a(str, arrayList);
    }

    public static boolean b() {
        return d();
    }

    private static e c() {
        return d() ? new d() : new c();
    }

    private static boolean d() {
        return Build.VERSION.SDK_INT >= 9;
    }
}
