.class Lcom/netease/mpay/hl$d;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/hl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/hl;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/RectF;

.field private h:F


# direct methods
.method public constructor <init>(Lcom/netease/mpay/hl;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/hl$d;->a:Lcom/netease/mpay/hl;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mpay/hl$d;->h:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/hl$d;->e:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/netease/mpay/hl$d;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netease/mpay/hl$d;->d:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/mpay/hl$d;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/netease/mpay/hl$d;->h:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v4, 0x0

    const v3, 0x43848000    # 265.0f

    const/high16 v2, 0x42be0000    # 95.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/netease/mpay/hl$d;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/hl$d;->c:I

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/hl$d;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/mpay/hl$d;->b:I

    invoke-virtual {p0}, Lcom/netease/mpay/hl$d;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/mpay/hl$d;->c:I

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/netease/mpay/hl$d;->b:I

    iget v5, p0, Lcom/netease/mpay/hl$d;->d:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/netease/mpay/hl$d;->c:I

    iget v6, p0, Lcom/netease/mpay/hl$d;->d:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/netease/mpay/hl$d;->b:I

    iget v7, p0, Lcom/netease/mpay/hl$d;->d:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/netease/mpay/hl$d;->c:I

    iget v8, p0, Lcom/netease/mpay/hl$d;->d:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v0, v1, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/netease/mpay/hl$d;->g:Landroid/graphics/RectF;

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/netease/mpay/hl$d;->g:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netease/mpay/hl$d;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->g(Lcom/netease/mpay/hl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/hl$d;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->h(Lcom/netease/mpay/hl;)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/netease/mpay/hl$d;->g:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iget v5, p0, Lcom/netease/mpay/hl$d;->h:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/netease/mpay/hl$d;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/netease/mpay/hl$d;->invalidate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/hl$d;->a:Lcom/netease/mpay/hl;

    invoke-static {v0}, Lcom/netease/mpay/hl;->i(Lcom/netease/mpay/hl;)I

    move-result v0

    goto :goto_0
.end method
