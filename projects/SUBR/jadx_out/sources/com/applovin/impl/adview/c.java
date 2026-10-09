package com.applovin.impl.adview;

import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.MotionEvent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.aq;
import com.applovin.impl.dq;
import com.applovin.impl.ka;
import com.applovin.impl.la;
import com.applovin.impl.mq;
import com.applovin.impl.pi;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tp;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.sdk.AppLovinAdSize;
import com.google.firebase.messaging.Constants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
public class c extends pi {
    private final com.applovin.impl.sdk.j a;
    private final com.applovin.impl.sdk.n b;
    private final a c;

    public c(a aVar, com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        this.c = aVar;
    }

    private void b() {
        this.c.a();
    }

    protected a c() {
        return this.c;
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        if (com.applovin.impl.sdk.n.a()) {
            this.b.d("AdWebView", "Loaded resource: " + str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (com.applovin.impl.sdk.n.a()) {
            this.b.d("AdWebView", "Loaded URL: " + str);
        }
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        a aVar = this.c;
        if (aVar != null) {
            com.applovin.impl.sdk.ad.b bVarI = aVar.i();
            if (com.applovin.impl.sdk.n.a()) {
                this.b.b("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + bVarI);
            }
        }
        if (yp.a(webResourceRequest.getUrl().toString(), this.a)) {
            this.a.D().a("adWebViewReceivedHttpError", webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        a aVar = this.c;
        if (aVar != null) {
            com.applovin.impl.sdk.ad.b bVarI = aVar.i();
            String str = "Received SSL error: " + sslError;
            if (com.applovin.impl.sdk.n.a()) {
                this.b.b("AdWebView", str + " for ad: " + bVarI);
            }
        }
    }

    @Override // com.applovin.impl.pi, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.render_process_gone"), null);
        if (this.c == null) {
            return true;
        }
        com.applovin.impl.sdk.n.h("AdWebView", "Render process gone for ad: " + this.c.i() + ". Process did crash: " + renderProcessGoneDetail.didCrash());
        com.applovin.impl.sdk.ad.b bVarI = this.c.i();
        if (bVarI != null) {
            Map mapA = la.a(bVarI);
            CollectionUtils.putStringIfValid("top_main_method", "onRenderProcessGone", mapA);
            if (z3.i()) {
                mapA.put(Constants.ScionAnalytics.PARAM_SOURCE, renderProcessGoneDetail.didCrash() ? "crash" : "non_crash");
            }
            this.a.D().a(ka.d0, mapA);
        }
        if (((Boolean) this.a.a(sj.E5)).booleanValue()) {
            if (renderProcessGoneDetail.didCrash() && ((Boolean) this.a.a(sj.J5)).booleanValue()) {
                throw new RuntimeException("Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: " + (bVarI != null ? String.valueOf(bVarI.getAdIdNumber()) : "null"));
            }
            if (webView != null && webView.equals(this.c.g())) {
                this.c.b();
                AppLovinAdSize appLovinAdSizeM = this.c.m();
                if (yp.a(appLovinAdSizeM)) {
                    this.c.a(appLovinAdSizeM);
                    this.c.H();
                }
            }
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return a(webView, url.toString());
        }
        if (!com.applovin.impl.sdk.n.a()) {
            return false;
        }
        this.b.b("AdWebView", "No url found for request");
        return false;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        a aVar = this.c;
        if (aVar != null) {
            com.applovin.impl.sdk.ad.b bVarI = aVar.i();
            String str3 = "Received error with error code: " + i + " with description \\'" + str + "\\' for URL: " + str2;
            if (com.applovin.impl.sdk.n.a()) {
                this.b.b("AdWebView", str3 + " for ad: " + bVarI);
            }
        }
        if (yp.a(str2, this.a)) {
            this.a.D().a("adWebViewReceivedError", str2, i);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return a(webView, str);
    }

    private void a(aq aqVar, b bVar) {
        a(aqVar, bVar, (Bundle) null);
    }

    private void a(aq aqVar, b bVar, Bundle bundle) {
        dq dqVarL1 = aqVar.l1();
        if (dqVarL1 != null) {
            mq.a(dqVarL1.b(), this.c.l());
            a(bVar, dqVarL1.c(), bundle);
        }
    }

    /* JADX WARN: Code duplicated, block: B:113:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:161:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:93:0x0185  */
    protected boolean a(WebView webView, String str) {
        boolean z;
        if (this.c == null) {
            return true;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.b.d("AdWebView", "Processing click on ad URL \"" + str + "\"");
        }
        if (str != null && (webView instanceof b)) {
            Uri uri = Uri.parse(str);
            b bVar = (b) webView;
            String scheme = uri.getScheme();
            String host = uri.getHost();
            String path = uri.getPath();
            com.applovin.impl.sdk.ad.b bVarI = this.c.i();
            if (bVarI == null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.b.b("AdWebView", "Unable to process click, ad not found!");
                }
                return true;
            }
            Iterator it = bVarI.e0().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                String str2 = (String) it.next();
                if (StringUtils.isValidString(path) && path.contains(str2)) {
                    z = false;
                    break;
                }
            }
            boolean zA = bVar.a();
            boolean z2 = (!bVarI.a1() || zA) ? z : false;
            if ("applovin".equals(scheme) && "com.applovin.sdk".equals(host)) {
                if ("/adservice/close_ad".equals(path)) {
                    String str3 = this.a.f0().getExtraParameters().get("enable_close_URL_ad_value");
                    if (StringUtils.isValidString(str3) && Boolean.parseBoolean(str3)) {
                        bVarI.setMaxAdValue("close_url", str);
                    }
                    a();
                } else if ("/adservice/expand_ad".equals(path)) {
                    if (bVarI.b1() && !zA) {
                        if (com.applovin.impl.sdk.n.a()) {
                            this.b.b("AdWebView", "Skipping expand command without user interaction");
                        }
                        return true;
                    }
                    a(bVar.getLastClickEvent());
                } else if ("/adservice/contract_ad".equals(path)) {
                    b();
                } else {
                    if ("/adservice/no_op".equals(path)) {
                        return true;
                    }
                    if ("/adservice/load_url".equals(path)) {
                        if (a(zA, bVarI, uri)) {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.b.b("AdWebView", "Skipping URL load command without user interaction");
                            }
                            return true;
                        }
                        tp.a(uri, this.c, this.a);
                    } else if ("/adservice/track_click_now".equals(path)) {
                        if (a(zA, bVarI, uri)) {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.b.b("AdWebView", "Skipping click tracking command without user interaction");
                            }
                            return true;
                        }
                        if (bVarI instanceof aq) {
                            a((aq) bVarI, bVar);
                        } else {
                            a(bVar, Uri.parse("/adservice/track_click_now"));
                        }
                    } else if ("/adservice/deeplink".equals(path)) {
                        if (a(zA, bVarI, uri)) {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.b.b("AdWebView", "Skipping deep link plus command without user interaction");
                            }
                            return true;
                        }
                        if (bVarI instanceof aq) {
                            aq aqVar = (aq) bVarI;
                            if (aqVar.C1()) {
                                a(aqVar, bVar);
                            } else {
                                a(bVar, uri);
                            }
                        } else {
                            a(bVar, uri);
                        }
                    } else if ("/adservice/postback".equals(path)) {
                        tp.a(uri, bVarI, this.a);
                    } else if ("/ga_init".equals(path)) {
                        this.c.b(uri);
                    } else if ("/ga_event".equals(path)) {
                        this.c.a(uri);
                    } else if ("/playable_event".equals(path)) {
                        a(uri);
                    } else if ("/adservice/direct_download".equals(path)) {
                        Bundle bundleA = tp.a(uri);
                        if (bVarI instanceof aq) {
                            aq aqVar2 = (aq) bVarI;
                            if (aqVar2.C1()) {
                                a(aqVar2, bVar, bundleA);
                            } else {
                                a(bVar, bVarI.j(), bundleA);
                            }
                        } else {
                            a(bVar, bVarI.j(), bundleA);
                        }
                    } else if ("/template_error".equals(path)) {
                        tp.b(uri, bVarI, this.a);
                    } else if (this.c.h() != null) {
                        if ("/video_began".equals(path)) {
                            this.c.h().b(yp.a(uri.getQueryParameter(IronSourceConstants.EVENTS_DURATION), 0.0d));
                        } else if ("/video_completed".equals(path)) {
                            this.c.h().e();
                        } else if ("/video_progress".equals(path)) {
                            this.c.h().a(yp.a(uri.getQueryParameter("percent_viewed"), 0.0d));
                        } else if ("/video_waiting".equals(path)) {
                            this.c.h().a();
                        } else if ("/video_resumed".equals(path)) {
                            this.c.h().d();
                        }
                    } else if ("/adservice/fully_watched".equals(path)) {
                        this.c.A();
                    } else {
                        if (com.applovin.impl.sdk.n.a()) {
                            this.b.k("AdWebView", "Unknown URL: " + str);
                        }
                        if (com.applovin.impl.sdk.n.a()) {
                            this.b.k("AdWebView", "Path: " + path);
                        }
                    }
                }
            } else if (z2) {
                List listY0 = bVarI.y0();
                List listX0 = bVarI.x0();
                if ((!listY0.isEmpty() && !listY0.contains(scheme)) || (!listX0.isEmpty() && !listX0.contains(host))) {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.b.b("AdWebView", "URL is not whitelisted - bypassing click");
                    }
                } else {
                    if (bVarI instanceof aq) {
                        aq aqVar3 = (aq) bVarI;
                        if (aqVar3.C1()) {
                            a(aqVar3, bVar);
                        } else {
                            a(bVar, uri);
                        }
                    } else {
                        a(bVar, uri);
                    }
                    if (!zA && bVarI.h1()) {
                        this.a.D().a(ka.O, a(bVarI, uri));
                    }
                }
            }
        }
        return true;
    }

    private boolean a(boolean z, com.applovin.impl.sdk.ad.b bVar, Uri uri) {
        if (z) {
            return false;
        }
        if (bVar.b1()) {
            return true;
        }
        if (bVar.h1()) {
            this.a.D().a(ka.O, a(bVar, uri));
        }
        return false;
    }

    private static Map a(com.applovin.impl.sdk.ad.b bVar, Uri uri) {
        Map mapA = la.a(bVar);
        CollectionUtils.putStringIfValid("url", uri.toString(), mapA);
        return mapA;
    }

    private void a() {
        this.c.z();
    }

    private void a(MotionEvent motionEvent) {
        this.c.a(motionEvent);
    }

    private void a(b bVar, Uri uri) {
        a(bVar, uri, (Bundle) null);
    }

    private void a(b bVar, Uri uri, Bundle bundle) {
        com.applovin.impl.sdk.ad.b currentAd = bVar.getCurrentAd();
        AppLovinAdView appLovinAdViewK = this.c.k();
        if (appLovinAdViewK != null && currentAd != null) {
            if (currentAd instanceof aq) {
                ((aq) currentAd).getAdEventTracker().v();
            }
            this.c.a(currentAd, appLovinAdViewK, uri, bVar.getAndClearLastClickEvent(), bundle);
        } else if (com.applovin.impl.sdk.n.a()) {
            this.b.b("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
        }
    }

    private void a(Uri uri) {
        String str;
        boolean booleanQueryParameter = uri.getBooleanQueryParameter("success", false);
        String queryParameter = uri.getQueryParameter("type");
        if (booleanQueryParameter) {
            str = "Tracked event: " + queryParameter;
        } else {
            str = "Failed to track event: " + queryParameter;
        }
        yp.a(str, com.applovin.impl.sdk.j.m());
    }
}
