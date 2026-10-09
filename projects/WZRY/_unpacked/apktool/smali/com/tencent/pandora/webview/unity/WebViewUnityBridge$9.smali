.class Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$9;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$2()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$2()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/pandora/webview/IWebView;->hide()V

    .line 443
    :cond_0
    return-void
.end method
