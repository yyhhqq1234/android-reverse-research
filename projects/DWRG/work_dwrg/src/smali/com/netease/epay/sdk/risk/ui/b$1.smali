.class Lcom/netease/epay/sdk/risk/ui/b$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "RiskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/risk/ui/b;
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
.field final synthetic a:Lcom/netease/epay/sdk/risk/ui/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/ui/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/b$1;->a:Lcom/netease/epay/sdk/risk/ui/b;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 3
    .param p1, "resp"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/b$1;->a:Lcom/netease/epay/sdk/risk/ui/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string v0, "050001"

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x0

    .line 73
    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->cardArray:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->riskType:Lcom/netease/epay/sdk/base/model/RiskChallengeType;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RiskChallengeType;->cardArray:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/ui/b$1;->a:Lcom/netease/epay/sdk/risk/ui/b;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/risk/ui/b;->b(Ljava/util/ArrayList;)V

    .line 79
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/b$1;->a:Lcom/netease/epay/sdk/risk/ui/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/b;->dismissAllowingStateLoss()V

    .line 60
    const-string v0, "risk"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/risk/RiskController;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 64
    :cond_0
    return-void
.end method
