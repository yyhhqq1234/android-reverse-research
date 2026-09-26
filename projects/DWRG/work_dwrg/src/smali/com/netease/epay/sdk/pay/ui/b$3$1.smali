.class Lcom/netease/epay/sdk/pay/ui/b$3$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "CreditPayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/b$3;->onMaxLength(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/b$3;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/b$3;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/b$3;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaterDeal(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 114
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/b;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/b;-><init>()V

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 107
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/b;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/b;-><init>()V

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 110
    :cond_0
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 1
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/b$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/b$3;->a:Lcom/netease/epay/sdk/pay/ui/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/b;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/b$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/b$3;->a:Lcom/netease/epay/sdk/pay/ui/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/b$3;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/b$3;->a:Lcom/netease/epay/sdk/pay/ui/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/b;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 99
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/b$3$1;->a:Lcom/netease/epay/sdk/pay/ui/b$3;

    iget-object v4, v4, Lcom/netease/epay/sdk/pay/ui/b$3;->a:Lcom/netease/epay/sdk/pay/ui/b;

    invoke-virtual {v4}, Lcom/netease/epay/sdk/pay/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 103
    :cond_0
    return-void
.end method
