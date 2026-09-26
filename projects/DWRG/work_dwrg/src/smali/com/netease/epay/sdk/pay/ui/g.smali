.class public Lcom/netease/epay/sdk/pay/ui/g;
.super Landroid/widget/FrameLayout;
.source "PayChooseItemLayout.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_view_pay_choose_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/g;->b()V

    .line 30
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/g;->a()V

    .line 32
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/pay/ui/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ivArrow:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/pay/ui/g;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->b:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->vDivider:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/pay/ui/g;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->a:Landroid/view/View;

    .line 55
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ivIcon:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/pay/ui/g;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->c:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvTitle:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/pay/ui/g;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->d:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvMessage:I

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/pay/ui/g;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->e:Landroid/widget/TextView;

    .line 58
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->c:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 40
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->c:Landroid/widget/ImageView;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/g;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
