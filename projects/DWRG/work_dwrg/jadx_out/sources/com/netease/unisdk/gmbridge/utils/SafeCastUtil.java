package com.netease.unisdk.gmbridge.utils;

/* loaded from: classes.dex */
public class SafeCastUtil {
    private static final long G = 1073741824;
    private static final long K = 1024;
    private static final long M = 1048576;
    private static final long T = 1099511627776L;

    public static int str2int(String str, int defaultValue) {
        try {
            int defaultValue2 = Integer.valueOf(str).intValue();
            return defaultValue2;
        } catch (Exception e) {
            return defaultValue;
        }
    }

    public static String convert2UnitStr(long value) {
        long[] dividers = {T, G, M, 1024, 1};
        String[] units = {"TB", "GB", "MB", "KB", "B"};
        if (value < 1) {
            return "0";
        }
        for (int i = 0; i < dividers.length; i++) {
            long divider = dividers[i];
            if (value >= divider) {
                String result = format(value, divider, units[i]);
                return result;
            }
        }
        return null;
    }

    private static String format(long value, long divider, String unit) {
        double result = divider > 1 ? value / divider : value;
        return String.format("%.1f %s", Double.valueOf(result), unit);
    }
}
