package com.netease.pharos.deviceinfo;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.environment.config.SdkConstants;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.util.LogUtil;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class NetDevices {
    private static final String TAG = "NetDevices";
    private static NetDevices sNetDevices = null;
    private Context mContext = null;

    private NetDevices() {
    }

    public static NetDevices getInstances() {
        if (sNetDevices == null) {
            sNetDevices = new NetDevices();
        }
        return sNetDevices;
    }

    public void init(Context context) {
        this.mContext = context;
    }

    public int start() {
        String[] keys;
        String network = getNetworkType();
        String network_isp = getNetworkIsp();
        if (!TextUtils.isEmpty(network_isp) && network_isp.length() > 4) {
            network_isp = network_isp.substring(0, 5);
        }
        String network_isp_name = getNetworkIspName(network_isp);
        String network_signal = getNetworkSignal();
        String os_name = getOsName();
        String os_ver = getOsVer();
        String gateway = getPsdnIp();
        String timezone = getTimeZone();
        if (timezone != null && timezone.contains("+") && timezone.contains(Const.RESP_CONTENT_SPIT2) && (keys = timezone.split("\\+|\\:")) != null && keys.length > 2) {
            int result = 100;
            try {
                result = Integer.parseInt(keys[1]);
            } catch (Exception e) {
            }
            timezone = "+" + result;
        }
        String areazone = getAreaZone();
        String[] areazones = areazone.split("/");
        String areazone_continent = null;
        String areazone_country = null;
        if (areazones != null && areazones.length > 1) {
            areazone_continent = areazones[0];
            areazone_country = areazones[1];
        }
        DeviceInfo.getInstances().setGateway(gateway);
        DeviceInfo.getInstances().setTimezone(timezone);
        DeviceInfo.getInstances().setAreazoneContinent(areazone_continent);
        DeviceInfo.getInstances().setAreazoneCountry(areazone_country);
        DeviceInfo.getInstances().setNetwork(network);
        DeviceInfo.getInstances().setNetworkIsp(network_isp);
        DeviceInfo.getInstances().setNetworkIspName(network_isp_name);
        DeviceInfo.getInstances().setNetworkSignal(network_signal);
        DeviceInfo.getInstances().setOsName(os_name);
        DeviceInfo.getInstances().setOsVer(os_ver);
        StringBuffer result2 = new StringBuffer();
        result2.append("network=").append(network).append("\n");
        result2.append("network_isp=").append(network_isp).append("\n");
        result2.append("network_isp_name=").append(network_isp_name).append("\n");
        result2.append("network_signal=").append(network_signal).append("\n");
        result2.append("os_name=").append(os_name).append("\n");
        result2.append("os_ver=").append(os_ver).append("\n");
        result2.append("gateway=").append(gateway).append("\n");
        result2.append("timezone=").append(timezone).append("\n");
        result2.append("areazone_continent=").append(areazone_continent).append("\n");
        result2.append("areazone_country=").append(areazone_country).append("\n");
        LogUtil.i(TAG, "结果=" + result2.toString());
        return 0;
    }

    public String getTimeZone() {
        TimeZone tz = TimeZone.getDefault();
        String timeZone = tz.getDisplayName(false, 0);
        LogUtil.i(TAG, "网络监控模块---时差=" + timeZone);
        return timeZone;
    }

    public String getAreaZone() {
        TimeZone tz = TimeZone.getDefault();
        String areaZone = tz.getID();
        LogUtil.i(TAG, "日志上传模块---地区=" + areaZone);
        return areaZone;
    }

    public String getOsName() {
        return SdkConstants.SYSTEM;
    }

    public String getOsVer() {
        return Build.VERSION.RELEASE;
    }

    public String getNetworkSignal() {
        int signalLevel = -1;
        try {
            if (this.mContext != null) {
                WifiManager wifiManager = (WifiManager) this.mContext.getSystemService("wifi");
                WifiInfo wifiInfo = wifiManager.getConnectionInfo();
                if (wifiInfo.getBSSID() != null) {
                    signalLevel = WifiManager.calculateSignalLevel(wifiInfo.getRssi(), 5);
                }
            }
        } catch (Exception e) {
            LogUtil.i(TAG, "getNetworkSignal Exception = " + e);
        }
        return new StringBuilder(String.valueOf(signalLevel)).toString();
    }

    public String getNetworkIsp() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
            String IMSI = telephonyManager.getSubscriberId();
            return IMSI;
        } catch (Exception e) {
            LogUtil.e(TAG, "getNetworkIsp Exception = " + e);
            return "00000";
        }
    }

    public String getNetworkIspName(String network_isp) {
        String networkIspName = "unknow";
        try {
            if (network_isp != null) {
                LogUtil.i(TAG, "network_isp=" + network_isp);
                if (network_isp.startsWith("46000") || network_isp.startsWith("46002") || network_isp.startsWith("46007") || network_isp.startsWith("46020")) {
                    networkIspName = "cmcc";
                } else if (network_isp.startsWith("46001") || network_isp.startsWith("46006") || network_isp.startsWith("46009")) {
                    networkIspName = "cucc";
                } else if (network_isp.startsWith("46003") || network_isp.startsWith("46005") || network_isp.startsWith("46011")) {
                    networkIspName = "ctcc";
                }
            } else {
                LogUtil.i(TAG, "匹配失败");
            }
        } catch (Exception e) {
            LogUtil.e(TAG, "getNetworkIsp Exception = " + e);
        }
        return networkIspName;
    }

    public static String getPsdnIp() {
        try {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            while (en.hasMoreElements()) {
                NetworkInterface intf = en.nextElement();
                Enumeration<InetAddress> enumIpAddr = intf.getInetAddresses();
                while (enumIpAddr.hasMoreElements()) {
                    InetAddress inetAddress = enumIpAddr.nextElement();
                    if (!inetAddress.isLoopbackAddress() && (inetAddress instanceof Inet4Address)) {
                        return inetAddress.getHostAddress().toString();
                    }
                }
            }
        } catch (Exception e) {
            LogUtil.e(TAG, "getPsdnIp Exception = " + e);
        }
        return "";
    }

    public String getNetworkType() {
        String strNetworkType = "unknow";
        if (this.mContext == null) {
            LogUtil.w(TAG, "NetDevices getNetworkType mContext is null");
            return "unknow";
        }
        ConnectivityManager manager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (manager != null) {
            networkInfo = manager.getActiveNetworkInfo();
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            if (networkInfo.getType() == 1) {
                strNetworkType = "wifi";
            } else if (networkInfo.getType() == 0) {
                strNetworkType = BaseConstants.NET_KEY_mobile;
            }
        }
        LogUtil.i(TAG, "日志上传模块---Network Type : " + strNetworkType);
        return strNetworkType;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
