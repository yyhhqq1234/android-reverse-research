.class public Lcom/netease/epay/sdk/base/view/EpayWebView;
.super Lcom/netease/epay/sdk/base/view/BaseWebView;
.source "EpayWebView.java"


# instance fields
.field isNeedAnimation:Z

.field isclampedY:Z

.field isnewClampedY:Z

.field private normal:Landroid/graphics/Rect;

.field preY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/base/view/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/view/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    .line 26
    return-void
.end method


# virtual methods
.method public animation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    .line 86
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 92
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/base/view/EpayWebView;->layout(IIII)V

    goto :goto_0
.end method

.method public isNeedMove()Z
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getScrollY()I

    move-result v0

    .line 78
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 114
    invoke-super/range {p0 .. p5}, Lcom/netease/epay/sdk/base/view/BaseWebView;->onLayout(ZIIII)V

    .line 115
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getTop()I

    move-result v2

    .line 117
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getBottom()I

    move-result v4

    .line 116
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 108
    iput-boolean p4, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isclampedY:Z

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/base/view/BaseWebView;->onOverScrolled(IIZZ)V

    .line 110
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/epay/sdk/base/view/BaseWebView;->onScrollChanged(IIII)V

    .line 101
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-nez p4, :cond_0

    .line 102
    invoke-virtual {p0, p3, p4}, Lcom/netease/epay/sdk/base/view/EpayWebView;->scrollTo(II)V

    .line 104
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 32
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 33
    iget v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->preY:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    .line 34
    iget-boolean v3, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isnewClampedY:Z

    if-eqz v3, :cond_0

    if-gtz v0, :cond_1

    iget-boolean v3, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    if-eqz v3, :cond_0

    .line 35
    :cond_1
    iput v2, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->preY:F

    .line 36
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedMove()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    .line 38
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getTop()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_2

    .line 39
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->normal:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getTop()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    .line 43
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getBottom()I

    move-result v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    .line 42
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->layout(IIII)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isnewClampedY:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isNeedAnimation:Z

    if-eqz v0, :cond_4

    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->animation()V

    .line 52
    :cond_4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/EpayWebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isnewClampedY:Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->preY:F

    .line 56
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isclampedY:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/EpayWebView;->isnewClampedY:Z

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
