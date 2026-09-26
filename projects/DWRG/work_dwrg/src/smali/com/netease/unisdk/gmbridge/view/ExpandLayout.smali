.class public Lcom/netease/unisdk/gmbridge/view/ExpandLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandLayout.java"


# instance fields
.field private mItemViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/unisdk/gmbridge/view/ExpandItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mLineColor:I

.field private mLineHeight:I

.field private mLineMargin:I

.field private mLineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "uni_gm_f_expand_bg"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->setBackgroundResource(I)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->setOrientation(I)V

    .line 32
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uni_gm_f_expand_item_line_width"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineWidth:I

    .line 33
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uni_gm_f_expand_item_line_height"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineHeight:I

    .line 34
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uni_gm_f_expand_item_margin"

    invoke-static {v1, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineMargin:I

    .line 35
    const-string v0, "#33ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineColor:I

    .line 36
    invoke-direct {p0, p2}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->initViews(Ljava/util/List;)V

    .line 37
    return-void
.end method

.method private addLine()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "line":Landroid/view/View;
    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineColor:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineWidth:I

    iget v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 64
    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 65
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method private initViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    const/4 v5, -0x2

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 42
    .local v4, "size":I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x10

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 46
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    .line 49
    .local v0, "btnInfo":Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    new-instance v2, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;-><init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;)V

    .line 50
    .local v2, "itemView":Lcom/netease/unisdk/gmbridge/view/ExpandItemView;
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, v2, v3}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    add-int/lit8 v5, v4, -0x1

    if-eq v1, v5, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->addLine()V

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "btnInfo":Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    .end local v2    # "itemView":Lcom/netease/unisdk/gmbridge/view/ExpandItemView;
    :cond_1
    return-void
.end method


# virtual methods
.method public showRed([Ljava/lang/String;)V
    .locals 5
    .param p1, "menuIds"    # [Ljava/lang/String;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 79
    :cond_0
    return-void

    .line 73
    :cond_1
    array-length v4, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p1, v3

    .line 74
    .local v1, "menuId":Ljava/lang/String;
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;

    .line 75
    .local v0, "itemView":Lcom/netease/unisdk/gmbridge/view/ExpandItemView;
    if-eqz v0, :cond_2

    .line 76
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;

    invoke-virtual {v2}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->showRed()V

    .line 73
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method
