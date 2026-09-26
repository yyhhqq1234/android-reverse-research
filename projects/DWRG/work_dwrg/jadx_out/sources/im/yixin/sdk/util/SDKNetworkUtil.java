package im.yixin.sdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;

/* loaded from: classes.dex */
public class SDKNetworkUtil {
    public static final String NETWORK_TYPE_2G = "2G";
    public static final String NETWORK_TYPE_3G = "3G";
    public static final String NETWORK_TYPE_4G = "4G";
    public static final int NETWORK_TYPE_HSPAP = 15;
    public static final int NETWORK_TYPE_LTE = 13;
    private static String NETWORK_TYPE_NO = "No Network";
    private static String NETWORK_TYPE_NOPERMIT = "No Permit Reading Network State";
    public static final String NETWORK_TYPE_WIFI = "WIFI";
    private static final String TAG = "SDKNetworkUtil";

    public static String getNetworkType(Context context) {
        NetworkInfo networkinfo;
        if (context == null) {
            return "";
        }
        if (!DevicesUtils.getPermissions(context).contains("android.permission.ACCESS_NETWORK_STATE")) {
            SDKFeedBackUtils.getInstance().postErrorLog(SDKNetworkUtil.class, "no NetworkType because no android.permission.ACCESS_NETWORK_STATE", null);
            return "";
        }
        try {
            ConnectivityManager conn = (ConnectivityManager) context.getSystemService("connectivity");
            if (conn == null || (networkinfo = conn.getActiveNetworkInfo()) == null) {
                return "";
            }
            String networkType = networkinfo.getTypeName();
            return networkType;
        } catch (SecurityException e) {
            return "";
        } catch (Exception e2) {
            SDKFeedBackUtils.getInstance().postErrorLog(SDKNetworkUtil.class, "an error occured when getNetworkName " + e2.getMessage(), e2);
            return "";
        }
    }

    public static String getNetworkName(Context context) {
        NetworkInfo info;
        if (context == null) {
            return "";
        }
        if (!DevicesUtils.getPermissions(context).contains("android.permission.ACCESS_NETWORK_STATE")) {
            Log.i(TAG, "no NetworkName because no android.permission.ACCESS_NETWORK_STATE");
            return NETWORK_TYPE_NOPERMIT;
        }
        String str = NETWORK_TYPE_NO;
        try {
            ConnectivityManager conn = (ConnectivityManager) context.getSystemService("connectivity");
            if (conn != null && (info = conn.getActiveNetworkInfo()) != null && info.isAvailable()) {
                String type = info.getTypeName();
                if (type.toUpperCase().equals(NETWORK_TYPE_WIFI)) {
                    return NETWORK_TYPE_WIFI;
                }
                String name = getMobileSubtypeName(context, info.getSubtype());
                return name;
            }
            return str;
        } catch (SecurityException e) {
            String name2 = NETWORK_TYPE_NOPERMIT;
            return name2;
        } catch (Exception e2) {
            SDKFeedBackUtils.getInstance().postErrorLog(SDKNetworkUtil.class, "an error occured when getNetworkName " + e2.getMessage(), e2);
            return str;
        }
    }

    private static String getMobileSubtypeName(Context ctx, int subType) {
        if (ctx == null) {
            return "";
        }
        switch (subType) {
            case 1:
            case 2:
            case 7:
                return NETWORK_TYPE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 11:
            case 15:
                return NETWORK_TYPE_3G;
            case 4:
            case 10:
            case 12:
            case 14:
            default:
                return "非wifi网络";
            case 13:
                return NETWORK_TYPE_4G;
        }
    }

    public static boolean isWifi(Context context) {
        return NETWORK_TYPE_WIFI.equals(getNetworkName(context));
    }

    public static void clearCookies(Context context, String url) {
        CookieSyncManager.createInstance(context);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.removeSessionCookie();
        cookieManager.removeAllCookie();
        CookieSyncManager.getInstance().sync();
    }
}
