.class Lcom/netease/epay/sdk/core/QvhuaHelper$1$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper$1;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/QvhuaHelper$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper$1;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$1;->b:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$1$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$1;->b:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 58
    return-void
.end method
