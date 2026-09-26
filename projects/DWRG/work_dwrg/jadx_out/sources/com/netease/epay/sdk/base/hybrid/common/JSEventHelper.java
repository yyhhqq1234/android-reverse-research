package com.netease.epay.sdk.base.hybrid.common;

import android.os.Build;
import android.webkit.WebView;
import com.alipay.sdk.util.i;

/* loaded from: classes.dex */
public class JSEventHelper {
    private static final String WEBVIEW_BACKED = "ep_webViewBacked";
    private static final String WEBVIEW_DID_APPEAR = "ep_webViewDidAppear";
    private static final String WEBVIEW_DID_DISAPPEAR = "ep_webViewDidDisappear";
    private static final String WEBVIEW_DID_FINISHLOAD = "ep_webViewDidFinishLoad";
    private static final String WEBVIEW_WILL_APPEAR = "ep_webViewWillAppear";
    private static final String WEBVIEW_WILL_DISAPPEAR = "ep_webViewWillDisappear";

    public static void dispatchJSEvent(WebView webView, String eventName, String data) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder("var customEvent = new CustomEvent('");
            sb.append(eventName).append("'");
            if (data != null) {
                sb.append(",{'detail':").append(data).append(i.d);
            }
            sb.append(");document.dispatchEvent(customEvent);");
            if (Build.VERSION.SDK_INT >= 19) {
                webView.evaluateJavascript(sb.toString(), null);
            } else {
                webView.loadUrl("javascript:" + sb.toString());
            }
        }
    }

    public static void onWebViewDidAppear(WebView webView, String data) {
        dispatchJSEvent(webView, WEBVIEW_DID_APPEAR, data);
    }

    public static void onWebViewDidDisappear(WebView webView, String data) {
        dispatchJSEvent(webView, WEBVIEW_DID_DISAPPEAR, data);
    }

    public static void onWebViewDidFinishLoad(WebView webView, String data) {
        dispatchJSEvent(webView, WEBVIEW_DID_FINISHLOAD, data);
    }

    public static void onWebViewBacked(WebView webView, String data) {
        dispatchJSEvent(webView, WEBVIEW_BACKED, data);
    }
}
