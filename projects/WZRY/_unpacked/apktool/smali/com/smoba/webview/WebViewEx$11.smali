.class Lcom/smoba/webview/WebViewEx$11;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->WebViewShareCallBack(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 862
    const-string v0, "openwebex in thread"

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    const-string v1, "SmobaShareCallBack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v3

    iget v3, v3, Lcom/smoba/webview/WebViewEx;->m_ShareErrorCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_0
    return-void
.end method
