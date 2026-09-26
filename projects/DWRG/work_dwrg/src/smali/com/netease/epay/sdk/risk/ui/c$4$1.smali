.class Lcom/netease/epay/sdk/risk/ui/c$4$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "RiskGeneralFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/ui/c$4;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/ui/c$4;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/ui/c$4;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/c$4$1;->a:Lcom/netease/epay/sdk/risk/ui/c$4;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$4$1;->a:Lcom/netease/epay/sdk/risk/ui/c$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/risk/ui/c$4;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->dismissAllowingStateLoss()V

    .line 209
    const-string v0, "risk"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/risk/RiskController;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 213
    :cond_0
    return-void
.end method
