package com.netease.pharos.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.alipay.sdk.sys.a;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.Const;
import com.netease.push.utils.PushConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.TimeZone;
import org.apache.http.conn.util.InetAddressUtils;

/* loaded from: classes.dex */
public class Util {
    private static final int RAW_OFFSET_EAST_8 = 28800000;
    private static final String TAG = "StrUtil";

    public static File create2kFile(Context context) {
        String path = context.getFilesDir().getPath();
        File file = new File(path, Const.UPLOAD_FILE_NAME);
        if (file != null && !file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            try {
                byte[] buf = new byte[2048];
                FileOutputStream fos = new FileOutputStream(file);
                fos.write(buf);
                fos.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return file;
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

    public static String unicode2String(String unicode) {
        if (TextUtils.isEmpty(unicode)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int pos = 0;
        while (true) {
            int i = unicode.indexOf("\\u", pos);
            if (i != -1) {
                sb.append(unicode.substring(pos, i));
                if (i + 5 < unicode.length()) {
                    pos = i + 6;
                    sb.append((char) Integer.parseInt(unicode.substring(i + 2, i + 6), 16));
                }
            } else {
                return sb.toString();
            }
        }
    }

    public static String getDeviceId(Context context) {
        String deviceId = new StringBuilder(String.valueOf(System.currentTimeMillis())).toString();
        try {
            String deviceId2 = Settings.Secure.getString(context.getContentResolver(), "android_id");
            return deviceId2;
        } catch (Exception e) {
            LogUtil.i(TAG, "Exception=" + e);
            return deviceId;
        }
    }

    public static String replaceDomainWithIpAddr(String url, String ipAddr, String subString) {
        if (TextUtils.isEmpty(url)) {
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

    public static boolean isApkDebugable(Context context) {
        try {
            boolean sdCardExist = Environment.getExternalStorageState().equals("mounted");
            if (sdCardExist) {
                String baseDir = Environment.getExternalStorageDirectory().getAbsolutePath();
                String debugLogFile = String.valueOf(baseDir) + File.separator + ".data" + File.separator + "ntUniSDK" + File.separator + "base" + File.separator + "debug_log";
                File file = new File(debugLogFile);
                if (file.exists()) {
                    return true;
                }
            }
        } catch (Exception e) {
            LogUtil.i(TAG, "isApkDebugable Exception2=" + e);
        }
        try {
            ApplicationInfo info = context.getApplicationInfo();
            boolean result = (info.flags & 2) != 0;
            return result;
        } catch (Exception e2) {
            LogUtil.i(TAG, "isApkDebugable Exception1=" + e2);
            return false;
        }
    }

    public static int getCellId(Context context) {
        int cellId = -1;
        if (context == null) {
            LogUtil.w(TAG, "Util [getCellId] context is null");
            return -1;
        }
        try {
            ConnectivityManager conMann = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo mobileNetworkInfo = conMann.getNetworkInfo(0);
            if (mobileNetworkInfo.isConnected()) {
                TelephonyManager tel = (TelephonyManager) context.getSystemService("phone");
                CellLocation cel = tel.getCellLocation();
                int nPhoneType = tel.getPhoneType();
                LogUtil.i(TAG, "getCellId nPhoneType=" + nPhoneType);
                if (cel instanceof GsmCellLocation) {
                    LogUtil.i(TAG, "移动或联通");
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) cel;
                    int nGSMCID = gsmCellLocation.getCid();
                    if (nGSMCID > 0 && nGSMCID != 65535) {
                        cellId = nGSMCID;
                    }
                } else if (cel instanceof CdmaCellLocation) {
                    LogUtil.i(TAG, "电信");
                    CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cel;
                    cellId = cdmaCellLocation.getSystemId();
                }
            } else {
                LogUtil.i(TAG, "getCellId 连接的是Wifi网络");
            }
        } catch (Exception e) {
            LogUtil.e(TAG, "getCellId Exception = " + e);
        }
        LogUtil.i(TAG, "cellId=" + cellId);
        return cellId;
    }

    public static String getLocalIp(Context context) {
        String localIp = "";
        try {
            ConnectivityManager conMann = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo mobileNetworkInfo = conMann.getNetworkInfo(0);
            NetworkInfo wifiNetworkInfo = conMann.getNetworkInfo(1);
            if (mobileNetworkInfo.isConnected()) {
                localIp = getLocalIpAddress();
                LogUtil.i(TAG, "getLocalIp 移动网络");
            } else if (wifiNetworkInfo.isConnected()) {
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                WifiInfo wifiInfo = wifiManager.getConnectionInfo();
                int ipAddress = wifiInfo.getIpAddress();
                localIp = intToIp(ipAddress);
                LogUtil.i(TAG, "getLocalIp Wifi网络");
            }
        } catch (Exception e) {
            LogUtil.e(TAG, "getLocalIp Exception = " + e);
        }
        LogUtil.i(TAG, "getLocalIp ip = " + localIp);
        return localIp;
    }

    private static String getLocalIpAddress() {
        try {
            ArrayList<NetworkInterface> nilist = Collections.list(NetworkInterface.getNetworkInterfaces());
            Iterator<NetworkInterface> it = nilist.iterator();
            while (it.hasNext()) {
                NetworkInterface ni = it.next();
                ArrayList<InetAddress> ialist = Collections.list(ni.getInetAddresses());
                Iterator<InetAddress> it2 = ialist.iterator();
                while (it2.hasNext()) {
                    InetAddress address = it2.next();
                    if (!address.isLoopbackAddress()) {
                        String ipv4 = address.getHostAddress();
                        if (InetAddressUtils.isIPv4Address(ipv4)) {
                            return ipv4;
                        }
                    }
                }
            }
        } catch (SocketException ex) {
            LogUtil.e("localip", ex.toString());
        }
        return null;
    }

    public static String intToIp(int ipInt) {
        StringBuilder sb = new StringBuilder();
        sb.append(ipInt & 255).append(PushConstants.KEY_SEPARATOR);
        sb.append((ipInt >> 8) & 255).append(PushConstants.KEY_SEPARATOR);
        sb.append((ipInt >> 16) & 255).append(PushConstants.KEY_SEPARATOR);
        sb.append((ipInt >> 24) & 255);
        return sb.toString();
    }

    private static int getTimeZoneRawOffset() {
        return TimeZone.getDefault().getRawOffset();
    }

    public static boolean isZoneEast8() {
        return RAW_OFFSET_EAST_8 == getTimeZoneRawOffset();
    }

    public static String getHttpdnsDomain2IpUrl(String ip, String domain) {
        StringBuffer url = new StringBuffer();
        url.append("https://").append(ip).append("/v1/?domain=").append(domain);
        return url.toString();
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

    public static int string2Int(String data) {
        int result = -1;
        if (TextUtils.isEmpty(data)) {
            return -1;
        }
        try {
            result = Integer.parseInt(data);
        } catch (Exception e) {
            LogUtil.e(TAG, "String2Int Exception =" + e);
        }
        return result;
    }

    private void supportPatch() {
        LogUtil.v(com.netease.download.Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
