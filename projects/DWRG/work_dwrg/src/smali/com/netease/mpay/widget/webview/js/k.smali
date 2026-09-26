.class Lcom/netease/mpay/widget/webview/js/k;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

.field final synthetic b:Lcom/netease/mpay/widget/webview/js/WebViewEx;


# direct methods
.method constructor <init>(Lcom/netease/mpay/widget/webview/js/WebViewEx;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/k;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    iput-object p2, p0, Lcom/netease/mpay/widget/webview/js/k;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/k;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/k;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-static {v0, p2}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->b(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/k;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-static {v0, p2}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/k;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/k;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v0, ""

    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/netease/mpay/widget/webview/js/k;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v3, p1, v1, v0, v2}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    move-object v4, v1

    move v1, v3

    move-object v3, v4

    :goto_1
    invoke-static {v3}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/mpay/widget/webview/js/k;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-static {v1, p2}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->b(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/widget/webview/js/k;->b:Lcom/netease/mpay/widget/webview/js/WebViewEx;

    invoke-static {v1, p2}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/widget/webview/js/k;->a:Lcom/netease/mpay/widget/webview/js/WebViewExListener;

    invoke-interface {v1, p1, p2}, Lcom/netease/mpay/widget/webview/js/WebViewExListener;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
