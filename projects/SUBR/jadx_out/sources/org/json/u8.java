package org.json;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class u8 {
    public static final String a = "3g";
    public static final String b = "wifi";
    public static final String c = "none";
    public static final String d = "bluetooth";
    public static final String e = "ethernet";
    public static final String f = "vpn";
    public static final String g = "cellular";
    public static final String h = "wifiAware";
    public static final String i = "lowpan";

    public static String a(Context context) {
        ConnectivityManager connectivityManager;
        String str;
        StringBuilder sb = new StringBuilder();
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null) {
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    String typeName = activeNetworkInfo.getTypeName();
                    int type = activeNetworkInfo.getType();
                    if (type == 0) {
                        str = a;
                    } else if (type == 1) {
                        str = b;
                    } else {
                        sb.append(typeName);
                    }
                    sb.append(str);
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }
        return sb.toString();
    }

    public static int b(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            return context.getResources().getConfiguration().mcc;
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return -1;
        }
    }

    public static int c(Context context) {
        if (context == null) {
            return -1;
        }
        try {
            return context.getResources().getConfiguration().mnc;
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return -1;
        }
    }

    public static String d(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return "";
        }
    }

    public static int e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (Build.VERSION.SDK_INT >= 24 && (packageManager.checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0 || packageManager.checkPermission("android.permission.READ_BASIC_PHONE_STATE", context.getPackageName()) == 0)) {
                return telephonyManager.getDataNetworkType();
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        return -1;
    }

    public static int f(Context context) {
        if (context != null) {
            try {
                return ((TelephonyManager) context.getSystemService("phone")).getPhoneType();
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }
        return -1;
    }

    public static String g(Context context) {
        if (context == null) {
            return "";
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return telephonyManager != null ? telephonyManager.getSimOperator() : "";
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return "";
        }
    }

    public static boolean h(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return false;
        }
    }

    public static boolean i(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo networkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (networkInfo = connectivityManager.getNetworkInfo(0)) == null || !networkInfo.isConnected()) ? false : true;
    }

    public static boolean j(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo networkInfo;
        return (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null || !networkInfo.isConnected()) ? false : true;
    }
}
