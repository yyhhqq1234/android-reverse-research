package com.alipay.sdk.util;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class i {
    public static final String a = "pref_trade_token";
    public static final String b = ";";
    public static final String c = "result={";
    public static final String d = "}";
    public static final String e = "trade_token=\"";
    public static final String f = "\"";
    public static final String g = "trade_token=";

    private static String a(String str) {
        String str2 = null;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(b);
            for (int i = 0; i < split.length; i++) {
                if (split[i].startsWith(c) && split[i].endsWith(d)) {
                    String[] split2 = split[i].substring(8, split[i].length() - 1).split(com.alipay.sdk.sys.a.b);
                    int i2 = 0;
                    while (true) {
                        if (i2 >= split2.length) {
                            break;
                        }
                        if (split2[i2].startsWith(e) && split2[i2].endsWith("\"")) {
                            str2 = split2[i2].substring(13, split2[i2].length() - 1);
                            break;
                        }
                        if (!split2[i2].startsWith(g)) {
                            i2++;
                        } else {
                            str2 = split2[i2].substring(12);
                            break;
                        }
                    }
                }
            }
        }
        return str2;
    }

    private static String a(Context context) {
        return j.b(context, a, "");
    }

    private static void a(Context context, String str) {
        String str2 = null;
        try {
            if (!TextUtils.isEmpty(str)) {
                String[] split = str.split(b);
                for (int i = 0; i < split.length; i++) {
                    if (split[i].startsWith(c) && split[i].endsWith(d)) {
                        String[] split2 = split[i].substring(8, split[i].length() - 1).split(com.alipay.sdk.sys.a.b);
                        int i2 = 0;
                        while (true) {
                            if (i2 >= split2.length) {
                                break;
                            }
                            if (split2[i2].startsWith(e) && split2[i2].endsWith("\"")) {
                                str2 = split2[i2].substring(13, split2[i2].length() - 1);
                                break;
                            } else if (!split2[i2].startsWith(g)) {
                                i2++;
                            } else {
                                str2 = split2[i2].substring(12);
                                break;
                            }
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(str2)) {
                j.a(context, a, str2);
            }
        } catch (Throwable th) {
            com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, com.alipay.sdk.app.statistic.c.y, th);
        }
    }
}
