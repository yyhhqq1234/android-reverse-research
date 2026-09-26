.class Lcom/netease/epay/sdk/pay/ui/b$1;
.super Ljava/lang/Object;
.source "CreditPayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/b;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/b$1;->a:Lcom/netease/epay/sdk/pay/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/b$1;->a:Lcom/netease/epay/sdk/pay/ui/b;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/pay/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b$1;->a:Lcom/netease/epay/sdk/pay/ui/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/b;->dismissAllowingStateLoss()V

    .line 62
    return-void
.end method
