package com.netease.mpay.e.b;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.e.c.a;
import com.netease.mpay.widget.bd;
import com.tencent.connect.common.Constants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.UUID;

/* loaded from: classes.dex */
public class f {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public byte[] i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public long o;
    private final String p = "Android";
    private final String q = BaseConstants.NET_KEY_mobile;
    private final String r = "tablet";
    private final String s = "";
    private boolean t = true;

    public f(Context context, String str) {
        this.h = str;
        this.l = b(context);
        this.a = Build.BRAND == null ? "" : Build.BRAND;
        this.b = d(context);
        this.c = Build.MODEL == null ? "" : Build.MODEL;
        this.d = Build.MODEL == null ? "" : Build.MODEL;
        this.f = "Android";
        this.e = c(context);
        this.g = Build.VERSION.RELEASE;
        a.C0041a a = new com.netease.mpay.e.b(context, str).l().a();
        this.m = a.a;
        this.n = a.b;
        this.j = null;
        this.i = null;
        this.k = null;
        this.o = 0L;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static f a(Context context, String str, byte[] bArr) {
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            f fVar = new f(context, str);
            fVar.l = (String) a.remove("3");
            fVar.a = (String) a.remove("5");
            fVar.d = (String) a.remove(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
            fVar.b = (String) a.remove("7");
            fVar.g = (String) a.remove("11");
            fVar.h = (String) a.remove("4");
            fVar.m = (String) a.remove("9");
            fVar.n = (String) a.remove(Constants.VIA_REPORT_TYPE_SET_AVATAR);
            String str2 = (String) a.remove("0");
            if (str2 != null) {
                fVar.i = bd.a(str2);
            }
            fVar.j = (String) a.remove("1");
            fVar.k = (String) a.remove("2");
            String str3 = (String) a.remove(Constants.VIA_REPORT_TYPE_JOININ_GROUP);
            fVar.o = str3 != null ? Long.valueOf(str3).longValue() : 0L;
            fVar.t = false;
            return fVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    private String b(Context context) {
        return UUID.randomUUID().toString() + System.currentTimeMillis();
    }

    private boolean b() {
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
            String str = (String) method.invoke(null, "gsm.version.baseband", "");
            String str2 = (String) method.invoke(null, "gsm.version.ril-impl", "");
            if (str.trim().equals("")) {
                if (str2.trim().equals("")) {
                    return false;
                }
            }
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        } catch (IllegalAccessException e2) {
            return false;
        } catch (IllegalArgumentException e3) {
            return false;
        } catch (NoSuchMethodException e4) {
            return false;
        } catch (SecurityException e5) {
            return false;
        } catch (InvocationTargetException e6) {
            return false;
        }
    }

    private String c(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels > displayMetrics.heightPixels ? "" + displayMetrics.heightPixels + "*" + displayMetrics.widthPixels : "" + displayMetrics.widthPixels + "*" + displayMetrics.heightPixels;
    }

    private String d(Context context) {
        return (!((context.getResources().getConfiguration().screenLayout & 15) >= 3) && b()) ? BaseConstants.NET_KEY_mobile : "tablet";
    }

    public boolean a(Context context) {
        if (this.t) {
            return true;
        }
        f fVar = new f(context, this.h);
        if (fVar.d.equals(this.d) && fVar.b.equals(this.b) && fVar.g.equals(this.g) && fVar.a.equals(this.a) && ((TextUtils.isEmpty(fVar.m) || TextUtils.equals(fVar.m, this.m)) && (TextUtils.isEmpty(fVar.n) || TextUtils.equals(fVar.n, this.n)))) {
            return false;
        }
        this.d = fVar.d;
        this.b = fVar.b;
        this.g = fVar.g;
        this.a = fVar.a;
        this.m = fVar.m;
        this.n = fVar.n;
        this.l = (this.l == null || this.l.trim().equals("")) ? fVar.l : this.l;
        return true;
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        hashMap.put("4", this.h);
        hashMap.put("3", this.l);
        hashMap.put("5", this.a);
        hashMap.put(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, this.d);
        hashMap.put("7", this.b);
        hashMap.put("11", this.g);
        if (this.m != null) {
            hashMap.put("9", this.m);
        }
        if (this.n != null) {
            hashMap.put(Constants.VIA_REPORT_TYPE_SET_AVATAR, this.n);
        }
        if (this.i != null) {
            hashMap.put("0", bd.b(this.i));
        }
        hashMap.put("1", this.j);
        hashMap.put("2", this.k);
        hashMap.put(Constants.VIA_REPORT_TYPE_JOININ_GROUP, String.valueOf(this.o));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
