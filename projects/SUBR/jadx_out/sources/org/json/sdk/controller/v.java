package org.json.sdk.controller;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.CountDownTimer;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.google.android.gms.drive.DriveFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import org.json.Cif;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.a9;
import org.json.ao;
import org.json.aq;
import org.json.au;
import org.json.b9;
import org.json.cg;
import org.json.cr;
import org.json.cv;
import org.json.dg;
import org.json.dv;
import org.json.e9;
import org.json.eg;
import org.json.f9;
import org.json.fg;
import org.json.fj;
import org.json.h1;
import org.json.hj;
import org.json.hu;
import org.json.i9;
import org.json.ig;
import org.json.j0;
import org.json.jl;
import org.json.kg;
import org.json.l9;
import org.json.la;
import org.json.ll;
import org.json.ma;
import org.json.md;
import org.json.mediationsdk.logger.IronLog;
import org.json.mg;
import org.json.mn;
import org.json.n9;
import org.json.oe;
import org.json.oj;
import org.json.p3;
import org.json.p9;
import org.json.pa;
import org.json.pn;
import org.json.q9;
import org.json.qn;
import org.json.r3;
import org.json.r9;
import org.json.rb;
import org.json.rn;
import org.json.s8;
import org.json.s9;
import org.json.sdk.utils.IronSourceStorageUtils;
import org.json.sdk.utils.Logger;
import org.json.sdk.utils.SDKUtils;
import org.json.sj;
import org.json.u8;
import org.json.ug;
import org.json.v8;
import org.json.va;
import org.json.vd;
import org.json.w2;
import org.json.wf;
import org.json.x2;
import org.json.y8;
import org.json.yd;
import org.json.z3;
import org.json.zd;
import org.json.zn;
import org.json.zp;

/* JADX INFO: loaded from: classes3.dex */
public class v implements org.json.sdk.controller.l, mn, DownloadListener {
    private static final String a0 = "about:blank";
    public static int b0 = 0;
    public static String c0 = "is_store";
    public static String d0 = "external_url";
    public static String e0 = "secondary_web_view";
    private static String f0 = "success";
    private static String g0 = "fail";
    private String A;
    private org.json.sdk.controller.d B;
    private hu C;
    private x2 D;
    private ma G;
    private org.json.sdk.controller.o H;
    private org.json.sdk.controller.q I;
    private org.json.sdk.controller.u J;
    private org.json.sdk.controller.i K;
    private org.json.sdk.controller.a L;
    private org.json.sdk.controller.j M;
    private p3 N;
    private cv O;
    private org.json.sdk.controller.c P;
    private s8 Q;
    private JSONObject R;
    private com.ironsource.sdk.controller.l.a S;
    private com.ironsource.sdk.controller.l.b T;
    private i9 U;
    private boolean V;
    b9 X;
    final hj Y;
    private pn Z;
    private final Cif a;
    private e9 b;
    private String f;
    private String g;
    private final va h;
    private boolean i;
    private p j;
    private boolean k;
    private CountDownTimer l;
    public CountDownTimer m;
    private final o q;
    private View r;
    private FrameLayout s;
    private WebChromeClient.CustomViewCallback t;
    private FrameLayout u;
    private u v;
    private String w;
    private s9 x;
    private r9 y;
    private q9 z;
    private String c = "v";
    private String d = "IronSource";
    private final String e = "We're sorry, some error occurred. we will investigate it";
    private int n = 50;
    private int o = 50;
    private String p = y8.e.b;
    private Object E = new Object();
    private boolean F = false;
    private final oe W = jl.P().f();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.a(1);
        }
    }

    class b implements Runnable {
        final /* synthetic */ eg a;

        b(eg egVar) {
            this.a = egVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.P.b("controller html - failed to download - " + this.a.b());
        }
    }

    class c implements Runnable {
        final /* synthetic */ Context a;

        c(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.e(this.a);
        }
    }

    class d implements Runnable {
        final /* synthetic */ Context a;

        d(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.f(this.a);
        }
    }

    class e implements Runnable {
        final /* synthetic */ dg.e a;
        final /* synthetic */ String b;

        e(dg.e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p9 p9VarA;
            dg.e eVar = this.a;
            if ((eVar == dg.e.RewardedVideo || eVar == dg.e.Interstitial) && (p9VarA = v.this.a(eVar)) != null) {
                p9VarA.a(this.a, this.b);
            }
        }
    }

    class f extends s8 {
        f(JSONObject jSONObject, Context context) {
            super(jSONObject, context);
        }

        @Override // org.json.s8, org.json.le
        public void a() {
            if (v.this.i) {
                v.this.m("none");
            }
        }

        @Override // org.json.s8, org.json.le
        public void a(String str, JSONObject jSONObject) {
            if (v.this.i) {
                v.this.m(str);
            }
        }

        @Override // org.json.s8, org.json.le
        public void b(String str, JSONObject jSONObject) {
            if (jSONObject == null || !v.this.i) {
                return;
            }
            try {
                jSONObject.put(y8.i.t, str);
                v.this.e(jSONObject);
            } catch (JSONException e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    class g implements cv {
        g() {
        }

        @Override // org.json.cv
        public void a(String str, JSONObject jSONObject) {
            v.this.i(v.this.e(str, jSONObject.toString()));
        }
    }

    class h implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ WebView b;
        final /* synthetic */ String c;

        h(JSONObject jSONObject, WebView webView, String str) {
            this.a = jSONObject;
            this.b = webView;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.a(this.a, this.b);
            v.this.l("about:blank");
            v.this.l(this.c);
        }
    }

    class i extends CountDownTimer {
        final /* synthetic */ int a;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.P.b(y8.c.j);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(long j, long j2, int i) {
            super(j, j2);
            this.a = i;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(v.this.c, "Loading Controller Timer Finish");
            int i = this.a;
            if (i == 3) {
                v.this.b(new a());
            } else {
                v.this.a(i + 1);
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            Logger.i(v.this.c, "Loading Controller Timer Tick " + j);
        }
    }

    class j implements s {
        j() {
        }

        @Override // com.ironsource.sdk.controller.v.s
        public void a(String str, dg.e eVar, la laVar) {
            v.this.a(str, eVar, laVar);
        }
    }

    class k implements s {
        k() {
        }

        @Override // com.ironsource.sdk.controller.v.s
        public void a(String str, dg.e eVar, la laVar) {
            v.this.a(str, eVar, laVar);
        }
    }

    class l implements s {
        l() {
        }

        @Override // com.ironsource.sdk.controller.v.s
        public void a(String str, dg.e eVar, la laVar) {
            v.this.a(str, eVar, laVar);
        }
    }

    class m implements Runnable {
        final /* synthetic */ dg.e a;
        final /* synthetic */ la b;
        final /* synthetic */ String c;

        m(dg.e eVar, la laVar, String str) {
            this.a = eVar;
            this.b = laVar;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            la laVar;
            dg.e eVar = dg.e.RewardedVideo;
            dg.e eVar2 = this.a;
            if ((eVar != eVar2 && dg.e.Interstitial != eVar2 && dg.e.Banner != eVar2) || (laVar = this.b) == null || TextUtils.isEmpty(laVar.h())) {
                return;
            }
            p9 p9VarA = v.this.a(this.a);
            Log.d(v.this.c, "onAdProductInitFailed (message:" + this.c + ")(" + this.a + ")");
            if (p9VarA != null) {
                p9VarA.a(this.a, this.b.h(), this.c);
            }
        }
    }

    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.a(1);
        }
    }

    private class o extends WebChromeClient {
        private o() {
        }

        /* synthetic */ o(v vVar, f fVar) {
            this();
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            FrameLayout frameLayout = new FrameLayout(v.this.Y.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return frameLayout;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            Logger.i("MyApplication", consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebChromeClient(this);
            webView2.setWebViewClient(new q(v.this, null));
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            Logger.i("onCreateWindow", "onCreateWindow");
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            Logger.i("Test", "onHideCustomView");
            if (v.this.r == null) {
                return;
            }
            v.this.r.setVisibility(8);
            v.this.s.removeView(v.this.r);
            v.this.r = null;
            v.this.s.setVisibility(8);
            v.this.t.onCustomViewHidden();
            v.this.Y.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            Logger.i("Test", "onShowCustomView");
            v.this.Y.setVisibility(8);
            if (v.this.r != null) {
                Logger.i("Test", "mCustomView != null");
                customViewCallback.onCustomViewHidden();
                return;
            }
            Logger.i("Test", "mCustomView == null");
            v.this.s.addView(view);
            v.this.r = view;
            v.this.t = customViewCallback;
            v.this.s.setVisibility(0);
        }
    }

    static class p {
        dg.e a;
        String b;

        public p(dg.e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        String a() {
            return this.b;
        }

        dg.e b() {
            return this.a;
        }
    }

    private class q extends WebViewClient {
        private q() {
        }

        /* synthetic */ q(v vVar, f fVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e(v.this.c, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Context contextQ = v.this.q();
            contextQ.startActivity(new OpenUrlActivity.e(new com.ironsource.sdk.controller.k.b()).a(str).b(false).a(contextQ));
            return true;
        }
    }

    public class r {

        class a implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            a(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onRVShowFail(message:" + this.a + ")");
                v.this.x.d(this.b, str);
            }
        }

        class b implements Runnable {
            final /* synthetic */ String a;

            b(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onInterstitialInitSuccess()");
                v.this.y.a(dg.e.Interstitial, this.a, (w2) null);
            }
        }

        class c implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            c(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onInterstitialInitFail(message:" + str + ")");
                v.this.y.a(dg.e.Interstitial, this.b, str);
            }
        }

        class d implements Runnable {
            final /* synthetic */ p9 a;
            final /* synthetic */ dg.e b;
            final /* synthetic */ String c;

            d(p9 p9Var, dg.e eVar, String str) {
                this.a = p9Var;
                this.b = eVar;
                this.c = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.c(this.b, this.c);
            }
        }

        class e implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ JSONObject b;

            e(String str, JSONObject jSONObject) {
                this.a = str;
                this.b = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.y.a(this.a, this.b);
            }
        }

        class f implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            f(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                v.this.y.c(this.b, str);
            }
        }

        class g implements Runnable {
            final /* synthetic */ String a;

            g(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onBannerInitSuccess()");
                v.this.z.a(dg.e.Banner, this.a, (w2) null);
            }
        }

        class h implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            h(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onBannerInitFail(message:" + str + ")");
                v.this.z.a(dg.e.Banner, this.b, str);
            }
        }

        class i implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ wf b;

            i(String str, wf wfVar) {
                this.a = str;
                this.b = wfVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onBannerLoadSuccess()");
                v.this.z.a(this.a, this.b);
            }
        }

        class j implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            j(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onLoadBannerFail()");
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                v.this.z.a(this.b, str);
            }
        }

        class k implements Runnable {
            k() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.F();
            }
        }

        class l implements Runnable {
            final /* synthetic */ String a;

            l(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (new JSONObject(this.a).has(com.ironsource.sdk.controller.f.b.MSG_ID)) {
                        v.this.S.a(com.ironsource.sdk.controller.f.a.a(this.a));
                    } else {
                        v.this.T.a(ll.a(this.a));
                    }
                } catch (JSONException e) {
                    l9.d().a(e);
                    Logger.e(v.this.c, "failed to parse received message");
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }

        class m implements Runnable {
            final /* synthetic */ dg.e a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;
            final /* synthetic */ JSONObject d;

            m(dg.e eVar, String str, String str2, JSONObject jSONObject) {
                this.a = eVar;
                this.b = str;
                this.c = str2;
                this.d = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                p9 p9VarA;
                dg.e eVar = this.a;
                if ((eVar == dg.e.Interstitial || eVar == dg.e.RewardedVideo || eVar == dg.e.Banner) && (p9VarA = v.this.a(eVar)) != null) {
                    p9VarA.a(this.a, this.b, this.c, this.d);
                }
            }
        }

        class n implements Runnable {
            final /* synthetic */ String a;

            n(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Logger.i(v.this.c, "omidAPI(" + this.a + ")");
                    v.this.H.a(new aq(this.a).toString(), r.this.new w());
                } catch (Exception e) {
                    l9.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                    Logger.i(v.this.c, "omidAPI failed with exception " + e.getMessage());
                }
            }
        }

        class o implements Runnable {
            o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.B();
            }
        }

        class p implements Runnable {
            p() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.Y.removeJavascriptInterface(y8.e);
            }
        }

        class q implements Runnable {
            q() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.Y.getSettings().setMixedContentMode(0);
            }
        }

        /* JADX INFO: renamed from: com.ironsource.sdk.controller.v$r$r, reason: collision with other inner class name */
        class RunnableC0106r implements Runnable {
            final /* synthetic */ int a;
            final /* synthetic */ String b;
            final /* synthetic */ w2 c;

            RunnableC0106r(int i, String str, w2 w2Var) {
                this.a = i;
                this.b = str;
                this.c = w2Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.a <= 0) {
                    v.this.x.c(this.b);
                } else {
                    Log.d(v.this.c, "onRVInitSuccess()");
                    v.this.x.a(dg.e.RewardedVideo, this.b, this.c);
                }
            }
        }

        class s implements Runnable {
            final /* synthetic */ String a;

            s(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    v.this.M.a(new JSONObject(this.a), r.this.new w());
                } catch (Exception e) {
                    l9.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                    Logger.i(v.this.c, "fileSystemAPI failed with exception " + e.getMessage());
                }
            }
        }

        class t implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;
            final /* synthetic */ int c;

            t(String str, String str2, int i) {
                this.a = str;
                this.b = str2;
                this.c = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.a.equalsIgnoreCase(dg.e.RewardedVideo.toString())) {
                    v.this.x.a(this.b, this.c);
                }
            }
        }

        class u implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ int b;

            u(String str, int i) {
                this.a = str;
                this.b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.y.onInterstitialAdRewarded(this.a, this.b);
            }
        }

        /* JADX INFO: renamed from: com.ironsource.sdk.controller.v$r$v, reason: collision with other inner class name */
        class RunnableC0107v implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            RunnableC0107v(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onRVInitFail(message:" + str + ")");
                v.this.x.a(dg.e.RewardedVideo, this.b, str);
            }
        }

        public class w implements oj {
            public w() {
            }

            @Override // org.json.oj
            public void a(boolean z, String str, aq aqVar) {
                aqVar.b(z ? v.f0 : v.g0, str);
                v.this.a(aqVar.toString(), z, (String) null, (String) null);
            }

            @Override // org.json.oj
            public void a(boolean z, String str, String str2) {
                aq aqVar = new aq();
                aqVar.b(z ? v.f0 : v.g0, str);
                aqVar.b("data", str2);
                v.this.a(aqVar.toString(), z, (String) null, (String) null);
            }

            @Override // org.json.oj
            public void a(boolean z, String str, JSONObject jSONObject) {
                try {
                    jSONObject.put(z ? v.f0 : v.g0, str);
                    v.this.a(jSONObject.toString(), z, (String) null, (String) null);
                } catch (JSONException e) {
                    l9.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }

        public r() {
        }

        private void a(String str, int i2) {
            la laVarA;
            v vVar = v.this;
            dg.e eVar = dg.e.Interstitial;
            if (vVar.q(eVar.toString()) && (laVarA = v.this.G.a(eVar, str)) != null && laVarA.k()) {
                v.this.b(new u(str, i2));
            }
        }

        private void a(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            v.this.i(v.this.e(str, str2));
        }

        private void a(String str, boolean z) {
            la laVarA = v.this.G.a(dg.e.Interstitial, str);
            if (laVarA != null) {
                laVarA.a(z);
            }
        }

        private void a(JSONObject jSONObject) {
            try {
                jSONObject.put("controllerSourceData", v.this.B.f());
            } catch (Exception e2) {
                l9.d().a(e2);
                Logger.d(v.this.c, "Unable to add controller source data into controllerConfig");
            }
        }

        private void a(JSONObject jSONObject, String str) {
            if (a(str)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str);
                    jSONObject.putOpt("testerABGroup", jSONObject2.get("testerABGroup"));
                    jSONObject.putOpt("testFriendlyName", jSONObject2.get("testFriendlyName"));
                } catch (JSONException e2) {
                    l9.d().a(e2);
                    Logger.d(v.this.c, "getControllerConfig Error while parsing Tester AB Group parameters");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(boolean z, String str) {
            if (z) {
                v.this.y.b(dg.e.Interstitial, str);
                v.this.y.b(str);
            }
            a(str, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(boolean z, String str, String str2) {
            if (z) {
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                v.this.y.b(str2, str);
            }
            a(str2, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            try {
                p3.a aVarA = v.this.N.a(v.this.Y.getContext(), r3.CC.a(str));
                v.this.i(v.this.e(aVarA.f(), aVarA.i().toString()));
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        private void b(JSONObject jSONObject) {
            try {
                FeaturesManager featuresManager = FeaturesManager.getInstance();
                if (featuresManager.a().isEmpty()) {
                    return;
                }
                jSONObject.put(y8.a.g, new JSONArray((Collection) featuresManager.a()));
            } catch (Exception e2) {
                l9.d().a(e2);
                kg.a(zp.p, new fg().a(rb.A, e2.getMessage()).a());
                Logger.d(v.this.c, "getControllerConfig Error while adding supported features data from FeaturesManager");
            }
        }

        private void c(JSONObject jSONObject) {
            b(jSONObject);
            a(jSONObject, SDKUtils.getTesterParameters());
            if (v.this.V) {
                return;
            }
            a(jSONObject);
        }

        boolean a(String str) {
            if (TextUtils.isEmpty(str) || str.contains("-1")) {
                return false;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return (jSONObject.getString("testerABGroup").isEmpty() || jSONObject.getString("testFriendlyName").isEmpty()) ? false : true;
            } catch (JSONException e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                return false;
            }
        }

        @JavascriptInterface
        public void adClicked(String str) {
            Logger.i(v.this.c, "adClicked(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d(y8.h.m);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            dg.e eVarG = v.this.g(strD);
            p9 p9VarA = v.this.a(eVarG);
            if (eVarG == null || p9VarA == null) {
                return;
            }
            v.this.b(new d(p9VarA, eVarG, strFetchDemandSourceId));
        }

        @JavascriptInterface
        public void adCredited(String str) {
            Log.d(v.this.d, "adCredited(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d(y8.h.k);
            int i2 = strD != null ? Integer.parseInt(strD) : 0;
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            String strD2 = aqVar.d(y8.h.m);
            if (TextUtils.isEmpty(strD2)) {
                Log.d(v.this.d, "adCredited | product type is missing");
            }
            if (dg.e.Interstitial.toString().equalsIgnoreCase(strD2)) {
                a(strFetchDemandSourceId, i2);
            } else if (v.this.q(strD2)) {
                v.this.b(new t(strD2, strFetchDemandSourceId, i2));
            }
        }

        @JavascriptInterface
        public void adUnitsReady(String str) {
            Logger.i(v.this.c, "adUnitsReady(" + str + ")");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new aq(str));
            w2 w2Var = new w2(str);
            if (!w2Var.g()) {
                v.this.a(str, false, y8.c.r, (String) null);
                return;
            }
            v.this.a(str, true, (String) null, (String) null);
            String strD = w2Var.d();
            if (dg.e.RewardedVideo.toString().equalsIgnoreCase(strD) && v.this.q(strD)) {
                v.this.b(new RunnableC0106r(Integer.parseInt(w2Var.c()), strFetchDemandSourceId, w2Var));
            }
        }

        @JavascriptInterface
        public void adViewAPI(String str) {
            try {
                Logger.i(v.this.c, "adViewAPI(" + str + ")");
                v.this.L.a(new aq(str).toString(), new w());
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "adViewAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void androidSandboxApi(final String str) {
            Cif.a.b(new Runnable() { // from class: com.ironsource.sdk.controller.v$r$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(str);
                }
            });
        }

        @JavascriptInterface
        public void bannerViewAPI(String str) {
            Logger.i(v.this.c, "bannerViewAPI is not supported in this native version, only adview API");
        }

        void c(String str) {
            v.this.i(v.this.a(y8.g.d, str, (String) null, (String) null));
        }

        @JavascriptInterface
        public void cleanAdInstance(String str) {
            dg.e eVarG;
            try {
                Logger.i(v.this.c, "cleanAdInstance(" + str + ")");
                aq aqVar = new aq(str);
                String strD = aqVar.d(y8.h.m);
                String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
                if (TextUtils.isEmpty(strFetchDemandSourceId) || (eVarG = v.this.g(strD)) == null) {
                    return;
                }
                v.this.G.b(eVarG, strFetchDemandSourceId);
            } catch (Exception e2) {
                l9.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void clearLastUpdateTimeData(String str) {
            try {
                ArrayList<String> arrayListA = fj.e().a();
                aq aqVar = new aq(str);
                if (!arrayListA.isEmpty()) {
                    aqVar.b(y8.h.x0, arrayListA.toString());
                }
                v.this.a(aqVar.toString(), true, (String) null, (String) null);
            } catch (Exception e2) {
                l9.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void deleteFile(String str) {
            try {
                Logger.i(v.this.c, "deleteFile(" + str + ")");
                aq aqVar = new aq(str);
                String strD = aqVar.d(y8.h.b);
                String strD2 = aqVar.d("path");
                if (strD2 != null && !TextUtils.isEmpty(strD)) {
                    mg mgVar = new mg(IronSourceStorageUtils.buildAbsolutePathToDirInCache(v.this.A, strD2), strD);
                    IronSourceStorageUtils.ensurePathSafety(mgVar, v.this.A);
                    if (!mgVar.exists()) {
                        v.this.a(str, false, y8.c.f, "1");
                        return;
                    } else {
                        v.this.a(str, IronSourceStorageUtils.deleteFile(mgVar), (String) null, (String) null);
                        return;
                    }
                }
                v.this.a(str, false, y8.c.g, "1");
            } catch (Exception e2) {
                l9.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void deleteFolder(String str) {
            try {
                Logger.i(v.this.c, "deleteFolder(" + str + ")");
                String strD = new aq(str).d("path");
                if (strD == null) {
                    v.this.a(str, false, y8.c.g, "1");
                    return;
                }
                mg mgVar = new mg(IronSourceStorageUtils.buildAbsolutePathToDirInCache(v.this.A, strD));
                IronSourceStorageUtils.ensurePathSafety(mgVar, v.this.A);
                if (!mgVar.exists()) {
                    v.this.a(str, false, y8.c.e, "1");
                } else {
                    v.this.a(str, IronSourceStorageUtils.deleteFolder(mgVar.getPath()), (String) null, (String) null);
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void deviceDataAPI(String str) {
            try {
                Logger.i(v.this.c, "deviceDataAPI(" + str + ")");
                v.this.K.a(new aq(str).toString(), new w());
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "deviceDataAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void displayWebView(String str) {
            Logger.i(v.this.c, "displayWebView(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
            aq aqVar = new aq(str);
            boolean zBooleanValue = ((Boolean) aqVar.b("display")).booleanValue();
            String strD = aqVar.d(y8.h.m);
            boolean zC = aqVar.c(y8.h.u);
            String strD2 = aqVar.d("adViewId");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            boolean zC2 = aqVar.c(y8.h.z0);
            if (!zBooleanValue) {
                v.this.a(u.Gone);
                v.this.o();
                return;
            }
            v.this.F = aqVar.c(y8.h.v);
            boolean zC3 = aqVar.c(y8.h.y);
            u uVarV = v.this.v();
            u uVar = u.Display;
            if (uVarV == uVar) {
                Logger.i(v.this.c, "State: " + v.this.v);
                return;
            }
            v.this.a(uVar);
            Logger.i(v.this.c, "State: " + v.this.v);
            Context contextQ = v.this.q();
            String strT = v.this.t();
            int I = v.this.W.I(contextQ);
            if (zC) {
                org.json.sdk.controller.h hVar = new org.json.sdk.controller.h(contextQ);
                hVar.addView(v.this.u);
                hVar.a(v.this);
                return;
            }
            Intent intent = zC3 ? new Intent(contextQ, (Class<?>) InterstitialActivity.class) : new Intent(contextQ, (Class<?>) ControllerActivity.class);
            dg.e eVar = dg.e.RewardedVideo;
            if (eVar.toString().equalsIgnoreCase(strD)) {
                if ("application".equals(strT)) {
                    strT = SDKUtils.translateRequestedOrientation(v.this.W.K(contextQ));
                }
                intent.putExtra(y8.h.m, eVar.toString());
                v.this.D.a(eVar.ordinal());
                v.this.D.f(strFetchDemandSourceId);
                if (v.this.q(eVar.toString())) {
                    v.this.x.b(eVar, strFetchDemandSourceId);
                }
            } else {
                dg.e eVar2 = dg.e.Interstitial;
                if (eVar2.toString().equalsIgnoreCase(strD)) {
                    if ("application".equals(strT)) {
                        strT = SDKUtils.translateRequestedOrientation(v.this.W.K(contextQ));
                    }
                    intent.putExtra(y8.h.m, eVar2.toString());
                }
            }
            if (strD2 != null) {
                intent.putExtra("adViewId", strD2);
            }
            intent.putExtra(y8.h.z0, zC2);
            intent.setFlags(DriveFile.MODE_WRITE_ONLY);
            intent.putExtra(y8.h.v, v.this.F);
            intent.putExtra(y8.h.A, strT);
            intent.putExtra(y8.h.B, I);
            v vVar = v.this;
            vVar.j = new p(vVar.g(strD), strFetchDemandSourceId);
            contextQ.startActivity(intent);
        }

        @JavascriptInterface
        public void fileSystemAPI(String str) {
            Logger.i(v.this.c, "fileSystemAPI(" + str + ")");
            v.this.a(new s(str));
        }

        /* JADX WARN: Code duplicated, block: B:10:0x005c  */
        @JavascriptInterface
        public void getApplicationInfo(String str) {
            Logger.i(v.this.c, "getApplicationInfo(" + str + ")");
            String strE = v.this.e(str);
            String strD = v.this.d(str);
            aq aqVar = new aq(str);
            Object[] objArrF = v.this.f(aqVar.d(y8.h.m), SDKUtils.fetchDemandSourceId(aqVar));
            String str2 = (String) objArrF[0];
            if (((Boolean) objArrF[1]).booleanValue()) {
                if (TextUtils.isEmpty(strD)) {
                    strE = null;
                } else {
                    strE = strD;
                }
            } else if (TextUtils.isEmpty(strE)) {
                strE = null;
            }
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            v.this.i(v.this.a(strE, str2, y8.g.m, y8.g.n));
        }

        @JavascriptInterface
        public void getCachedFilesMap(String str) {
            v vVar;
            String str2;
            Logger.i(v.this.c, "getCachedFilesMap(" + str + ")");
            String strE = v.this.e(str);
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            aq aqVar = new aq(str);
            if (aqVar.a("path")) {
                String str3 = (String) aqVar.b("path");
                if (IronSourceStorageUtils.isPathExist(v.this.A, str3)) {
                    v.this.i(v.this.a(strE, IronSourceStorageUtils.getCachedFilesMap(v.this.A, str3), y8.g.r, y8.g.q));
                    return;
                }
                vVar = v.this;
                str2 = y8.c.t;
            } else {
                vVar = v.this;
                str2 = y8.c.s;
            }
            vVar.a(str, false, str2, (String) null);
        }

        @JavascriptInterface
        public void getConnectivityInfo(String str) {
            String strE;
            Logger.i(v.this.c, "getConnectivityInfo(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d(v.f0);
            String strD2 = aqVar.d(v.g0);
            JSONObject jSONObject = new JSONObject();
            if (v.this.Q != null) {
                jSONObject = v.this.Q.a(v.this.Y.getContext());
            }
            if (jSONObject.length() > 0) {
                strE = v.this.e(strD, jSONObject.toString());
            } else {
                strE = v.this.e(strD2, v.this.a("errMsg", y8.c.A, null, null, null, null, null, null, null, false));
            }
            v.this.i(strE);
        }

        @JavascriptInterface
        public void getControllerConfig(String str) {
            Logger.i(v.this.c, "getControllerConfig(" + str + ")");
            String strD = new aq(str).d(v.f0);
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
            c(controllerConfigAsJSONObject);
            v.this.i(v.this.e(strD, controllerConfigAsJSONObject.toString()));
        }

        @JavascriptInterface
        public void getDemandSourceState(String str) {
            String strD;
            Logger.i(v.this.c, "getMediationState(" + str + ")");
            aq aqVar = new aq(str);
            String strD2 = aqVar.d("demandSourceName");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            String strD3 = aqVar.d(y8.h.m);
            if (strD3 == null || strD2 == null) {
                return;
            }
            try {
                dg.e productType = SDKUtils.getProductType(strD3);
                if (productType != null) {
                    la laVarA = v.this.G.a(productType, strFetchDemandSourceId);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(y8.h.m, strD3);
                    jSONObject.put("demandSourceName", strD2);
                    jSONObject.put("demandSourceId", strFetchDemandSourceId);
                    if (laVarA == null || laVarA.a(-1)) {
                        strD = v.this.d(str);
                    } else {
                        strD = v.this.e(str);
                        jSONObject.put("state", laVarA.j());
                    }
                    a(strD, jSONObject.toString());
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0053  */
        @JavascriptInterface
        public void getDeviceStatus(String str) {
            Logger.i(v.this.c, "getDeviceStatus(" + str + ")");
            String strE = v.this.e(str);
            String strD = v.this.d(str);
            v vVar = v.this;
            Object[] objArrD = vVar.d(vVar.Y.getContext());
            String str2 = (String) objArrD[0];
            if (((Boolean) objArrD[1]).booleanValue()) {
                if (TextUtils.isEmpty(strD)) {
                    strE = null;
                } else {
                    strE = strD;
                }
            } else if (TextUtils.isEmpty(strE)) {
                strE = null;
            }
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            v.this.i(v.this.a(strE, str2, y8.g.k, y8.g.l));
        }

        @JavascriptInterface
        public void getDeviceVolume(String str) {
            Logger.i(v.this.c, "getDeviceVolume(" + str + ")");
            try {
                Context context = v.this.Y.getContext();
                float fA = pa.b(context).a(context);
                aq aqVar = new aq(str);
                aqVar.b(y8.i.P, String.valueOf(fA));
                v.this.a(aqVar.toString(), true, (String) null, (String) null);
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void getInitSummery(String str) {
            Logger.i(v.this.c, "getInitSummery(" + str + ")");
            aq aqVar = new aq(str);
            aqVar.a(y8.i.r0, v.this.R);
            v.this.a(aqVar.toString(), true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void getOrientation(String str) {
            kg.a(zp.z, new fg().a(rb.y, str).a());
            String strE = v.this.e(str);
            String string = SDKUtils.getOrientation(v.this.Y.getContext()).toString();
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            v.this.i(v.this.a(strE, string, y8.g.W, y8.g.X));
        }

        @JavascriptInterface
        public void getUserData(String str) {
            Logger.i(v.this.c, "getUserData(" + str + ")");
            aq aqVar = new aq(str);
            if (!aqVar.a(y8.h.W)) {
                v.this.a(str, false, y8.c.F, (String) null);
                return;
            }
            String strE = v.this.e(str);
            String strD = aqVar.d(y8.h.W);
            v.this.i(v.this.e(strE, v.this.a(strD, fj.e().a(strD), null, null, null, null, null, null, null, false)));
        }

        @JavascriptInterface
        public void iabTokenAPI(String str) {
            try {
                Logger.i(v.this.c, "iabTokenAPI(" + str + ")");
                v.this.J.a(new aq(str).toString(), new w());
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "iabTokenAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void initController(String str) {
            Logger.i(v.this.c, "initController(" + str + ")");
            aq aqVar = new aq(str);
            CountDownTimer countDownTimer = v.this.m;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                v.this.m = null;
            }
            if (aqVar.a(y8.h.q)) {
                String strD = aqVar.d(y8.h.q);
                if (y8.h.s.equalsIgnoreCase(strD)) {
                    v.this.i = true;
                    v.this.P.c();
                    return;
                }
                if (y8.h.r.equalsIgnoreCase(strD)) {
                    v.this.P.b();
                    return;
                }
                if (!y8.h.t.equalsIgnoreCase(strD)) {
                    Logger.i(v.this.c, "No STAGE mentioned! should not get here!");
                    return;
                }
                String strD2 = aqVar.d("errMsg");
                v.this.P.b("controller js failed to initialize : " + strD2);
            }
        }

        @JavascriptInterface
        public void omidAPI(String str) {
            v.this.c(new n(str));
        }

        @JavascriptInterface
        public void onAdWindowsClosed(String str) {
            Logger.i(v.this.c, "onAdWindowsClosed(" + str + ")");
            v.this.D.a();
            v.this.D.f(null);
            v.this.j = null;
            aq aqVar = new aq(str);
            String strD = aqVar.d(y8.h.m);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            dg.e eVarG = v.this.g(strD);
            Log.d(v.this.d, "onAdClosed() with type " + eVarG);
            if (v.this.q(strD)) {
                v.this.a(eVarG, strFetchDemandSourceId);
            }
        }

        @JavascriptInterface
        public void onCleanUpNonDisplayBannersSuccess(String str) {
            Logger.i(v.this.c, "onCleanUpNonDisplayBannersSuccess() value=" + str);
        }

        @JavascriptInterface
        public void onGetApplicationInfoFail(String str) {
            Logger.i(v.this.c, "onGetApplicationInfoFail(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetApplicationInfoSuccess(String str) {
            Logger.i(v.this.c, "onGetApplicationInfoSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapFail(String str) {
            Logger.i(v.this.c, "onGetCachedFilesMapFail(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapSuccess(String str) {
            Logger.i(v.this.c, "onGetCachedFilesMapSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetDeviceStatusFail(String str) {
            Logger.i(v.this.c, "onGetDeviceStatusFail(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetDeviceStatusSuccess(String str) {
            Logger.i(v.this.c, "onGetDeviceStatusSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onInitBannerFail(String str) {
            Logger.i(v.this.c, "onInitBannerFail(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitBannerFail failed with no demand source");
                return;
            }
            ma maVar = v.this.G;
            dg.e eVar = dg.e.Banner;
            la laVarA = maVar.a(eVar, strFetchDemandSourceId);
            if (laVarA != null) {
                laVarA.b(3);
            }
            if (v.this.q(eVar.toString())) {
                v.this.b(new h(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onInitBannerSuccess(String str) {
            Logger.i(v.this.c, "onInitBannerSuccess()");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new aq(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitBannerSuccess failed with no demand source");
            } else if (v.this.q(dg.e.Banner.toString())) {
                v.this.b(new g(strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onInitInterstitialFail(String str) {
            Logger.i(v.this.c, "onInitInterstitialFail(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitInterstitialSuccess failed with no demand source");
                return;
            }
            ma maVar = v.this.G;
            dg.e eVar = dg.e.Interstitial;
            la laVarA = maVar.a(eVar, strFetchDemandSourceId);
            if (laVarA != null) {
                laVarA.b(3);
            }
            if (v.this.q(eVar.toString())) {
                v.this.b(new c(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onInitInterstitialSuccess(String str) {
            Logger.i(v.this.c, "onInitInterstitialSuccess()");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new aq(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitInterstitialSuccess failed with no demand source");
            } else if (v.this.q(dg.e.Interstitial.toString())) {
                v.this.b(new b(strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onInitRewardedVideoFail(String str) {
            Logger.i(v.this.c, "onInitRewardedVideoFail(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            ma maVar = v.this.G;
            dg.e eVar = dg.e.RewardedVideo;
            la laVarA = maVar.a(eVar, strFetchDemandSourceId);
            if (laVarA != null) {
                laVarA.b(3);
            }
            if (v.this.q(eVar.toString())) {
                v.this.b(new RunnableC0107v(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onLoadBannerFail(String str) {
            Logger.i(v.this.c, "onLoadBannerFail()");
            aq aqVar = new aq(str);
            String strD = aqVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            v.this.a(str, true, (String) null, (String) null);
            if (!TextUtils.isEmpty(strFetchDemandSourceId) && v.this.q(dg.e.Banner.toString())) {
                v.this.b(new j(strD, strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onLoadBannerSuccess(String str) {
            Logger.i(v.this.c, "onLoadBannerSuccess()");
            aq aqVar = new aq(str);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            String strD = aqVar.d("adViewId");
            v.this.a(str, true, (String) null, (String) null);
            ug ugVarA = cg.a().a(strD);
            if (ugVarA == null) {
                v.this.z.a(strFetchDemandSourceId, "not found view for the current adViewId= " + strD);
                return;
            }
            if (ugVarA instanceof wf) {
                wf wfVar = (wf) ugVarA;
                if (v.this.q(dg.e.Banner.toString())) {
                    v.this.b(new i(strFetchDemandSourceId, wfVar));
                }
            }
        }

        @JavascriptInterface
        public void onLoadInterstitialFail(String str) {
            Logger.i(v.this.c, "onLoadInterstitialFail(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            v.this.a(str, true, (String) null, (String) null);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            a(strFetchDemandSourceId, false);
            if (v.this.q(dg.e.Interstitial.toString())) {
                v.this.b(new f(strD, strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onLoadInterstitialSuccess(String str) {
            Logger.i(v.this.c, "onLoadInterstitialSuccess(" + str + ")");
            aq aqVar = new aq(str);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            JSONObject jSONObjectA = aqVar.a();
            a(strFetchDemandSourceId, true);
            v.this.a(str, true, (String) null, (String) null);
            if (v.this.q(dg.e.Interstitial.toString())) {
                v.this.b(new e(strFetchDemandSourceId, jSONObjectA));
            }
        }

        @JavascriptInterface
        public void onReceivedMessage(String str) {
            Logger.i(v.this.c, "onReceivedMessage(" + str + ")");
            Cif.a.b(new l(str));
        }

        @JavascriptInterface
        public void onShowInterstitialFail(String str) {
            Logger.i(v.this.c, "onShowInterstitialFail(" + str + ")");
            aq aqVar = new aq(str);
            final String strD = aqVar.d("errMsg");
            final String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            v.this.a(str, true, (String) null, (String) null);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            final boolean zQ = v.this.q(dg.e.Interstitial.toString());
            v.this.b(new Runnable() { // from class: com.ironsource.sdk.controller.v$r$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(zQ, strD, strFetchDemandSourceId);
                }
            });
        }

        @JavascriptInterface
        public void onShowInterstitialSuccess(String str) {
            Logger.i(v.this.c, "onShowInterstitialSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
            final String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new aq(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onShowInterstitialSuccess called with no demand");
                return;
            }
            x2 x2Var = v.this.D;
            dg.e eVar = dg.e.Interstitial;
            x2Var.a(eVar.ordinal());
            v.this.D.f(strFetchDemandSourceId);
            final boolean zQ = v.this.q(eVar.toString());
            v.this.b(new Runnable() { // from class: com.ironsource.sdk.controller.v$r$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(zQ, strFetchDemandSourceId);
                }
            });
        }

        @JavascriptInterface
        public void onShowRewardedVideoFail(String str) {
            Logger.i(v.this.c, "onShowRewardedVideoFail(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
            if (v.this.q(dg.e.RewardedVideo.toString())) {
                v.this.b(new a(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onShowRewardedVideoSuccess(String str) {
            Logger.i(v.this.c, "onShowRewardedVideoSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onVideoStatusChanged(String str) {
            Log.d(v.this.c, "onVideoStatusChanged(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d(y8.h.m);
            if (v.this.C == null || TextUtils.isEmpty(strD)) {
                return;
            }
            String strD2 = aqVar.d("status");
            if (y8.h.d0.equalsIgnoreCase(strD2)) {
                v.this.C.onVideoStarted();
                return;
            }
            if (y8.h.e0.equalsIgnoreCase(strD2)) {
                v.this.C.onVideoPaused();
                return;
            }
            if (y8.h.f0.equalsIgnoreCase(strD2)) {
                v.this.C.onVideoResumed();
                return;
            }
            if (y8.h.g0.equalsIgnoreCase(strD2)) {
                v.this.C.onVideoEnded();
                return;
            }
            if (y8.h.h0.equalsIgnoreCase(strD2)) {
                v.this.C.onVideoStopped();
                return;
            }
            Logger.i(v.this.c, "onVideoStatusChanged: unknown status: " + strD2);
        }

        @JavascriptInterface
        public void openUrl(String str) {
            Logger.i(v.this.c, "openUrl(" + str + ")");
            aq aqVar = new aq(str);
            com.ironsource.sdk.controller.p.c cVarA = new com.ironsource.sdk.controller.p.a(aqVar.d("method"), new rn(v.this.F, DriveFile.MODE_READ_WRITE)).a(aqVar.c(y8.h.L0) ? v.this.Y.getContext() : v.this.q(), new qn(aqVar.d("url"), aqVar.d(y8.h.V)));
            if (cVarA instanceof com.ironsource.sdk.controller.p.c.a) {
                v.this.a(str, false, ((com.ironsource.sdk.controller.p.c.a) cVarA).b(), (String) null);
            } else {
                v.this.a(str, true, (String) null, (String) null);
            }
        }

        @JavascriptInterface
        public void pauseControllerWebview() {
            v.this.c(new o());
        }

        @JavascriptInterface
        public void permissionsAPI(String str) {
            try {
                Logger.i(v.this.c, "permissionsAPI(" + str + ")");
                v.this.I.a(new aq(str).toString(), new w());
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "permissionsAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void postAdEventNotification(String str) {
            try {
                Logger.i(v.this.c, "postAdEventNotification(" + str + ")");
                aq aqVar = new aq(str);
                String strD = aqVar.d(y8.h.j0);
                if (TextUtils.isEmpty(strD)) {
                    v.this.a(str, false, y8.c.w, (String) null);
                    return;
                }
                String strD2 = aqVar.d(y8.h.k0);
                String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(aqVar);
                String str2 = !TextUtils.isEmpty(strFetchDemandSourceId) ? strFetchDemandSourceId : strD2;
                JSONObject jSONObject = (JSONObject) aqVar.b(y8.h.l0);
                String strD3 = aqVar.d(y8.h.m);
                dg.e eVarG = v.this.g(strD3);
                if (!v.this.q(strD3)) {
                    v.this.a(str, false, y8.c.v, (String) null);
                    return;
                }
                String strE = v.this.e(str);
                if (!TextUtils.isEmpty(strE)) {
                    v.this.i(v.this.a(strE, v.this.a(y8.h.m, strD3, y8.h.j0, strD, "demandSourceName", strD2, "demandSourceId", str2, null, false), y8.g.b0, y8.g.c0));
                }
                v.this.b(new m(eVarG, str2, strD, jSONObject));
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void removeCloseEventHandler(String str) {
            Logger.i(v.this.c, "removeCloseEventHandler(" + str + ")");
            if (v.this.l != null) {
                v.this.l.cancel();
            }
            v.this.k = true;
        }

        @JavascriptInterface
        public void removeMessagingInterface(String str) {
            v.this.c(new p());
        }

        @JavascriptInterface
        public void requestToDestroyBanner(String str) {
            Logger.i(v.this.c, "onCleanUpNonDisplayBannersFail() value=" + str);
        }

        @JavascriptInterface
        public void resumeControllerWebview() {
            v.this.c(new k());
        }

        @JavascriptInterface
        public void saveFile(String str) {
            try {
                Logger.i(v.this.c, "saveFile(" + str + ")");
                aq aqVar = new aq(str);
                String strD = aqVar.d("path");
                String strD2 = aqVar.d(y8.h.b);
                if (TextUtils.isEmpty(strD2)) {
                    v.this.a(str, false, y8.c.g, "1");
                    return;
                }
                mg mgVar = new mg(IronSourceStorageUtils.buildAbsolutePathToDirInCache(v.this.A, strD), SDKUtils.getFileName(strD2));
                IronSourceStorageUtils.ensurePathSafety(mgVar, v.this.A);
                if (v.this.W.a(v.this.A) <= 0) {
                    v.this.a(str, false, a9.A, (String) null);
                    return;
                }
                if (mgVar.exists()) {
                    v.this.a(str, false, a9.z, (String) null);
                    return;
                }
                if (!u8.h(v.this.Y.getContext())) {
                    v.this.a(str, false, a9.C, (String) null);
                    return;
                }
                v.this.a(str, true, (String) null, (String) null);
                v.this.h.a(mgVar, strD2, aqVar.a("connectionTimeout", 0), aqVar.a("readTimeout", 0));
            } catch (Exception e2) {
                l9.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void setBackButtonState(String str) {
            Logger.i(v.this.c, "setBackButtonState(" + str + ")");
            fj.e().c(new aq(str).d("state"));
        }

        @JavascriptInterface
        public void setForceClose(String str) {
            Logger.i(v.this.c, "setForceClose(" + str + ")");
            aq aqVar = new aq(str);
            String strD = aqVar.d("width");
            String strD2 = aqVar.d("height");
            v.this.n = Integer.parseInt(strD);
            v.this.o = Integer.parseInt(strD2);
            v.this.p = aqVar.d(y8.h.L);
        }

        @JavascriptInterface
        public void setMixedContentAlwaysAllow(String str) {
            Logger.i(v.this.c, "setMixedContentAlwaysAllow(" + str + ")");
            v.this.c(new q());
        }

        @JavascriptInterface
        public void setOrientation(String str) {
            try {
                Logger.i(v.this.c, "setOrientation(" + str + ")");
                String strD = new aq(str).d("orientation");
                v.this.n(strD);
                if (v.this.Z != null) {
                    v.this.Z.onOrientationChanged(strD, v.this.W.I(v.this.Y.getContext()));
                }
            } catch (Exception e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void setStoreSearchKeys(String str) {
            Logger.i(v.this.c, "setStoreSearchKeys(" + str + ")");
            fj.e().e(str);
        }

        @JavascriptInterface
        public void setUserData(String str) {
            Logger.i(v.this.c, "setUserData(" + str + ")");
            aq aqVar = new aq(str);
            if (!aqVar.a(y8.h.W)) {
                v.this.a(str, false, y8.c.F, (String) null);
                return;
            }
            if (!aqVar.a("value")) {
                v.this.a(str, false, y8.c.G, (String) null);
                return;
            }
            String strD = aqVar.d(y8.h.W);
            String strD2 = aqVar.d("value");
            fj.e().a(strD, strD2);
            v.this.i(v.this.e(v.this.e(str), v.this.a(strD, strD2, null, null, null, null, null, null, null, false)));
        }

        @JavascriptInterface
        public void setWebviewBackgroundColor(String str) {
            Logger.i(v.this.c, "setWebviewBackgroundColor(" + str + ")");
            v.this.p(str);
        }

        @JavascriptInterface
        public void stillAlive(String str) {
            Logger.i(v.this.c, "stillAlive(" + str + ")");
            v.this.b.a();
        }
    }

    private interface s {
        void a(String str, dg.e eVar, la laVar);
    }

    static class t {
        String a;
        String b;

        t() {
        }
    }

    public enum u {
        Display,
        Gone
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.v$v, reason: collision with other inner class name */
    private class C0108v extends WebViewClient {
        private C0108v() {
        }

        /* synthetic */ C0108v(v vVar, f fVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            Logger.i("onPageFinished", str);
            if (str.contains("adUnit") || str.contains("index.html")) {
                v.this.A();
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            Logger.i("onPageStarted", str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            Logger.i("onReceivedError", str2 + " " + str);
            if (str2.contains(y8.f) && v.this.P != null) {
                v.this.P.b("controller html - web-view receivedError on loading - " + str + " (errorCode: " + i + ")");
            }
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.e(v.this.c, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            String str = renderProcessGoneDetail.didCrash() ? "Render process was observed to crash" : "Render process was killed by the system";
            if (v.this.P != null) {
                v.this.P.c(str);
            }
            v.this.w();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            boolean zContains;
            Logger.i("shouldInterceptRequest", str);
            try {
                zContains = new URL(str).getFile().contains("mraid.js");
            } catch (MalformedURLException e) {
                l9.d().a(e);
                zContains = false;
            }
            if (zContains) {
                String str2 = "file://" + v.this.A + File.separator + "mraid.js";
                try {
                    new FileInputStream(new File(str2));
                    return new WebResourceResponse("text/javascript", "UTF-8", getClass().getResourceAsStream(str2));
                } catch (FileNotFoundException e2) {
                    l9.d().a(e2);
                }
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Logger.i("shouldOverrideUrlLoading", str);
            try {
                if (v.this.h(str)) {
                    v.this.z();
                    return true;
                }
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    public v(Context context, ma maVar, b9 b9Var, org.json.sdk.controller.c cVar, Cif cif, int i2, va vaVar, String str, com.ironsource.sdk.controller.l.a aVar, com.ironsource.sdk.controller.l.b bVar, String str2, String str3) throws Throwable {
        hj hjVar = new hj(context, new sj.a());
        this.Y = hjVar;
        Logger.i(this.c, "C'tor");
        this.X = b9Var;
        this.P = cVar;
        this.a = cif;
        this.G = maVar;
        a(context, hjVar);
        this.A = str;
        this.D = new x2();
        this.R = new JSONObject();
        this.h = vaVar;
        this.S = aVar;
        this.T = bVar;
        boolean zOptBoolean = SDKUtils.getNetworkConfiguration().optBoolean(y8.a.h, false);
        this.V = zOptBoolean;
        if (zOptBoolean) {
            this.U = new i9(new f9(SDKUtils.getControllerUrl(), this.A, SDKUtils.getNetworkConfiguration().optBoolean("useWebViewUserAgent", false), new ao(SDKUtils.getControllerUrl())), new Function1() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f$0.c((mg) obj);
                }
            }, vaVar, new n9.a());
        } else {
            vaVar.a(this);
            this.B = new org.json.sdk.controller.d(SDKUtils.getNetworkConfiguration(), this.A, SDKUtils.getControllerUrl(), vaVar);
        }
        f fVar = null;
        o oVar = new o(this, fVar);
        this.q = oVar;
        hjVar.setWebViewClient(new C0108v(this, fVar));
        hjVar.setWebChromeClient(oVar);
        dv.a(hjVar);
        a(hjVar);
        hjVar.setDownloadListener(this);
        this.Q = c(context);
        b(context);
        b(i2);
        this.f = str2;
        this.g = str3;
        this.b = e9.CC.a(FeaturesManager.getInstance().getFeatureFlagHealthCheck());
    }

    private void G() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public p9 a(dg.e eVar) {
        if (eVar == dg.e.Interstitial) {
            return this.y;
        }
        if (eVar == dg.e.RewardedVideo) {
            return this.x;
        }
        if (eVar == dg.e.Banner) {
            return this.z;
        }
        return null;
    }

    private t a(dg.e eVar, la laVar) {
        t tVar = new t();
        if (eVar == dg.e.RewardedVideo || eVar == dg.e.Interstitial || eVar == dg.e.Banner) {
            HashMap map = new HashMap();
            map.put(y8.i.g, this.f);
            if (!TextUtils.isEmpty(this.g)) {
                map.put(y8.i.f, this.g);
            }
            if (laVar != null) {
                if (laVar.g() != null) {
                    map.putAll(laVar.g());
                    map.put(y8.h.y0, String.valueOf(j0.a.c(laVar.h())));
                }
                map.put("demandSourceName", laVar.f());
                map.put("demandSourceId", laVar.h());
            }
            String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
            y8.g gVarA = y8.g.a(eVar);
            String strA = a(gVarA.a, strFlatMapToJsonAsString, gVarA.b, gVarA.c);
            tVar.a = gVarA.a;
            tVar.b = strA;
        }
        return tVar;
    }

    private String a(dg.e eVar, JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put("sessionDepth", Integer.toString(jSONObject.optInt("sessionDepth")));
        String strOptString = jSONObject.optString("demandSourceName");
        String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(jSONObject);
        la laVarA = this.G.a(eVar, strFetchDemandSourceId);
        if (laVarA != null) {
            if (laVarA.g() != null) {
                map.putAll(laVarA.g());
            }
            if (!TextUtils.isEmpty(strOptString)) {
                map.put("demandSourceName", strOptString);
            }
            if (!TextUtils.isEmpty(strFetchDemandSourceId)) {
                map.put("demandSourceId", strFetchDemandSourceId);
            }
        }
        String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
        y8.g gVarB = y8.g.b(eVar);
        return a(gVarB.a, strFlatMapToJsonAsString, gVarB.b, gVarB.c);
    }

    private String a(String str, String str2) {
        return a(str, str2, y8.h.g);
    }

    private String a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        try {
            return new JSONObject(str).put(str3, str2).toString();
        } catch (JSONException e2) {
            l9.d().a(e2);
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, String str3, String str4) {
        return new com.ironsource.sdk.controller.m.a(str, str2, str3, str4).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                jSONObject.put(str, SDKUtils.encodeString(str2));
            }
            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                jSONObject.put(str3, SDKUtils.encodeString(str4));
            }
            if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
                jSONObject.put(str5, SDKUtils.encodeString(str6));
            }
            if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str8)) {
                jSONObject.put(str7, SDKUtils.encodeString(str8));
            }
            if (!TextUtils.isEmpty(str9)) {
                jSONObject.put(str9, z);
            }
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        return jSONObject.toString();
    }

    private void a(Context context, WebView webView) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.u = new FrameLayout(context);
        this.s = new FrameLayout(context);
        this.s.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.s.setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(webView);
        this.u.addView(this.s, layoutParams);
        this.u.addView(frameLayout);
    }

    private void a(WebSettings webSettings) {
        webSettings.setMediaPlaybackRequiresUserGesture(false);
    }

    private void a(WebView webView) {
        org.json.sdk.controller.s sVar = new org.json.sdk.controller.s(org.json.sdk.controller.s.a());
        webView.addJavascriptInterface(a(sVar), y8.d);
        webView.addJavascriptInterface(b(sVar), y8.e);
    }

    private void a(la laVar, Map<String, String> map) {
        Map<String, String> mapMergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, laVar.b()});
        if (map.containsKey("adm")) {
            this.b.a(new e9.d() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda1
                @Override // com.ironsource.e9.d
                public final void a(yd ydVar) {
                    this.f$0.a(ydVar);
                }
            });
        }
        this.D.d(laVar.h(), true);
        i(a(y8.g.D, SDKUtils.flatMapToJsonAsString(mapMergeHashMaps), y8.g.E, y8.g.F));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(vd vdVar) {
        try {
            this.P.a(vdVar);
        } catch (Exception e2) {
            l9.d().a(e2);
            Logger.e(this.c, "handleLoadAd: " + e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(yd ydVar) {
        ydVar.a(new zd() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda3
            @Override // org.json.zd
            public final void a(vd vdVar) {
                this.f$0.a(vdVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, dg.e eVar, la laVar) {
        if (q(eVar.toString())) {
            b(new m(eVar, laVar, str));
        }
    }

    private void a(String str, dg.e eVar, la laVar, s sVar) {
        if (TextUtils.isEmpty(str)) {
            sVar.a("Application key are missing", eVar, laVar);
        } else {
            i(a(eVar, laVar).b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z, String str2, String str3) {
        String strD = new aq(str).d(z ? f0 : g0);
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        i(e(strD, a(b(str, str2), str3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject, WebView webView) {
        boolean zOptBoolean = jSONObject.optBoolean("inspectWebview");
        if (zOptBoolean) {
            WebView.setWebContentsDebuggingEnabled(zOptBoolean);
        }
    }

    private String b(String str) {
        String str2 = this.A + File.separator;
        return str.contains(str2) ? str.substring(str2.length()) : str;
    }

    private String b(String str, String str2) {
        return a(str, str2, "errMsg");
    }

    private s8 c(Context context) {
        return new f(SDKUtils.getControllerConfigAsJSONObject(), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object c(mg mgVar) {
        this.h.a(this);
        if (mgVar == null || !mgVar.exists()) {
            a(new mg(y8.f), new eg(1, "Unable to download Html file"));
            return null;
        }
        a(mgVar);
        return null;
    }

    private String c(String str, String str2, String str3) {
        return new com.ironsource.sdk.controller.m.a(str, null, str2, str3).a();
    }

    private void c(JSONObject jSONObject) throws JSONException {
        jSONObject.put(SDKUtils.encodeString("gpi"), zn.d(this.Y.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        return new aq(str).d(g0);
    }

    private String d(JSONObject jSONObject) {
        pa paVarB = pa.b(this.Y.getContext());
        StringBuilder sb = new StringBuilder();
        String sDKVersion = SDKUtils.getSDKVersion();
        if (!TextUtils.isEmpty(sDKVersion)) {
            sb.append("SDKVersion=");
            sb.append(sDKVersion);
            sb.append(y8.i.c);
        }
        String strE = paVarB.e();
        if (!TextUtils.isEmpty(strE)) {
            sb.append("deviceOs=");
            sb.append(strE);
        }
        Uri uri = Uri.parse(SDKUtils.getControllerUrl());
        if (uri != null) {
            String str = uri.getScheme() + ":";
            String host = uri.getHost();
            int port = uri.getPort();
            if (port != -1) {
                host = host + ":" + port;
            }
            sb.append("&protocol=");
            sb.append(str);
            sb.append("&domain=");
            sb.append(host);
            if (jSONObject.keys().hasNext()) {
                try {
                    String string = new JSONObject(jSONObject, new String[]{y8.i.Z, y8.i.g}).toString();
                    if (!TextUtils.isEmpty(string)) {
                        sb.append(y8.i.c);
                        sb.append("controllerConfig");
                        sb.append(y8.i.b);
                        sb.append(string);
                    }
                } catch (JSONException e2) {
                    l9.d().a(e2);
                    IronLog.INTERNAL.error(e2.toString());
                }
            }
            sb.append("&debug=");
            sb.append(r());
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] d(Context context) {
        boolean z;
        pa paVarB = pa.b(context);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(y8.i.z, "none");
            jSONObject.put(y8.i.A, SDKUtils.translateDeviceOrientation(this.W.E(context)));
            String strD = paVarB.d();
            if (strD != null) {
                jSONObject.put(SDKUtils.encodeString(y8.i.k), SDKUtils.encodeString(strD));
            }
            String strC = paVarB.c();
            if (strC != null) {
                jSONObject.put(SDKUtils.encodeString(y8.i.l), SDKUtils.encodeString(strC));
                z = false;
            } else {
                z = true;
            }
            try {
                SDKUtils.loadGoogleAdvertiserInfo(context);
                String advertiserId = SDKUtils.getAdvertiserId();
                if (!TextUtils.isEmpty(advertiserId)) {
                    Logger.i(this.c, "add AID");
                    jSONObject.put("deviceIds[AID]", SDKUtils.encodeString(advertiserId));
                }
                String limitAdTracking = SDKUtils.getLimitAdTracking();
                if (!TextUtils.isEmpty(limitAdTracking)) {
                    Logger.i(this.c, "add LAT");
                    jSONObject.put(y8.i.M, Boolean.parseBoolean(limitAdTracking));
                }
                String strE = paVarB.e();
                if (strE != null) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.m), SDKUtils.encodeString(strE));
                } else {
                    z = true;
                }
                String strF = paVarB.f();
                if (strF != null) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.n), strF.replaceAll("[^0-9/.]", ""));
                } else {
                    z = true;
                }
                String strF2 = paVarB.f();
                if (strF2 != null) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.o), SDKUtils.encodeString(strF2));
                }
                String strValueOf = String.valueOf(paVarB.a());
                if (strValueOf != null) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.p), strValueOf);
                } else {
                    z = true;
                }
                jSONObject.put(md.Y, String.valueOf(h1.a()));
                String sDKVersion = SDKUtils.getSDKVersion();
                if (sDKVersion != null) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.q), SDKUtils.encodeString(sDKVersion));
                }
                if (paVarB.b() != null && paVarB.b().length() > 0) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.r), SDKUtils.encodeString(paVarB.b()));
                }
                String strB = v8.b(context);
                if (strB.equals("none")) {
                    z = true;
                } else {
                    jSONObject.put(SDKUtils.encodeString(y8.i.t), SDKUtils.encodeString(strB));
                }
                String strD2 = v8.d(context);
                if (strD2 != null) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.u), SDKUtils.encodeString(strD2));
                } else {
                    z = true;
                }
                if (Build.VERSION.SDK_INT >= 23) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.v), v8.e(context));
                }
                jSONObject.put("uxt", IronSourceStorageUtils.isUxt());
                String language = context.getResources().getConfiguration().locale.getLanguage();
                if (!TextUtils.isEmpty(language)) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.x), SDKUtils.encodeString(language.toUpperCase(Locale.getDefault())));
                }
                jSONObject.put(y8.i.y, SDKUtils.encodeString(String.valueOf(this.W.a(this.A))));
                String strValueOf2 = String.valueOf(this.W.r());
                if (TextUtils.isEmpty(strValueOf2)) {
                    z = true;
                } else {
                    jSONObject.put(SDKUtils.encodeString(y8.i.G) + y8.i.d + SDKUtils.encodeString("width") + y8.i.e, SDKUtils.encodeString(strValueOf2));
                }
                jSONObject.put(SDKUtils.encodeString(y8.i.G) + y8.i.d + SDKUtils.encodeString("height") + y8.i.e, SDKUtils.encodeString(String.valueOf(this.W.a())));
                String strG = z3.g(this.Y.getContext());
                if (!TextUtils.isEmpty(strG)) {
                    jSONObject.put(SDKUtils.encodeString("bundleId"), SDKUtils.encodeString(strG));
                }
                String strValueOf3 = String.valueOf(this.W.h());
                if (!TextUtils.isEmpty(strValueOf3)) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.K), SDKUtils.encodeString(strValueOf3));
                }
                String strValueOf4 = String.valueOf(this.W.f());
                if (!TextUtils.isEmpty(strValueOf4)) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.O), SDKUtils.encodeString(strValueOf4));
                }
                jSONObject.put(SDKUtils.encodeString(y8.i.P), pa.b(context).a(context));
                jSONObject.put(SDKUtils.encodeString(y8.i.Y), this.W.w(context));
                jSONObject.put(SDKUtils.encodeString("mcc"), u8.b(context));
                jSONObject.put(SDKUtils.encodeString("mnc"), u8.c(context));
                jSONObject.put(SDKUtils.encodeString(y8.i.S), u8.f(context));
                jSONObject.put(SDKUtils.encodeString(y8.i.R), SDKUtils.encodeString(u8.g(context)));
                jSONObject.put(SDKUtils.encodeString(y8.i.V), z3.f(context));
                jSONObject.put(SDKUtils.encodeString(y8.i.X), z3.d(context));
                jSONObject.put(SDKUtils.encodeString(y8.i.W), SDKUtils.encodeString(z3.b(context)));
                String strE2 = z3.e(context);
                if (!TextUtils.isEmpty(strE2)) {
                    jSONObject.put(SDKUtils.encodeString(y8.i.c0), SDKUtils.encodeString(strE2));
                }
                c(jSONObject);
                jSONObject.put(SDKUtils.encodeString(y8.i.p0), this.W.z(context));
            } catch (JSONException e2) {
                e = e2;
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        } catch (JSONException e3) {
            e = e3;
            z = false;
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(String str) {
        return new aq(str).d(f0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(String str, String str2) {
        return new com.ironsource.sdk.controller.m.a(str, str2).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context) {
        try {
            s8 s8Var = this.Q;
            if (s8Var == null) {
                return;
            }
            s8Var.b(context);
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }

    private String f(String str) {
        return new com.ironsource.sdk.controller.m.a(str).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context) {
        try {
            s8 s8Var = this.Q;
            if (s8Var == null) {
                return;
            }
            s8Var.c(context);
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] f(String str, String str2) {
        boolean z;
        JSONObject jSONObject = new JSONObject();
        Map<String, String> mapG = null;
        if (TextUtils.isEmpty(str)) {
            z = true;
        } else {
            la laVarA = this.G.a(g(str), str2);
            if (laVarA != null) {
                mapG = laVarA.g();
                mapG.put("demandSourceName", laVarA.f());
                mapG.put("demandSourceId", laVarA.h());
            }
            try {
                jSONObject.put(y8.h.m, str);
            } catch (JSONException e2) {
                l9.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
            try {
                Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
                if (initSDKParams != null) {
                    jSONObject = SDKUtils.mergeJSONObjects(jSONObject, new JSONObject(initSDKParams));
                }
            } catch (Exception e3) {
                l9.d().a(e3);
                IronLog.INTERNAL.error(e3.toString());
            }
            z = false;
        }
        if (!TextUtils.isEmpty(this.g)) {
            try {
                jSONObject.put(SDKUtils.encodeString(y8.i.f), SDKUtils.encodeString(this.g));
            } catch (JSONException e4) {
                l9.d().a(e4);
                IronLog.INTERNAL.error(e4.toString());
            }
        }
        if (TextUtils.isEmpty(this.f)) {
            z = true;
        } else {
            try {
                jSONObject.put(SDKUtils.encodeString(y8.i.g), SDKUtils.encodeString(this.f));
            } catch (JSONException e5) {
                l9.d().a(e5);
                IronLog.INTERNAL.error(e5.toString());
            }
        }
        if (mapG != null && !mapG.isEmpty()) {
            for (Map.Entry<String, String> entry : mapG.entrySet()) {
                if (entry.getKey().equalsIgnoreCase("sdkWebViewCache")) {
                    o(entry.getValue());
                }
                try {
                    jSONObject.put(SDKUtils.encodeString(entry.getKey()), SDKUtils.encodeString(entry.getValue()));
                } catch (JSONException e6) {
                    l9.d().a(e6);
                    IronLog.INTERNAL.error(e6.toString());
                }
            }
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public dg.e g(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        dg.e eVar = dg.e.Interstitial;
        if (str.equalsIgnoreCase(eVar.toString())) {
            return eVar;
        }
        dg.e eVar2 = dg.e.RewardedVideo;
        if (str.equalsIgnoreCase(eVar2.toString())) {
            return eVar2;
        }
        dg.e eVar3 = dg.e.Banner;
        if (str.equalsIgnoreCase(eVar3.toString())) {
            return eVar3;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c(new Runnable() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.j(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(String str) {
        this.Y.a(new com.ironsource.sdk.controller.m.b(str, r()).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str) {
        try {
            Logger.i(this.c, "load(): " + str);
            this.Y.loadUrl(str);
        } catch (Throwable th) {
            l9.d().a(th);
            Logger.e(this.c, "WebViewController::load: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        pn pnVar = this.Z;
        if (pnVar != null) {
            pnVar.onCloseRequested();
        }
    }

    private void o(String str) {
        WebSettings settings;
        int i2;
        if (str.equalsIgnoreCase("0")) {
            settings = this.Y.getSettings();
            i2 = 2;
        } else {
            settings = this.Y.getSettings();
            i2 = -1;
        }
        settings.setCacheMode(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(String str) {
        WebView presentingView;
        aq aqVar = new aq(str);
        String strD = aqVar.d(y8.h.S);
        String strD2 = aqVar.d("adViewId");
        int color = !y8.h.T.equalsIgnoreCase(strD) ? Color.parseColor(strD) : 0;
        if (strD2 != null) {
            presentingView = cg.a().a(strD2).getPresentingView();
            if (presentingView == null) {
                return;
            }
        } else {
            presentingView = this.Y;
        }
        presentingView.setBackgroundColor(color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            Logger.d(this.c, "Trying to trigger a listener - no product was found");
            return false;
        }
        if (!str.equalsIgnoreCase(dg.e.Interstitial.toString()) ? !(!str.equalsIgnoreCase(dg.e.RewardedVideo.toString()) ? !str.equalsIgnoreCase(dg.e.Banner.toString()) || this.z == null : this.x == null) : this.y != null) {
            z = true;
        }
        if (!z) {
            Logger.d(this.c, "Trying to trigger a listener - no listener was found for product " + str);
        }
        return z;
    }

    public void A() {
        i(f(y8.g.z));
    }

    public void B() {
        try {
            this.Y.onPause();
        } catch (Throwable th) {
            l9.d().a(th);
            Logger.i(this.c, "WebViewController: onPause() - " + th);
        }
    }

    public void C() {
        this.C = null;
    }

    public void D() {
        this.Z = null;
    }

    public void E() {
        this.Y.requestFocus();
    }

    public void F() {
        try {
            this.Y.onResume();
        } catch (Throwable th) {
            l9.d().a(th);
            Logger.i(this.c, "WebViewController: onResume() - " + th);
        }
    }

    org.json.sdk.controller.g a(org.json.sdk.controller.s sVar) {
        return new org.json.sdk.controller.g(new org.json.sdk.controller.b(new r()), sVar);
    }

    @Override // org.json.sdk.controller.l
    public void a() {
        if (this.V) {
            this.U.a();
            return;
        }
        this.B.a(new fg());
        if (this.B.k()) {
            a(1);
        }
    }

    public void a(int i2) {
        if (!this.V && !this.B.m()) {
            Logger.i(this.c, "load(): Mobile Controller HTML Does not exist");
            return;
        }
        JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
        String strD = d(controllerConfigAsJSONObject);
        Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
        if (initSDKParams != null && initSDKParams.containsKey("sessionid")) {
            strD = String.format("%s&sessionid=%s", strD, initSDKParams.get("sessionid"));
        }
        this.a.d(new h(controllerConfigAsJSONObject, this.Y, (this.V ? this.U.getHtmlFile() : this.B.g()).toURI().toString() + "?" + strD));
        this.m = new i(50000L, 1000L, i2).start();
    }

    @Override // org.json.sdk.controller.l
    public void a(Activity activity) {
        this.X.a(activity);
    }

    @Override // org.json.sdk.controller.l
    public void a(Context context) {
        a(new d(context));
    }

    void a(dg.e eVar, String str) {
        b(new e(eVar, str));
    }

    public void a(hu huVar) {
        this.C = huVar;
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar) {
        Map<String, String> mapB = laVar.b();
        if (mapB != null) {
            i(a(y8.g.R, SDKUtils.flatMapToJsonAsString(mapB), y8.g.O, y8.g.P));
        }
        this.G.b(dg.e.Banner, laVar.h());
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar, Map<String, String> map, q9 q9Var) {
        Map<String, String> mapMergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, laVar.b()});
        if (map != null) {
            i(a(y8.g.M, SDKUtils.flatMapToJsonAsString(mapMergeHashMaps), y8.g.N, y8.g.Q));
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(la laVar, Map<String, String> map, r9 r9Var) {
        i(a(dg.e.Interstitial, new JSONObject(SDKUtils.mergeHashMaps(new Map[]{map, laVar.b()}))));
    }

    @Override // org.json.mn
    public void a(mg mgVar) {
        if (this.V && this.U.a(mgVar)) {
            a(1);
        } else if (mgVar.getName().contains(y8.f)) {
            this.B.a(new n());
        } else {
            c(mgVar.getName(), mgVar.getParent());
        }
    }

    @Override // org.json.mn
    public void a(mg mgVar, eg egVar) {
        if (this.V && this.U.a(mgVar)) {
            this.P.b("controller html - failed to download - " + egVar.b());
            return;
        }
        if (mgVar.getName().contains(y8.f)) {
            this.B.a(new a(), new b(egVar));
        } else {
            b(mgVar.getName(), mgVar.getParent(), egVar.b());
        }
    }

    public void a(p3 p3Var) {
        this.N = p3Var;
    }

    public void a(pn pnVar) {
        this.Z = pnVar;
        this.Y.a(pnVar);
    }

    public void a(org.json.sdk.controller.a aVar) {
        this.L = aVar;
        aVar.a(p());
    }

    @Override // org.json.sdk.controller.l
    public void a(com.ironsource.sdk.controller.f.c cVar, com.ironsource.sdk.controller.l.a aVar) {
        i(a(cVar.e(), cVar.h(), y8.g.T, y8.g.T));
    }

    public void a(org.json.sdk.controller.i iVar) {
        this.K = iVar;
    }

    public void a(org.json.sdk.controller.j jVar) {
        this.M = jVar;
    }

    public void a(org.json.sdk.controller.o oVar) {
        this.H = oVar;
    }

    public void a(org.json.sdk.controller.q qVar) {
        this.I = qVar;
    }

    public void a(org.json.sdk.controller.u uVar) {
        this.J = uVar;
    }

    public void a(u uVar) {
        this.v = uVar;
    }

    public void a(x2 x2Var) {
        String strB;
        p9 p9VarA;
        synchronized (this.E) {
            if (x2Var.j() && this.i) {
                Log.d(this.c, "restoreState(state:" + x2Var + ")");
                int iC = x2Var.c();
                if (iC != -1) {
                    dg.e eVar = dg.e.RewardedVideo;
                    if (iC == eVar.ordinal()) {
                        Log.d(this.c, "onRVAdClosed()");
                        strB = x2Var.b();
                        p9VarA = a(eVar);
                        if (p9VarA != null && !TextUtils.isEmpty(strB)) {
                            p9VarA.a(eVar, strB);
                        }
                    } else {
                        eVar = dg.e.Interstitial;
                        if (iC == eVar.ordinal()) {
                            Log.d(this.c, "onInterstitialAdClosed()");
                            strB = x2Var.b();
                            p9VarA = a(eVar);
                            if (p9VarA != null && !TextUtils.isEmpty(strB)) {
                                p9VarA.a(eVar, strB);
                            }
                        }
                    }
                    x2Var.a(-1);
                    x2Var.f(null);
                } else {
                    Log.d(this.c, "No ad was opened");
                }
                String strD = x2Var.d();
                String strF = x2Var.f();
                for (la laVar : this.G.a(dg.e.Interstitial)) {
                    if (laVar.e() == 2) {
                        Log.d(this.c, "initInterstitial(appKey:" + strD + ", userId:" + strF + ", demandSource:" + laVar.f() + ")");
                        a(strD, strF, laVar, this.y);
                    }
                }
                String strG = x2Var.g();
                String strH = x2Var.h();
                for (la laVar2 : this.G.a(dg.e.RewardedVideo)) {
                    if (laVar2.e() == 2) {
                        String strF2 = laVar2.f();
                        Log.d(this.c, "onRVNoMoreOffers()");
                        this.x.c(strF2);
                        Log.d(this.c, "initRewardedVideo(appKey:" + strG + ", userId:" + strH + ", demandSource:" + strF2 + ")");
                        a(strG, strH, laVar2, this.x);
                    }
                }
                x2Var.a(false);
            }
            this.D = x2Var;
        }
    }

    void a(Runnable runnable) {
        Cif cif = this.a;
        if (cif != null) {
            cif.b(runnable);
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, r9 r9Var) {
        HashMap map = new HashMap();
        map.put("demandSourceName", str);
        String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
        this.D.d(str, true);
        i(a(y8.g.D, strFlatMapToJsonAsString, y8.g.E, y8.g.F));
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, q9 q9Var) {
        this.f = str;
        this.g = str2;
        this.z = q9Var;
        a(str, dg.e.Banner, laVar, new l());
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, r9 r9Var) {
        this.f = str;
        this.g = str2;
        this.y = r9Var;
        this.D.g(str);
        this.D.h(this.g);
        a(this.f, dg.e.Interstitial, laVar, new k());
    }

    @Override // org.json.sdk.controller.l
    public void a(String str, String str2, la laVar, s9 s9Var) {
        this.f = str;
        this.g = str2;
        this.x = s9Var;
        this.D.i(str);
        this.D.j(str2);
        a(str, dg.e.RewardedVideo, laVar, new j());
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.R = jSONObject;
        }
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, q9 q9Var) {
        i(a(y8.g.M, jSONObject.toString(), y8.g.N, y8.g.Q));
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, r9 r9Var) {
        i(a(dg.e.Interstitial, jSONObject));
    }

    @Override // org.json.sdk.controller.l
    public void a(JSONObject jSONObject, s9 s9Var) {
        i(a(dg.e.RewardedVideo, jSONObject));
    }

    public void a(boolean z, String str) {
        i(e(y8.g.U, a(y8.h.K, str, null, null, null, null, null, null, y8.h.o, z)));
    }

    @Override // org.json.sdk.controller.l
    public boolean a(String str) {
        la laVarA = this.G.a(dg.e.Interstitial, str);
        return laVarA != null && laVarA.d();
    }

    org.json.sdk.controller.r b(org.json.sdk.controller.s sVar) {
        return new org.json.sdk.controller.r(sVar);
    }

    public void b(int i2) {
        b0 = i2;
    }

    @Override // org.json.sdk.controller.l
    public void b(Context context) {
        a(new c(context));
    }

    @Override // org.json.sdk.controller.l
    public void b(la laVar) {
        Map<String, String> mapB = laVar.b();
        if (mapB != null) {
            i(e(y8.g.S, SDKUtils.flatMapToJsonAsString(mapB)));
        }
        this.G.b(dg.e.Interstitial, laVar.h());
    }

    @Override // org.json.sdk.controller.l
    public void b(la laVar, Map<String, String> map, r9 r9Var) {
        a(laVar, map);
    }

    void b(Runnable runnable) {
        Cif cif = this.a;
        if (cif != null) {
            cif.c(runnable);
        }
    }

    public void b(String str, String str2, String str3) {
        try {
            i(e(y8.g.p, a(y8.h.b, str, "path", b(str2), "errMsg", str3, null, null, null, false)));
        } catch (Exception e2) {
            l9.d().a(e2);
        }
    }

    @Override // org.json.sdk.controller.l
    public void b(JSONObject jSONObject) {
        i(e(y8.g.d0, jSONObject != null ? jSONObject.toString() : null));
    }

    void c(Runnable runnable) {
        Cif cif = this.a;
        if (cif != null) {
            cif.d(runnable);
        }
    }

    public void c(String str) {
        if (str.equals(y8.h.i)) {
            o();
        }
        i(e(y8.g.y, a("action", str, null, null, null, null, null, null, null, false)));
    }

    public void c(String str, String str2) {
        try {
            i(e(y8.g.o, a(y8.h.b, str, "path", b(str2), null, null, null, null, null, false)));
        } catch (Exception e2) {
            l9.d().a(e2);
            b(str, str2, e2.getMessage());
        }
    }

    @Override // org.json.sdk.controller.l
    public void d() {
        i(f(y8.g.s));
    }

    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = y8.c.z;
        }
        i(e(y8.g.Z, a("errMsg", str, "url", str2, null, null, null, null, null, false)));
    }

    @Override // org.json.sdk.controller.l
    public void destroy() {
        this.Y.destroy();
        va vaVar = this.h;
        if (vaVar != null) {
            vaVar.d();
        }
        s8 s8Var = this.Q;
        if (s8Var != null) {
            s8Var.b();
        }
        CountDownTimer countDownTimer = this.m;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // org.json.sdk.controller.l
    public void e() {
        a(this.D);
    }

    public void e(JSONObject jSONObject) {
        Logger.i(this.c, "device connection info changed: " + jSONObject.toString());
        i(e(y8.g.x, a(y8.i.h0, jSONObject.toString(), null, null, null, null, null, null, null, false)));
    }

    @Override // org.json.sdk.controller.l
    public void f() {
        i(f(y8.g.t));
    }

    @Override // org.json.sdk.controller.l
    public dg.c g() {
        return dg.c.Web;
    }

    public void g(String str, String str2) {
        i(e(y8.g.V, a(y8.h.p, str2, y8.h.m, str, null, null, null, null, null, false)));
    }

    public boolean h(String str) {
        try {
            if (!new cr(str, fj.e().d(), FeaturesManager.getInstance().getFeatureFlagClickCheck().c()).a()) {
                return false;
            }
            au.a(q(), str);
            return true;
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return false;
        }
    }

    public void k(String str) {
        i(e(y8.g.v, a("action", str, null, null, null, null, null, null, null, false)));
    }

    public void m(String str) {
        try {
            String strD = v8.d(this.X.a());
            Logger.i(this.c, "device status changed, connection type " + str);
            ig.a(str);
            ig.b(strD);
            i(e(y8.g.w, a(y8.i.t, str, y8.i.u, strD, null, null, null, null, null, false)));
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error("Exception: " + Log.getStackTraceString(e2));
        }
    }

    public void n(String str) {
        this.w = str;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        Logger.i(this.c, str + " " + str4);
    }

    public cv p() {
        if (this.O == null) {
            this.O = new g();
        }
        return this.O;
    }

    public Context q() {
        return this.X.a();
    }

    public int r() {
        return b0;
    }

    public FrameLayout s() {
        return this.u;
    }

    public String t() {
        return this.w;
    }

    public x2 u() {
        return this.D;
    }

    public u v() {
        return this.v;
    }

    public void w() {
        if (this.j == null) {
            return;
        }
        o();
        dg.e eVarB = this.j.b();
        String strA = this.j.a();
        if (q(eVarB.toString())) {
            a(eVarB, strA);
        }
    }

    public void x() {
        this.q.onHideCustomView();
    }

    public boolean y() {
        return this.r != null;
    }

    public void z() {
        i(f(y8.g.Y));
    }
}
