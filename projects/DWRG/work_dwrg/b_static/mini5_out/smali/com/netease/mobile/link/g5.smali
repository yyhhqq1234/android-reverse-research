.class public abstract Lcom/netease/mobile/link/g5;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:F


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcom/netease/mobile/link/g5;->c:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/netease/mobile/link/g5;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/netease/mobile/link/g5;->c:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 6

    iget v0, p0, Lcom/netease/mobile/link/g5;->g:F

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    iget v0, p0, Lcom/netease/mobile/link/g5;->g:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    iget v0, p0, Lcom/netease/mobile/link/g5;->f:F

    iget v1, p0, Lcom/netease/mobile/link/g5;->e:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/netease/mobile/link/g5;->requestLayout()V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    sget-boolean v0, Lcom/netease/mobile/link/w;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/netease/mobile/link/h6;->a(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/netease/mobile/link/w;->d:Z

    :cond_0
    sget-boolean v0, Lcom/netease/mobile/link/w;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/mobile/link/g5;->b:Z

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/netease/mobile/link/g5;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mobile/link/g5;->a()I

    throw v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public abstract getIsShadowed()Z
.end method

.method public getShadowDistance()F
    .locals 1

    iget v0, p0, Lcom/netease/mobile/link/g5;->f:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    iget v0, p0, Lcom/netease/mobile/link/g5;->e:F

    return v0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    const/4 p1, 0x0

    throw p1
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mobile/link/g5;->a:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsShadowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mobile/link/g5;->b:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setShadowAngle(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/netease/mobile/link/g5;->g:F

    invoke-virtual {p0}, Lcom/netease/mobile/link/g5;->b()V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    iput p1, p0, Lcom/netease/mobile/link/g5;->c:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/netease/mobile/link/g5;->d:I

    invoke-virtual {p0}, Lcom/netease/mobile/link/g5;->b()V

    return-void
.end method

.method public setShadowDistance(F)V
    .locals 0

    iput p1, p0, Lcom/netease/mobile/link/g5;->f:F

    invoke-virtual {p0}, Lcom/netease/mobile/link/g5;->b()V

    return-void
.end method

.method public setShadowRadius(F)V
    .locals 2

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/netease/mobile/link/g5;->e:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    iget v0, p0, Lcom/netease/mobile/link/g5;->e:F

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    const/4 p1, 0x0

    throw p1
.end method
