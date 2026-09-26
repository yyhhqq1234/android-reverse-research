package com.netease.mpay.server;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.server.a;
import com.netease.mpay.server.a.ax;
import com.netease.mpay.server.response.ae;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.a.b;
import com.netease.mpay.widget.aq;
import java.util.HashMap;

/* loaded from: classes.dex */
public class d {
    private static HashMap d;
    private Activity a;
    private String b;
    private String c;

    public d(Activity activity, String str, String str2) {
        this.a = activity;
        this.b = str;
        this.c = str2;
        b();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private Integer a(int i) {
        Integer num = (Integer) d.get(Integer.valueOf(i));
        return num == null ? Integer.valueOf(RIdentifier.h.bW) : ((i == 4 || i == 3) && aq.b(this.a)) ? Integer.valueOf(RIdentifier.h.bS) : num;
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        String str2 = "mpay";
        if (TextUtils.equals(bk.f, "Mpay_Sandbox_Environment")) {
            str2 = "mpay_sandbox";
        } else if (TextUtils.equals(bk.f, "Mpay_Test_Environment")) {
            str2 = "mpay_test";
        }
        if (!str.endsWith("/")) {
            sb.append("/");
        }
        sb.append(str2);
        return sb.toString();
    }

    public static void a(Activity activity, String str) {
        if (aq.d(activity)) {
            new com.netease.mpay.e.b(activity, str).e().a((String) null);
            bk.h = bk.g;
        }
    }

    public static void a(Activity activity, String str, @Nullable String str2) {
        new com.netease.mpay.e.b(activity, str).e().a(str2);
        bk.h = TextUtils.isEmpty(str2) ? bk.g : a(str2);
    }

    @SuppressLint({"UseSparseArrays"})
    private void b() {
        synchronized (d.class) {
            if (d != null) {
                return;
            }
            d = new HashMap();
            d.put(4, Integer.valueOf(RIdentifier.h.bR));
            d.put(5, Integer.valueOf(RIdentifier.h.cg));
            d.put(2, Integer.valueOf(RIdentifier.h.ck));
            d.put(3, Integer.valueOf(RIdentifier.h.cj));
            d.put(1, Integer.valueOf(RIdentifier.h.ce));
            d.put(6, Integer.valueOf(RIdentifier.h.cc));
            d.put(8, Integer.valueOf(RIdentifier.h.cd));
            d.put(7, Integer.valueOf(RIdentifier.h.bZ));
            d.put(9, Integer.valueOf(RIdentifier.h.bY));
        }
    }

    public static void b(Activity activity, String str) {
        String c = new com.netease.mpay.e.b(activity, str).e().c();
        bk.h = TextUtils.isEmpty(c) ? bk.g : a(c);
    }

    public long a() {
        long a = com.netease.mpay.widget.a.b.a();
        if (a < 0) {
            throw new a(this.a.getString(RIdentifier.h.bV));
        }
        return (a - System.currentTimeMillis()) / 1000;
    }

    public Object a(ax axVar) {
        try {
            return axVar.a(this.a, this.b, this.c, com.netease.mpay.widget.a.b.a(axVar.c(), axVar.a(this.a, this.b), axVar.b(this.a), axVar.a((Context) this.a, this.b), 15000, 15000));
        } catch (b.a e) {
            a(this.a, this.b);
            throw new a.i(e.a(), this.a.getString(a(e.a()).intValue()));
        }
    }

    public ae b(ax axVar) {
        return new ae(com.netease.mpay.widget.a.b.a(axVar.a(this.a, this.b), axVar.a((Context) this.a, this.b)));
    }
}
