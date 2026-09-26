.class Lcom/netease/epay/sdk/pay/b$4;
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
    .line 135
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/b$4;->c:Lcom/netease/epay/sdk/pay/b;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/b$4;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/epay/sdk/pay/b$4;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "\u53d6\u6d88"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$4;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "\u8ba4\u8bc1"

    return-object v0
.end method

.method public leftClick()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$4;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$4;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/b$4;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/b$4;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/b$4;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0
.end method

.method public rightClick()V
    .locals 4

    .prologue
    .line 138
    const-string v0, "rsa"

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/b$4;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/pay/b$4$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/b$4$1;-><init>(Lcom/netease/epay/sdk/pay/b$4;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 149
    return-void
.end method
