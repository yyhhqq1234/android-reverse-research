.class Lcom/netease/epay/sdk/risk/ui/e$1;
.super Ljava/lang/Object;
.source "RiskSmsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/ui/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/ui/e;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/e$1;->a:Lcom/netease/epay/sdk/risk/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/e$1;->a:Lcom/netease/epay/sdk/risk/ui/e;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/e;->dismissAllowingStateLoss()V

    .line 75
    const-string v0, "risk"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/risk/RiskController;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v1, v2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 79
    :cond_0
    return-void
.end method
