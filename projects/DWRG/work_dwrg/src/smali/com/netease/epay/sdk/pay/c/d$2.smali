.class Lcom/netease/epay/sdk/pay/c/d$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "EpayPayShortyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/c/d;
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
.field final synthetic a:Lcom/netease/epay/sdk/pay/c/d;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/c/d;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/d$2;->a:Lcom/netease/epay/sdk/pay/c/d;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaterDeal(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 61
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/NetCallback;->onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 69
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    .end local p1    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {p1}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    .line 72
    :cond_0
    return-void
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/p;->c()Lcom/netease/epay/sdk/pay/ui/p;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 57
    return-void
.end method
