package com.netease.download.reporter;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.alipay.sdk.sys.a;
import com.netease.download.Const;
import com.netease.download.config2.ConfigParams2;
import com.netease.download.network.NetUtil;
import com.netease.download.network.NetworkDealer;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.environment.config.SdkConstants;
import com.netease.ntunisdk.base.ReplacebyPatch;
import im.yixin.sdk.util.SDKNetworkUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ReportUtil {
    private static final String TAG = "ReportUtil";
    private static ReportUtil sReportUtil = null;
    private Context mContext = null;
    private String mSessionId = null;
    private String mPatchTaskId = null;
    private String mCfgTaskId = null;

    private ReportUtil() {
    }

    public static ReportUtil getInstances() {
        if (sReportUtil == null) {
            sReportUtil = new ReportUtil();
        }
        return sReportUtil;
    }

    public void init(Context context) {
        this.mContext = context;
        this.mSessionId = null;
        createSessionId();
        getPatchTaskId();
        getCfgTaskId();
    }

    public String getCurrentSessionId() {
        if (this.mSessionId == null) {
            return "";
        }
        String result = this.mSessionId;
        return result;
    }

    public void createSessionId() {
        this.mSessionId = "AD_" + StrUtil.getRandomId();
    }

    public String getPatchTaskId() {
        if (TextUtils.isEmpty(this.mPatchTaskId)) {
            this.mPatchTaskId = StrUtil.getRandomId();
        }
        return this.mPatchTaskId;
    }

    public String getCfgTaskId() {
        if (TextUtils.isEmpty(this.mCfgTaskId)) {
            this.mCfgTaskId = StrUtil.getRandomId();
        }
        return this.mCfgTaskId;
    }

    public String getNetworkType() {
        String strNetworkType = "";
        ConnectivityManager manager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (manager != null) {
            networkInfo = manager.getActiveNetworkInfo();
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            if (networkInfo.getType() == 1) {
                strNetworkType = SDKNetworkUtil.NETWORK_TYPE_WIFI;
            } else if (networkInfo.getType() == 0) {
                String _strSubTypeName = networkInfo.getSubtypeName();
                LogUtil.i(TAG, "日志上传模块---Network getSubtypeName : " + _strSubTypeName);
                int networkType = networkInfo.getSubtype();
                switch (networkType) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        strNetworkType = SDKNetworkUtil.NETWORK_TYPE_2G;
                        break;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        strNetworkType = SDKNetworkUtil.NETWORK_TYPE_3G;
                        break;
                    case 13:
                        strNetworkType = SDKNetworkUtil.NETWORK_TYPE_4G;
                        break;
                    default:
                        if (_strSubTypeName.equalsIgnoreCase("TD-SCDMA") || _strSubTypeName.equalsIgnoreCase("WCDMA") || _strSubTypeName.equalsIgnoreCase("CDMA2000")) {
                            strNetworkType = SDKNetworkUtil.NETWORK_TYPE_3G;
                            break;
                        } else {
                            strNetworkType = _strSubTypeName;
                            break;
                        }
                        break;
                }
                LogUtil.i(TAG, "日志上传模块---Network getSubtype : " + Integer.valueOf(networkType).toString());
            }
        }
        LogUtil.i(TAG, "日志上传模块---Network Type : " + strNetworkType);
        return strNetworkType;
    }

    public int getNetworkSignal() {
        if (this.mContext == null) {
            return -1;
        }
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        WifiInfo wifiInfo = wifiManager.getConnectionInfo();
        if (wifiInfo.getBSSID() == null) {
            return -1;
        }
        int signalLevel = WifiManager.calculateSignalLevel(wifiInfo.getRssi(), 5);
        return signalLevel;
    }

    public String getNetworkIsp() {
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        String IMSI = telephonyManager.getSubscriberId();
        LogUtil.i(TAG, "IMSI=" + IMSI);
        if (IMSI == null) {
            return "-1";
        }
        LogUtil.i(TAG, "IMSI=" + IMSI);
        if (IMSI.startsWith("46000") || IMSI.startsWith("46002")) {
            return "中国移动";
        }
        if (IMSI.startsWith("46001")) {
            return "中国联通";
        }
        if (!IMSI.startsWith("46003")) {
            return "-1";
        }
        return "中国电信";
    }

    public String getTimeZone() {
        TimeZone tz = TimeZone.getDefault();
        String timeZone = tz.getDisplayName(false, 0);
        LogUtil.i(TAG, "日志上传模块---时差=" + timeZone);
        return timeZone;
    }

    public String getAreaZone() {
        TimeZone tz = TimeZone.getDefault();
        String areaZone = tz.getID();
        LogUtil.i(TAG, "日志上传模块---地区=" + areaZone);
        return areaZone;
    }

    public void getQuery() {
        LogUtil.i(TAG, "日志上传模块---请求nstool，获取网关，dns, ipDnsPicker=" + ConfigParams2.getInstance().ipDnsPicker);
        if (ConfigParams2.getInstance().ipDnsPicker) {
            new Thread(new Runnable() { // from class: com.netease.download.reporter.ReportUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    LogUtil.i(ReportUtil.TAG, "日志上传模块---请求nstool，获取网关，dns");
                    NetworkDealer<Boolean> dealer = new NetworkDealer<Boolean>() { // from class: com.netease.download.reporter.ReportUtil.1.1
                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // com.netease.download.network.NetworkDealer
                        public Boolean processContent(InputStream pInputStream) throws Exception {
                            InputStreamReader in = new InputStreamReader(pInputStream, "utf-8");
                            BufferedReader e = new BufferedReader(in);
                            Map<String, String> resultMap = new HashMap<>();
                            while (true) {
                                String line = e.readLine();
                                if (line == null) {
                                    break;
                                }
                                String[] keyValue = line.split("=");
                                resultMap.put(keyValue[0], keyValue[1]);
                            }
                            LogUtil.d(ReportUtil.TAG, "日志上传模块---请求nstool,结果= " + resultMap);
                            String mNetdns = resultMap.containsKey("netdns") ? resultMap.get("netdns") : "-1.-1.-1.-1";
                            String mGw = resultMap.containsKey("gw") ? resultMap.get("gw") : "-1.-1.-1.-1";
                            String mGwdns = resultMap.containsKey("gwdns") ? resultMap.get("gwdns") : "-1.-1.-1.-1";
                            ReportInfo.getInstance().mCliGateway = mGw;
                            ReportInfo.getInstance().mCliDns = mNetdns;
                            ReportInfo.getInstance().mCliDnscheck = mGwdns;
                            return true;
                        }

                        @Override // com.netease.download.network.NetworkDealer
                        public void processHeader(Map<String, List<String>> pHeader, int pCode, String resUrl) {
                        }
                    };
                    try {
                        Map<String, String> header = new HashMap<>();
                        String url = ConfigParams2.getInstance().pickerUrl;
                        String domain = StrUtil.getDomainFromUrl(url);
                        header.put("Host", domain);
                        LogUtil.i(ReportUtil.TAG, "日志上传模块---请求网管地址=" + ConfigParams2.getInstance().pickerUrl);
                        NetUtil.doSimpleHttpReq(ConfigParams2.getInstance().pickerUrl, null, "GET", null, dealer);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }).start();
        }
    }

    public String getOsName() {
        return SdkConstants.SYSTEM;
    }

    public String getOsVer() {
        return Build.VERSION.RELEASE;
    }

    public String getUdtVer() {
        return Const.VERSION;
    }

    public String getLocalIp() {
        String localIp = NetUtil.getLocalIpAddress(this.mContext);
        return localIp;
    }

    public boolean hasPhonePermission() {
        PackageManager pm = this.mContext.getPackageManager();
        LogUtil.i(TAG, "日志上传模块---包名=" + this.mContext.getPackageName());
        boolean hasPhonePermission = pm.checkPermission("android.permission.READ_PHONE_STATE", this.mContext.getPackageName()) == 0;
        LogUtil.i(TAG, "日志上传模块---是否拥有READ_PHONE_STATE权限=" + hasPhonePermission);
        return hasPhonePermission;
    }

    public void ping(final String gateway) {
        new Thread(new Runnable() { // from class: com.netease.download.reporter.ReportUtil.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    LogUtil.i(ReportUtil.TAG, "日志上传模块---ping 网关=" + gateway);
                    Process p = Runtime.getRuntime().exec("/system/bin/ping -c 1 www.baidu.com");
                    new String();
                    new String();
                    BufferedReader buf = new BufferedReader(new InputStreamReader(p.getInputStream()));
                    StringBuffer info = new StringBuffer();
                    new String();
                    while (true) {
                        String str = buf.readLine();
                        if (str != null) {
                            info.append(String.valueOf(str) + "\r\n");
                        } else {
                            LogUtil.i(ReportUtil.TAG, "日志上传模块---ping信息=" + info.toString());
                            return;
                        }
                    }
                } catch (IOException e) {
                    LogUtil.e(ReportUtil.TAG, "日志上传模块---ping IOException 异常 =" + e.toString());
                    e.printStackTrace();
                }
            }
        }).start();
    }

    private int pingExec(String address, int countPage, int countDatePake) {
        Process process = null;
        String returnMsg = "";
        try {
            try {
                String cmd = "/system/bin/ping -c " + countPage + " -s " + countDatePake + " " + address;
                process = Runtime.getRuntime().exec(cmd);
                InputStreamReader r = new InputStreamReader(process.getInputStream());
                LineNumberReader returnData = new LineNumberReader(r);
                while (true) {
                    String line = returnData.readLine();
                    if (line == null) {
                        try {
                            break;
                        } catch (Exception e) {
                        }
                    } else if (line.contains("loss") && line.contains("%")) {
                        returnMsg = String.valueOf(returnMsg) + line;
                    }
                }
                LogUtil.i(TAG, "日志上传模块---ping 信息=" + returnMsg.toString());
                int index = -1;
                String[] splitStr = returnMsg.split(",");
                int i = 0;
                while (true) {
                    if (i >= splitStr.length) {
                        break;
                    }
                    if (!splitStr[i].contains("loss") || !splitStr[i].contains("%")) {
                        i++;
                    } else {
                        returnMsg = splitStr[i];
                        index = returnMsg.indexOf(37);
                        break;
                    }
                }
                int m = index;
                do {
                    int m2 = m;
                    m = m2 - 1;
                    if (m2 <= 0 || returnMsg.charAt(m) < '0') {
                        break;
                    }
                } while (returnMsg.charAt(m) <= '9');
                if (m + 1 == index || m + 1 < 0 || index > returnMsg.length() - 1) {
                    return -1;
                }
                return Integer.valueOf(returnMsg.substring(m + 1, index)).intValue();
            } catch (IOException e2) {
                e2.printStackTrace();
                try {
                    process.destroy();
                } catch (Exception e3) {
                }
                return -1;
            }
        } finally {
            try {
                process.destroy();
            } catch (Exception e4) {
            }
        }
    }

    public String ping(String host, int num, int timeout) {
        String[] infos;
        JSONObject json = new JSONObject();
        try {
            LogUtil.i(TAG, "日志上传模块---ping 参数 host= " + host + ", num=" + num + ", timeout=" + timeout);
            Process p = Runtime.getRuntime().exec("ping -c " + num + " -w " + timeout + " " + host);
            p.waitFor();
            InputStream input = p.getInputStream();
            BufferedReader in = new BufferedReader(new InputStreamReader(input));
            StringBuffer buffer = new StringBuffer();
            String ip = "";
            String cost = "";
            String lost = "";
            while (true) {
                String line = in.readLine();
                if (line == null) {
                    break;
                }
                buffer.append(String.valueOf(line) + "\n");
                if (line.contains("/avg/")) {
                    String[] avgTmp = line.split("=");
                    if (avgTmp.length > 1) {
                        int first = avgTmp[1].indexOf("/");
                        int end = avgTmp[1].indexOf("/", first + 1);
                        if (first + 1 < end) {
                            cost = avgTmp[1].substring(first + 1, avgTmp[1].indexOf("/", first + 1));
                        }
                    }
                }
                if (line.contains("% packet loss") && (infos = line.split("% packet loss")) != null && infos.length > 0) {
                    String[] infos2 = infos[0].split(" ");
                    int length = infos2.length;
                    lost = infos2[length - 1];
                }
                if (line.contains("(") && line.contains(")")) {
                    int start = line.indexOf("(") + 1;
                    int end2 = line.indexOf(")");
                    if (start < end2) {
                        ip = line.substring(line.indexOf("(") + 1, line.indexOf(")"));
                    }
                }
            }
            LogUtil.i(TAG, "ping result:\n" + buffer.toString());
            int pCost = -1;
            LogUtil.i(TAG, "ping cost=" + cost);
            LogUtil.i(TAG, "ping lost=" + lost);
            if (!TextUtils.isEmpty(cost)) {
                double pCost_d = Double.parseDouble(cost);
                pCost = (int) pCost_d;
                ReportInfo.getInstance().mLocalGwRtt = pCost;
            }
            int pLost = -1;
            if (!TextUtils.isEmpty(lost)) {
                pLost = Integer.parseInt(lost);
                ReportInfo.getInstance().mLocalGwLoss = pLost;
            }
            json.put("cost", pCost);
            json.put("lost", pLost);
            json.put("ip", ip);
        } catch (IOException e) {
            LogUtil.e(TAG, "日志上传模块---ping异常 IOException=" + e);
            e.printStackTrace();
        } catch (InterruptedException e2) {
            LogUtil.e(TAG, "日志上传模块---ping异常 InterruptedException=" + e2);
            e2.printStackTrace();
        } catch (JSONException e3) {
            LogUtil.e(TAG, "日志上传模块---ping异常 JSONException=" + e3);
            e3.printStackTrace();
        }
        LogUtil.i(TAG, "日志上传模块---ping结果=" + json.toString());
        return json.toString();
    }

    public String getDomainFromUrl(String url) {
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

    public String replaceDomainWithIpAddr(String url, String ipAddr, String subString) {
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

    public static String getSystemModel() {
        return Build.MODEL;
    }

    public String getDeviceId() {
        String deviceId = Settings.Secure.getString(this.mContext.getContentResolver(), "android_id");
        return deviceId;
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
