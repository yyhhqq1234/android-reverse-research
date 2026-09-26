package com.netease.epay.sdk.base.hybrid;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.netease.epay.sdk.base.util.AppUtils;
import com.netease.epay.sdk.base.util.LogUtil;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class InjectRunnable implements Runnable {
    static final String KEY_BRIDGE_READY = "__bridge__ready__";
    private static final int MAX_REPEAT_COUNT = 5;
    private static final String NOTIFY_H5_BRIDGE_IS_READY = "javascript:window._webViewEPNBReady=true;var readyEvent = document.createEvent('Events'),eventName = 'EPNBReady';readyEvent.initEvent(eventName);document.dispatchEvent(readyEvent);window.prompt('{}', '__bridge__ready__');";
    private Handler mainHandler = new Handler(Looper.getMainLooper());
    private int postDelayed;
    private int repeatCount;
    private WeakReference<WebView> webViewWeakReference;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InjectRunnable(WebView webView) {
        this.postDelayed = 200;
        this.webViewWeakReference = new WeakReference<>(webView);
        if (AppUtils.isMiuiPhone()) {
            this.postDelayed = 1000;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        WebView webView = this.webViewWeakReference.get();
        if (webView == null || this.repeatCount >= 5) {
            reset();
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript(NOTIFY_H5_BRIDGE_IS_READY, null);
        } else {
            webView.loadUrl(NOTIFY_H5_BRIDGE_IS_READY);
        }
        this.repeatCount++;
        this.mainHandler.postDelayed(this, this.postDelayed);
    }

    public void start() {
        reset();
        this.mainHandler.post(this);
    }

    public void reset() {
        LogUtil.d(getClass().getSimpleName() + " repeatCount:" + this.repeatCount);
        this.repeatCount = 0;
        this.mainHandler.removeCallbacks(this);
    }
}
