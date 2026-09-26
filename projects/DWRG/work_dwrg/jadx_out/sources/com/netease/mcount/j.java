package com.netease.mcount;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

/* loaded from: classes.dex */
public class j {
    private static String a = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        return Build.VERSION.RELEASE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            return displayMetrics.widthPixels + "x" + displayMetrics.heightPixels;
        } catch (Throwable th) {
            r.a("Device resolution cannot be determined");
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return Build.MODEL;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            r.a("No app version found");
            return "0.0.0";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c() {
        return "Android";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : "";
        if (networkOperatorName != null && networkOperatorName.length() != 0) {
            return networkOperatorName;
        }
        r.a("No carrier found");
        return "";
    }

    @TargetApi(9)
    private static String d() {
        String str = Build.SERIAL;
        if (str == null || str.length() < 10 || str.replace("0", "").equals("")) {
            return null;
        }
        return str;
    }

    public static final String d(Context context) {
        if (a != null) {
            return a;
        }
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string != null && !string.equals("") && !string.equals("9774d56d682e549c") && string.length() >= 15) {
            string = "ANDROID_ID_4_LOGIN:" + string;
        } else if (Build.VERSION.SDK_INT >= 9 && (string = d()) != null) {
            string = "BUILD_SERIAL_4_LOGIN:" + string;
        }
        if (string == null) {
            string = "NULL_ID_4_LOGIN: (null)";
        }
        a = r.b(r.a(string.getBytes()));
        return a;
    }
}
