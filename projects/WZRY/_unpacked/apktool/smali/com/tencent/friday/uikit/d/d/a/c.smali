.class public Lcom/tencent/friday/uikit/d/d/a/c;
.super Landroid/widget/LinearLayout;
.source "JMarkerInfowindow.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;II)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Lcom/tencent/friday/uikit/d/d/a/c$1;

    invoke-direct {v0, p0}, Lcom/tencent/friday/uikit/d/d/a/c$1;-><init>(Lcom/tencent/friday/uikit/d/d/a/c;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/c;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 35
    iput p3, p0, Lcom/tencent/friday/uikit/d/d/a/c;->a:I

    .line 36
    iput p4, p0, Lcom/tencent/friday/uikit/d/d/a/c;->b:I

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/tencent/friday/uikit/d/d/a/c;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V

    .line 38
    return-void
.end method

.method private a()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, p0, Lcom/tencent/friday/uikit/d/d/a/c;->a:I

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;II)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/a/c;)Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/a/c;->a()Lcom/tencent/friday/uikit/jce/UnityKit/UKCallbackTarget;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_Clicked;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_Clicked;

    new-instance v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget v2, p0, Lcom/tencent/friday/uikit/d/d/a/c;->b:I

    invoke-direct {v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    new-instance v2, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v2, p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_Clicked;-><init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/a/c;I)Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_Clicked;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/friday/uikit/d/d/a/c;->a(I)Lcom/tencent/friday/uikit/jce/UnityKit/UKMapViewCallbackData_Clicked;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 42
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getWidth()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    .line 43
    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;->getSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getHeight()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    .line 44
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/tencent/friday/uikit/d/d/a/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/friday/uikit/d/d/a/c;->setOrientation(I)V

    .line 48
    new-instance v2, Lcom/tencent/friday/uikit/d/d/g;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/tencent/friday/uikit/d/d/g;-><init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Z)V

    .line 49
    invoke-virtual {v2}, Lcom/tencent/friday/uikit/d/d/g;->b()Landroid/widget/AdapterView;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getHorizontal()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;->getHorizontal()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;->getVal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 54
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/AdapterView;->setX(F)V

    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/AdapterView;->setY(F)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/tencent/friday/uikit/d/d/a/c;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/a/c;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v0}, Lcom/tencent/friday/uikit/d/d/g;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void

    .line 56
    :cond_0
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 57
    iput v0, v4, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 58
    iput v1, v4, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 59
    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
