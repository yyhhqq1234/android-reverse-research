package org.json;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class v8 {
    public static final String a = "NETWORK_TYPE_WIFI";
    public static final String b = "NETWORK_TYPE_UNKNOWN";
    public static final String c = "NETWORK_TYPE_GPRS";
    public static final String d = "NETWORK_TYPE_EDGE";
    public static final String e = "NETWORK_TYPE_UMTS";
    public static final String f = "NETWORK_TYPE_CDMA";
    public static final String g = "NETWORK_TYPE_EVDO_0";
    public static final String h = "NETWORK_TYPE_EVDO_A";
    public static final String i = "NETWORK_TYPE_1xRTT";
    public static final String j = "NETWORK_TYPE_HSDPA";
    public static final String k = "NETWORK_TYPE_HSUPA";
    public static final String l = "NETWORK_TYPE_HSPA";
    public static final String m = "NETWORK_TYPE_IDEN";
    public static final String n = "NETWORK_TYPE_EVDO_B";
    public static final String o = "NETWORK_TYPE_LTE";
    public static final String p = "NETWORK_TYPE_EHRPD";
    public static final String q = "NETWORK_TYPE_HSPAP";
    public static final String r = "NETWORK_TYPE_GSM";
    public static final String s = "NETWORK_TYPE_TD_SCDMA";
    public static final String t = "NETWORK_TYPE_IWLAN";
    public static final String u = "NETWORK_TYPE_LTE_CA";
    public static final String v = "NETWORK_TYPE_NR";

    public static Network a(Context context) {
        if (context == null) {
            return null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 23 && connectivityManager != null) {
            try {
                return connectivityManager.getActiveNetwork();
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }
        return null;
    }

    private static String a(int i2) {
        switch (i2) {
            case 1:
                return c;
            case 2:
                return d;
            case 3:
                return e;
            case 4:
                return f;
            case 5:
                return g;
            case 6:
                return h;
            case 7:
                return i;
            case 8:
                return j;
            case 9:
                return k;
            case 10:
                return l;
            case 11:
                return m;
            case 12:
                return n;
            case 13:
                return o;
            case 14:
                return p;
            case 15:
                return q;
            case 16:
                return r;
            case 17:
                return s;
            case 18:
                return t;
            case 19:
                return u;
            case 20:
                return v;
            default:
                return b;
        }
    }

    public static String a(Network network, Context context) {
        String strC;
        if (context == null) {
            return "none";
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (network == null || connectivityManager == null) {
            return "none";
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            if (networkCapabilities == null) {
                return c(context);
            }
            if (networkCapabilities.hasTransport(1)) {
                strC = u8.b;
            } else {
                strC = networkCapabilities.hasTransport(0) ? u8.a : c(context);
            }
            return strC;
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return "none";
        }
    }

    public static JSONObject a(Context context, Network network) {
        NetworkCapabilities networkCapabilities;
        if (context == null) {
            return new JSONObject();
        }
        JSONObject jSONObject = new JSONObject();
        if (Build.VERSION.SDK_INT >= 23 && network != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(network)) != null) {
                    jSONObject.put("networkCapabilities", networkCapabilities.toString());
                    jSONObject.put("downloadSpeed", networkCapabilities.getLinkDownstreamBandwidthKbps());
                    jSONObject.put("uploadSpeed", networkCapabilities.getLinkUpstreamBandwidthKbps());
                    jSONObject.put(y8.i.v, e(context));
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }
        return jSONObject;
    }

    public static String b(Context context) {
        return Build.VERSION.SDK_INT >= 23 ? a(a(context), context) : c(context);
    }

    private static String b(Context context, Network network) {
        NetworkCapabilities networkCapabilities;
        if (Build.VERSION.SDK_INT >= 23 && network != null && context != null) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(network)) == null) {
                    return "";
                }
                if (networkCapabilities.hasTransport(1)) {
                    return u8.b;
                }
                if (networkCapabilities.hasTransport(0)) {
                    return u8.g;
                }
                if (networkCapabilities.hasTransport(4)) {
                    return "vpn";
                }
                if (networkCapabilities.hasTransport(3)) {
                    return u8.e;
                }
                if (networkCapabilities.hasTransport(5)) {
                    return u8.h;
                }
                if (networkCapabilities.hasTransport(6)) {
                    return u8.i;
                }
                if (networkCapabilities.hasTransport(2)) {
                    return u8.d;
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }
        return "";
    }

    private static String c(Context context) {
        String strA = u8.a(context);
        return TextUtils.isEmpty(strA) ? "none" : strA;
    }

    public static String d(Context context) {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        NetworkInfo activeNetworkInfo;
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null) {
            Network activeNetwork = Build.VERSION.SDK_INT >= 23 ? connectivityManager.getActiveNetwork() : null;
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return b;
            }
            if (networkCapabilities.hasTransport(1)) {
                return a;
            }
            if (networkCapabilities.hasTransport(0) && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                return a(activeNetworkInfo.getSubtype());
            }
        }
        return b;
    }

    public static boolean e(Context context) {
        return b(context, a(context)).equals("vpn");
    }
}
