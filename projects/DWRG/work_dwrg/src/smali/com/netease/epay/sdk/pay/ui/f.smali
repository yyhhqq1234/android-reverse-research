.class public Lcom/netease/epay/sdk/pay/ui/f;
.super Ljava/lang/Object;
.source "ParentViewHolder.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->g:Landroid/view/View;

    .line 23
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvDiscountName:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->a:Landroid/widget/TextView;

    .line 24
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvExpand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->b:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->c:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ivChoose:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->h:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvDiscountAmount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->e:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvDesc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->d:Landroid/widget/TextView;

    .line 29
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvDeadline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->f:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->rlContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/f;->i:Landroid/widget/RelativeLayout;

    .line 31
    return-void
.end method
