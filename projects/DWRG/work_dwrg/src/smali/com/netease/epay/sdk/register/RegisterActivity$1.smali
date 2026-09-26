.class Lcom/netease/epay/sdk/register/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/register/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/register/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/register/RegisterActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/netease/epay/sdk/register/RegisterActivity$1;->a:Lcom/netease/epay/sdk/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 39
    const-string v0, "register"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/register/DeviceRegisterController;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/epay/sdk/register/RegisterActivity$1;->a:Lcom/netease/epay/sdk/register/RegisterActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/register/DeviceRegisterController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 43
    :cond_0
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 3

    .prologue
    .line 47
    const-string v0, "register"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/register/DeviceRegisterController;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p0, Lcom/netease/epay/sdk/register/RegisterActivity$1;->a:Lcom/netease/epay/sdk/register/RegisterActivity;

    invoke-direct {v1, p1, v2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/register/DeviceRegisterController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 51
    :cond_0
    return-void
.end method
