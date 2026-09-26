.class Lcom/netease/epay/sdk/card/c/h$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "UpgradeIdentityAddCardSecondPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/c/h;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/h;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;)V
    .locals 3

    .prologue
    .line 39
    iget-boolean v0, p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;->isAllowUpgrade:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    const-string v1, "send_sign_authcode.htm"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    iget-object v2, v2, Lcom/netease/epay/sdk/card/c/h;->i:Lcom/netease/epay/sdk/NetCallback;

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/card/c/h;->a(Ljava/lang/String;Lcom/netease/epay/sdk/NetCallback;)V

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    iget-boolean v1, p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;->isAllowSign:Z

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/card/c/h;->a(Lcom/netease/epay/sdk/card/c/h;Z)Z

    .line 43
    const-string v0, "code"

    iget-object v1, p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;->unSupportDesc:Ljava/lang/String;

    new-instance v2, Lcom/netease/epay/sdk/card/c/h$1$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/card/c/h$1$1;-><init>(Lcom/netease/epay/sdk/card/c/h$1;)V

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/h;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "WarningFragment"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/h$1;->a:Lcom/netease/epay/sdk/card/c/h;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/h;->a:Lcom/netease/epay/sdk/card/ui/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/b;->a(Z)V

    .line 35
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p2, Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/c/h$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/card/model/UpgradeIdentityData;)V

    return-void
.end method
