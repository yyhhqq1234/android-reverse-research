.class Lcom/netease/epay/sdk/pay/ui/i$4;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "PayChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/i;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/i;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/i;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/i$4;->a:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 162
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    const-string v1, "-100"

    if-ne v0, v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$4;->a:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
