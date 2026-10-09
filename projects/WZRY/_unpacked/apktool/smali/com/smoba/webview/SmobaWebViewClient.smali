.class public Lcom/smoba/webview/SmobaWebViewClient;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "SmobaWebViewClient.java"


# instance fields
.field m_Handler:Landroid/os/Handler;

.field m_StartUrlTime:J

.field m_Timer:Ljava/util/Timer;

.field m_WebViewEx:Lcom/smoba/webview/WebViewEx;

.field m_bTimeOut:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_bTimeOut:Z

    .line 21
    iput-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    .line 22
    iput-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_StartUrlTime:J

    .line 24
    new-instance v0, Lcom/smoba/webview/SmobaWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/smoba/webview/SmobaWebViewClient$1;-><init>(Lcom/smoba/webview/SmobaWebViewClient;)V

    iput-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_Handler:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public InitClient(Lcom/smoba/webview/WebViewEx;)V
    .locals 0
    .param p1, "webViewEx"    # Lcom/smoba/webview/WebViewEx;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    .line 56
    return-void
.end method

.method public StartLaodingUrlTimer()V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_StartUrlTime:J

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "m_StartUrlTime ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    .line 65
    new-instance v1, Lcom/smoba/webview/SmobaWebViewClient$2;

    invoke-direct {v1, p0}, Lcom/smoba/webview/SmobaWebViewClient$2;-><init>(Lcom/smoba/webview/SmobaWebViewClient;)V

    .line 81
    .local v1, "task":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    iget v2, v2, Lcom/smoba/webview/WebViewEx;->m_TimeoutTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 83
    return-void
.end method

.method public StopLaodingUrlTimer()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "StopLaodingUrlTimer"

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 91
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 93
    :cond_0
    return-void
.end method

.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onPageFinished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0, v2}, Lcom/smoba/webview/WebViewEx;->SetLoadingUI(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/smoba/webview/SmobaWebViewClient;->StopLaodingUrlTimer()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "btimeout "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_bTimeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time out progress "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v1}, Lcom/smoba/webview/WebViewEx;->GetCurWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_bTimeOut:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smoba/webview/WebViewEx;->ShowRetryTips(Z)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->GetCurWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->GetCurWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    const-string v0, " onPageStarted"

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_bTimeOut:Z

    .line 99
    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "errorCode"    # I
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "failurl"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onReceivedError code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 133
    const/4 v0, -0x8

    if-ne p2, v0, :cond_0

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_bTimeOut:Z

    .line 138
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V
    .locals 1
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "webResourceRequest"    # Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;
    .param p3, "webResourceResponse"    # Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    .prologue
    .line 146
    const-string v0, "onReceivedHttpError"

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V

    .line 149
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->getJsBridge()Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->getJsBridge()Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smoba/webview/SmobaJsBridge;->canResolved(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/smoba/webview/SmobaWebViewClient;->m_WebViewEx:Lcom/smoba/webview/WebViewEx;

    invoke-virtual {v0}, Lcom/smoba/webview/WebViewEx;->getJsBridge()Lcom/smoba/webview/SmobaJsBridge;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smoba/webview/SmobaJsBridge;->parseMessage(Ljava/lang/String;)V

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
