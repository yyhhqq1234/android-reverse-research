.class public Lcom/tencent/b/a/a/f;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/b/a/a/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/a/b/d/e;

.field private b:Lcom/tencent/a/b/d/f;

.field private c:Lcom/tencent/b/a/a/h;

.field private d:Lcom/tencent/b/a/a/i;

.field private e:Lcom/tencent/b/a/a/j;

.field private f:Lcom/tencent/b/a/a/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/b/a/a/f;->g:I

    invoke-direct {p0}, Lcom/tencent/b/a/a/f;->b()V

    return-void
.end method

.method private a(Landroid/view/View;IIFFI)V
    .locals 4

    and-int/lit8 v0, p6, 0x7

    and-int/lit8 v1, p6, 0x70

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    int-to-float v0, p2

    sub-float/2addr p4, v0

    :cond_0
    :goto_0
    const/16 v0, 0x50

    if-ne v1, v0, :cond_3

    int-to-float v0, p3

    sub-float/2addr p5, v0

    :cond_1
    :goto_1
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int v2, v0, p2

    add-int v3, v1, p3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float/2addr p4, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    sub-float/2addr p5, v0

    goto :goto_1
.end method

.method private a(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    aput v1, p4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p4, v3

    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    if-ne p2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    aput v0, p4, v2

    :goto_0
    if-ne p3, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    aput v0, p4, v3

    :goto_1
    return-void

    :cond_3
    if-ne p2, v5, :cond_4

    invoke-virtual {p0}, Lcom/tencent/b/a/a/f;->getMeasuredWidth()I

    move-result v0

    aput v0, p4, v2

    goto :goto_0

    :cond_4
    aput p2, p4, v2

    goto :goto_0

    :cond_5
    if-ne p3, v5, :cond_6

    invoke-virtual {p0}, Lcom/tencent/b/a/a/f;->getMeasuredHeight()I

    move-result v0

    aput v0, p4, v3

    goto :goto_1

    :cond_6
    aput p3, p4, v3

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/tencent/b/a/a/f$a;)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p2, Lcom/tencent/b/a/a/f$a;->width:I

    iget v2, p2, Lcom/tencent/b/a/a/f$a;->height:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;II[I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    invoke-static {p2}, Lcom/tencent/b/a/a/f$a;->a(Lcom/tencent/b/a/a/f$a;)I

    move-result v0

    int-to-float v4, v0

    invoke-static {p2}, Lcom/tencent/b/a/a/f$a;->b(Lcom/tencent/b/a/a/f$a;)I

    move-result v0

    int-to-float v5, v0

    invoke-static {p2}, Lcom/tencent/b/a/a/f$a;->c(Lcom/tencent/b/a/a/f$a;)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;IIFFI)V

    return-void
.end method

.method private a(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/b/a/a/f;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/b/a/a/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/b/a/a/f;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/b/a/a/f;->setTag(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/b/a/a/f;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/b/a/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/tencent/a/b/d/e;

    iget v3, p0, Lcom/tencent/b/a/a/f;->g:I

    iget v1, p0, Lcom/tencent/b/a/a/f;->g:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v2, p0, v3, v1}, Lcom/tencent/a/b/d/e;-><init>(Lcom/tencent/b/a/a/f;IZ)V

    iput-object v2, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    iget-object v1, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/e;->h()Lcom/tencent/a/b/d/f;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/b/a/a/f;->b:Lcom/tencent/a/b/d/f;

    iget-object v1, p0, Lcom/tencent/b/a/a/f;->b:Lcom/tencent/a/b/d/f;

    invoke-virtual {p0, v1}, Lcom/tencent/b/a/a/f;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Lcom/tencent/b/a/a/h;

    iget-object v2, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-direct {v1, v2}, Lcom/tencent/b/a/a/h;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v1, p0, Lcom/tencent/b/a/a/f;->c:Lcom/tencent/b/a/a/h;

    new-instance v1, Lcom/tencent/b/a/a/j;

    iget-object v2, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v2}, Lcom/tencent/a/b/d/e;->f()Lcom/tencent/a/b/d/a$1;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/b/a/a/j;-><init>(Lcom/tencent/a/b/d/a$1;)V

    iput-object v1, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    new-instance v1, Lcom/tencent/b/a/a/i;

    iget-object v2, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-direct {v1, v2}, Lcom/tencent/b/a/a/i;-><init>(Lcom/tencent/a/b/d/e;)V

    iput-object v1, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    new-instance v1, Lcom/tencent/b/a/a/e;

    invoke-direct {v1, p0}, Lcom/tencent/b/a/a/e;-><init>(Lcom/tencent/b/a/a/f;)V

    iput-object v1, p0, Lcom/tencent/b/a/a/f;->f:Lcom/tencent/b/a/a/e;

    instance-of v1, v0, Lcom/tencent/b/a/a/d;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/b/a/a/d;

    invoke-virtual {v0, p0}, Lcom/tencent/b/a/a/d;->a(Lcom/tencent/b/a/a/f;)V

    :cond_1
    const v0, -0xa0a10

    invoke-virtual {p0, v0}, Lcom/tencent/b/a/a/f;->setBackgroundColor(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Lcom/tencent/b/a/a/f$a;)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p2, Lcom/tencent/b/a/a/f$a;->width:I

    iget v2, p2, Lcom/tencent/b/a/a/f$a;->height:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;II[I)V

    invoke-virtual {p2}, Lcom/tencent/b/a/a/f$a;->a()Lcom/tencent/a/a/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/e;->b()Lcom/tencent/a/b/d/c;

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/b/a/a/f$a;->a()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/a/b/d/c;->a(Lcom/tencent/a/a/a/e;)Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Lcom/tencent/b/a/a/f$a;->a(Lcom/tencent/b/a/a/f$a;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Lcom/tencent/b/a/a/f$a;->b(Lcom/tencent/b/a/a/f$a;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Lcom/tencent/b/a/a/f$a;->c(Lcom/tencent/b/a/a/f$a;)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;IIFFI)V

    goto :goto_0
.end method

.method protected static setIsChinese(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tencent/a/b/c;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->l()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/d/e;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/b/a/a/f$a;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tencent/b/a/a/f$a;

    iget v1, v0, Lcom/tencent/b/a/a/f$a;->a:I

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/tencent/b/a/a/f;->b(Landroid/view/View;Lcom/tencent/b/a/a/f$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;Lcom/tencent/b/a/a/f$a;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/b/a/a/f$a;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/b/a/a/f$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1, v0}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;Lcom/tencent/b/a/a/f$a;)V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/d/e;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->b:Lcom/tencent/a/b/d/f;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->a()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/b/a/a/f;->setClickable(Z)V

    iget-object v2, p0, Lcom/tencent/b/a/a/f;->b:Lcom/tencent/a/b/d/f;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/b/d/f;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/tencent/b/a/a/f;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/b/a/a/f;->b:Lcom/tencent/a/b/d/f;

    invoke-virtual {v2, p1}, Lcom/tencent/a/b/d/f;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->m()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-static {}, Lcom/tencent/a/b/d/e;->n()V

    return-void
.end method

.method public getController()Lcom/tencent/b/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->f:Lcom/tencent/b/a/a/e;

    return-object v0
.end method

.method public getLatitudeSpan()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->c:Lcom/tencent/b/a/a/h;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/h;->b()I

    move-result v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->c:Lcom/tencent/b/a/a/h;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/h;->c()I

    move-result v0

    return v0
.end method

.method public getMap()Lcom/tencent/b/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    return-object v0
.end method

.method public getMapCenter()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->a()Lcom/tencent/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected getMapContext()Lcom/tencent/a/b/d/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    return-object v0
.end method

.method public getMapController()Lcom/tencent/b/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->f:Lcom/tencent/b/a/a/e;

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->c()I

    move-result v0

    return v0
.end method

.method public getMinZoomLevel()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->d()I

    move-result v0

    return v0
.end method

.method public getProjection()Lcom/tencent/b/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->c:Lcom/tencent/b/a/a/h;

    return-object v0
.end method

.method public getScalePerPixel()F
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->c:Lcom/tencent/b/a/a/h;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/h;->d()F

    move-result v0

    return v0
.end method

.method public getUiSettings()Lcom/tencent/b/a/a/j;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0}, Lcom/tencent/b/a/a/i;->b()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/b/a/a/f;->a(ZIIII)V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/b/a/a/f;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/b;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->b:Lcom/tencent/a/b/d/f;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/b/a/a/f;->a(ZIIII)V

    return-void
.end method

.method public setLogoPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/j;->a(I)V

    return-void
.end method

.method public setPinchEnabeled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/j;->c(Z)V

    return-void
.end method

.method public setSatellite(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->d:Lcom/tencent/b/a/a/i;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/i;->a(Z)V

    return-void
.end method

.method public setScalControlsEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/j;->a(Z)V

    return-void
.end method

.method public setScaleControlsEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/j;->a(Z)V

    return-void
.end method

.method public setScaleViewPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/j;->b(I)V

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/f;->e:Lcom/tencent/b/a/a/j;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/j;->b(Z)V

    return-void
.end method
