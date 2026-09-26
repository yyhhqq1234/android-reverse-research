package com.netease.cloud.nos.android.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.netease.cloud.nos.android.core.WanAccelerator;
import im.yixin.sdk.util.SDKNetworkUtil;

/* loaded from: classes.dex */
public class NetworkType {
    private int chunkSize;
    private String networkType;

    public NetworkType(String networkType, int chunkSize) {
        this.networkType = "";
        this.chunkSize = 32768;
        this.networkType = networkType;
        this.chunkSize = chunkSize;
    }

    public NetworkType(String networkType) {
        this.networkType = "";
        this.chunkSize = 32768;
        this.networkType = networkType;
        this.chunkSize = WanAccelerator.getConf().getChunkSize();
    }

    public String getNetworkType() {
        return this.networkType;
    }

    public int getChunkSize() {
        return this.chunkSize;
    }

    public static NetworkType getFastMobileNetwork(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        switch (telephonyManager.getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return new NetworkType("2g", 4096);
            case 3:
            case 5:
            case 6:
                return new NetworkType("3g/4g", 32768);
            case 8:
            case 9:
            case 12:
            case 13:
            case 14:
            case 15:
                return new NetworkType("3g/4g", 131072);
            case 10:
                return new NetworkType("3g/4g", 65536);
            default:
                return new NetworkType("2g");
        }
    }

    public static NetworkType getNetWorkType(Context context) {
        ConnectivityManager manager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = manager.getActiveNetworkInfo();
        if (networkInfo != null && networkInfo.isConnected()) {
            String type = networkInfo.getTypeName();
            if (type.equalsIgnoreCase(SDKNetworkUtil.NETWORK_TYPE_WIFI)) {
                return new NetworkType("wifi", 131072);
            }
            if (type.equalsIgnoreCase("MOBILE")) {
                return getFastMobileNetwork(context);
            }
        }
        return new NetworkType("");
    }
}
