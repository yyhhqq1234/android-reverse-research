.class Lcom/tencent/pandora/webview/WebViewHelper$1;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "WebViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/pandora/webview/WebViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/pandora/webview/WebViewHelper;


# direct methods
.method constructor <init>(Lcom/tencent/pandora/webview/WebViewHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    .line 66
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetectedBlankScreen(Ljava/lang/String;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 124
    const-string v0, "Pandora WebView"

    const-string v1, "onDetectedBlankScreen"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "theView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-boolean v2, v2, Lcom/tencent/pandora/webview/WebViewHelper;->shouldClearHistory:Z

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 71
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iput-boolean v0, v2, Lcom/tencent/pandora/webview/WebViewHelper;->shouldClearHistory:Z

    .line 73
    :cond_0
    const-string v2, "Pandora WebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Track Loaded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "about:blank"

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 76
    .local v0, "isBlankPage":Z
    :cond_1
    if-nez v0, :cond_4

    .line 77
    const-string v2, "Pandora WebView"

    const-string v3, "On Page Finish Inject javascript:(function(w){if(typeof(PandoraInitialized)===\'function\'){PandoraInitialized();}})(window)"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v3, "javascript:(function(w){if(typeof(PandoraInitialized)===\'function\'){PandoraInitialized();}})(window)"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-static {v2}, Lcom/tencent/pandora/webview/WebViewHelper;->access$0(Lcom/tencent/pandora/webview/WebViewHelper;)Lcom/tencent/pandora/webview/WebViewCommand;

    move-result-object v2

    instance-of v2, v2, Lcom/tencent/pandora/webview/OpenUrlCommand;

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-static {v2}, Lcom/tencent/pandora/webview/WebViewHelper;->access$0(Lcom/tencent/pandora/webview/WebViewHelper;)Lcom/tencent/pandora/webview/WebViewCommand;

    move-result-object v1

    check-cast v1, Lcom/tencent/pandora/webview/OpenUrlCommand;

    .line 81
    .local v1, "param":Lcom/tencent/pandora/webview/OpenUrlCommand;
    const-string v3, "Pandora WebView"

    iget-boolean v2, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    if-eqz v2, :cond_3

    const-string v2, "Delay Show"

    :goto_0
    invoke-static {v3, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-boolean v2, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget v3, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    iget v4, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    iget v5, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    iget v6, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/pandora/webview/WebViewHelper;->addOrUpdateWebView(IIII)V

    .line 96
    .end local v1    # "param":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-static {v2, p2}, Lcom/tencent/pandora/webview/WebViewHelper;->access$1(Lcom/tencent/pandora/webview/WebViewHelper;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget-object v2, v2, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-super {p0, v2, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 98
    return-void

    .line 81
    .restart local v1    # "param":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_3
    const-string v2, "No Delay Show"

    goto :goto_0

    .line 87
    .end local v1    # "param":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_4
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-static {v2}, Lcom/tencent/pandora/webview/WebViewHelper;->access$0(Lcom/tencent/pandora/webview/WebViewHelper;)Lcom/tencent/pandora/webview/WebViewCommand;

    move-result-object v2

    instance-of v2, v2, Lcom/tencent/pandora/webview/OpenUrlCommand;

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    invoke-static {v2}, Lcom/tencent/pandora/webview/WebViewHelper;->access$0(Lcom/tencent/pandora/webview/WebViewHelper;)Lcom/tencent/pandora/webview/WebViewCommand;

    move-result-object v1

    check-cast v1, Lcom/tencent/pandora/webview/OpenUrlCommand;

    .line 89
    .restart local v1    # "param":Lcom/tencent/pandora/webview/OpenUrlCommand;
    const-string v3, "Pandora WebView"

    iget-boolean v2, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    if-eqz v2, :cond_5

    const-string v2, "Blank Page Delay Show"

    :goto_2
    invoke-static {v3, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-boolean v2, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    if-nez v2, :cond_2

    .line 91
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper$1;->this$0:Lcom/tencent/pandora/webview/WebViewHelper;

    iget v3, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    iget v4, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    iget v5, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    iget v6, v1, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/pandora/webview/WebViewHelper;->addOrUpdateWebView(IIII)V

    goto :goto_1

    .line 89
    :cond_5
    const-string v2, "Blank Page No Delay Show"

    goto :goto_2
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "Pandora WebView"

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V
    .locals 2
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "webResourceRequest"    # Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;
    .param p3, "webResourceResponse"    # Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    .prologue
    .line 102
    const-string v0, "Pandora WebView"

    const-string v1, "onReceivedHttpError"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "sslErrorHandler"    # Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;
    .param p3, "sslError"    # Landroid/net/http/SslError;

    .prologue
    .line 113
    const-string v0, "Pandora WebView"

    const-string v1, "onReceivedSslError"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onTooManyRedirects(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "message"    # Landroid/os/Message;
    .param p3, "message1"    # Landroid/os/Message;

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onTooManyRedirects(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 119
    const-string v0, "Pandora WebView"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method
