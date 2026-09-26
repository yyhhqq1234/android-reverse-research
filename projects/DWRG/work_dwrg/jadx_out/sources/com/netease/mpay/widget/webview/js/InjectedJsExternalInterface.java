package com.netease.mpay.widget.webview.js;

/* loaded from: classes.dex */
public interface InjectedJsExternalInterface {
    void alert(String str);

    void changeNavigationTitle(String str);

    void closeWindow();

    void jumpToMobileChangePage();

    void onError(int i);

    void onMobileBindRelatedAccount(String str);

    void onMobileChanged(String str);

    void onPayFinished(int i);

    void onPayRedirect(int i);

    void onQrcodeLogin(String str, String str2);

    void onReady();

    void onRealnameVerify();

    void onTokenRefresh(String str);

    void onUrsMobileLogin(String str);

    void onUserLogin(String str);

    void onUserLogout();

    void onVerify(String str);

    void onVerifyRelatedMobile();

    void onVerifyRelatedMobile(String str);

    void saveImage(String str);

    void saveToClipboard(String str);

    void setBackButton(boolean z);

    void toast(String str);
}
