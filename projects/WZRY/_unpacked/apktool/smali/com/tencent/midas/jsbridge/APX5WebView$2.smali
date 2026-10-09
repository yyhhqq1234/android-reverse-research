.class Lcom/tencent/midas/jsbridge/APX5WebView$2;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "APX5WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/midas/jsbridge/APX5WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/jsbridge/APX5WebView;


# direct methods
.method constructor <init>(Lcom/tencent/midas/jsbridge/APX5WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/jsbridge/APX5WebView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APX5WebView$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 101
    const-string v0, "APWebView"

    const-string v1, "onPageFinished!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "APWebView url == "

    invoke-static {v0, p2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$100(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$000(Lcom/tencent/midas/jsbridge/APX5WebView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebView$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v1}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$100(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/api/APMidasPayAPI;->InnerH5PayInitX5(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;)V

    .line 114
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$200(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;->WebViewClientPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 121
    const-string v0, "APWebView"

    const-string v1, "onPageStarted!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$200(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;->WebViewClientPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 125
    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "APWebView"

    const-string v1, "onReceivedError!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView$2;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$200(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;->WebViewClientReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 77
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

    .line 79
    const-string v0, "http://unipay.sdk.android/?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wsj://"

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mqqapi://"

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "weixin://"

    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms://"

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    const-string v0, "APWebView"

    const-string v1, "shouldOverrideUrlLoading loadUrl = "

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
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

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    const-string v0, "APWebView"

    const-string v1, "shouldOverrideUrlLoading startSchema = "

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    return v4
.end method
