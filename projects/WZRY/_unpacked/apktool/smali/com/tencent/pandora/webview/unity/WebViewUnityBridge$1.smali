.class Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$1;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"

# interfaces
.implements Lcom/tencent/pandora/webview/WebViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBackPress(Z)V
    .locals 2
    .param p1, "isDown"    # Z

    .prologue
    .line 70
    const-string v1, "OnBackPress"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$0(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 70
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "OnLowMemory"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$0(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onWebViewLoaded()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "OnPageLoaded"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$0(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public onWebViewMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On WebView Message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "OnPageMessage"

    invoke-static {v0, p1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->access$0(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
