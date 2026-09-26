.class Lcom/netease/epay/sdk/pay/ui/i$3;
.super Ljava/lang/Object;
.source "PayChooserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 100
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/i$3;->a:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$3;->a:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$3;->a:Lcom/netease/epay/sdk/pay/ui/i;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/i;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a()V

    .line 106
    :cond_0
    return-void
.end method
