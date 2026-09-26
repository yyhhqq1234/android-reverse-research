.class Lcom/netease/epay/sdk/pay/ui/c$2;
.super Ljava/lang/Object;
.source "DiscountDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/d;

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/c;Lcom/netease/epay/sdk/pay/ui/d;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/c$2;->b:Lcom/netease/epay/sdk/pay/ui/c;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/c$2;->a:Lcom/netease/epay/sdk/pay/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/c$2;->a:Lcom/netease/epay/sdk/pay/ui/d;

    iget v0, v0, Lcom/netease/epay/sdk/pay/ui/d;->a:I

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/model/DiscountGroupItem;->setDiscountData(I)V

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/c$2;->b:Lcom/netease/epay/sdk/pay/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/c;->dismissAllowingStateLoss()V

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/c$2;->b:Lcom/netease/epay/sdk/pay/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/c$2;->b:Lcom/netease/epay/sdk/pay/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    .line 53
    :cond_0
    return-void
.end method
