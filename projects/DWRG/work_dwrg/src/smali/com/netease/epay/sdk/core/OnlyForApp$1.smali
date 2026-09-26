.class final Lcom/netease/epay/sdk/core/OnlyForApp$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "OnlyForApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/OnlyForApp;->queryFingerprintStatus(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netease/epay/sdk/core/OnlyForApp$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 5
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 33
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "finger"

    iget-object v1, p0, Lcom/netease/epay/sdk/core/OnlyForApp$1;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v2, v3, v4}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFingerJson(IZLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 46
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/event/EpayEvent;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/event/EpayEvent;-><init>()V

    .line 37
    const/16 v1, 0x38c

    iput v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->biztype:I

    .line 38
    iget-boolean v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    iput-boolean v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isSucc:Z

    .line 39
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->code:Ljava/lang/String;

    .line 40
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->desp:Ljava/lang/String;

    .line 41
    iput-boolean v3, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isCanShow:Z

    .line 42
    iput-boolean v3, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isOpened:Z

    .line 43
    iput-boolean v3, v0, Lcom/netease/epay/sdk/base/event/EpayEvent;->isCanSet:Z

    .line 44
    invoke-static {v0}, Lcom/netease/epay/sdk/ExitUtil;->clearAll(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    goto :goto_0
.end method
