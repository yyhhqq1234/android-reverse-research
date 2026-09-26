.class public Lcom/netease/codescanner/e;
.super Ljava/lang/Object;


# direct methods
.method public static a([BIIILandroid/graphics/Rect;II)Lcom/google/zxing/LuminanceSource;
    .locals 9

    rem-int/lit16 v0, p3, 0x168

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/netease/codescanner/common/Graphics;->a([BIIILandroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v1, v3, v7

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {v0, v3, v7, v1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    goto :goto_0
.end method
