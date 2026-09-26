package com.netease.mpay.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;

/* loaded from: classes.dex */
public class az {
    private static String a = null;

    static {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @TargetApi(9)
    private static String a() {
        String str = Build.SERIAL;
        if (str == null || str.length() < 10 || str.replace("0", "").equals("")) {
            return null;
        }
        return str;
    }

    public static final String a(Context context) {
        if (a != null) {
            return a;
        }
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string != null && !string.equals("") && !string.equals("9774d56d682e549c") && string.length() >= 15) {
            string = "ANDROID_ID_4_LOGIN:" + string;
        } else if (Build.VERSION.SDK_INT >= 9 && (string = a()) != null) {
            string = "BUILD_SERIAL_4_LOGIN:" + string;
        }
        if (string == null) {
            string = "NULL_ID_4_LOGIN: (null)";
        }
        a = bd.b(bd.a(string.getBytes()));
        return a;
    }

    private static String a(String str) {
        char[] charArray = y.b(str.getBytes(), 0).toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            charArray[i] = (char) ((i % 2 == 0 ? (char) 65535 : (char) 1) + charArray[i]);
        }
        return new String(charArray);
    }

    public static final String b(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && telephonyManager.getDeviceId() != null) {
                return telephonyManager.getDeviceId();
            }
        } catch (Exception e) {
            Cdo.a((Throwable) e);
        }
        return "";
    }

    private static String b(String str) {
        return (str == null || str.equals("")) ? EnvironmentCompat.MEDIA_UNKNOWN : str;
    }

    public static String c(Context context) {
        return a(String.format("%s:%s:%s", b(d(context)), b(b(context)), b(Build.VERSION.SDK_INT >= 9 ? a() : "")));
    }

    private static final String d(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }
}
