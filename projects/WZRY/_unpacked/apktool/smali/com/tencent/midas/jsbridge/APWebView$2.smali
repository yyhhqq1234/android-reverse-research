.class Lcom/tencent/midas/jsbridge/APWebView$2;
.super Landroid/webkit/WebViewClient;
.source "APWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/midas/jsbridge/APWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/jsbridge/APWebView;


# direct methods
.method constructor <init>(Lcom/tencent/midas/jsbridge/APWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/jsbridge/APWebView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APWebView$2;->this$0:Lcom/tencent/midas/jsbridge/APWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 97
    const-string v0, "APWebView"

    const-string v1, "onPageFinished!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "APWebView url == "

    invoke-static {v0, p2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView$2;->this$0:Lcom/tencent/midas/jsbridge/APWebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APWebView;->access$100(Lcom/tencent/midas/jsbridge/APWebView;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView$2;->this$0:Lcom/tencent/midas/jsbridge/APWebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APWebView;->access$000(Lcom/tencent/midas/jsbridge/APWebView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APWebView$2;->this$0:Lcom/tencent/midas/jsbridge/APWebView;

    invoke-static {v1}, Lcom/tencent/midas/jsbridge/APWebView;->access$100(Lcom/tencent/midas/jsbridge/APWebView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/api/APMidasPayAPI;->InnerH5PayInit(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 110
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView$2;->this$0:Lcom/tencent/midas/jsbridge/APWebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APWebView;->access$200(Lcom/tencent/midas/jsbridge/APWebView;)Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/midas/jsbridge/IAPWebViewCallback;->WebViewClientPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 117
    const-string v0, "APWebView"

    const-string v1, "onPageStarted!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView$2;->this$0:Lcom/tencent/midas/jsbridge/APWebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APWebView;->access$200(Lcom/tencent/midas/jsbridge/APWebView;)Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/midas/jsbridge/IAPWebViewCallback;->WebViewClientPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 121
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "APWebView"

    const-string v1, "onReceivedError!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView$2;->this$0:Lcom/tencent/midas/jsbridge/APWebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APWebView;->access$200(Lcom/tencent/midas/jsbridge/APWebView;)Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/midas/jsbridge/IAPWebViewCallback;->WebViewClientReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 73
    const-string v0, "APWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "http://unipay.sdk.android/?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wsj://"

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mqqapi://"

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "weixin://"

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms://"

    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    const-string v0, "APWebView"

    const-string v1, "shouldOverrideUrlLoading loadUrl = "

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    const-string v0, "mqqapi://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "weixin://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sms://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    const-string v0, "APWebView"

    const-string v1, "shouldOverrideUrlLoading startSchema = "

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    return v4
.end method
