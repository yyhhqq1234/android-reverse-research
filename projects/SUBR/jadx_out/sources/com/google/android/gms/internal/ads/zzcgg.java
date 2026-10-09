package com.google.android.gms.internal.ads;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@23.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcgg extends zzcgf {
    public zzcgg(zzcex zzcexVar, zzbbj zzbbjVar, boolean z, zzebv zzebvVar) {
        super(zzcexVar, zzbbjVar, z, zzebvVar);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return zzW(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
