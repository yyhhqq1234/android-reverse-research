.class Lcom/netease/epay/sdk/pay/a/a$2;
.super Ljava/lang/Object;
.source "EpayQuotaDealer.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/a/a;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic c:Lcom/netease/epay/sdk/pay/a/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/a/a;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/a/a$2;->c:Lcom/netease/epay/sdk/pay/a/a;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/epay/sdk/pay/a/a$2;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "\u53d6\u6d88"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_change_paymethod:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leftClick()V
    .locals 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 115
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/a/a$2;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/a/a$2;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v3, v3, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a/a$2;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rightClick()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/i;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->c:Lcom/netease/epay/sdk/pay/a/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a/a;->b(Lcom/netease/epay/sdk/pay/a/a;)V

    .line 107
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$2;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
