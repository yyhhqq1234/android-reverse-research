.class public Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "ServeCompactActivity.java"


# static fields
.field public static NEED_SENCOND_TITLE:Ljava/lang/String;

.field public static TITLE:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# instance fields
.field private webView:Lcom/netease/epay/sdk/base/view/BaseWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "agreementTitle"

    sput-object v0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->TITLE:Ljava/lang/String;

    .line 20
    const-string v0, "agreementAddress"

    sput-object v0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->URL:Ljava/lang/String;

    .line 21
    const-string v0, "needSecondTitle"

    sput-object v0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->NEED_SENCOND_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_actv_serve_pact:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->setContentView(I)V

    .line 26
    sget v0, Lcom/netease/epay/sdk/base/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/BaseWebView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setHyBridConfigs()V

    .line 28
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_servpact_title:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->NEED_SENCOND_TITLE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onDestroy()V

    .line 46
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->removeAllViews()V

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServeCompactActivity;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->destroy()V

    .line 51
    :cond_0
    return-void
.end method
