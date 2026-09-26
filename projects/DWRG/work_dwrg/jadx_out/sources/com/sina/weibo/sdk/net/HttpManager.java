package com.sina.weibo.sdk.net;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.alipay.sdk.cons.b;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.exception.WeiboHttpException;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.NetworkHelper;
import com.sina.weibo.sdk.utils.Utility;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.net.URI;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolException;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public class HttpManager {
    private static final String BOUNDARY;
    private static final int BUFFER_SIZE = 8192;
    private static final int CONNECTION_TIMEOUT = 25000;
    private static final String END_MP_BOUNDARY;
    private static final String HTTP_METHOD_GET = "GET";
    private static final String HTTP_METHOD_POST = "POST";
    private static final String MP_BOUNDARY;
    private static final String MULTIPART_FORM_DATA = "multipart/form-data";
    private static final int SOCKET_TIMEOUT = 20000;
    private static final String TAG = "HttpManager";
    private static SSLSocketFactory sSSLSocketFactory;

    private static native String calcOauthSignNative(Context context, String str, String str2);

    static {
        System.loadLibrary("weibosdkcore");
        BOUNDARY = getBoundry();
        MP_BOUNDARY = "--" + BOUNDARY;
        END_MP_BOUNDARY = "--" + BOUNDARY + "--";
    }

    public static String openUrl(Context context, String url, String method, WeiboParameters params) throws WeiboException {
        HttpResponse response = requestHttpExecute(context, url, method, params);
        String ans = readRsponse(response);
        LogUtil.d("HttpManager", "Response : " + ans);
        return ans;
    }

    private static HttpResponse requestHttpExecute(Context context, String url, String method, WeiboParameters params) {
        HttpClient client = null;
        ByteArrayOutputStream baos = null;
        try {
            try {
                client = getNewHttpClient();
                client.getParams().setParameter("http.route.default-proxy", NetStateManager.getAPN());
                HttpUriRequest request = null;
                setHttpCommonParam(context, params);
                if (method.equals("GET")) {
                    String url2 = String.valueOf(url) + "?" + params.encodeUrl();
                    request = new HttpGet(url2);
                    LogUtil.d("HttpManager", "requestHttpExecute GET Url : " + url2);
                } else if (method.equals("POST")) {
                    LogUtil.d("HttpManager", "requestHttpExecute POST Url : " + url);
                    HttpPost post = new HttpPost(url);
                    request = post;
                    ByteArrayOutputStream baos2 = new ByteArrayOutputStream();
                    try {
                        if (params.hasBinaryData()) {
                            post.setHeader(HttpHeaders.Names.CONTENT_TYPE, "multipart/form-data; boundary=" + BOUNDARY);
                            buildParams(baos2, params);
                        } else {
                            Object value = params.get("content-type");
                            if (value != null && (value instanceof String)) {
                                params.remove("content-type");
                                post.setHeader(HttpHeaders.Names.CONTENT_TYPE, (String) value);
                            } else {
                                post.setHeader(HttpHeaders.Names.CONTENT_TYPE, "application/x-www-form-urlencoded");
                            }
                            String postParam = params.encodeUrl();
                            LogUtil.d("HttpManager", "requestHttpExecute POST postParam : " + postParam);
                            baos2.write(postParam.getBytes("UTF-8"));
                        }
                        post.setEntity(new ByteArrayEntity(baos2.toByteArray()));
                        baos = baos2;
                    } catch (IOException e) {
                        e = e;
                        e.printStackTrace();
                        throw new WeiboException(e);
                    } catch (Throwable th) {
                        th = th;
                        baos = baos2;
                        if (baos != null) {
                            try {
                                baos.close();
                            } catch (IOException e2) {
                            }
                        }
                        shutdownHttpClient(client);
                        throw th;
                    }
                } else if (method.equals("DELETE")) {
                    request = new HttpDelete(url);
                }
                HttpResponse response = client.execute(request);
                StatusLine status = response.getStatusLine();
                int statusCode = status.getStatusCode();
                if (statusCode != 200) {
                    String result = readRsponse(response);
                    throw new WeiboHttpException(result, statusCode);
                }
                if (baos != null) {
                    try {
                        baos.close();
                    } catch (IOException e3) {
                    }
                }
                shutdownHttpClient(client);
                return response;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    private static void setHttpCommonParam(Context context, WeiboParameters params) {
        String aid = "";
        if (!TextUtils.isEmpty(params.getAppKey())) {
            aid = Utility.getAid(context, params.getAppKey());
            if (!TextUtils.isEmpty(aid)) {
                params.put("aid", aid);
            }
        }
        String timestamp = getTimestamp();
        params.put("oauth_timestamp", timestamp);
        String token = "";
        Object accessToken = params.get("access_token");
        Object refreshToken = params.get(Oauth2AccessToken.KEY_REFRESH_TOKEN);
        Object phone = params.get("phone");
        if (accessToken != null && (accessToken instanceof String)) {
            token = (String) accessToken;
        } else if (refreshToken != null && (refreshToken instanceof String)) {
            token = (String) refreshToken;
        } else if (phone != null && (phone instanceof String)) {
            token = (String) phone;
        }
        String oauthSign = getOauthSign(context, aid, token, params.getAppKey(), timestamp);
        params.put("oauth_sign", oauthSign);
    }

    public static void shutdownHttpClient(HttpClient client) {
        if (client != null) {
            try {
                client.getConnectionManager().closeExpiredConnections();
            } catch (Exception e) {
            }
        }
    }

    public static String openUrl4RdirectURL(Context context, String url, String method, WeiboParameters params) throws WeiboException {
        String redirectURL;
        DefaultHttpClient client = null;
        try {
            try {
                client = (DefaultHttpClient) getNewHttpClient();
                client.setRedirectHandler(new RedirectHandler() { // from class: com.sina.weibo.sdk.net.HttpManager.1
                    @Override // org.apache.http.client.RedirectHandler
                    public boolean isRedirectRequested(HttpResponse response, HttpContext context2) {
                        LogUtil.d("HttpManager", "openUrl4RdirectURL isRedirectRequested method");
                        return false;
                    }

                    @Override // org.apache.http.client.RedirectHandler
                    public URI getLocationURI(HttpResponse response, HttpContext context2) throws ProtocolException {
                        LogUtil.d("HttpManager", "openUrl4RdirectURL getLocationURI method");
                        return null;
                    }
                });
                setHttpCommonParam(context, params);
                HttpUriRequest request = null;
                client.getParams().setParameter("http.route.default-proxy", NetStateManager.getAPN());
                if (method.equals("GET")) {
                    String url2 = String.valueOf(url) + "?" + params.encodeUrl();
                    LogUtil.d("HttpManager", "openUrl4RdirectURL GET url : " + url2);
                    HttpGet get = new HttpGet(url2);
                    request = get;
                } else if (method.equals("POST")) {
                    HttpPost post = new HttpPost(url);
                    LogUtil.d("HttpManager", "openUrl4RdirectURL POST url : " + url);
                    request = post;
                }
                HttpResponse response = client.execute(request);
                int statusCode = response.getStatusLine().getStatusCode();
                if (statusCode == 301 || statusCode == 302) {
                    redirectURL = response.getFirstHeader(HttpHeaders.Names.LOCATION).getValue();
                    LogUtil.d("HttpManager", "RedirectURL = " + redirectURL);
                } else if (statusCode == 200) {
                    redirectURL = readRsponse(response);
                } else {
                    String result = readRsponse(response);
                    throw new WeiboHttpException(result, statusCode);
                }
                return redirectURL;
            } catch (IOException e) {
                throw new WeiboException(e);
            }
        } finally {
            shutdownHttpClient(client);
        }
    }

    public static String openRedirectUrl4LocationUri(Context context, String url, String method, WeiboParameters params) {
        CustomRedirectHandler redirectHandler;
        DefaultHttpClient client = null;
        try {
            try {
                redirectHandler = new CustomRedirectHandler() { // from class: com.sina.weibo.sdk.net.HttpManager.2
                    @Override // com.sina.weibo.sdk.net.CustomRedirectHandler
                    public boolean shouldRedirectUrl(String url2) {
                        return true;
                    }

                    @Override // com.sina.weibo.sdk.net.CustomRedirectHandler
                    public void onReceivedException() {
                    }
                };
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
            e = e;
        }
        try {
            client = (DefaultHttpClient) getNewHttpClient();
            client.setRedirectHandler(redirectHandler);
            setHttpCommonParam(context, params);
            HttpUriRequest request = null;
            client.getParams().setParameter("http.route.default-proxy", NetStateManager.getAPN());
            if (method.equals("GET")) {
                HttpGet get = new HttpGet(String.valueOf(url) + "?" + params.encodeUrl());
                request = get;
            } else if (method.equals("POST")) {
                HttpPost post = new HttpPost(url);
                request = post;
            }
            request.setHeader(HttpHeaders.Names.USER_AGENT, NetworkHelper.generateUA(context));
            client.execute(request);
            String redirectUrl = redirectHandler.getRedirectUrl();
            shutdownHttpClient(client);
            return redirectUrl;
        } catch (IOException e2) {
            e = e2;
            throw new WeiboException(e);
        } catch (Throwable th2) {
            th = th2;
            shutdownHttpClient(client);
            throw th;
        }
    }

    public static synchronized String downloadFile(Context context, String url, String saveDir, String fileName) throws WeiboException {
        String str;
        long totalLength;
        long startPosition;
        synchronized (HttpManager.class) {
            File savePathDir = new File(saveDir);
            if (!savePathDir.exists()) {
                savePathDir.mkdirs();
            }
            File filePath = new File(savePathDir, fileName);
            if (filePath.exists()) {
                str = filePath.getPath();
            } else if (URLUtil.isValidUrl(url)) {
                HttpClient client = getNewHttpClient();
                long tempFileLength = 0;
                File tempFile = new File(saveDir, String.valueOf(fileName) + "_temp");
                try {
                    try {
                        if (tempFile.exists()) {
                            tempFileLength = tempFile.length();
                        } else {
                            tempFile.createNewFile();
                        }
                        HttpGet request = new HttpGet(url);
                        request.setHeader("RANGE", "bytes=" + tempFileLength + "-");
                        HttpResponse response = client.execute(request);
                        int statusCode = response.getStatusLine().getStatusCode();
                        totalLength = 0;
                        if (statusCode == 206) {
                            startPosition = tempFileLength;
                            Header[] rangeHeaders = response.getHeaders(HttpHeaders.Names.CONTENT_RANGE);
                            if (rangeHeaders != null && rangeHeaders.length != 0) {
                                String rangValue = rangeHeaders[0].getValue();
                                totalLength = Long.parseLong(rangValue.substring(rangValue.indexOf(47) + 1));
                            }
                        } else {
                            if (statusCode != 200) {
                                String result = readRsponse(response);
                                throw new WeiboHttpException(result, statusCode);
                            }
                            startPosition = 0;
                            Header lengthHeader = response.getFirstHeader(HttpHeaders.Names.CONTENT_LENGTH);
                            if (lengthHeader != null) {
                                totalLength = Integer.valueOf(lengthHeader.getValue()).intValue();
                            }
                        }
                        HttpEntity entity = response.getEntity();
                        Header header = response.getFirstHeader(HttpHeaders.Names.CONTENT_ENCODING);
                        InputStream inputStream = (header == null || header.getValue().toLowerCase().indexOf(HttpHeaders.Values.GZIP) <= -1) ? entity.getContent() : new GZIPInputStream(entity.getContent());
                        RandomAccessFile content = new RandomAccessFile(tempFile, "rw");
                        content.seek(startPosition);
                        byte[] sBuffer = new byte[1024];
                        while (true) {
                            int readBytes = inputStream.read(sBuffer);
                            if (readBytes == -1) {
                                break;
                            }
                            content.write(sBuffer, 0, readBytes);
                        }
                        content.close();
                        inputStream.close();
                    } finally {
                        if (client != null) {
                            client.getConnectionManager().closeExpiredConnections();
                            client.getConnectionManager().closeIdleConnections(300L, TimeUnit.SECONDS);
                        }
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                    tempFile.delete();
                    if (client != null) {
                        client.getConnectionManager().closeExpiredConnections();
                        client.getConnectionManager().closeIdleConnections(300L, TimeUnit.SECONDS);
                    }
                }
                if (totalLength == 0 || tempFile.length() < totalLength) {
                    tempFile.delete();
                    str = "";
                } else {
                    tempFile.renameTo(filePath);
                    str = filePath.getPath();
                    if (client != null) {
                        client.getConnectionManager().closeExpiredConnections();
                        client.getConnectionManager().closeIdleConnections(300L, TimeUnit.SECONDS);
                    }
                }
            } else {
                str = "";
            }
        }
        return str;
    }

    public static HttpClient getNewHttpClient() {
        try {
            HttpParams params = new BasicHttpParams();
            HttpProtocolParams.setVersion(params, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(params, "UTF-8");
            SchemeRegistry registry = new SchemeRegistry();
            registry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            registry.register(new Scheme(b.a, getSSLSocketFactory(), 443));
            ClientConnectionManager ccm = new ThreadSafeClientConnManager(params, registry);
            HttpConnectionParams.setConnectionTimeout(params, CONNECTION_TIMEOUT);
            HttpConnectionParams.setSoTimeout(params, 20000);
            return new DefaultHttpClient(ccm, params);
        } catch (Exception e) {
            return new DefaultHttpClient();
        }
    }

    public static void buildParams(OutputStream baos, WeiboParameters params) throws WeiboException {
        try {
            Set<String> keys = params.keySet();
            for (String key : keys) {
                if (params.get(key) instanceof String) {
                    StringBuilder sb = new StringBuilder(100);
                    sb.setLength(0);
                    sb.append(MP_BOUNDARY).append("\r\n");
                    sb.append("content-disposition: form-data; name=\"").append(key).append("\"\r\n\r\n");
                    sb.append(params.get(key)).append("\r\n");
                    baos.write(sb.toString().getBytes());
                }
            }
            for (String key2 : keys) {
                Object value = params.get(key2);
                if (value instanceof Bitmap) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(MP_BOUNDARY).append("\r\n");
                    sb2.append("content-disposition: form-data; name=\"").append(key2).append("\"; filename=\"file\"\r\n");
                    sb2.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
                    baos.write(sb2.toString().getBytes());
                    Bitmap bmp = (Bitmap) value;
                    ByteArrayOutputStream stream = new ByteArrayOutputStream();
                    bmp.compress(Bitmap.CompressFormat.PNG, 100, stream);
                    byte[] bytes = stream.toByteArray();
                    baos.write(bytes);
                    baos.write("\r\n".getBytes());
                } else if (value instanceof ByteArrayOutputStream) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(MP_BOUNDARY).append("\r\n");
                    sb3.append("content-disposition: form-data; name=\"").append(key2).append("\"; filename=\"file\"\r\n");
                    sb3.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
                    baos.write(sb3.toString().getBytes());
                    ByteArrayOutputStream stream2 = (ByteArrayOutputStream) value;
                    baos.write(stream2.toByteArray());
                    baos.write("\r\n".getBytes());
                    stream2.close();
                }
            }
            baos.write(("\r\n" + END_MP_BOUNDARY).getBytes());
        } catch (IOException e) {
            throw new WeiboException(e);
        }
    }

    public static String readRsponse(HttpResponse response) throws WeiboException {
        if (response == null) {
            return null;
        }
        HttpEntity entity = response.getEntity();
        InputStream inputStream = null;
        ByteArrayOutputStream content = new ByteArrayOutputStream();
        try {
            try {
                inputStream = entity.getContent();
                Header header = response.getFirstHeader(HttpHeaders.Names.CONTENT_ENCODING);
                if (header != null && header.getValue().toLowerCase().indexOf(HttpHeaders.Values.GZIP) > -1) {
                    inputStream = new GZIPInputStream(inputStream);
                }
                byte[] buffer = new byte[8192];
                while (true) {
                    int readBytes = inputStream.read(buffer);
                    if (readBytes == -1) {
                        break;
                    }
                    content.write(buffer, 0, readBytes);
                }
                String result = new String(content.toByteArray(), "UTF-8");
                LogUtil.d("HttpManager", "readRsponse result : " + result);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                if (content == null) {
                    return result;
                }
                try {
                    content.close();
                    return result;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return result;
                }
            } catch (IOException e3) {
                throw new WeiboException(e3);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            if (content != null) {
                try {
                    content.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static String getBoundry() {
        StringBuffer sb = new StringBuffer();
        for (int t = 1; t < 12; t++) {
            long time = System.currentTimeMillis() + t;
            if (time % 3 == 0) {
                sb.append(((char) time) % '\t');
            } else if (time % 3 == 1) {
                sb.append((char) (65 + (time % 26)));
            } else {
                sb.append((char) (97 + (time % 26)));
            }
        }
        return sb.toString();
    }

    private static SSLSocketFactory getSSLSocketFactory() {
        if (sSSLSocketFactory == null) {
            try {
                String keyStoreType = KeyStore.getDefaultType();
                KeyStore keyStore = KeyStore.getInstance(keyStoreType);
                keyStore.load(null, null);
                Certificate cnCertificate = getCertificate("cacert_cn.cer");
                Certificate comCertificate = getCertificate("cacert_com.cer");
                keyStore.setCertificateEntry("cnca", cnCertificate);
                keyStore.setCertificateEntry("comca", comCertificate);
                sSSLSocketFactory = new SSLSocketFactoryEx(keyStore);
                LogUtil.d("HttpManager", "getSSLSocketFactory noraml !!!!!");
            } catch (Exception e) {
                e.printStackTrace();
                sSSLSocketFactory = SSLSocketFactory.getSocketFactory();
                LogUtil.d("HttpManager", "getSSLSocketFactory error default !!!!!");
            }
        }
        return sSSLSocketFactory;
    }

    private static Certificate getCertificate(String name) throws CertificateException, IOException {
        CertificateFactory cf = CertificateFactory.getInstance("X.509");
        InputStream certInput = HttpManager.class.getResourceAsStream(name);
        try {
            Certificate certificate = cf.generateCertificate(certInput);
            return certificate;
        } finally {
            if (certInput != null) {
                certInput.close();
            }
        }
    }

    private static String getTimestamp() {
        long timestamp = System.currentTimeMillis() / 1000;
        return String.valueOf(timestamp);
    }

    private static String getOauthSign(Context context, String aid, String accessToken, String appKey, String timestamp) {
        StringBuilder part1 = new StringBuilder("");
        if (!TextUtils.isEmpty(aid)) {
            part1.append(aid);
        }
        if (!TextUtils.isEmpty(accessToken)) {
            part1.append(accessToken);
        }
        if (!TextUtils.isEmpty(appKey)) {
            part1.append(appKey);
        }
        return calcOauthSignNative(context, part1.toString(), timestamp);
    }
}
