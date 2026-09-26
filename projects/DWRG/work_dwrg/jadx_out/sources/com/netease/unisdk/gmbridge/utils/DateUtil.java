package com.netease.unisdk.gmbridge.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class DateUtil {
    public static String getDateFormat(String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        return sdf.format(new Date());
    }
}
