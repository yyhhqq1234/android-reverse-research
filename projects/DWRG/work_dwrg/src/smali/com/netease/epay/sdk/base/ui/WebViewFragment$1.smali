.class Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/ui/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$200(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Lcom/netease/epay/sdk/base/view/BaseWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$300(Lcom/netease/epay/sdk/base/ui/WebViewFragment;Ljava/lang/String;)V

    .line 173
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$400(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u7f51\u9875\u7531 %s \u63d0\u4f9b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;->onWebViewDidFinishLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$100(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 165
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netease.epay.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 147
    const-string v1, "epay163"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :goto_0
    return v0

    .line 150
    :cond_0
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-virtual {v2, v1}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$000(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$000(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
