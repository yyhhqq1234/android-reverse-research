package com.netease.epay.sdk.base.hybrid;

import android.webkit.WebView;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface HybridHandler {
    void handle(WebView webView, String str, JSONObject jSONObject, JsCallback jsCallback);
}
