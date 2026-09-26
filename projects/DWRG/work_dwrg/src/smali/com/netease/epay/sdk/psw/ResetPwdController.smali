.class public Lcom/netease/epay/sdk/psw/ResetPwdController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "ResetPwdController.java"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 1
    .param p1, "params"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 45
    const-string v0, "isNeedActivity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/psw/ResetPwdController;->a:Z

    .line 46
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/psw/ResetPwdController;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/netease/epay/sdk/base/event/BaseEvent;

    .prologue
    const/4 v5, 0x0

    .line 80
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/ResetPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_2

    .line 84
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    const/16 v1, 0x387

    if-eq v0, v1, :cond_0

    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    const/16 v1, 0x386

    if-eq v0, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    .line 86
    const-string v0, "060007"

    iput-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    .line 87
    const-string v0, "\u5bc6\u7801\u8f93\u5165\u592a\u591a\u6b21\uff0c\u8d26\u6237\u5df2\u88ab\u9501\u5b9a"

    iput-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    .line 89
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/psw/ResetPwdController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-boolean v0, p0, Lcom/netease/epay/sdk/psw/ResetPwdController;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 95
    iput-object v5, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/ResetPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/ResetPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v1, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v2, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    goto :goto_0
.end method

.method public start(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 51
    const-string v1, "card"

    const/4 v2, 0x1

    iget v0, p0, Lcom/netease/epay/sdk/psw/ResetPwdController;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x6

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getCardJson(ZILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/netease/epay/sdk/psw/ResetPwdController$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/psw/ResetPwdController$1;-><init>(Lcom/netease/epay/sdk/psw/ResetPwdController;)V

    invoke-static {v1, p1, v0, v2}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 76
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
