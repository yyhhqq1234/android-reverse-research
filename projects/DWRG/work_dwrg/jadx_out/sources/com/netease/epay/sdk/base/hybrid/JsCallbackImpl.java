package com.netease.epay.sdk.base.hybrid;

import android.os.Build;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.WebView;
import com.netease.epay.sdk.base.hybrid.common.FinanceRep;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class JsCallbackImpl implements JsCallback {
    private static final String OBJECT_CALLBACK = "javascript:window.EPNB.callJS('%s',%s)";
    private static final String STRING_CALLBACK = "javascript:window.EPNB.callJS('%s','%s')";
    private String callbackId;
    private HybridHandler handler;
    private Hybrid hybrid;
    private boolean isExpired;
    private boolean isPermanent;
    private JsPromptResult result;
    private WeakReference<WebView> webViewWeakReference;

    /* JADX INFO: Access modifiers changed from: package-private */
    public JsCallbackImpl(String callbackId, WebView webView, JsPromptResult result, Hybrid hybrid, HybridHandler handler) {
        this.callbackId = callbackId;
        this.webViewWeakReference = new WeakReference<>(webView);
        this.result = result;
        this.hybrid = hybrid;
        this.handler = handler;
    }

    @Override // com.netease.epay.sdk.base.hybrid.JsCallback
    public JsCallback newInstance(String callbackId) {
        return new JsCallbackImpl(callbackId, this.webViewWeakReference.get(), null, null, null);
    }

    @Override // com.netease.epay.sdk.base.hybrid.JsCallback
    public void confirm(FinanceRep resp) {
        if (!this.isExpired && !TextUtils.isEmpty(this.callbackId) && this.webViewWeakReference.get() != null) {
            doCallback(OBJECT_CALLBACK, resp.toJsonString());
            if (!this.isPermanent) {
                this.isExpired = true;
                this.webViewWeakReference = null;
                if (this.hybrid != null) {
                    this.hybrid.removeHandler(this.handler);
                }
            }
        }
    }

    private void doCallback(String pattern, String response) {
        if (this.result != null) {
            this.result.confirm(response);
            this.result = null;
        } else if (this.webViewWeakReference.get() != null) {
            if (Build.VERSION.SDK_INT < 19) {
                this.webViewWeakReference.get().loadUrl(String.format(pattern, this.callbackId, response));
            } else {
                this.webViewWeakReference.get().evaluateJavascript(String.format(pattern, this.callbackId, response), null);
            }
        }
    }

    @Override // com.netease.epay.sdk.base.hybrid.JsCallback
    public boolean isExpired() {
        return this.isExpired;
    }

    @Override // com.netease.epay.sdk.base.hybrid.JsCallback
    public void setPermanent(boolean isPermanent) {
        this.isPermanent = isPermanent;
    }

    @Override // com.netease.epay.sdk.base.hybrid.JsCallback
    public boolean isPermanent() {
        return this.isPermanent;
    }

    public void removeJsPromptResult() {
        this.result = null;
    }
}
