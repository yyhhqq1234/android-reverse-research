.class public Lcom/tencent/friday/uikit/d/d/b/c;
.super Landroid/widget/FrameLayout;
.source "JTableCell.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/d/d/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/friday/uikit/d/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/StateListDrawable;

.field private f:Z

.field private g:Landroid/widget/AbsoluteLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;IIZ)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->a:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->b:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->f:Z

    .line 54
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/b/c;->c:Landroid/content/Context;

    .line 57
    iput-boolean p5, p0, Lcom/tencent/friday/uikit/d/d/b/c;->f:Z

    .line 60
    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->g:Landroid/widget/AbsoluteLayout;

    .line 61
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/b/c;->g:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/friday/uikit/d/d/b/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/b/c;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;)V

    .line 65
    return-void
.end method

.method private a(ZLcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    if-eqz p2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setBackGround(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/friday/uikit/d/c/d;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->e:Landroid/graphics/drawable/StateListDrawable;

    .line 93
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->e:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;)V
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getBackgroundImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/c;->setBackGround(Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V

    .line 78
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getImageViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getLabels()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/friday/uikit/d/d/b/c;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/friday/uikit/d/d/b/c;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/friday/uikit/d/c/g;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 81
    iget-object v2, p0, Lcom/tencent/friday/uikit/d/d/b/c;->g:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, v0}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->f:Z

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableViewCellStyle;->getBackgroundImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/friday/uikit/d/d/b/c;->a(ZLcom/tencent/friday/uikit/jce/UnityKit/UKTriStateImage;)V

    .line 85
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/b/c;->e:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/b/c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
