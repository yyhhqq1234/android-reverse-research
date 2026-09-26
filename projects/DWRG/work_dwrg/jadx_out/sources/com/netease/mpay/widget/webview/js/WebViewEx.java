package com.netease.mpay.widget.webview.js;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class WebViewEx extends WebView {
    private WeakReference a;
    private ArrayList b;
    private c c;

    public WebViewEx(Context context) {
        super(context);
        a();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public WebViewEx(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public WebViewEx(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    @SuppressLint({"NewApi"})
    public WebViewEx(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i, z);
        a();
    }

    @SuppressLint({"NewApi"})
    private void a() {
        if (Build.VERSION.SDK_INT < 11 || Build.VERSION.SDK_INT >= 17) {
            return;
        }
        removeJavascriptInterface("searchBoxJavaBridge_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        Activity activity = (Activity) this.a.get();
        if (TextUtils.isEmpty(str) || activity == null || activity.isFinishing()) {
            return;
        }
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (ActivityNotFoundException e) {
            g.a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        if (TextUtils.isEmpty(str) || this.b == null) {
            return false;
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (!TextUtils.isEmpty(str2) && str.startsWith(str2.trim())) {
                return true;
            }
        }
        return false;
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.addJavascriptInterface(obj, str);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    @TargetApi(16)
    public void regist(Activity activity, Config config, WebViewExListener webViewExListener) {
        if (activity != null) {
            this.a = new WeakReference(activity);
        }
        getSettings().setDefaultTextEncodingName("UTF-8");
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(activity.getApplicationContext().getCacheDir().getAbsolutePath());
        if (Build.VERSION.SDK_INT > 15) {
            getSettings().setAllowUniversalAccessFromFileURLs(true);
        }
        getSettings().setCacheMode(-1);
        if (webViewExListener == null) {
            return;
        }
        this.c = new j(this, activity, config, new i(this, webViewExListener), webViewExListener);
        if (config.uploadFile.a) {
            this.c.enableUploadFiles(activity, config.uploadFile.b);
        }
        setWebChromeClient(this.c);
        setWebViewClient(new k(this, webViewExListener));
    }

    public void uploadFiles(int i, Intent intent) {
        if (this.c != null) {
            this.c.uploadFiles(i, intent);
        }
    }
}
