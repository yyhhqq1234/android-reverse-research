package com.netease.mpay.widget;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.Cdo;

/* loaded from: classes.dex */
public class aq {
    public static NetworkInfo a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            return null;
        }
        return activeNetworkInfo;
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo a = a(context);
            if (a.getTypeName().equals(BaseConstants.NET_KEY_mobile)) {
                return a.getExtraInfo().equals("cmwap");
            }
            return false;
        } catch (NullPointerException e) {
            Cdo.a((Throwable) e);
            return false;
        }
    }

    public static boolean c(Context context) {
        try {
            return a(context).getType() == 1;
        } catch (NullPointerException e) {
            Cdo.a((Throwable) e);
            return false;
        }
    }

    public static boolean d(Context context) {
        if (context != null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
            }
        }
        return false;
    }
}
