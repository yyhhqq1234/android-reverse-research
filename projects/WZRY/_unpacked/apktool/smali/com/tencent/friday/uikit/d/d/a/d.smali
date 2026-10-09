.class public Lcom/tencent/friday/uikit/d/d/a/d;
.super Ljava/lang/Object;
.source "OffsetHelper.java"


# direct methods
.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;->getX()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;->getY()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    .line 20
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getWidth()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getHeight()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    .line 29
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static a(Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getWidth()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getHeight()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSize;->getHeight()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    rsub-int/lit8 v1, v1, 0x0

    .line 51
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static b(Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;->getX()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKOffset;->getY()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;->getVal()I

    move-result v1

    .line 41
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v0, v0

    invoke-static {v0}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-static {v1}, Lcom/tencent/friday/uikit/a/e;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method
