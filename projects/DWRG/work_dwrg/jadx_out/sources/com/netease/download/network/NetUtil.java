package com.netease.download.network;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.alipay.sdk.cons.b;
import com.alipay.sdk.sys.a;
import com.netease.download.Const;
import com.netease.download.downloader.DownloadInitInfo;
import com.netease.download.reporter.KeyConst;
import com.netease.download.reporter.ReportInfo;
import com.netease.download.util.LogUtil;
import com.netease.download.util.StrUtil;
import com.netease.ntunisdk.base.ReplacebyPatch;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* loaded from: classes.dex */
public class NetUtil {
    private static final String TAG = "NetUtil";
    private HashMap<String, String> mLogData = new HashMap<>();

    public static Object doHttpReq(String pUrl, Map<String, Object> pParams, String pMethod, Map<String, String> pHeaders, NetworkDealer pDealer) throws IOException {
        int responseCode;
        LogUtil.i(TAG, "NetUtil下载通用类");
        String reqUrl = pUrl;
        StringBuilder paramBuilder = new StringBuilder();
        int result = 0;
        if (pParams != null) {
            LogUtil.i(TAG, "params=" + pParams.toString());
            for (Map.Entry entry : pParams.entrySet()) {
                if (paramBuilder.length() > 0) {
                    paramBuilder.append(a.b);
                }
                paramBuilder.append((Object) entry.getKey()).append("=").append(entry.getValue());
            }
            if ("GET".equalsIgnoreCase(pMethod) && paramBuilder.length() > 0) {
                reqUrl = String.valueOf(reqUrl) + "?" + paramBuilder.toString();
            }
        }
        URL url = new URL(reqUrl);
        if (reqUrl.startsWith(b.a)) {
            LogUtil.i(TAG, "doHttpReq 自定义ssl");
            try {
                SSLContext scc = SSLContext.getInstance("TLS");
                scc.init(null, new TrustManager[]{new MyTrustManager()}, new SecureRandom());
                HttpsURLConnection.setDefaultSSLSocketFactory(scc.getSocketFactory());
                HttpsURLConnection.setDefaultHostnameVerifier(new MyX509HostnameVerifier());
            } catch (Exception e) {
                LogUtil.i(TAG, "doHttpReq Exception=" + e);
            }
        }
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setInstanceFollowRedirects(false);
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);
        conn.setDoInput(true);
        conn.setDoOutput(false);
        conn.setRequestProperty(HttpHeaders.Names.ACCEPT_ENCODING, "");
        if ("POST".equalsIgnoreCase(pMethod)) {
            LogUtil.i(TAG, "patch post");
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            OutputStream os = conn.getOutputStream();
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));
            writer.write(paramBuilder.toString());
            writer.flush();
            writer.close();
            os.close();
        } else {
            conn.setRequestMethod("GET");
        }
        boolean hasRange = pHeaders != null && pHeaders.containsKey("START");
        if (hasRange) {
            String start = pHeaders.get("START");
            String end = pHeaders.get("END");
            StringBuilder sb = new StringBuilder();
            sb.append("bytes=").append(start != null ? start : 0).append("-");
            if (end != null) {
                sb.append(end);
            }
            LogUtil.i(TAG, "下载时候，新的头部位置=" + start + ", 尾部位置=" + end + ", Range=" + sb.toString() + ", url=" + reqUrl);
            conn.setRequestProperty("Range", sb.toString());
        }
        boolean hasHost = pHeaders != null && pHeaders.containsKey("Host") && StrUtil.isIpAddrDomain(reqUrl);
        if (hasHost) {
            String host = pHeaders.get("Host");
            String oversea = DownloadInitInfo.getInstances().getOverSea();
            if (!TextUtils.isEmpty(host) && !TextUtils.isEmpty(oversea) && "2".equals(oversea)) {
                if (host.contains("netease.com")) {
                    host = host.replaceAll("netease.com", "easebar.com");
                } else if (host.contains("163.com")) {
                    host = host.replaceAll("163.com", "easebar.com");
                }
            }
            System.setProperty("sun.net.http.allowRestrictedHeaders", "true");
            LogUtil.i(TAG, "设置host =" + host);
            conn.setRequestProperty("Host", host);
        }
        LogUtil.i(TAG, "StrUtil.isIpAddrDomain(reqUrl) =" + StrUtil.isIpAddrDomain(reqUrl));
        try {
            LogUtil.i(TAG, "reqUrl=" + reqUrl);
            if (pHeaders != null) {
                LogUtil.i(TAG, "host=" + pHeaders.get("Host"));
            }
            conn.connect();
            responseCode = conn.getResponseCode();
        } catch (UnknownHostException e2) {
            LogUtil.e(TAG, "UnknownHostException 异常 = " + e2.toString() + ", url=" + reqUrl);
            responseCode = 503;
        } catch (IOException e3) {
            LogUtil.e(TAG, "IOException 异常 = " + e3.toString() + ", url=" + reqUrl);
            e3.printStackTrace();
            responseCode = 408;
        } catch (Exception e4) {
            e4.printStackTrace();
            responseCode = 400;
            LogUtil.e(TAG, "Exception 异常 = " + e4.toString() + ", url=" + reqUrl);
        }
        if (responseCode != 0 && 200 != responseCode && 206 != responseCode) {
            String errorLog = getErrorLog(conn.getErrorStream());
            ReportInfo.getInstance().mDetectData.put(KeyConst.KEY_ERROR_LOG, errorLog);
        }
        if (pDealer != null) {
            pDealer.processHeader(conn.getHeaderFields(), responseCode, reqUrl);
        }
        try {
            InputStream is = conn.getInputStream();
            LogUtil.i(TAG, "responseCode=" + responseCode + ", hasRange=" + hasRange + ", url=" + url.toString());
            boolean suc = (responseCode == 200 && !hasRange) || (responseCode == 206 && hasRange);
            LogUtil.i(TAG, "suc=" + suc + ", url=" + url.toString());
            if (suc && pDealer != null) {
                try {
                    suc = ((Boolean) pDealer.processContent(is)).booleanValue();
                    LogUtil.i(TAG, "processContent result=" + suc + ", url=" + url.toString());
                } catch (FileNotFoundException e5) {
                    result = 4;
                    e5.printStackTrace();
                } catch (SocketException e6) {
                    result = 13;
                    e6.printStackTrace();
                } catch (Exception e7) {
                    LogUtil.i(TAG, "Exception=" + e7.toString() + ", url=" + url.toString());
                    result = 11;
                    e7.printStackTrace();
                }
            }
            if (!suc) {
                result = 1;
            }
            is.close();
            conn.disconnect();
            LogUtil.i(TAG, "doHttpReq result=" + result + ", url=" + url.toString());
            return result;
        } catch (Exception e8) {
            LogUtil.i(TAG, "Exception" + e8.toString());
            conn.disconnect();
            return 1;
        }
    }

    public static Object doSimpleHttpReq(String pUrl, Map<String, Object> pParams, String pMethod, Map<String, String> pHeaders, NetworkDealer pDealer) throws IOException {
        int responseCode;
        Object obj;
        String reqUrl = pUrl;
        StringBuilder paramBuilder = new StringBuilder();
        Object result = null;
        if (pParams != null) {
            LogUtil.i(TAG, "doSimpleHttpReq params=" + pParams.toString());
            for (Map.Entry entry : pParams.entrySet()) {
                paramBuilder.length();
                paramBuilder.append((Object) entry.getKey()).append("=").append(entry.getValue());
            }
            if ("GET".equalsIgnoreCase(pMethod) && paramBuilder.length() > 0) {
                reqUrl = String.valueOf(reqUrl) + "?" + paramBuilder.toString();
            }
        }
        URL url = new URL(reqUrl);
        if (reqUrl.startsWith(b.a)) {
            LogUtil.i(TAG, "doSimpleHttpReq 自定义ssl");
            try {
                SSLContext scc = SSLContext.getInstance("TLS");
                scc.init(null, new TrustManager[]{new MyTrustManager()}, new SecureRandom());
                HttpsURLConnection.setDefaultSSLSocketFactory(scc.getSocketFactory());
                HttpsURLConnection.setDefaultHostnameVerifier(new MyX509HostnameVerifier());
            } catch (Exception e) {
                LogUtil.i(TAG, "doHttpReq Exception=" + e);
            }
            LogUtil.i(TAG, "reqUrl=" + reqUrl + "---start with https");
        }
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setInstanceFollowRedirects(false);
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);
        conn.setRequestProperty(HttpHeaders.Names.ACCEPT_ENCODING, "");
        conn.setDoInput(true);
        conn.setDoOutput(false);
        if ("POST".equalsIgnoreCase(pMethod)) {
            LogUtil.i(TAG, "post");
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            OutputStream os = conn.getOutputStream();
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));
            writer.write(paramBuilder.toString());
            writer.flush();
            writer.close();
            os.close();
        } else {
            LogUtil.i(TAG, "get");
            conn.setRequestMethod("GET");
        }
        boolean hasRange = pHeaders != null && pHeaders.containsKey("START");
        if (hasRange) {
            LogUtil.i(TAG, "hasRange");
            String str = pHeaders.get("START");
            String end = pHeaders.get("END");
            StringBuilder sb = new StringBuilder();
            StringBuilder append = sb.append("bytes=");
            if (str == null) {
                str = 0;
            }
            append.append(str).append("-");
            if (end != null) {
                sb.append(end);
            }
            conn.setRequestProperty("Range", sb.toString());
        }
        boolean hasHost = pHeaders != null && pHeaders.containsKey("Host") && StrUtil.isIpAddrDomain(reqUrl);
        if (hasHost) {
            LogUtil.i(TAG, "hasHost");
            String host = pHeaders.get("Host");
            String oversea = DownloadInitInfo.getInstances().getOverSea();
            if (!TextUtils.isEmpty(host) && !TextUtils.isEmpty(oversea) && "2".equals(oversea)) {
                if (host.contains("netease.com")) {
                    host = host.replaceAll("netease.com", "easebar.com");
                } else if (host.contains("163.com")) {
                    host = host.replaceAll("163.com", "easebar.com");
                }
            }
            System.setProperty("sun.net.http.allowRestrictedHeaders", "true");
            conn.setRequestProperty("Host", host);
        }
        try {
            try {
                LogUtil.i(TAG, "url=" + reqUrl);
                if (pHeaders != null) {
                    LogUtil.i(TAG, "host=" + pHeaders.get("Host"));
                }
                conn.connect();
                responseCode = conn.getResponseCode();
                LogUtil.i(TAG, "responseCode=" + responseCode);
            } catch (Exception e2) {
                e2.printStackTrace();
                responseCode = 504;
            }
            if (302 == responseCode || 301 == responseCode) {
                LogUtil.i(TAG, "handle 302");
                String location = conn.getHeaderField(HttpHeaders.Names.LOCATION);
                LogUtil.i(TAG, "pre url=" + reqUrl + ", new url=" + location);
                return doSimpleHttpReq(location, pParams, pMethod, pHeaders, pDealer);
            }
            LogUtil.i(TAG, "reqUrl=" + reqUrl + ", responseCode=" + responseCode);
            if (pDealer != null) {
                LogUtil.i(TAG, "processHeader");
                pDealer.processHeader(conn.getHeaderFields(), responseCode, reqUrl);
            }
            InputStream is = null;
            boolean suc = (responseCode == 200 && !hasRange) || (responseCode == 206 && hasRange);
            if (!suc || pDealer == null) {
                obj = null;
            } else {
                try {
                    try {
                        is = conn.getInputStream();
                        result = pDealer.processContent(is);
                        LogUtil.i(TAG, "processContent result=" + result);
                        obj = result;
                    } catch (SocketException e3) {
                        e3.printStackTrace();
                        obj = result;
                    }
                } catch (FileNotFoundException e4) {
                    e4.printStackTrace();
                    obj = result;
                } catch (Exception e5) {
                    e5.printStackTrace();
                    obj = result;
                }
            }
            if (is != null) {
                is.close();
            }
            conn.disconnect();
            LogUtil.i(TAG, "doSimpleHttpReq final result=" + obj);
            return obj;
        } catch (Exception e6) {
            e6.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0027 -> B:7:0x001c). Please report as a decompilation issue!!! */
    public static String getLocalIpAddress(Context mContext) {
        String str;
        WifiManager wifiManager;
        try {
            wifiManager = (WifiManager) mContext.getSystemService("wifi");
        } catch (NullPointerException e) {
            e.printStackTrace();
        } catch (SocketException ex) {
            ex.printStackTrace();
        }
        if (wifiManager != null && wifiManager.isWifiEnabled()) {
            WifiInfo wifiInfo = wifiManager.getConnectionInfo();
            int ipAddress = wifiInfo.getIpAddress();
            str = Formatter.formatIpAddress(ipAddress);
        } else {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            loop0: while (en.hasMoreElements()) {
                NetworkInterface intf = en.nextElement();
                Enumeration<InetAddress> enumIpAddr = intf.getInetAddresses();
                while (enumIpAddr.hasMoreElements()) {
                    InetAddress inetAddress = enumIpAddr.nextElement();
                    if (!inetAddress.isLoopbackAddress()) {
                        str = inetAddress.getHostAddress();
                        break loop0;
                    }
                }
            }
            str = "127.0.0.1";
        }
        return str;
    }

    public static String getErrorLog(InputStream pInputStream) {
        StringBuilder errorLog = new StringBuilder();
        BufferedInputStream in = new BufferedInputStream(pInputStream);
        byte[] buffer = new byte[1024];
        StringBuffer info = new StringBuffer();
        while (true) {
            try {
                int len = in.read(buffer);
                if (len == -1) {
                    break;
                }
                info.append(new String(buffer));
            } catch (IOException e1) {
                e1.printStackTrace();
                LogUtil.e(TAG, "获取错误信息 异常=" + e1);
            }
        }
        return errorLog.toString();
    }

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, ReplacebyPatch.class.toString());
    }
}
