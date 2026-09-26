package com.alipay.android.phone.mrpc.core;

import android.support.v4.view.MotionEventCompat;
import android.text.format.Time;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.tencent.mm.opensdk.modelmsg.WXMediaMessage;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class HttpDateTime {
    private static final String HTTP_DATE_RFC_REGEXP = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])";
    private static final Pattern HTTP_DATE_RFC_PATTERN = Pattern.compile(HTTP_DATE_RFC_REGEXP);
    private static final String HTTP_DATE_ANSIC_REGEXP = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})";
    private static final Pattern HTTP_DATE_ANSIC_PATTERN = Pattern.compile(HTTP_DATE_ANSIC_REGEXP);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TimeOfDay {
        int hour;
        int minute;
        int second;

        TimeOfDay(int i, int i2, int i3) {
            this.hour = i;
            this.minute = i2;
            this.second = i3;
        }
    }

    private static int getDate(String str) {
        return str.length() == 2 ? ((str.charAt(0) - '0') * 10) + (str.charAt(1) - '0') : str.charAt(0) - '0';
    }

    private static int getMonth(String str) {
        switch (((Character.toLowerCase(str.charAt(0)) + Character.toLowerCase(str.charAt(1))) + Character.toLowerCase(str.charAt(2))) - 291) {
            case 9:
                return 11;
            case 10:
                return 1;
            case MotionEventCompat.AXIS_GAS /* 22 */:
                return 0;
            case WXMediaMessage.IMediaObject.TYPE_EMOTIONLIST_SHARED /* 26 */:
                return 7;
            case 29:
                return 2;
            case 32:
                return 3;
            case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                return 9;
            case 36:
                return 4;
            case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                return 8;
            case 40:
                return 6;
            case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                return 5;
            case 48:
                return 10;
            default:
                throw new IllegalArgumentException();
        }
    }

    private static TimeOfDay getTime(String str) {
        int i;
        int charAt = str.charAt(0) - '0';
        if (str.charAt(1) != ':') {
            i = 2;
            charAt = (charAt * 10) + (str.charAt(1) - '0');
        } else {
            i = 1;
        }
        int i2 = i + 1 + 1;
        int charAt2 = ((str.charAt(r1) - '0') * 10) + (str.charAt(i2) - '0');
        int i3 = i2 + 1 + 1;
        return new TimeOfDay(charAt, charAt2, ((str.charAt(i3) - '0') * 10) + (str.charAt(i3 + 1) - '0'));
    }

    private static int getYear(String str) {
        if (str.length() == 2) {
            int charAt = ((str.charAt(0) - '0') * 10) + (str.charAt(1) - '0');
            return charAt >= 70 ? charAt + 1900 : charAt + RpcException.ErrorCode.SERVER_SESSIONSTATUS;
        }
        if (str.length() == 3) {
            return ((str.charAt(0) - '0') * 100) + ((str.charAt(1) - '0') * 10) + (str.charAt(2) - '0') + 1900;
        }
        if (str.length() == 4) {
            return ((str.charAt(0) - '0') * 1000) + ((str.charAt(1) - '0') * 100) + ((str.charAt(2) - '0') * 10) + (str.charAt(3) - '0');
        }
        return 1970;
    }

    public static long parse(String str) {
        int month;
        int year;
        TimeOfDay timeOfDay;
        int i;
        int i2 = 1;
        Matcher matcher = HTTP_DATE_RFC_PATTERN.matcher(str);
        if (matcher.find()) {
            int date = getDate(matcher.group(1));
            month = getMonth(matcher.group(2));
            year = getYear(matcher.group(3));
            timeOfDay = getTime(matcher.group(4));
            i = date;
        } else {
            Matcher matcher2 = HTTP_DATE_ANSIC_PATTERN.matcher(str);
            if (!matcher2.find()) {
                throw new IllegalArgumentException();
            }
            month = getMonth(matcher2.group(1));
            int date2 = getDate(matcher2.group(2));
            TimeOfDay time = getTime(matcher2.group(3));
            year = getYear(matcher2.group(4));
            timeOfDay = time;
            i = date2;
        }
        if (year >= 2038) {
            year = 2038;
            month = 0;
        } else {
            i2 = i;
        }
        Time time2 = new Time("UTC");
        time2.set(timeOfDay.second, timeOfDay.minute, timeOfDay.hour, i2, month, year);
        return time2.toMillis(false);
    }
}
