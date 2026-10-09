.class public Lcom/tencent/friday/uikit/d/d/e;
.super Landroid/widget/RelativeLayout;
.source "JLoadingView.java"

# interfaces
.implements Lcom/tencent/friday/uikit/b/a/a;
.implements Lcom/tencent/friday/uikit/d/a;


# instance fields
.field public a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/e;->a:I

    .line 36
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/e;->d:I

    .line 43
    iput-object p1, p0, Lcom/tencent/friday/uikit/d/d/e;->b:Landroid/content/Context;

    .line 44
    invoke-virtual {p0, p2}, Lcom/tencent/friday/uikit/d/d/e;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V

    .line 45
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/e;->c()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/tencent/friday/uikit/d/d/e;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    .line 113
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/e;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 116
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 117
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/tencent/friday/uikit/d/d/e$1;

    invoke-direct {v1, p0}, Lcom/tencent/friday/uikit/d/d/e$1;-><init>(Lcom/tencent/friday/uikit/d/d/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 126
    return-void

    .line 112
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private e()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/e;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/friday/uikit/b/a/b;->a(I)V

    .line 142
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/e;->e()V

    .line 143
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V
    .locals 3

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->c:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/tencent/friday/uikit/d/d/e;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/e;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/tencent/friday/uikit/d/c/b;->a(Landroid/content/Context;Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getWidth()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    invoke-virtual {p2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getHeight()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    iget-object v1, p0, Lcom/tencent/friday/uikit/d/d/e;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/friday/uikit/d/d/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V
    .locals 4

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    const-string v0, "parameter is null"

    invoke-static {v0}, Lcom/tencent/friday/uikit/b/b/b;->a(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/e;->setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 58
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getBackgroundColor()Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getRect()Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getZIndex()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v3

    .line 58
    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 62
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getLoadingImage()Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getImageSize()Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/friday/uikit/d/d/e;->a(Lcom/tencent/friday/uikit/jce/UnityKit/UKImage;Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)V

    .line 63
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;->getAnimationDuration()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/e;->setAnimationDuration(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V

    .line 66
    invoke-direct {p0}, Lcom/tencent/friday/uikit/d/d/e;->d()V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/friday/uikit/d/d/e;->setClickable(Z)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 156
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;

    invoke-static {p1, v0}, Lcom/tencent/friday/uikit/a/c/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;

    .line 157
    if-eqz v0, :cond_2

    .line 158
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;->setRect:Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKRect;)V

    .line 161
    :cond_0
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-static {p0, v1}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V

    .line 164
    :cond_1
    iget-object v1, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    if-eqz v1, :cond_2

    .line 165
    iget-object v0, v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingViewMethod;->setBackgroundColor:Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;

    invoke-static {p0, v0}, Lcom/tencent/friday/uikit/d/c/f;->a(Landroid/view/View;Lcom/tencent/friday/uikit/jce/UnityKit/UKColor;)V

    .line 168
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/e;->a()V

    .line 148
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/d/d/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Lcom/tencent/friday/uikit/b/a/b;->a()Lcom/tencent/friday/uikit/b/a/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/friday/uikit/d/d/e;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/tencent/friday/uikit/b/a/b;->a(ILcom/tencent/friday/uikit/b/a/a;)V

    .line 137
    return-void
.end method

.method public setAnimationDuration(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/e;->d:I

    .line 105
    :cond_0
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 1

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    iput v0, p0, Lcom/tencent/friday/uikit/d/d/e;->a:I

    goto :goto_0
.end method
