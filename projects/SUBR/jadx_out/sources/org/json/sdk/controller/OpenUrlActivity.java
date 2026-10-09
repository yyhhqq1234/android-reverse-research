package org.json.sdk.controller;

import android.R;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.view.InputDeviceCompat;
import org.json.au;
import org.json.cr;
import org.json.fj;
import org.json.h;
import org.json.l8;
import org.json.l9;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.Logger;
import org.json.sdk.utils.SDKUtils;
import org.json.si;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public class OpenUrlActivity extends Activity {
    private static final String j = "OpenUrlActivity";
    private static final int k = SDKUtils.generateViewId();
    private static final int l = SDKUtils.generateViewId();
    private v b;
    private ProgressBar c;
    boolean d;
    private RelativeLayout e;
    private String f;
    private WebView a = null;
    private final Handler g = new Handler(Looper.getMainLooper());
    private boolean h = false;
    private final Runnable i = new b();

    class a implements View.OnSystemUiVisibilityChangeListener {
        a() {
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if ((i & InputDeviceCompat.SOURCE_TOUCHSCREEN) == 0) {
                OpenUrlActivity.this.g.removeCallbacks(OpenUrlActivity.this.i);
                OpenUrlActivity.this.g.postDelayed(OpenUrlActivity.this.i, 500L);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            OpenUrlActivity.this.getWindow().getDecorView().setSystemUiVisibility(SDKUtils.getActivityUIFlags(OpenUrlActivity.this.h));
        }
    }

    private class c extends WebViewClient {
        private c() {
        }

        /* synthetic */ c(OpenUrlActivity openUrlActivity, a aVar) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            OpenUrlActivity.this.c.setVisibility(4);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            OpenUrlActivity.this.c.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            try {
                l8 featureFlagCatchUrlError = FeaturesManager.getInstance().getFeatureFlagCatchUrlError();
                if (featureFlagCatchUrlError.c()) {
                    if (featureFlagCatchUrlError.e() && OpenUrlActivity.this.b != null) {
                        OpenUrlActivity.this.b.d(str, str2);
                    }
                    if (featureFlagCatchUrlError.d()) {
                        OpenUrlActivity.this.finish();
                    }
                }
            } catch (Throwable th) {
                l9.d().a(th);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e(OpenUrlActivity.j, "Chromium process crashed - detail.didCrash():" + renderProcessGoneDetail.didCrash());
            OpenUrlActivity.this.finish();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!new cr(str, fj.e().d(), FeaturesManager.getInstance().getFeatureFlagClickCheck().c()).a()) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            try {
                au.a(OpenUrlActivity.this, str);
                OpenUrlActivity.this.b.z();
            } catch (Exception e) {
                l9.d().a(e);
                StringBuilder sb = new StringBuilder();
                sb.append(e instanceof ActivityNotFoundException ? y8.c.x : y8.c.y);
                if (OpenUrlActivity.this.b != null) {
                    OpenUrlActivity.this.b.d(sb.toString(), str);
                }
            }
            OpenUrlActivity.this.finish();
            return true;
        }
    }

    static class d {
        static final String a = "is_store";
        static final String b = "external_url";
        static final String c = "secondary_web_view";
        static final String d = "immersive";
        static final String e = "no activity to handle url";
        static final String f = "activity failed to open with unspecified reason";

        private d() {
        }
    }

    public static class e {
        private final h a;
        private int b;
        private String c;
        private boolean d = false;
        private boolean e = false;
        private boolean f = false;

        public e(h hVar) {
            this.a = hVar;
        }

        public Intent a(Context context) {
            Intent intentA = this.a.a(context);
            intentA.putExtra("external_url", this.c);
            intentA.putExtra("secondary_web_view", this.d);
            intentA.putExtra("is_store", this.e);
            intentA.putExtra(y8.h.v, this.f);
            if (!(context instanceof Activity)) {
                intentA.setFlags(this.b);
            }
            return intentA;
        }

        e a(int i) {
            this.b = i;
            return this;
        }

        public e a(String str) {
            this.c = str;
            return this;
        }

        e a(boolean z) {
            this.f = z;
            return this;
        }

        public e b(boolean z) {
            this.d = z;
            return this;
        }

        public e c(boolean z) {
            this.e = z;
            return this;
        }
    }

    private void a() {
        if (this.c == null) {
            ProgressBar progressBar = new ProgressBar(new ContextThemeWrapper(this, R.style.Theme.Holo.Light.Dialog));
            this.c = progressBar;
            progressBar.setId(l);
        }
        if (findViewById(l) == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.c.setLayoutParams(layoutParams);
            this.c.setVisibility(4);
            this.e.addView(this.c);
        }
    }

    private void b() {
        if (this.a == null) {
            WebView webView = new WebView(getApplicationContext());
            this.a = webView;
            webView.setId(k);
            this.a.getSettings().setJavaScriptEnabled(true);
            this.a.setWebViewClient(new c(this, null));
            loadUrl(this.f);
        }
        if (findViewById(k) == null) {
            this.e.addView(this.a, new RelativeLayout.LayoutParams(-1, -1));
        }
        a();
        v vVar = this.b;
        if (vVar != null) {
            vVar.a(true, y8.h.Y);
        }
    }

    private void c() {
        WebView webView = this.a;
        if (webView != null) {
            webView.destroy();
        }
    }

    private void d() {
        getWindow().addFlags(16);
    }

    private void e() {
        requestWindowFeature(1);
    }

    private void f() {
        getWindow().setFlags(1024, 1024);
    }

    private void g() {
        ViewGroup viewGroup;
        v vVar = this.b;
        if (vVar != null) {
            vVar.a(false, y8.h.Y);
            if (this.e == null || (viewGroup = (ViewGroup) this.a.getParent()) == null) {
                return;
            }
            if (viewGroup.findViewById(k) != null) {
                viewGroup.removeView(this.a);
            }
            if (viewGroup.findViewById(l) != null) {
                viewGroup.removeView(this.c);
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        v vVar;
        if (this.d && (vVar = this.b) != null) {
            vVar.c(y8.h.j);
        }
        super.finish();
    }

    public void loadUrl(String str) {
        this.a.stopLoading();
        this.a.clearHistory();
        try {
            this.a.loadUrl(str);
        } catch (Throwable th) {
            l9.d().a(th);
            Logger.e(j, "OpenUrlActivity:: loadUrl: " + th.toString());
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.a.canGoBack()) {
            this.a.goBack();
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.i(j, "onCreate()");
        try {
            this.b = (v) si.a((Context) this).a().j();
            e();
            f();
            Bundle extras = getIntent().getExtras();
            this.f = extras.getString("external_url");
            this.d = extras.getBoolean("secondary_web_view");
            boolean booleanExtra = getIntent().getBooleanExtra(y8.h.v, false);
            this.h = booleanExtra;
            if (booleanExtra) {
                getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new a());
                runOnUiThread(this.i);
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.e = relativeLayout;
            setContentView(relativeLayout, new ViewGroup.LayoutParams(-1, -1));
        } catch (Exception e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.h && (i == 25 || i == 24)) {
            this.g.postDelayed(this.i, 500L);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        g();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.h && z) {
            runOnUiThread(this.i);
        }
    }
}
