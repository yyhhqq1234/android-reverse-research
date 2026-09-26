package com.netease.mpay;

import android.content.Context;
import android.text.TextUtils;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class cq {
    public static String a(Context context, String str, int i) {
        return a(context, str, i, 1);
    }

    public static String a(Context context, String str, int i, int i2) {
        com.netease.mpay.e.b.af a = new com.netease.mpay.e.b(context, str).e().a();
        String string = TextUtils.isEmpty(a.c) ? context.getString(RIdentifier.h.D) : a.c;
        switch (i2) {
            case 1:
                return context.getString(i, string);
            case 2:
                return context.getString(i, string, string);
            case 3:
                return context.getString(i, string, string);
            default:
                return context.getString(i);
        }
    }

    public static String a(String str, int i) {
        return i == 1 ? str.substring(0, str.indexOf("@")) : str;
    }

    public static boolean a(String str) {
        return str.matches("^1[0-9]{10}$");
    }

    public static String b(Context context, String str, int i, int i2) {
        return context.getString(i, com.netease.mpay.server.response.u.a(context, str).a(i2).a(context));
    }

    public static boolean b(String str) {
        return str.matches("^([-a-zA-Z0-9_.%+]+@([-A-Za-z0-9]+\\.)+[A-Za-z]{2,4})$");
    }

    public static boolean c(String str) {
        return (str == null || str.equals("") || str.equals("null")) ? false : true;
    }

    public static String d(String str) {
        if (str == null || str.length() <= 0) {
            return str;
        }
        String replace = str.replace(" ", "");
        return replace.length() > 3 ? replace.length() <= 7 ? replace.substring(0, 3) + " " + replace.substring(3) : replace.length() <= 11 ? replace.substring(0, 3) + " " + replace.substring(3, 7) + " " + replace.substring(7) : replace.substring(0, 3) + " " + replace.substring(3, 7) + " " + replace.substring(7, 11) : replace;
    }

    public static String e(String str) {
        return (str == null || str.length() <= 0 || f(str)) ? str : d(str);
    }

    private static boolean f(String str) {
        return !a(str) || str.contains("*") || str.contains(" ") || str.contains("-");
    }
}
