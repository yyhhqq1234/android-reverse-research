.class Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;
.super Ljava/lang/Object;
.source "OrderInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->j(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->finish()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->k(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->l(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->l(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->m(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_orderinfo_hide:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->l(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity$2;->a:Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;->m(Lcom/netease/epay/sdk/pay/ui/OrderInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$drawable;->epaysdk_icon_orderinfo_show:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
