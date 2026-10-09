.class Lcom/smoba/webview/WebViewEx$8;
.super Ljava/lang/Object;
.source "WebViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->OnPause(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 784
    const-string v1, "openwebex in thread"

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    iget-boolean v1, v1, Lcom/smoba/webview/WebViewEx;->m_bPause:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 786
    .local v0, "val":I
    :goto_0
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 787
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v1

    const-string v2, "ScreenLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smoba/webview/SmobaJsBridge;->SendToJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_0
    return-void

    .line 785
    .end local v0    # "val":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
