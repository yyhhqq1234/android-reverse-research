.class public Lcom/netease/epay/sdk/pay/ui/WebActivity;
.super Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;
.source "WebActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/WebActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/q;->a(ZLjava/lang/String;)Lcom/netease/epay/sdk/pay/ui/q;

    move-result-object v0

    return-object v0
.end method

.method public interceptExit()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/WebActivity;->finish()V

    .line 40
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "WebActivity_h5PostUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/WebActivity;->a:Ljava/lang/String;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/WebActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const-string v0, "http://epay.163.com"

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/WebActivity;->a:Ljava/lang/String;

    .line 28
    :cond_1
    const-string v0, "payResult"

    const-class v1, Lcom/netease/epay/sdk/pay/b/b;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->addHandlerType(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->onCreateSdkActivity(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
