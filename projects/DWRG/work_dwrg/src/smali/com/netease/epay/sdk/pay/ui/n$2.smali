.class Lcom/netease/epay/sdk/pay/ui/n$2;
.super Landroid/webkit/WebViewClient;
.source "PayResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/n;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/n;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/n;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/n$2;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n$2;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n$2;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.netease.epay.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 226
    :goto_0
    return-void

    .line 224
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

    .line 208
    const-string v1, "epay163"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    :goto_0
    return v0

    .line 211
    :cond_0
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/n$2;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-virtual {v2, v1}, Lcom/netease/epay/sdk/pay/ui/n;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
