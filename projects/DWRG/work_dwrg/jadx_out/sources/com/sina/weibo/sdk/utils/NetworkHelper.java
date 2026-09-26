package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.support.v4.os.EnvironmentCompat;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.netease.mpay.MpayApi;
import java.util.List;

/* loaded from: classes.dex */
public class NetworkHelper {
    public static boolean hasInternetPermission(Context context) {
        return context == null || context.checkCallingOrSelfPermission("android.permission.INTERNET") == 0;
    }

    public static boolean isNetworkAvailable(Context context) {
        NetworkInfo info;
        return (context == null || (info = getActiveNetworkInfo(context)) == null || !info.isConnected()) ? false : true;
    }

    public static boolean isWifiValid(Context context) {
        if (context == null) {
            return false;
        }
        NetworkInfo info = getActiveNetworkInfo(context);
        return info != null && 1 == info.getType() && info.isConnected();
    }

    public static boolean isMobileNetwork(Context context) {
        NetworkInfo info;
        return (context == null || (info = getActiveNetworkInfo(context)) == null || info == null || info.getType() != 0 || !info.isConnected()) ? false : true;
    }

    public static NetworkInfo getActiveNetworkInfo(Context context) {
        ConnectivityManager connectivity = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivity.getActiveNetworkInfo();
    }

    public static NetworkInfo getNetworkInfo(Context context, int networkType) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        return connectivityManager.getNetworkInfo(networkType);
    }

    public static int getNetworkType(Context context) {
        NetworkInfo info;
        if (context == null || (info = getActiveNetworkInfo(context)) == null) {
            return -1;
        }
        return info.getType();
    }

    public static int getWifiState(Context context) {
        WifiManager wifi = (WifiManager) context.getSystemService("wifi");
        if (wifi == null) {
            return 4;
        }
        return wifi.getWifiState();
    }

    public static NetworkInfo.DetailedState getWifiConnectivityState(Context context) {
        NetworkInfo networkInfo = getNetworkInfo(context, 1);
        return networkInfo == null ? NetworkInfo.DetailedState.FAILED : networkInfo.getDetailedState();
    }

    public static boolean wifiConnection(Context context, String wifiSSID, String password) {
        WifiManager wifi = (WifiManager) context.getSystemService("wifi");
        String strQuotationSSID = "\"" + wifiSSID + "\"";
        WifiInfo wifiInfo = wifi.getConnectionInfo();
        if (wifiInfo != null && (wifiSSID.equals(wifiInfo.getSSID()) || strQuotationSSID.equals(wifiInfo.getSSID()))) {
            return true;
        }
        List<ScanResult> scanResults = wifi.getScanResults();
        if (scanResults == null || scanResults.size() == 0) {
            return false;
        }
        for (int nAllIndex = scanResults.size() - 1; nAllIndex >= 0; nAllIndex--) {
            String strScanSSID = scanResults.get(nAllIndex).SSID;
            if (wifiSSID.equals(strScanSSID) || strQuotationSSID.equals(strScanSSID)) {
                WifiConfiguration config = new WifiConfiguration();
                config.SSID = strQuotationSSID;
                config.preSharedKey = "\"" + password + "\"";
                config.status = 2;
                int nAddWifiId = wifi.addNetwork(config);
                boolean isConnection = wifi.enableNetwork(nAddWifiId, false);
                return isConnection;
            }
        }
        return false;
    }

    public static void clearCookies(Context context) {
        CookieSyncManager.createInstance(context);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeAllCookie();
        CookieSyncManager.getInstance().sync();
    }

    public static String generateUA(Context ctx) {
        StringBuilder buffer = new StringBuilder();
        buffer.append("Android");
        buffer.append("__");
        buffer.append(MpayApi.WEIBO_API);
        buffer.append("__");
        buffer.append("sdk");
        buffer.append("__");
        try {
            PackageManager pm = ctx.getPackageManager();
            PackageInfo pi = pm.getPackageInfo(ctx.getPackageName(), 16);
            String versionCode = pi.versionName;
            buffer.append(versionCode.replaceAll("\\s+", "_"));
        } catch (Exception e) {
            buffer.append(EnvironmentCompat.MEDIA_UNKNOWN);
        }
        return buffer.toString();
    }
}
