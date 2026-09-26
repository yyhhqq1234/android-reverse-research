.class Lcom/netease/epay/sdk/risk/ui/c$1;
.super Ljava/lang/Object;
.source "RiskGeneralFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/risk/ui/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/risk/ui/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/ui/c;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/ui/c$1;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/c$1;->a:Lcom/netease/epay/sdk/risk/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/c;->dismissAllowingStateLoss()V

    .line 136
    const-string v0, "risk"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/risk/RiskController;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v1, v2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/RiskController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 140
    :cond_0
    return-void
.end method
