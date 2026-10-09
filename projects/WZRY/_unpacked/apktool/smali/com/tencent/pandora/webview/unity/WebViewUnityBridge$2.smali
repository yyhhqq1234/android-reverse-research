.class Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$2;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->initialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "Pandora WebView"

    const-string v1, "Use Service"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "Pandora WebView"

    const-string v1, "Use Current Process"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/tencent/pandora/webview/WebViewHelper;

    sget-object v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/pandora/webview/WebViewHelper;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    .line 172
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getScreenSize()V

    .line 173
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    sget v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenWidth:I

    sget v2, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenHeight:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/pandora/webview/IWebView;->setScreenDimension(II)V

    .line 176
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    sget-object v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-interface {v0, v1}, Lcom/tencent/pandora/webview/IWebView;->setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V

    .line 178
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    sget-object v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->cachedUserInfo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/pandora/webview/IWebView;->setInfo(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    invoke-interface {v0}, Lcom/tencent/pandora/webview/IWebView;->initialize()V

    goto :goto_0
.end method
