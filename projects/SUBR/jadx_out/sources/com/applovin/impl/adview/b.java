package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import com.applovin.impl.aq;
import com.applovin.impl.dq;
import com.applovin.impl.f0;
import com.applovin.impl.iq;
import com.applovin.impl.j3;
import com.applovin.impl.pi;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tr;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends j3 {
    private final com.applovin.impl.sdk.n c;
    private final com.applovin.impl.sdk.j d;
    private com.applovin.impl.sdk.ad.b f;
    private boolean g;
    private boolean h;
    private final List i;
    private final Object j;

    public b(com.applovin.impl.sdk.j jVar, Context context) {
        super(context);
        this.i = new ArrayList();
        this.j = new Object();
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.d = jVar;
        this.c = jVar.I();
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        if (z3.k() && ((Boolean) jVar.a(sj.K5)).booleanValue()) {
            setWebViewRenderProcessClient(new d(jVar).a());
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.b$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return b.a(view, motionEvent);
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.applovin.impl.adview.b$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.a(view);
            }
        });
    }

    private void b() {
        synchronized (this.j) {
            Iterator it = this.i.iterator();
            while (it.hasNext()) {
                tr.a(this, (String) it.next(), "AdWebView", this.d);
            }
            this.i.clear();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.g = true;
        this.h = false;
        super.destroy();
    }

    com.applovin.impl.sdk.ad.b getCurrentAd() {
        return this.f;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void setAdHtmlLoaded(boolean z) {
        this.h = z;
        if (z && ((Boolean) this.d.a(sj.e6)).booleanValue()) {
            b();
        }
    }

    private void a(String str, String str2, String str3, com.applovin.impl.sdk.j jVar, aq aqVar) {
        String strA = a(str3, str);
        if (StringUtils.isValidString(strA)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + strA);
            }
            loadDataWithBaseURL(str2, strA, "text/html", null, "");
            return;
        }
        String strA2 = a((String) jVar.a(sj.E4), str);
        if (StringUtils.isValidString(strA2)) {
            if (aqVar.D1() && aqVar.isOpenMeasurementEnabled()) {
                strA2 = jVar.V().a(strA2);
            }
            String str4 = strA2;
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + str4);
            }
            loadDataWithBaseURL(str2, str4, "text/html", null, "");
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
        }
        loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (view.hasFocus()) {
            return false;
        }
        view.requestFocus();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view) {
        if (!com.applovin.impl.sdk.n.a()) {
            return true;
        }
        this.c.a("AdWebView", "Received a LongClick event.");
        return true;
    }

    public void a(c cVar) {
        if (((Boolean) this.d.a(sj.t1)).booleanValue()) {
            loadUrl(AndroidWebViewClient.BLANK_PAGE);
            clearView();
        }
        setWebViewClient(cVar != null ? cVar : new pi());
        setWebChromeClient(new f0(cVar != null ? cVar.c() : null, this.d));
        synchronized (this.i) {
            this.i.clear();
        }
        onResume();
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        if (!this.g) {
            this.f = bVar;
            try {
                applySettings(bVar);
                if (yp.a(bVar.getSize())) {
                    setVisibility(0);
                }
                if (bVar instanceof com.applovin.impl.sdk.ad.a) {
                    loadDataWithBaseURL(bVar.h(), ((com.applovin.impl.sdk.ad.a) bVar).l1(), "text/html", null, "");
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.a("AdWebView", "AppLovinAd rendered");
                        return;
                    }
                    return;
                }
                if (bVar instanceof aq) {
                    aq aqVar = (aq) bVar;
                    dq dqVarL1 = aqVar.l1();
                    if (dqVarL1 != null) {
                        iq iqVarE = dqVarL1.e();
                        Uri uriC = iqVarE.c();
                        String string = uriC != null ? uriC.toString() : "";
                        String strB = iqVarE.b();
                        String strN1 = aqVar.n1();
                        if (!StringUtils.isValidString(string) && !StringUtils.isValidString(strB)) {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.c.b("AdWebView", "Unable to load companion ad. No resources provided.");
                                return;
                            }
                            return;
                        }
                        if (iqVarE.d() == iq.a.STATIC) {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.c.a("AdWebView", "Rendering WebView for static VAST ad");
                            }
                            String strA = a((String) this.d.a(sj.D4), string);
                            if (aqVar.D1() && aqVar.isOpenMeasurementEnabled() && aqVar.E1()) {
                                strA = this.d.V().a(strA);
                            }
                            loadDataWithBaseURL(bVar.h(), strA, "text/html", null, "");
                            return;
                        }
                        if (iqVarE.d() == iq.a.HTML) {
                            if (StringUtils.isValidString(strB)) {
                                String strA2 = a(strN1, strB);
                                String str = StringUtils.isValidString(strA2) ? strA2 : strB;
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.c.a("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + str);
                                }
                                loadDataWithBaseURL(bVar.h(), str, "text/html", null, "");
                                return;
                            }
                            if (StringUtils.isValidString(string)) {
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.c.a("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                                }
                                a(string, bVar.h(), strN1, this.d, aqVar);
                                return;
                            }
                            return;
                        }
                        if (iqVarE.d() == iq.a.IFRAME) {
                            if (StringUtils.isValidString(string)) {
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.c.a("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                                }
                                a(string, bVar.h(), strN1, this.d, aqVar);
                                return;
                            } else {
                                if (StringUtils.isValidString(strB)) {
                                    String strA3 = a(strN1, strB);
                                    String str2 = StringUtils.isValidString(strA3) ? strA3 : strB;
                                    if (com.applovin.impl.sdk.n.a()) {
                                        this.c.a("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + str2);
                                    }
                                    loadDataWithBaseURL(bVar.h(), str2, "text/html", null, "");
                                    return;
                                }
                                return;
                            }
                        }
                        if (com.applovin.impl.sdk.n.a()) {
                            this.c.b("AdWebView", "Failed to render VAST companion ad of invalid type");
                            return;
                        }
                        return;
                    }
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.a("AdWebView", "No companion ad provided.");
                        return;
                    }
                    return;
                }
                return;
            } catch (Throwable th) {
                throw new RuntimeException("Unable to render AppLovin ad (" + (bVar != null ? String.valueOf(bVar.getAdIdNumber()) : "null") + ") - " + th);
            }
        }
        com.applovin.impl.sdk.n.h("AdWebView", "Ad can not be loaded in a destroyed webview");
    }

    public void a(String str) {
        if (((Boolean) this.d.a(sj.e6)).booleanValue()) {
            if (this.h) {
                tr.a(this, str, "AdWebView", this.d);
                return;
            }
            synchronized (this.i) {
                this.i.add(str);
            }
            return;
        }
        tr.a(this, str, "AdWebView", this.d);
    }

    private String a(String str, String str2) {
        if (StringUtils.isValidString(str)) {
            return str.replace("{SOURCE}", str2);
        }
        return null;
    }
}
