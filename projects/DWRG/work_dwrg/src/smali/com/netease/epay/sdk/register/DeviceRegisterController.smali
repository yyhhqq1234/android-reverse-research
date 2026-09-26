.class public Lcom/netease/epay/sdk/register/DeviceRegisterController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "DeviceRegisterController.java"


# instance fields
.field private a:Z

.field private b:Lcom/netease/epay/sdk/register/a$a;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 1
    .param p1, "params"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 56
    new-instance v0, Lcom/netease/epay/sdk/register/DeviceRegisterController$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/register/DeviceRegisterController$1;-><init>(Lcom/netease/epay/sdk/register/DeviceRegisterController;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController;->b:Lcom/netease/epay/sdk/register/a$a;

    .line 31
    const-string v0, "isNeedUI"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController;->a:Z

    .line 32
    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BaseEvent;

    .prologue
    .line 48
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v1, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v2, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    sget-object v2, Lcom/netease/epay/sdk/Constants;->EXIT_CALLBACK:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController;->a:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/epay/sdk/register/RegisterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/register/a;

    iget-object v1, p0, Lcom/netease/epay/sdk/register/DeviceRegisterController;->b:Lcom/netease/epay/sdk/register/a$a;

    invoke-direct {v0, p1, v1}, Lcom/netease/epay/sdk/register/a;-><init>(Landroid/content/Context;Lcom/netease/epay/sdk/register/a$a;)V

    .line 42
    invoke-virtual {v0}, Lcom/netease/epay/sdk/register/a;->a()V

    goto :goto_0
.end method
