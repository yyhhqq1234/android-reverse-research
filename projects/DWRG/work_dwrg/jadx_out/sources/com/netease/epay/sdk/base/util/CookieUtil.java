package com.netease.epay.sdk.base.util;

import android.content.Context;
import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.alipay.sdk.util.i;

/* loaded from: classes.dex */
public class CookieUtil {
    public static String buildUpCookie(String cookie, String domain) {
        StringBuilder sb = new StringBuilder();
        sb.append("NTES_SESS=").append(cookie).append(";Path=/;Domain=." + domain + i.b);
        return sb.toString();
    }

    public static void setCookie(Context context, WebView webView, String domain, String sessionCookie) {
        CookieSyncManager.createInstance(context.getApplicationContext());
        CookieManager cookieManager = CookieManager.getInstance();
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
            } catch (Exception e) {
                cookieManager.setAcceptCookie(true);
            }
        } else {
            cookieManager.setAcceptCookie(true);
        }
        if (sessionCookie != null) {
            cookieManager.removeSessionCookie();
        }
        try {
            Thread.sleep(200L);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        cookieManager.setCookie(".163.com", buildUpCookie(sessionCookie, "163.com"));
        cookieManager.setCookie("i.epay.126.net", buildUpCookie(sessionCookie, "i.epay.126.net"));
        CookieSyncManager.createInstance(context.getApplicationContext());
        CookieSyncManager.getInstance().sync();
    }

    public static void removeCookie(Context context) {
        CookieSyncManager.createInstance(context.getApplicationContext());
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.removeSessionCookie();
    }
}
