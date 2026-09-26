package com.netease.mpay.e.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.bd;
import java.util.HashMap;

/* loaded from: classes.dex */
public class a extends com.netease.mpay.e.c.a.e {

    /* renamed from: com.netease.mpay.e.c.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0041a {
        public String a;
        public String b;

        C0041a() {
            this.a = "";
            this.b = "";
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        C0041a(String str, String str2) {
            this.b = str;
            this.a = str2;
        }
    }

    public a(Context context, String str) {
        super(context, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private C0041a a(String str) {
        C0041a c;
        byte[] a = bd.a(str);
        if (a == null) {
            return null;
        }
        byte[] a2 = a(a);
        if (a2 != null && (c = c(a2)) != null) {
            Cdo.a("load AppChannel", c);
            return c;
        }
        return new C0041a();
    }

    private byte[] a(C0041a c0041a) {
        HashMap hashMap = new HashMap();
        hashMap.put("0", c0041a.a);
        hashMap.put("1", c0041a.b);
        return com.netease.mpay.e.a.a(hashMap);
    }

    private C0041a c(byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            return new C0041a((String) a.remove("1"), (String) a.remove("0"));
        } catch (ClassCastException e) {
            return null;
        }
    }

    public C0041a a() {
        String string = this.a.getString("app_channel", "");
        return (string == null || string.equals("")) ? new C0041a() : a(string);
    }

    public void a(String str, String str2) {
        Cdo.a("save appChannel", str2);
        b();
        byte[] b = b(a(new C0041a(str, str2)));
        SharedPreferences.Editor edit = this.a.edit();
        edit.putInt("version", 1);
        edit.putString("app_channel", bd.b(b));
        edit.commit();
    }

    public void b() {
        Cdo.a("wipe AppChannel");
        SharedPreferences.Editor edit = this.a.edit();
        edit.remove("app_channel");
        edit.commit();
    }
}
