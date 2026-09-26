package com.ta.utdid2.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.netease.push.utils.PushConstants;

/* loaded from: classes.dex */
public class NetworkUtils {
    public static final String DEFAULT_WIFI_ADDRESS = "00-00-00-00-00-00";
    private static final String TAG = "NetworkUtils";
    public static final String WIFI = "Wi-Fi";
    private static ConnectivityManager sConnManager = null;
    private static final int[] WEAK_NETWORK_GROUP = {4, 7, 2, 1};

    public static boolean isConnected(Context context) {
        ConnectivityManager connManager = getConnManager(context);
        if (connManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    return activeNetworkInfo.isConnected();
                }
            } catch (Exception e) {
                Log.e(TAG, e.toString());
            }
        } else {
            Log.e(TAG, "connManager is null!");
        }
        return false;
    }

    public static boolean isConnectedToWeakNetwork(Context context) {
        ConnectivityManager connManager = getConnManager(context);
        if (connManager != null) {
            try {
                NetworkInfo activeNetworkInfo = connManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    int subtype = activeNetworkInfo.getSubtype();
                    if (DebugUtils.DBG) {
                        Log.d(TAG, "subType:" + subtype + ": name:" + activeNetworkInfo.getSubtypeName());
                    }
                    for (int i : WEAK_NETWORK_GROUP) {
                        if (i == subtype) {
                            return true;
                        }
                    }
                    return false;
                }
                Log.e(TAG, "networkInfo is null!");
                return false;
            } catch (Exception e) {
                Log.e(TAG, e.toString());
                return false;
            }
        }
        Log.e(TAG, "connManager is null!");
        return false;
    }

    public static ConnectivityManager getConnManager(Context context) {
        if (context == null) {
            Log.e(TAG, "context is null!");
            return null;
        }
        if (sConnManager == null) {
            sConnManager = (ConnectivityManager) context.getSystemService("connectivity");
        }
        return sConnManager;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0069 -> B:6:0x0023). Please report as a decompilation issue!!! */
    public static String[] getNetworkState(Context context) {
        String[] strArr;
        String[] strArr2 = {"Unknown", "Unknown"};
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            strArr2[0] = "Unknown";
            strArr = strArr2;
        } else {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                strArr2[0] = "Unknown";
                strArr = strArr2;
            } else {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    strArr2[0] = WIFI;
                    strArr = strArr2;
                } else {
                    NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
                    if (networkInfo2 != null && networkInfo2.getState() == NetworkInfo.State.CONNECTED) {
                        strArr2[0] = "2G/3G";
                        strArr2[1] = networkInfo2.getSubtypeName();
                        strArr = strArr2;
                    }
                    strArr = strArr2;
                }
            }
        }
        return strArr;
    }

    public static String getWifiAddress(Context context) {
        if (context != null) {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo != null) {
                String macAddress = connectionInfo.getMacAddress();
                if (StringUtils.isEmpty(macAddress)) {
                    return DEFAULT_WIFI_ADDRESS;
                }
                return macAddress;
            }
            return DEFAULT_WIFI_ADDRESS;
        }
        return DEFAULT_WIFI_ADDRESS;
    }

    private static String _convertIntToIp(int i) {
        return String.valueOf(i & 255) + PushConstants.KEY_SEPARATOR + ((i >> 8) & 255) + PushConstants.KEY_SEPARATOR + ((i >> 16) & 255) + PushConstants.KEY_SEPARATOR + ((i >> 24) & 255);
    }

    public static String getWifiIpAddress(Context context) {
        if (context != null) {
            try {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
                if (connectionInfo != null) {
                    return _convertIntToIp(connectionInfo.getIpAddress());
                }
                return null;
            } catch (Exception e) {
            }
        }
        return null;
    }

    public static boolean isWifi(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return getNetworkState(context)[0].equals(WIFI);
        } catch (Exception e) {
            return false;
        }
    }
}
