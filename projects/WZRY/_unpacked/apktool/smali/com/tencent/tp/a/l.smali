.class public Lcom/tencent/tp/a/l;
.super Landroid/view/View;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/graphics/drawable/Drawable;

.field protected c:Landroid/graphics/drawable/Drawable;

.field protected d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/tp/a/l;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/tp/a/l;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0x1f4

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tp/a/l;->c:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/tencent/tp/a/l;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method b(I)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/l;->a:Landroid/content/Context;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/tp/a/l;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/l;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/tp/a/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tencent/tp/a/l;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/tp/a/l;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/tencent/tp/a/l;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/l;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tencent/tp/a/l;->d:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/tp/a/l;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/tencent/tp/a/l;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/tencent/tp/a/l;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/tp/a/l;->a(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/tencent/tp/a/l;->b(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/tp/a/l;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tp/a/l;->d:I

    invoke-virtual {p0}, Lcom/tencent/tp/a/l;->invalidate()V

    return-void
.end method
