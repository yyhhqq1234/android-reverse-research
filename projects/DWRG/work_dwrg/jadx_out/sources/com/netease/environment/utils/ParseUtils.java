package com.netease.environment.utils;

/* loaded from: classes.dex */
public class ParseUtils {
    public static int parseInt(String intString, int defaultValue) {
        if (intString != null && !"".equals(intString.trim())) {
            try {
                return Integer.parseInt(intString);
            } catch (Exception e) {
                e.printStackTrace();
                return defaultValue;
            }
        }
        return defaultValue;
    }
}
