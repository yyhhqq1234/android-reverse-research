.class Lcom/netease/epay/sdk/risk/RiskController$4$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "RiskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/RiskController$4;->a(Lcom/netease/epay/sdk/risk/ui/RiskActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/RiskController$4;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/RiskController$4;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/RiskController$4$1;->a:Lcom/netease/epay/sdk/risk/RiskController$4;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/RiskController$4$1;->a:Lcom/netease/epay/sdk/risk/RiskController$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/risk/RiskController$4;->a:Lcom/netease/epay/sdk/risk/RiskController;

    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 132
    return-void
.end method
