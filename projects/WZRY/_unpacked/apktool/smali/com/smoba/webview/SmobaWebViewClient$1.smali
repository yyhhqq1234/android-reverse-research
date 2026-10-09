.class Lcom/smoba/webview/SmobaWebViewClient$1;
.super Landroid/os/Handler;
.source "SmobaWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smoba/webview/SmobaWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smoba/webview/SmobaWebViewClient;


# direct methods
.method constructor <init>(Lcom/smoba/webview/SmobaWebViewClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 32
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeout ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "nProgrees":I
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v1}, Lcom/smoba/webview/WebViewEx;->GetCurWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v1}, Lcom/smoba/webview/WebViewEx;->GetCurWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getProgress()I

    move-result v0

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Time out "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_bTimeOut:Z

    .line 41
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v1}, Lcom/smoba/webview/WebViewEx;->GetCurWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient$1;->this$0:Lcom/smoba/webview/SmobaWebViewClient;

    iget-object v1, v1, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v1}, Lcom/smoba/webview/WebViewEx;->GetCurWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
