package com.netease.environment.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import im.yixin.sdk.util.SDKNetworkUtil;

/* loaded from: classes.dex */
public class NetWorkUtils {
    public static final int NETWORKTYPE_2G = 2;
    public static final int NETWORKTYPE_3G = 3;
    public static final int NETWORKTYPE_4G = 4;
    public static final int NETWORKTYPE_INVALID = 0;
    public static final int NETWORKTYPE_WIFI = 5;
    private static final String TAG = NetWorkUtils.class.getSimpleName();

    public static int getNetworkType(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getActiveNetworkInfo();
        if (networkInfo == null || !networkInfo.isConnected()) {
            return 0;
        }
        if (networkInfo.getType() == 1) {
            return 5;
        }
        if (networkInfo.getType() != 0) {
            return 0;
        }
        String _strSubTypeName = networkInfo.getSubtypeName();
        int networkType = networkInfo.getSubtype();
        switch (networkType) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return 4;
            default:
                if (!_strSubTypeName.equalsIgnoreCase("TD-SCDMA") && !_strSubTypeName.equalsIgnoreCase("WCDMA") && !_strSubTypeName.equalsIgnoreCase("CDMA2000")) {
                    return 0;
                }
                return 3;
        }
    }

    public static String getNetworkTypeName(Context context) {
        switch (getNetworkType(context)) {
            case 0:
                return "invalid";
            case 1:
            default:
                return "invalid";
            case 2:
                return SDKNetworkUtil.NETWORK_TYPE_2G;
            case 3:
                return SDKNetworkUtil.NETWORK_TYPE_3G;
            case 4:
                return SDKNetworkUtil.NETWORK_TYPE_4G;
            case 5:
                return "wifi";
        }
    }
}
