package com.ta.utdid2.android.utils;

/* loaded from: classes.dex */
public class StringUtils {
    public static boolean isEmpty(String str) {
        return str == null || str.length() <= 0;
    }

    public static String convertObjectToString(Object obj) {
        if (obj != null) {
            if (obj instanceof String) {
                return ((String) obj).toString();
            }
            if (obj instanceof Integer) {
                return new StringBuilder().append(((Integer) obj).intValue()).toString();
            }
            if (obj instanceof Long) {
                return new StringBuilder().append(((Long) obj).longValue()).toString();
            }
            if (obj instanceof Double) {
                return new StringBuilder().append(((Double) obj).doubleValue()).toString();
            }
            if (obj instanceof Float) {
                return new StringBuilder().append(((Float) obj).floatValue()).toString();
            }
            if (obj instanceof Short) {
                return new StringBuilder().append((int) ((Short) obj).shortValue()).toString();
            }
            if (obj instanceof Byte) {
                return new StringBuilder().append((int) ((Byte) obj).byteValue()).toString();
            }
            if (obj instanceof Boolean) {
                return ((Boolean) obj).toString();
            }
            if (obj instanceof Character) {
                return ((Character) obj).toString();
            }
            return obj.toString();
        }
        return "";
    }

    public static int hashCode(String str) {
        if (str.length() <= 0) {
            return 0;
        }
        int i = 0;
        for (char c : str.toCharArray()) {
            i = (i * 31) + c;
        }
        return i;
    }
}
