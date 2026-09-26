package com.netease.mpay;

import android.app.Activity;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.security.InvalidParameterException;
import java.util.Locale;

/* loaded from: classes.dex */
public class bj {
    public static void a(Activity activity, int i) {
        int i2 = 0;
        try {
            switch (i) {
                case 1:
                    i2 = 1;
                    break;
                case 2:
                    break;
                case 3:
                    if (Build.VERSION.SDK_INT >= 9) {
                        i2 = 6;
                        break;
                    }
                    break;
                case 4:
                    if (Build.VERSION.SDK_INT >= 9) {
                        i2 = 8;
                        break;
                    }
                    break;
                default:
                    i2 = 1;
                    break;
            }
            activity.setRequestedOrientation(i2);
        } catch (InvalidParameterException e) {
        }
    }

    public static boolean a() {
        return a("com.netease.epay.sdk.core.EpayHelper") && Build.VERSION.SDK_INT >= 14;
    }

    public static boolean a(int i) {
        switch (i) {
            case 1:
            default:
                return false;
            case 2:
            case 3:
            case 4:
                return true;
        }
    }

    public static boolean a(Context context) {
        return a("com.unionpay.uppay.PayActivity") && (com.netease.mpay.widget.at.b(context) <= 23 || Build.VERSION.SDK_INT <= 23);
    }

    private static boolean a(String str) {
        try {
            return Class.forName(str) != null;
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            return false;
        } catch (Throwable th) {
            Cdo.a(th);
            return false;
        }
    }

    public static boolean b() {
        return a("com.alipay.sdk.app.PayTask");
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED;
    }

    public static boolean c() {
        return a();
    }

    public static boolean c(Context context) {
        if (context != null) {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            boolean z = telephonyManager.getSimState() != 5;
            String simOperator = telephonyManager.getSimOperator();
            if (z || TextUtils.isEmpty(simOperator) || simOperator.startsWith("20404")) {
                String country = Locale.getDefault().getCountry();
                return country != null && country.contains("CN");
            }
            if (simOperator.startsWith("460")) {
                return true;
            }
        }
        return false;
    }
}
