.class public Lcom/netease/epay/sdk/base_card/ui/CardBankWebViewActivity;
.super Lcom/netease/epay/sdk/base/ui/WebViewActivity;
.source "CardBankWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/WebViewActivity;-><init>()V

    return-void
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->initStatckTrace()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/epay/sdk/base_card/ui/CardBankWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "postFormData"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isNeedTitle"

    .line 5
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isNeedSecondTitle"

    .line 6
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "titleName"

    .line 7
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "helpAddress"

    .line 8
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isDemotionH5Face"

    .line 9
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getFirstFragment()Landroidx/fragment/app/Fragment;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->postFormData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->handleInvalidUrl()V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->isNeedTitle:Z

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->titleName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->isNeedSecondTitle:Z

    iget-boolean v4, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->isNeedBack:Z

    iget-object v5, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->helpAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->url:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/epay/sdk/base/ui/WebViewActivity;->postFormData:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;->newInstance(ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;

    move-result-object v0

    return-object v0
.end method
