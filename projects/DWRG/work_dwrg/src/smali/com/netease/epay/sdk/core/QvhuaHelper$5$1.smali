.class Lcom/netease/epay/sdk/core/QvhuaHelper$5$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "QvhuaHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/core/QvhuaHelper$5;->dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/core/QvhuaHelper$5;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/core/QvhuaHelper$5;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$5$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$5;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$5$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$5;

    iget-object v0, v0, Lcom/netease/epay/sdk/core/QvhuaHelper$5;->a:Lcom/netease/epay/sdk/core/QvhuaHelper;

    iget-object v1, p0, Lcom/netease/epay/sdk/core/QvhuaHelper$5$1;->a:Lcom/netease/epay/sdk/core/QvhuaHelper$5;

    iget-object v1, v1, Lcom/netease/epay/sdk/core/QvhuaHelper$5;->a:Lcom/netease/epay/sdk/core/QvhuaHelper;

    invoke-static {v1, p1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->access$000(Lcom/netease/epay/sdk/core/QvhuaHelper;Lcom/netease/epay/sdk/controller/ControllerResult;)Lcom/netease/epay/sdk/base/event/EpayEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/core/QvhuaHelper;->returnCallBackExit(Lcom/netease/epay/sdk/base/event/EpayEvent;)V

    .line 185
    return-void
.end method
