.class public Lcom/netease/epay/sdk/pay/PayController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "PayController.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 30
    const-string v0, "quickPayId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    .line 31
    const-string v0, "isShowPaymentDetail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/PayController;->c:Z

    .line 32
    const-string v0, "isFakeUnion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/PayController;->d:Z

    .line 33
    const-string v0, "isCreditPay"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/PayController;->e:Z

    .line 34
    const-string v0, "attach"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/PayController;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private a(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/PayController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/PayController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v1, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v2, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BaseEvent;

    .prologue
    .line 50
    invoke-static {}, Lcom/netease/epay/sdk/pay/c;->a()V

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/PayController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/pay/PayController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/PayController;->a(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/PayController;->e:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1}, Lcom/netease/epay/sdk/pay/ui/CreditPayActivity;->a(Landroid/content/Context;)V

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/PayController;->c:Z

    if-eqz v0, :cond_1

    .line 42
    const-class v0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p1}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
