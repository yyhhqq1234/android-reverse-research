.class Lcom/netease/epay/sdk/pay/c/b$2$1;
.super Ljava/lang/Object;
.source "EpayPayFragPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/util/DelayedTask$IDelayedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/c/b$2;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;

.field final synthetic c:Lcom/netease/epay/sdk/pay/c/b$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/c/b$2;Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->c:Lcom/netease/epay/sdk/pay/c/b$2;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iput-object p3, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelayed()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->c:Lcom/netease/epay/sdk/pay/c/b$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/c/b$2;->b:Lcom/netease/epay/sdk/pay/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/c/b;->a:Lcom/netease/epay/sdk/pay/ui/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->c:Lcom/netease/epay/sdk/pay/c/b$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/c/b$2;->b:Lcom/netease/epay/sdk/pay/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/c/b;->a:Lcom/netease/epay/sdk/pay/ui/l;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/l;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->c:Lcom/netease/epay/sdk/pay/c/b$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/c/b$2;->b:Lcom/netease/epay/sdk/pay/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/c/b;->a:Lcom/netease/epay/sdk/pay/ui/l;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/l;->a()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->a:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/b$2$1;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0
.end method
