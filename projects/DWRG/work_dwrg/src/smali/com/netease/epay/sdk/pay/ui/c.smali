.class public Lcom/netease/epay/sdk/pay/ui/c;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "DiscountDetailFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/netease/epay/sdk/pay/ui/c;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/c;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 27
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_discount_detail:I

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 28
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ftb:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 29
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/c$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/c$1;-><init>(Lcom/netease/epay/sdk/pay/ui/c;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v1, Lcom/netease/epay/sdk/pay/R$id;->lvDiscount:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 40
    new-instance v4, Lcom/netease/epay/sdk/pay/ui/d;

    invoke-direct {v4, v1}, Lcom/netease/epay/sdk/pay/ui/d;-><init>(Landroid/widget/ExpandableListView;)V

    .line 41
    invoke-virtual {v1, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 42
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/c$2;

    invoke-direct {v1, p0, v4}, Lcom/netease/epay/sdk/pay/ui/c$2;-><init>(Lcom/netease/epay/sdk/pay/ui/c;Lcom/netease/epay/sdk/pay/ui/d;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object v3
.end method
