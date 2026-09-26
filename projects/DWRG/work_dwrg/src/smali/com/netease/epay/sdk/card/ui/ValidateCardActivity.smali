.class public Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;
.super Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;
.source "ValidateCardActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/card/ui/f;


# instance fields
.field a:Lcom/netease/epay/sdk/card/model/AddCardConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/epay/sdk/card/ui/AddCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    :goto_0
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void

    .line 53
    :cond_0
    const-class v1, Lcom/netease/epay/sdk/card/ui/AddCardActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/netease/epay/sdk/card/model/AddCardConfig;
    .locals 3

    .prologue
    const/4 v0, 0x7

    .line 65
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->a:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/netease/epay/sdk/card/model/AddCardConfig;->getValidateCardConfigByType(I)Lcom/netease/epay/sdk/card/model/AddCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->a:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->a:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    return-object v0
.end method

.method public exitNotify(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V
    .locals 2
    .param p1, "code"    # Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .prologue
    .line 78
    new-instance v1, Lcom/netease/epay/sdk/card/b/a;

    invoke-direct {v1, p1, p0}, Lcom/netease/epay/sdk/card/b/a;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/netease/epay/sdk/card/b/a;->c:Z

    .line 80
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Lcom/netease/epay/sdk/card/b/a;)V

    .line 84
    :cond_0
    return-void
.end method

.method public getFirstFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public interceptExit()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->finish()V

    .line 89
    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;->exitNotify(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V

    .line 90
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;->onCreateSdkActivity(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    const-string v1, "get_pay_quickPay_list.htm"

    const/4 v2, 0x1

    new-instance v3, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/card/ui/ValidateCardActivity$1;-><init>(Lcom/netease/epay/sdk/card/ui/ValidateCardActivity;)V

    invoke-static {v1, v0, v2, p0, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 46
    return-void
.end method
