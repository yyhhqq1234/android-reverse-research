.class public Lcom/netease/epay/sdk/card/ui/AddCardActivity;
.super Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;
.source "AddCardActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/card/ui/f;


# instance fields
.field a:Lcom/netease/epay/sdk/card/model/AddCardConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FragmentLayoutActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/epay/sdk/card/model/AddCardConfig;
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 29
    iget-object v1, p0, Lcom/netease/epay/sdk/card/ui/AddCardActivity;->a:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/netease/epay/sdk/card/ui/AddCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 35
    :cond_0
    invoke-static {v0}, Lcom/netease/epay/sdk/card/model/AddCardConfig;->getAddCardConfigByType(I)Lcom/netease/epay/sdk/card/model/AddCardConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/ui/AddCardActivity;->a:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/AddCardActivity;->a:Lcom/netease/epay/sdk/card/model/AddCardConfig;

    return-object v0
.end method

.method public exitNotify(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V
    .locals 2
    .param p1, "code"    # Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    .prologue
    .line 42
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/netease/epay/sdk/card/b/a;

    invoke-direct {v1, p1, p0}, Lcom/netease/epay/sdk/card/b/a;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a(Lcom/netease/epay/sdk/card/b/a;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected getExitDialogMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "\u662f\u5426\u653e\u5f03\u7ed1\u5b9a\u94f6\u884c\u5361"

    return-object v0
.end method

.method public getFirstFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/netease/epay/sdk/card/ui/a;

    invoke-direct {v0}, Lcom/netease/epay/sdk/card/ui/a;-><init>()V

    return-object v0
.end method
