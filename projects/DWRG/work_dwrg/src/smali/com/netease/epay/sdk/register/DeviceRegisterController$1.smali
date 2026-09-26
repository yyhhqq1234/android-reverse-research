.class Lcom/netease/epay/sdk/register/DeviceRegisterController$1;
.super Ljava/lang/Object;
.source "DeviceRegisterController.java"

# interfaces
.implements Lcom/netease/epay/sdk/register/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/register/DeviceRegisterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/register/DeviceRegisterController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/register/DeviceRegisterController;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController$1;->a:Lcom/netease/epay/sdk/register/DeviceRegisterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController$1;->a:Lcom/netease/epay/sdk/register/DeviceRegisterController;

    iget-object v0, v0, Lcom/netease/epay/sdk/register/DeviceRegisterController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v1, Lcom/netease/epay/sdk/controller/ControllerResult;

    const-string v2, "000000"

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 61
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController$1;->a:Lcom/netease/epay/sdk/register/DeviceRegisterController;

    iget-object v0, v0, Lcom/netease/epay/sdk/register/DeviceRegisterController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v1, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v2, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 66
    return-void
.end method
