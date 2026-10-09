package com.applovin.impl;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class ra {
    private static final Pattern a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static String a(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder("bytes=");
        sb.append(j);
        sb.append("-");
        if (j2 != -1) {
            sb.append((j + j2) - 1);
        }
        return sb.toString();
    }

    public static long a(String str, String str2) {
        long j;
        if (TextUtils.isEmpty(str)) {
            j = -1;
        } else {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                oc.b("HttpUtil", "Unexpected Content-Length [" + str + com.ironsource.y8.i.e);
                j = -1;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return j;
        }
        Matcher matcher = a.matcher(str2);
        if (!matcher.matches()) {
            return j;
        }
        try {
            long j2 = (Long.parseLong((String) b1.a((Object) matcher.group(2))) - Long.parseLong((String) b1.a((Object) matcher.group(1)))) + 1;
            if (j < 0) {
                return j2;
            }
            if (j == j2) {
                return j;
            }
            oc.d("HttpUtil", "Inconsistent headers [" + str + "] [" + str2 + com.ironsource.y8.i.e);
            return Math.max(j, j2);
        } catch (NumberFormatException unused2) {
            oc.b("HttpUtil", "Unexpected Content-Range [" + str2 + com.ironsource.y8.i.e);
            return j;
        }
    }

    public static long a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = b.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) b1.a((Object) matcher.group(1)));
        }
        return -1L;
    }
}
