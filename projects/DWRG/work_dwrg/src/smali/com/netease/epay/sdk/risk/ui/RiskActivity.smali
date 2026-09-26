.class public Lcom/netease/epay/sdk/risk/ui/RiskActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "RiskActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkBasicDataLost()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    sget v0, Lcom/netease/epay/sdk/risk/R$layout;->epaysdk_actv_transparent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/risk/ui/RiskActivity;->setContentView(I)V

    .line 20
    const-string v0, "risk"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/risk/RiskController;

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/risk/RiskController;->a(Lcom/netease/epay/sdk/risk/ui/RiskActivity;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/RiskActivity;->finish()V

    goto :goto_0
.end method
