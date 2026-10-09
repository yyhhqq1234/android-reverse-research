package com.applovin.impl;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.google.firebase.messaging.Constants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class pi extends WebViewClient {
    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        HashMap<String, String> mapHashMap = CollectionUtils.hashMap("top_main_method", "onRenderProcessGone");
        if (z3.i()) {
            mapHashMap.put(Constants.ScionAnalytics.PARAM_SOURCE, renderProcessGoneDetail.didCrash() ? "crash" : "non_crash");
            mapHashMap.put("details", "renderer_priority_at_exit=" + renderProcessGoneDetail.rendererPriorityAtExit());
        }
        com.applovin.impl.sdk.j.u0.D().a(ka.d0, mapHashMap, ((Long) com.applovin.impl.sdk.j.u0.a(sj.s3)).longValue());
        com.applovin.impl.sdk.n.g("RenderProcessGoneHandlingWebViewClient", "onRenderProcessGone() handled");
        return true;
    }
}
