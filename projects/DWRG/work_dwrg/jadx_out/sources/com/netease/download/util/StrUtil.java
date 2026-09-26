package com.netease.download.util;

import android.content.Context;
import android.net.DhcpInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.alipay.sdk.sys.a;
import com.netease.download.Const;
import com.netease.download.handler.Dispatcher;
import com.netease.ntunisdk.base.ReplacebyPatch;
import com.netease.push.utils.PushConstants;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class StrUtil {
    private static final String TAG = "StrUtil";

    public static String getDomainFromUrl(String url) {
        int end;
        if (TextUtils.isEmpty(url)) {
            return "";
        }
        int start = url.indexOf("//");
        String result = url.substring(start + 2, url.length());
        if (result.contains("/") || !result.contains(a.b)) {
            end = result.indexOf(47);
        } else {
            end = result.indexOf(63);
        }
        if (end < 0) {
            end = result.length();
        }
        return result.substring(0, end);
    }

    public static String getCdnChannel(String url) {
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        String tempUrl = url;
        if (url.contains("https://")) {
            tempUrl = url.replaceAll("https://", "");
        } else if (url.contains("http://")) {
            tempUrl = url.replaceAll("http://", "");
        }
        String[] parts = tempUrl.split("\\.");
        if (parts.length < 2) {
            return null;
        }
        String result = parts[1];
        return result;
    }

    public static String getSuffixFromUrl(String url) {
        int start = 0;
        if (url != null) {
            if (url.contains("https://")) {
                start = "https://".length() + 1;
            } else if (url.contains("http://")) {
                start = "http://".length() + 1;
            }
            int end = url.indexOf("/", start);
            if (end > 0) {
                return url.substring(end + 1);
            }
        }
        return "";
    }

    public static String getPrefixFromUrl(String url) {
        if (url != null) {
            int start = 0;
            if (url.contains("https://")) {
                start = "https://".length() + 1;
            } else if (url.contains("http://")) {
                start = "http://".length() + 1;
            }
            int end = url.indexOf("/", start);
            if (end < 0) {
                end = url.length();
            }
            return url.substring(0, end);
        }
        return "";
    }

    public static String replaceDomainWithIpAddr(String url, String ipAddr, String subString) {
        if (TextUtils.isEmpty(url) || TextUtils.isEmpty(ipAddr) || TextUtils.isEmpty(subString)) {
            return "";
        }
        int start = url.indexOf("//");
        int end = url.indexOf(subString, start + 2);
        if (start < 0) {
            start = -2;
        }
        if (end < 0) {
            end = url.length();
        }
        StringBuilder sb = new StringBuilder(url);
        sb.replace(start + 2, end, ipAddr);
        String result = sb.toString();
        return result;
    }

    public static boolean isIpAddrDomain(String url) {
        String domain = getDomainFromUrl(url);
        String[] parts = domain.split("\\.");
        if (parts == null || parts.length != 4) {
            return false;
        }
        for (String part : parts) {
            try {
                int value = Integer.parseInt(part);
                if (value < 0 || 255 < value) {
                    return false;
                }
            } catch (Exception e) {
                return false;
            }
        }
        LogUtil.i(TAG, "is IpAddr，Addr=" + url);
        return true;
    }

    public static String getChanel(String url) {
        if (url == null) {
            return null;
        }
        String tempUrl = url;
        if (url.contains("https://")) {
            tempUrl = url.replaceAll("https://", "");
        } else if (url.contains("http://")) {
            tempUrl = url.replaceAll("http://", "");
        }
        String[] parts = tempUrl.split("\\.");
        StringBuilder result = new StringBuilder("");
        if (parts.length >= 2) {
            result.append(parts[0]).append(PushConstants.KEY_SEPARATOR).append(parts[1].replaceAll("^*\\d", ""));
        }
        return result.toString();
    }

    public static boolean isNumeric(String str) {
        Pattern pattern = Pattern.compile("[0-9]*");
        Matcher isNum = pattern.matcher(str);
        return isNum.matches();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }

    public static synchronized void recordTopSpeed(String fileId, long topSpeed, long currentSpeed) {
        synchronized (StrUtil.class) {
            if (currentSpeed > topSpeed) {
                if (Dispatcher.getTaskParamsMap().get(fileId) != null) {
                    Dispatcher.getTaskParamsMap().get(fileId).setCdnTopSpeed(currentSpeed);
                }
            }
        }
    }

    public static boolean isHttpdnsServerIP(String ips) {
        if (TextUtils.isEmpty(ips)) {
            return false;
        }
        boolean result = ips.contains("dns");
        return result;
    }

    public static String[] getHttpdnsIpArray(String ips) {
        String[] temp = null;
        if (!TextUtils.isEmpty(ips)) {
            temp = ips.split(Const.RESP_CONTENT_SPIT2);
        }
        if (temp != null && temp.length > 1) {
            return temp[1].split(",");
        }
        return temp;
    }

    public static String getCdnIndexUrl(String cdnIndex, String domain) {
        StringBuffer sb = new StringBuffer();
        int index = domain.indexOf(46);
        String rusult = domain.substring(0, index);
        sb.append(rusult).append("-").append(cdnIndex);
        return domain.replace(rusult, sb.toString());
    }

    public static String getHttpdnsHost(String cdnIndex, String domain) {
        new StringBuffer();
        int start = domain.indexOf(45);
        int end = domain.indexOf(46);
        String oldString = domain.substring(start + 1, end);
        LogUtil.i(TAG, "oldString=" + oldString);
        String rusult = getDomainFromUrl(domain.replace(oldString, new StringBuilder(String.valueOf(cdnIndex)).toString()));
        LogUtil.i(TAG, "rusult=" + rusult);
        return rusult;
    }

    public static String getCdnIndex(String url) {
        int index1 = url.indexOf(45);
        int index2 = url.indexOf(46);
        if (-1 == index1 || -1 == index2) {
            return "-1";
        }
        String result = url.substring(index1 + 1, index2);
        return result;
    }

    public static String getFixLenthString(int strLength) {
        Random rm = new Random();
        double pross = (1.0d + rm.nextDouble()) * Math.pow(10.0d, strLength);
        String fixLenthString = String.valueOf(pross);
        return fixLenthString.substring(2, strLength + 2);
    }

    public static ArrayList<String> getInetAddress(String url) {
        String host = getDomainFromUrl(url);
        ArrayList<String> ipArrayList = new ArrayList<>();
        try {
            InetAddress[] returnStr = InetAddress.getAllByName(host);
            for (InetAddress inetAddress : returnStr) {
                String ip = inetAddress.getHostAddress();
                LogUtil.i(TAG, "ip=" + ip);
                ipArrayList.add(ip);
            }
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return ipArrayList;
    }

    public static String getRandomId() {
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        String time = format.format(date);
        String id = String.valueOf(time) + getFixLenthString(9);
        return id;
    }

    public static String getConnectedWifiMacAddress(Context context) {
        LogUtil.i(TAG, "StrUtil [getConnectedWifiMacAddress]");
        String connectedWifiMacAddress = null;
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        if (wifiManager != null) {
            List<ScanResult> wifiList = wifiManager.getScanResults();
            WifiInfo info = wifiManager.getConnectionInfo();
            if (wifiList != null && info != null) {
                LogUtil.i(TAG, "StrUtil [getConnectedWifiMacAddress] wifiList.size()=" + wifiList.size());
                for (int i = 0; i < wifiList.size(); i++) {
                    ScanResult result = wifiList.get(i);
                    LogUtil.i(TAG, "StrUtil [getConnectedWifiMacAddress] info.getBSSID()=" + info.getBSSID());
                    if (info.getBSSID().equals(result.BSSID)) {
                        connectedWifiMacAddress = result.BSSID;
                    }
                }
            } else {
                LogUtil.i(TAG, "StrUtil [getConnectedWifiMacAddress] wifiList or info is null");
            }
        } else {
            LogUtil.i(TAG, "StrUtil [getConnectedWifiMacAddress] wifiManager is null");
        }
        LogUtil.i(TAG, "StrUtil [getConnectedWifiMacAddress] result=" + connectedWifiMacAddress);
        return connectedWifiMacAddress;
    }

    public static String getWifiRouteIPAddress(Context context) {
        WifiManager wifi_service = (WifiManager) context.getSystemService("wifi");
        DhcpInfo dhcpInfo = wifi_service.getDhcpInfo();
        String routeIp = Formatter.formatIpAddress(dhcpInfo.gateway);
        LogUtil.i(TAG, "StrUtil [getConnectedWifiMacAddress] result=" + routeIp);
        return routeIp;
    }
}
