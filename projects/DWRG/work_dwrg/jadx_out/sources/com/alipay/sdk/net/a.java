package com.alipay.sdk.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.text.TextUtils;
import io.netty.handler.codec.http.HttpHeaders;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpParams;

/* loaded from: classes.dex */
public final class a {
    public static final String a = "application/octet-stream;binary/octet-stream";
    public String b;
    private Context c;

    private a(Context context) {
        this(context, null);
    }

    public a(Context context, String str) {
        if (context != null) {
            this.c = context.getApplicationContext();
        } else {
            this.c = context;
        }
        this.b = str;
    }

    private void a(String str) {
        this.b = str;
    }

    private String a() {
        return this.b;
    }

    private URL b() {
        try {
            return new URL(this.b);
        } catch (Exception e) {
            return null;
        }
    }

    public final HttpResponse a(byte[] bArr, List<Header> list) throws Throwable {
        HttpUriRequest httpGet;
        URL b;
        HttpResponse httpResponse = null;
        r1 = null;
        r1 = null;
        r1 = null;
        r1 = null;
        r1 = null;
        r1 = null;
        HttpHost httpHost = null;
        new StringBuilder("requestUrl : ").append(this.b);
        b a2 = b.a();
        if (a2 != null) {
            try {
                HttpParams params = a2.c.getParams();
                if (Build.VERSION.SDK_INT >= 11) {
                    String g = g();
                    if ((g == null || g.contains("wap")) && (b = b()) != null) {
                        com.alipay.sdk.cons.b.a.equalsIgnoreCase(b.getProtocol());
                        String property = System.getProperty("https.proxyHost");
                        String property2 = System.getProperty("https.proxyPort");
                        if (!TextUtils.isEmpty(property)) {
                            httpHost = new HttpHost(property, Integer.parseInt(property2));
                        }
                    }
                } else {
                    NetworkInfo f = f();
                    if (f != null && f.isAvailable() && f.getType() == 0) {
                        String defaultHost = Proxy.getDefaultHost();
                        int defaultPort = Proxy.getDefaultPort();
                        if (defaultHost != null) {
                            httpHost = new HttpHost(defaultHost, defaultPort);
                        }
                    }
                }
                if (httpHost != null) {
                    params.setParameter("http.route.default-proxy", httpHost);
                }
                if (bArr == null || bArr.length == 0) {
                    httpGet = new HttpGet(this.b);
                } else {
                    httpGet = new HttpPost(this.b);
                    ByteArrayEntity byteArrayEntity = new ByteArrayEntity(bArr);
                    byteArrayEntity.setContentType(a);
                    ((HttpPost) httpGet).setEntity(byteArrayEntity);
                    httpGet.addHeader(HttpHeaders.Names.ACCEPT_CHARSET, "UTF-8");
                    httpGet.addHeader(HttpHeaders.Names.CONNECTION, "Keep-Alive");
                    httpGet.addHeader("Keep-Alive", "timeout=180, max=100");
                }
                if (list != null) {
                    Iterator<Header> it = list.iterator();
                    while (it.hasNext()) {
                        httpGet.addHeader(it.next());
                    }
                }
                httpResponse = a2.a(httpGet);
                Header[] headers = httpResponse.getHeaders("X-Hostname");
                if (headers != null && headers.length > 0 && headers[0] != null) {
                    httpResponse.getHeaders("X-Hostname")[0].toString();
                }
                Header[] headers2 = httpResponse.getHeaders("X-ExecuteTime");
                if (headers2 != null && headers2.length > 0 && headers2[0] != null) {
                    httpResponse.getHeaders("X-ExecuteTime")[0].toString();
                }
            } catch (Throwable th) {
                if (a2 != null) {
                    try {
                        ClientConnectionManager connectionManager = a2.c.getConnectionManager();
                        if (connectionManager != null) {
                            connectionManager.shutdown();
                            b.b = null;
                        }
                    } catch (Throwable th2) {
                    }
                }
                throw th;
            }
        }
        return httpResponse;
    }

    private HttpHost c() {
        URL b;
        if (Build.VERSION.SDK_INT >= 11) {
            String g = g();
            if ((g != null && !g.contains("wap")) || (b = b()) == null) {
                return null;
            }
            com.alipay.sdk.cons.b.a.equalsIgnoreCase(b.getProtocol());
            String property = System.getProperty("https.proxyHost");
            String property2 = System.getProperty("https.proxyPort");
            if (TextUtils.isEmpty(property)) {
                return null;
            }
            return new HttpHost(property, Integer.parseInt(property2));
        }
        NetworkInfo f = f();
        if (f == null || !f.isAvailable() || f.getType() != 0) {
            return null;
        }
        String defaultHost = Proxy.getDefaultHost();
        int defaultPort = Proxy.getDefaultPort();
        if (defaultHost != null) {
            return new HttpHost(defaultHost, defaultPort);
        }
        return null;
    }

    private HttpHost d() {
        NetworkInfo f = f();
        if (f == null || !f.isAvailable() || f.getType() != 0) {
            return null;
        }
        String defaultHost = Proxy.getDefaultHost();
        int defaultPort = Proxy.getDefaultPort();
        if (defaultHost == null) {
            return null;
        }
        return new HttpHost(defaultHost, defaultPort);
    }

    private HttpHost e() {
        URL b;
        String g = g();
        if ((g != null && !g.contains("wap")) || (b = b()) == null) {
            return null;
        }
        com.alipay.sdk.cons.b.a.equalsIgnoreCase(b.getProtocol());
        String property = System.getProperty("https.proxyHost");
        String property2 = System.getProperty("https.proxyPort");
        if (TextUtils.isEmpty(property)) {
            return null;
        }
        return new HttpHost(property, Integer.parseInt(property2));
    }

    private NetworkInfo f() {
        try {
            return ((ConnectivityManager) this.c.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            return null;
        }
    }

    private String g() {
        try {
            NetworkInfo f = f();
            if (f != null && f.isAvailable()) {
                if (f.getType() == 1) {
                    return "wifi";
                }
                return f.getExtraInfo().toLowerCase();
            }
            return HttpHeaders.Values.NONE;
        } catch (Exception e) {
            return HttpHeaders.Values.NONE;
        }
    }
}
