package com.netease.pharos.network2;

import android.text.TextUtils;
import com.alipay.sdk.cons.b;
import com.alipay.sdk.sys.a;
import com.netease.download.Const;
import com.netease.ntunisdk.base.PharosReplacebyPatch;
import com.netease.pharos.PharosProxy;
import com.netease.pharos.util.LogUtil;
import com.netease.pharos.util.Util;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.SocketException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* loaded from: classes.dex */
public class NetUtil {
    private static final String TAG = "NetUtil";

    public static Object doHttpReq(String pUrl, Map<String, Object> pParams, String pMethod, Map<String, String> pHeaders, NetworkDealer pDealer) throws IOException {
        int responseCode;
        LogUtil.i(TAG, "NetUtil下载通用类");
        String reqUrl = pUrl;
        if (PharosProxy.getInstance().ismEB()) {
            reqUrl = pUrl.replaceAll("netease.com", "easebar.com");
        }
        StringBuilder paramBuilder = new StringBuilder();
        Integer result = 0;
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
        conn.setConnectTimeout(5000);
        conn.setReadTimeout(5000);
        conn.setRequestProperty(HttpHeaders.Names.ACCEPT_ENCODING, "");
        if (pHeaders != null && pHeaders.size() > 0) {
            for (String key : pHeaders.keySet()) {
                conn.setRequestProperty(key, pHeaders.get(key));
            }
        }
        if ("POST".equalsIgnoreCase(pMethod)) {
            LogUtil.i(TAG, "patch post");
            conn.setRequestMethod("POST");
            conn.setDoInput(true);
            conn.setDoOutput(true);
            OutputStream os = conn.getOutputStream();
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, "UTF-8"));
            if (pParams.containsKey("post_content")) {
                paramBuilder.append(pParams.get("post_content"));
            } else {
                paramBuilder.append("内容为空");
            }
            writer.write(paramBuilder.toString());
            writer.flush();
            writer.close();
            os.close();
        } else {
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
            conn.setRequestMethod("GET");
        }
        boolean hasHost = pHeaders != null && pHeaders.containsKey("Host") && Util.isIpAddrDomain(reqUrl);
        String host = null;
        if (hasHost) {
            System.setProperty("sun.net.http.allowRestrictedHeaders", "true");
            String host2 = pHeaders.get("Host");
            host = host2;
            if (!TextUtils.isEmpty(host)) {
                LogUtil.i(TAG, "设置host =" + host);
                if (PharosProxy.getInstance().ismEB()) {
                    host = host.replaceAll("netease.com", "easebar.com");
                }
                conn.setRequestProperty("Host", host);
            }
        }
        LogUtil.i(TAG, "StrUtil.isIpAddrDomain(reqUrl) =" + Util.isIpAddrDomain(reqUrl));
        try {
            LogUtil.i(TAG, "reqUrl=" + reqUrl);
            if (!TextUtils.isEmpty(host)) {
                LogUtil.i(TAG, "host=" + host);
            }
            conn.connect();
            responseCode = conn.getResponseCode();
        } catch (UnknownHostException e2) {
            LogUtil.w(TAG, "UnknownHostException 异常 = " + e2.toString() + ", url=" + reqUrl);
            responseCode = 503;
        } catch (IOException e3) {
            LogUtil.w(TAG, "IOException 异常 = " + e3.toString() + ", url=" + reqUrl);
            e3.printStackTrace();
            responseCode = 408;
        } catch (Exception e4) {
            e4.printStackTrace();
            responseCode = 400;
            LogUtil.i(TAG, "Exception 异常 = " + e4.toString() + ", url=" + reqUrl);
        }
        if (pDealer != null) {
            Map<String, String> info = new HashMap<>();
            info.put("url", reqUrl);
            pDealer.processHeader(conn.getHeaderFields(), responseCode, info);
        }
        try {
            InputStream is = conn.getInputStream();
            if (responseCode == 200 && pDealer != null) {
                try {
                    result = (Integer) pDealer.processContent(is, responseCode, null);
                    LogUtil.i(TAG, "processContent result=" + result + ", url=" + url.toString());
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

    private void supportPatch() {
        LogUtil.v(Const.TYPE_TARGET_PATCH, PharosReplacebyPatch.class.toString());
    }
}
