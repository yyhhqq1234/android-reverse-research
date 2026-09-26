package com.netease.mpay.widget.b;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.mpay.Cdo;
import com.netease.mpay.b.a;
import com.netease.mpay.b.al;
import com.netease.mpay.b.am;
import com.netease.mpay.b.ao;
import com.netease.mpay.b.ar;
import com.netease.mpay.bj;
import com.netease.mpay.bk;
import com.netease.mpay.e.b.ah;
import com.netease.mpay.e.b.o;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.an;
import com.netease.mpay.f.au;
import com.netease.mpay.ii;
import com.netease.mpay.oy;
import com.netease.mpay.server.a.ax;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.aa;
import com.netease.mpay.widget.webview.js.Config;
import com.netease.mpay.widget.webview.js.WebViewEx;
import com.netease.mpay.widget.webview.js.WebViewExListener;
import java.io.File;

/* loaded from: classes.dex */
public abstract class c extends com.netease.mpay.a implements WebViewExListener {
    protected WebViewEx d;
    private e e;
    private C0059c f;

    /* loaded from: classes.dex */
    public static class a {
        boolean a;
        String b;

        public a(boolean z, String str) {
            this.a = z;
            this.b = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        boolean a = true;
        a b = new a();
        boolean c = true;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class a {
            int a = -1;
            String b = null;

            a() {
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public String a(boolean z) {
                switch (this.a) {
                    case 1:
                        return z ? "cz_success" : "zf_success";
                    case 2:
                        return z ? "cz_fail" : "zf_fail";
                    default:
                        return z ? "cz_weizhi" : "zf_weizhi";
                }
            }

            void a() {
                a((String) null);
            }

            void a(String str) {
                new Handler().post(new l(this, str));
            }
        }

        b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* renamed from: com.netease.mpay.widget.b.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0059c {
        private d b;
        private boolean c;
        private an d;
        private com.netease.mpay.widget.s e;
        private b f;

        private C0059c() {
            this.b = d.UNKNOWN;
            this.c = false;
            this.d = null;
            this.f = new b();
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ C0059c(c cVar, com.netease.mpay.widget.b.d dVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.netease.mpay.widget.s c() {
            if (this.e == null) {
                this.e = new com.netease.mpay.widget.s(c.this.a);
            }
            return this.e;
        }

        public void a() {
            this.f.c = false;
        }

        public void a(an anVar) {
            this.c = false;
            this.d = anVar;
            c.this.d.loadUrl("file:///android_asset/netease_mpay/loading.html");
        }

        public void a(String str) {
            this.f.b.b = str;
        }

        public boolean b() {
            return this.f.a;
        }
    }

    /* loaded from: classes.dex */
    enum d {
        UNKNOWN,
        LOADING,
        LOADED;

        d() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class e extends a.C0035a {
        a d;

        public e(a.C0035a c0035a) {
            this(c0035a, null);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public e(a.C0035a c0035a, a aVar) {
            super(c0035a.a, c0035a.b, c0035a.c);
            this.d = aVar;
        }
    }

    public c(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, al alVar) {
        super.a(i, i2, intent, alVar);
        if (i == 1080) {
            this.d.uploadFiles(i2, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(b.a aVar) {
        if (!aVar.a() || this.e.d == null) {
            return;
        }
        new ii(this.a).d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(WebView webView, String str) {
        if (!str.trim().startsWith(BaseConstants.RISK_TYEP_SMS)) {
            return com.netease.mpay.widget.b.a.a(this.a, this.e.a, this.e.b, this.e.c, webView, str);
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e2) {
            Cdo.a((Throwable) e2);
        }
        return true;
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void alert(String str) {
        this.f.c().a(str, this.a.getString(RIdentifier.h.cn));
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.e = s();
        this.f = new C0059c(this, null);
        if (this.e.d != null && !TextUtils.isEmpty(this.e.d.b)) {
            this.f.a(this.e.d.b);
        }
        if (this.e.c != null) {
            bj.a(this.a, this.e.c.mScreenOrientation);
        }
        this.a.setContentView(RIdentifier.g.V);
        w.a(this.a);
        this.d = (WebViewEx) this.a.findViewById(RIdentifier.f.cf);
        this.d.regist(this.a, new Config(bj.a(this.e.c.mScreenOrientation), "a2.14.1", bk.b.booleanValue(), bk.d.booleanValue() ? "tv" : "games").enableUploadFile(1080), this);
        String absolutePath = new File(this.a.getApplicationContext().getCacheDir(), getClass().getPackage().getName()).getAbsolutePath();
        this.d.getSettings().setAppCacheMaxSize(16777216L);
        this.d.getSettings().setAppCachePath(absolutePath);
        this.d.getSettings().setAppCacheEnabled(true);
        this.d.setScrollBarStyle(0);
        this.d.setDownloadListener(new m(this.a, new com.netease.mpay.widget.b.d(this)));
        if (v.a()) {
            if (v.a(this.a)) {
                new com.netease.mpay.widget.s(this.a).a(this.a.getString(RIdentifier.h.ea), this.a.getString(RIdentifier.h.dV), new com.netease.mpay.widget.b.e(this), this.a.getString(RIdentifier.h.g), new f(this), false);
            } else {
                new com.netease.mpay.widget.s(this.a).b(this.a.getString(RIdentifier.h.ea), this.a.getString(RIdentifier.h.cn), new g(this));
            }
        }
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void changeNavigationTitle(String str) {
        a(str);
    }

    public void closeWindow() {
        if (this.e.d == null) {
            new am().a(this.a);
            return;
        }
        if (this.f.f.b.a != -1) {
            this.f.f.b.a(this.e.d.a ? "cz_fhyx" : "zf_fhyx");
        }
        ii iiVar = new ii(this.a);
        switch (this.f.f.b.a) {
            case -1:
            case 3:
                iiVar.c();
                return;
            case 0:
            default:
                return;
            case 1:
                iiVar.a();
                return;
            case 2:
                iiVar.b();
                return;
        }
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void jumpToMobileChangePage() {
        new an(this.a, this.e.a, this.e.b, an.a.OFFLINE_ACCOUNT_CHANGE).a(new j(this)).h();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        if (!this.f.f.a) {
            return true;
        }
        if (!this.d.canGoBack()) {
            closeWindow();
            return true;
        }
        if ("file:///android_asset/netease_mpay/loading.html".equals(this.d.copyBackForwardList().getItemAtIndex(r0.getCurrentIndex() - 1).getUrl())) {
            closeWindow();
            return true;
        }
        this.d.goBack();
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        closeWindow();
        return true;
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onError(int i) {
        try {
            ax.a(this.a, i);
        } catch (com.netease.mpay.server.a e2) {
            b.a a2 = b.a.a(e2);
            if (a2 != null) {
                a(a2);
            }
        }
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onMobileBindRelatedAccount(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onMobileChanged(String str) {
        if (this.a == null || this.a.isFinishing()) {
            return;
        }
        this.a.finish();
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public final void onPageFinished(WebView webView, String str) {
        if (this.d == null || this.f.c || this.f.d == null) {
            return;
        }
        this.f.c = true;
        this.f.d.a(new h(this)).h();
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.f.b == d.UNKNOWN && TextUtils.equals(str, "file:///android_asset/netease_mpay/loading.html")) {
            this.f.b = d.LOADING;
        } else if (this.f.b == d.LOADED && TextUtils.equals(str, "file:///android_asset/netease_mpay/loading.html")) {
            webView.stopLoading();
            closeWindow();
            return;
        }
        if (a(webView, str)) {
            webView.stopLoading();
        }
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onPayFinished(int i) {
        boolean z = false;
        setBackButton(false);
        if (this.e.d != null && i != this.f.f.b.a) {
            z = true;
        }
        this.f.f.b.a = i;
        if (z) {
            this.f.f.b.a();
        }
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onPayRedirect(int i) {
        switch (i) {
            case 1:
            default:
                return;
            case 2:
                closeWindow();
                return;
            case 3:
                if (this.e.d != null && this.e.d.a) {
                    this.f.f.b.a("cz_jxcz");
                }
                new ar.g().a(this.a);
                return;
            case 4:
                u();
                return;
            case 5:
                t();
                return;
        }
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onQrcodeLogin(String str, String str2) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onReady() {
    }

    public void onRealnameVerify() {
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        if (this.a.isFinishing() || TextUtils.isEmpty(str2) || !str2.startsWith(bk.h)) {
            return;
        }
        new i(this).a(this.a, i, str2);
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public void onReceivedTitle(WebView webView, String str) {
        if (TextUtils.equals(webView.getUrl(), "file:///android_asset/netease_mpay/loading.html") || TextUtils.isEmpty(str) || str.startsWith("http")) {
            return;
        }
        changeNavigationTitle(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onTokenRefresh(String str) {
        String b2 = com.netease.mpay.server.a.d.b(str);
        com.netease.mpay.e.c.k c = new com.netease.mpay.e.b(this.a, this.e.a).c();
        com.netease.mpay.e.b.o b3 = c.b(this.e.b);
        if (b3 == null || TextUtils.isEmpty(b2)) {
            return;
        }
        b3.d = b2;
        c.a(b3, this.e.b, true);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onUrsMobileLogin(String str) {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onUserLogin(String str) {
        o.a xVar;
        com.netease.mpay.server.response.m a2 = com.netease.mpay.server.a.d.a(str);
        if (a2 == null) {
            return;
        }
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.e.a);
        switch (a2.c) {
            case 1:
                xVar = new ah(TextUtils.isEmpty(a2.n) ? false : true);
                break;
            case 7:
                xVar = new com.netease.mpay.e.b.x(false);
                break;
            default:
                xVar = null;
                break;
        }
        au.a(this.a, this.e.a, bVar, this.e.b, a2, null, xVar, true);
        if (this.f.f.c) {
            new oy(this.a, this.e.a, a2.i, a2.c, this.e.b).a();
        }
        new ao(bVar.d().a().j, a2).a(this.a);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onUserLogout() {
    }

    public void onVerify(String str) {
        onUserLogin(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void onVerifyRelatedMobile() {
    }

    public void onVerifyRelatedMobile(String str) {
    }

    @Override // com.netease.mpay.a
    public void r() {
        super.r();
        if (this.d != null) {
            this.d.destroy();
        }
    }

    protected abstract e s();

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void saveImage(String str) {
        new com.netease.mpay.f.o(this.a, str, new k(this)).execute(new Void[0]);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void saveToClipboard(String str) {
        aa.a(this.a, str);
        this.f.c().a(this.a.getString(RIdentifier.h.cR));
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void setBackButton(boolean z) {
        this.f.f.a = z;
    }

    @Override // com.netease.mpay.widget.webview.js.WebViewExListener
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if ((this.f.b == d.UNKNOWN || this.f.b == d.LOADING) && !TextUtils.equals(str, "file:///android_asset/netease_mpay/loading.html")) {
            this.f.b = d.LOADED;
        } else if (this.f.b == d.LOADED && TextUtils.equals(str, "file:///android_asset/netease_mpay/loading.html")) {
            closeWindow();
            return true;
        }
        return a(webView, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t() {
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public final void toast(String str) {
        this.f.c().a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void u() {
    }

    public C0059c w() {
        if (this.f == null) {
            this.f = new C0059c(this, null);
        }
        return this.f;
    }
}
