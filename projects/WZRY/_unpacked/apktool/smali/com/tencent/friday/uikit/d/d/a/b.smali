.class public Lcom/tencent/friday/uikit/d/d/a/b;
.super Landroid/widget/FrameLayout;
.source "JMarkerIcon.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/AbsoluteLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/a/b;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/a/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;)V

    .line 38
    return-void
.end method

.method private a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 58
    iget-object v0, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->width:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    .line 59
    iget-object v1, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->height:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v1, v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->val:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    .line 60
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/tencent/friday/uikit/d/d/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v2, Landroid/widget/AbsoluteLayout;

    iget-object v3, p0, Lcom/tencent/friday/uikit/d/d/a/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/friday/uikit/d/d/a/b;->b:Landroid/widget/AbsoluteLayout;

    .line 65
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 67
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 68
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/b;->b:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/friday/uikit/d/d/a/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;)V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/a/b;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;->getImageViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;->getLabels()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/friday/uikit/d/c/g;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 49
    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/a/b;->b:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
