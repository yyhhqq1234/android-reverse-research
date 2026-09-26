package com.netease.epay.sdk.base.network;

import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.Interceptor;
import okhttp3.Response;

/* loaded from: classes.dex */
public class CookieInterceptor implements Interceptor {
    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public okhttp3.Response intercept(okhttp3.Interceptor.Chain r6) {
        /*
            r5 = this;
            r1 = 0
            android.webkit.CookieManager r0 = android.webkit.CookieManager.getInstance()     // Catch: java.lang.Exception -> L31
            android.webkit.CookieSyncManager r2 = android.webkit.CookieSyncManager.getInstance()     // Catch: java.lang.Exception -> L31
            r2.startSync()     // Catch: java.lang.Exception -> L31
            okhttp3.Request r3 = r6.request()     // Catch: java.lang.Exception -> L31
            okhttp3.HttpUrl r3 = r3.url()     // Catch: java.lang.Exception -> L31
            java.lang.String r3 = r3.host()     // Catch: java.lang.Exception -> L31
            java.lang.String r0 = r0.getCookie(r3)     // Catch: java.lang.Exception -> L31
            r2.stopSync()     // Catch: java.lang.Exception -> L4b
        L1f:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L39
            okhttp3.Request r0 = r6.request()
        L29:
            okhttp3.Response r0 = r6.proceed(r0)
            r5.cacheCookie(r0)
            return r0
        L31:
            r0 = move-exception
            r4 = r0
            r0 = r1
            r1 = r4
        L35:
            r1.printStackTrace()
            goto L1f
        L39:
            okhttp3.Request r1 = r6.request()
            okhttp3.Request$Builder r1 = r1.newBuilder()
            java.lang.String r2 = "Cookie"
            r1.addHeader(r2, r0)
            okhttp3.Request r0 = r1.build()
            goto L29
        L4b:
            r1 = move-exception
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.epay.sdk.base.network.CookieInterceptor.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    private void cacheCookie(Response response) {
        List<String> list;
        try {
            Map<String, List<String>> multimap = response.headers().toMultimap();
            String host = response.request().url().host();
            if (multimap != null && (list = multimap.get(HttpHeaders.Names.SET_COOKIE)) != null) {
                CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
                CookieManager cookieManager = CookieManager.getInstance();
                cookieSyncManager.startSync();
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    cookieManager.setCookie(host, it.next());
                }
                cookieSyncManager.stopSync();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
