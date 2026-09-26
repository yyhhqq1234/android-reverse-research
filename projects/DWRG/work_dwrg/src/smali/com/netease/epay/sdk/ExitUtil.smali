.class public Lcom/netease/epay/sdk/ExitUtil;
.super Ljava/lang/Object;
.source "ExitUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAll(Lcom/netease/epay/sdk/base/event/EpayEvent;)V
    .locals 3
    .param p0, "event"    # Lcom/netease/epay/sdk/base/event/EpayEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 38
    invoke-static {}, Lcom/netease/epay/sdk/base/network/HttpClient;->cancelAll()V

    .line 39
    const-string v0, "finish"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 40
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    if-ne v0, v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 43
    :cond_0
    sput v1, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    .line 45
    sget-boolean v0, Lcom/netease/epay/sdk/base/core/CoreData;->isOnWalletMode:Z

    if-eqz v0, :cond_1

    .line 47
    const-string v0, "wallet_refresh"

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/netease/epay/sdk/controller/ControllerRouter;->clearAllControllers()V

    .line 50
    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->finishPay()V

    .line 51
    invoke-static {v2}, Lcom/netease/epay/sdk/core/QvhuaHelper;->getInstance(Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;)Lcom/netease/epay/sdk/core/QvhuaHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/core/QvhuaHelper;->haveCallBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    if-nez v0, :cond_2

    .line 52
    invoke-static {v2}, Lcom/netease/epay/sdk/core/QvhuaHelper;->getInstance(Lcom/netease/epay/sdk/core/QvhuaHelper$QvhuaCallBack;)Lcom/netease/epay/sdk/core/QvhuaHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 56
    :goto_1
    invoke-static {}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->clearData()V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {p0}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static failCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "retCode"    # Ljava/lang/String;
    .param p1, "retMessage"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lcom/netease/epay/sdk/base/event/EpayEvent;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/event/EpayEvent;-><init>()V

    .line 30
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    iput v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->biztype:I

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    .line 32
    iput-object p0, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->code:Ljava/lang/String;

    .line 33
    iput-object p1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->desp:Ljava/lang/String;

    .line 34
    invoke-static {v0}, Lcom/netease/epay/sdk/ExitUtil;->clearAll(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 35
    return-void
.end method

.method public static successCallback()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/epay/sdk/ExitUtil;->successCallback(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static successCallback(Ljava/lang/String;)V
    .locals 2
    .param p0, "quickPayId"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/netease/epay/sdk/base/event/EpayEvent;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/event/EpayEvent;-><init>()V

    .line 22
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    iput v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->biztype:I

    .line 23
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    .line 24
    iput-object p0, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->quickPayId:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lcom/netease/epay/sdk/ExitUtil;->clearAll(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 26
    return-void
.end method
