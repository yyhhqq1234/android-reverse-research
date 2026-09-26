package com.alipay.sdk.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.m;

/* loaded from: classes.dex */
public class H5PayActivity extends Activity {
    private WebView a;
    private WebViewClient b;

    private void b() {
        try {
            super.requestWindowFeature(1);
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.a.canGoBack()) {
            if (((b) this.b).c) {
                j a = j.a(j.NETWORK_ERROR.h);
                i.a = i.a(a.h, a.i, "");
                finish();
                return;
            }
            return;
        }
        i.a = i.a();
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        a();
        super.finish();
    }

    public void a() {
        Object obj = PayTask.a;
        synchronized (obj) {
            try {
                obj.notify();
            } catch (Exception e) {
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.a != null) {
            this.a.removeAllViews();
            ((ViewGroup) this.a.getParent()).removeAllViews();
            try {
                this.a.destroy();
            } catch (Throwable th) {
            }
            this.a = null;
        }
        if (this.b != null) {
            b bVar = (b) this.b;
            bVar.b = null;
            bVar.a = null;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        try {
            super.requestWindowFeature(1);
        } catch (Throwable th) {
        }
        super.onCreate(bundle);
        try {
            Bundle extras = getIntent().getExtras();
            String string = extras.getString("url");
            if (!m.b(string)) {
                finish();
            } else {
                try {
                    this.a = m.a(this, string, extras.getString("cookie"));
                    this.b = new b(this);
                    this.a.setWebViewClient(this.b);
                } catch (Throwable th2) {
                    com.alipay.sdk.app.statistic.a.a(com.alipay.sdk.app.statistic.c.b, "GetInstalledAppEx", th2);
                    finish();
                }
            }
        } catch (Exception e) {
            finish();
        }
    }
}
