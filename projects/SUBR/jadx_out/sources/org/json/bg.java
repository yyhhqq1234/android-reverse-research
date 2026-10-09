package org.json;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.drive.DriveFile;
import com.unity3d.services.UnityAdsConstants;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.controller.OpenUrlActivity;
import org.json.sdk.controller.k;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class bg implements ug {
    private static final String g = "loadWithUrl | webView is not null";
    private static final String h = "bg";
    private static final String i = "file://";
    private final String a;
    private String b;
    private WebView c;
    private zf d;
    private uf e;
    private Context f;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ JSONObject b;
        final /* synthetic */ String c;

        a(String str, JSONObject jSONObject, String str2) {
            this.a = str;
            this.b = jSONObject;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (bg.this.c != null) {
                kg.a(zp.q, new fg().a(rb.A, bg.g).a());
            }
            try {
                bg.this.b(this.a);
                bg.this.c.loadUrl(bg.this.a(this.b.getString("urlForWebView")));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adViewId", bg.this.a);
                bg.this.d.a(this.c, jSONObject);
            } catch (Exception e) {
                l9.d().a(e);
                bg.this.b(this.a, e.getMessage());
                kg.a(zp.q, new fg().a(rb.A, e.getMessage()).a());
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (bg.this.c != null) {
                    bg.this.c.destroy();
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adViewId", bg.this.a);
                if (bg.this.d != null) {
                    bg.this.d.a(this.a, jSONObject);
                    bg.this.d.b();
                }
                bg.this.d = null;
                bg.this.f = null;
            } catch (Exception e) {
                l9.d().a(e);
                Log.e(bg.h, "performCleanup | could not destroy ISNAdView webView ID: " + bg.this.a);
                kg.a(zp.r, new fg().a(rb.A, e.getMessage()).a());
                bg.this.b(this.b, e.getMessage());
            }
        }
    }

    class c implements ug.a {
        final /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        @Override // com.ironsource.ug.a
        public void a(String str) {
            Logger.i(bg.h, "ISNAdViewWebPresenter | WebViewClient | reportOnError: " + str);
            bg.this.b(this.a, str);
        }

        @Override // com.ironsource.ug.a
        public void b(String str) {
            Logger.i(bg.h, "ISNAdViewWebPresenter | WebViewClient | onRenderProcessGone: " + str);
            try {
                ((ViewGroup) bg.this.c.getParent()).removeView(bg.this.c);
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            bg.this.e();
        }
    }

    private class d extends WebChromeClient {
        private d() {
        }

        /* synthetic */ d(bg bgVar, a aVar) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebChromeClient(bg.this.new d());
            webView2.setWebViewClient(new e(bg.this, null));
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            Logger.i("onCreateWindow", "onCreateWindow");
            return true;
        }
    }

    private class e extends WebViewClient {
        private e() {
        }

        /* synthetic */ e(bg bgVar, a aVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e(bg.h, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Context context = webView.getContext();
            Intent intentA = new OpenUrlActivity.e(new k.b()).a(str).b(false).a(context);
            intentA.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intentA);
            return true;
        }
    }

    public bg(xf xfVar, Context context, String str, uf ufVar) {
        this.f = context;
        zf zfVar = new zf();
        this.d = zfVar;
        zfVar.g(str);
        this.a = str;
        this.d.a(xfVar);
        this.e = ufVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        if (!c(str)) {
            return str;
        }
        return i + this.b + d(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        Logger.i(h, "ISNAdViewWebPresenter | createWebView");
        WebView webView = new WebView(this.f);
        this.c = webView;
        webView.addJavascriptInterface(new yf(this), vf.e);
        this.c.setWebViewClient(new ag(new c(str)));
        this.c.setWebChromeClient(new d(this, null));
        dv.a(this.c);
        this.d.a(this.c);
    }

    private boolean c(String str) {
        return str.startsWith(".");
    }

    private String d(String str) {
        String strSubstring = str.substring(str.indexOf(UnityAdsConstants.DefaultUrls.AD_ASSET_PATH) + 1);
        return strSubstring.substring(strSubstring.indexOf(UnityAdsConstants.DefaultUrls.AD_ASSET_PATH));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        a("", "");
    }

    @Override // org.json.ug
    public synchronized void a(String str, String str2) {
        if (this.f == null) {
            return;
        }
        Logger.i(h, "performCleanup");
        Cif.a.d(new b(str, str2));
    }

    @Override // org.json.ug
    public void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            b(str3, y8.c.D);
            return;
        }
        Logger.i(h, "trying to perform WebView Action: " + str);
        try {
            if (str.equals(y8.h.t0)) {
                this.c.onPause();
            } else {
                if (!str.equals(y8.h.u0)) {
                    b(str3, y8.c.C);
                    return;
                }
                this.c.onResume();
            }
            this.d.f(str2);
        } catch (Exception e2) {
            l9.d().a(e2);
            b(str3, y8.c.E);
        }
    }

    @Override // org.json.ug
    public void a(JSONObject jSONObject, String str, String str2) {
        try {
            this.d.e(str);
        } catch (Exception e2) {
            l9.d().a(e2);
            Logger.i(h, "sendHandleGetViewVisibility fail with reason: " + e2.getMessage());
        }
    }

    public String b() {
        return this.a;
    }

    public void b(String str, String str2) {
        zf zfVar = this.d;
        if (zfVar != null) {
            zfVar.a(str, str2);
        }
    }

    @Override // org.json.ug
    public void b(JSONObject jSONObject, String str, String str2) {
        Cif.a.d(new a(str2, jSONObject, str));
    }

    public zf c() {
        return this.d;
    }

    @Override // org.json.ug
    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        try {
            this.d.a(jSONObject.getString("params"), str, str2);
        } catch (Exception e2) {
            l9.d().a(e2);
            Logger.i(h, "sendMessageToAd fail message: " + e2.getMessage());
            throw e2;
        }
    }

    public uf d() {
        return this.e;
    }

    public void e(String str) {
        this.b = str;
    }

    @Override // org.json.ug
    public WebView getPresentingView() {
        return this.c;
    }

    @JavascriptInterface
    public void handleMessageFromAd(String str) {
        this.d.c(str);
    }
}
