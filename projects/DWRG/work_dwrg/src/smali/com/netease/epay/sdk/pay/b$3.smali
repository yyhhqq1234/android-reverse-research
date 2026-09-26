.class Lcom/netease/epay/sdk/pay/b$3;
.super Ljava/lang/Object;
.source "PayCallback.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/b;->onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic c:Lcom/netease/epay/sdk/pay/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/b;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/b$3;->c:Lcom/netease/epay/sdk/pay/b;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/b$3;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/epay/sdk/pay/b$3;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "\u53d6\u6d88"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$3;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "\u66f4\u6362\u652f\u4ed8\u65b9\u5f0f"

    return-object v0
.end method

.method public leftClick()V
    .locals 4

    .prologue
    .line 111
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/b$3;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/b$3;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 115
    :cond_0
    return-void
.end method

.method public rightClick()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$3;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/i;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 107
    return-void
.end method
