.class public Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;
.super Ljava/lang/Object;
.source "JSEventHelper.java"


# static fields
.field private static final WEBVIEW_BACKED:Ljava/lang/String; = "ep_webViewBacked"

.field private static final WEBVIEW_DID_APPEAR:Ljava/lang/String; = "ep_webViewDidAppear"

.field private static final WEBVIEW_DID_DISAPPEAR:Ljava/lang/String; = "ep_webViewDidDisappear"

.field private static final WEBVIEW_DID_FINISHLOAD:Ljava/lang/String; = "ep_webViewDidFinishLoad"

.field private static final WEBVIEW_WILL_APPEAR:Ljava/lang/String; = "ep_webViewWillAppear"

.field private static final WEBVIEW_WILL_DISAPPEAR:Ljava/lang/String; = "ep_webViewWillDisappear"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchJSEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "var customEvent = new CustomEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    if-eqz p2, :cond_1

    .line 33
    const-string v1, ",{\'detail\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    const-string v1, ");document.dispatchEvent(customEvent);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 39
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onWebViewBacked(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "ep_webViewBacked"

    invoke-static {p0, v0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;->dispatchJSEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static onWebViewDidAppear(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "ep_webViewDidAppear"

    invoke-static {p0, v0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;->dispatchJSEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static onWebViewDidDisappear(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "ep_webViewDidDisappear"

    invoke-static {p0, v0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;->dispatchJSEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static onWebViewDidFinishLoad(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "ep_webViewDidFinishLoad"

    invoke-static {p0, v0, p1}, Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;->dispatchJSEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
