package com.netease.cloud.nos.android.utils;

import android.content.Context;
import com.alipay.sdk.cons.b;
import com.netease.cloud.nos.android.core.WanAccelerator;
import com.netease.cloud.nos.android.ssl.SSLTrustAllSocketFactory;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

/* loaded from: classes.dex */
public class Http {
    private static HttpClient httpClient = null;
    private static HttpClient lbsHttpClient = null;

    public static HttpClient getHttpClient(Context ctx) {
        HttpClient extHttpClient = WanAccelerator.getConf().getHttpClient();
        if (extHttpClient == null) {
            if (httpClient == null) {
                httpClient = buildHttpClient(ctx, WanAccelerator.getConf().getConnectionTimeout(), WanAccelerator.getConf().getSoTimeout());
            }
            return httpClient;
        }
        return extHttpClient;
    }

    public static HttpClient getLbsHttpClient(Context ctx) {
        HttpClient extHttpClient = WanAccelerator.getConf().getHttpClient();
        if (extHttpClient == null) {
            if (lbsHttpClient == null) {
                lbsHttpClient = buildHttpClient(ctx, WanAccelerator.getConf().getLbsConnectionTimeout(), WanAccelerator.getConf().getLbsSoTimeout());
            }
            return lbsHttpClient;
        }
        return extHttpClient;
    }

    private static HttpClient buildHttpClient(Context context, int connTimeout, int soTimeout) {
        HttpParams httpParams = new BasicHttpParams();
        ConnManagerParams.setMaxTotalConnections(httpParams, 10);
        ConnPerRoute connPerRoute = new ConnPerRouteBean(3);
        ConnManagerParams.setMaxConnectionsPerRoute(httpParams, connPerRoute);
        HttpProtocolParams.setVersion(httpParams, HttpVersion.HTTP_1_1);
        SchemeRegistry registry = new SchemeRegistry();
        registry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        registry.register(new Scheme(b.a, SSLTrustAllSocketFactory.getSocketFactory(), 443));
        ClientConnectionManager cm = new ThreadSafeClientConnManager(httpParams, registry);
        HttpClient httpClient2 = new DefaultHttpClient(cm, httpParams);
        httpClient2.getParams().setParameter("http.socket.timeout", Integer.valueOf(soTimeout));
        httpClient2.getParams().setParameter("http.connection.timeout", Integer.valueOf(connTimeout));
        return httpClient2;
    }
}
