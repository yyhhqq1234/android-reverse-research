.class Lcom/netease/epay/sdk/pay/ui/o$2;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "PayShortyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/o;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/o;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/o;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/o$2;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 1
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 76
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o$2;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    .line 79
    :cond_0
    return-void
.end method
