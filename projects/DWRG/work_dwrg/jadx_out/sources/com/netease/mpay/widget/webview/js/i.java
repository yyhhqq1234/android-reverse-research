package com.netease.mpay.widget.webview.js;

import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements e {
    final /* synthetic */ WebViewExListener a;
    final /* synthetic */ WebViewEx b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(WebViewEx webViewEx, WebViewExListener webViewExListener) {
        this.b = webViewEx;
        this.a = webViewExListener;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.webview.js.f
    public void a(String str) {
        this.b.a(str);
    }

    @Override // com.netease.mpay.widget.webview.js.f
    public void a(ArrayList arrayList) {
        this.b.b = arrayList;
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void alert(String str) {
        this.a.alert(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void changeNavigationTitle(String str) {
        this.a.changeNavigationTitle(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void closeWindow() {
        this.a.closeWindow();
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void jumpToMobileChangePage() {
        this.a.jumpToMobileChangePage();
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onError(int i) {
        this.a.onError(i);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onMobileBindRelatedAccount(String str) {
        this.a.onMobileBindRelatedAccount(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onMobileChanged(String str) {
        this.a.onMobileChanged(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onPayFinished(int i) {
        this.a.onPayFinished(i);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onPayRedirect(int i) {
        this.a.onPayRedirect(i);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onQrcodeLogin(String str, String str2) {
        this.a.onQrcodeLogin(str, str2);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onReady() {
        this.a.onReady();
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onRealnameVerify() {
        this.a.onRealnameVerify();
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onTokenRefresh(String str) {
        this.a.onTokenRefresh(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onUrsMobileLogin(String str) {
        this.a.onUrsMobileLogin(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onUserLogin(String str) {
        this.a.onUserLogin(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onUserLogout() {
        this.a.onUserLogout();
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerify(String str) {
        this.a.onVerify(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerifyRelatedMobile() {
        this.a.onVerifyRelatedMobile();
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void onVerifyRelatedMobile(String str) {
        this.a.onVerifyRelatedMobile(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void saveImage(String str) {
        this.a.saveImage(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void saveToClipboard(String str) {
        this.a.saveToClipboard(str);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void setBackButton(boolean z) {
        this.a.setBackButton(z);
    }

    @Override // com.netease.mpay.widget.webview.js.InjectedJsExternalInterface
    public void toast(String str) {
        this.a.toast(str);
    }
}
