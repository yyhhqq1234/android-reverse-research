.class public Lcom/tencent/a/b/e/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/b/e/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/a/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/a/b/d/e;

.field private c:Z

.field private d:Lcom/tencent/a/a/a/f;

.field private e:Z

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method private static a([BI)I
    .locals 4

    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v3, -0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v3, -0x2

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    const/high16 v4, -0x1000000

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    move v5, v8

    :goto_3
    if-ge v6, v7, :cond_4

    aget v8, v1, v6

    if-eq v4, v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v13, v6}, Lcom/tencent/a/b/e/a/d;->a(Ljava/io/OutputStream;I)V

    aget v4, v1, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    add-int/lit8 v5, v5, 0x1

    array-length v1, v1

    invoke-static {v13, v1}, Lcom/tencent/a/b/e/a/d;->a(Ljava/io/OutputStream;I)V

    :cond_5
    move v10, v5

    add-int/lit8 v1, v10, 0x1

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    if-eqz v3, :cond_11

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_4
    add-int/lit8 v1, v12, -0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    add-int/lit8 v7, v12, -0x2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/high16 v3, -0x1000000

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    :goto_5
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    const/high16 v4, -0x1000000

    if-ne v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    move v5, v9

    :goto_7
    if-ge v6, v7, :cond_a

    aget v9, v1, v6

    if-eq v4, v9, :cond_7

    add-int/lit8 v5, v5, 0x1

    invoke-static {v13, v6}, Lcom/tencent/a/b/e/a/d;->a(Ljava/io/OutputStream;I)V

    aget v4, v1, v6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    add-int/lit8 v5, v5, 0x1

    array-length v1, v1

    invoke-static {v13, v1}, Lcom/tencent/a/b/e/a/d;->a(Ljava/io/OutputStream;I)V

    :cond_b
    add-int/lit8 v1, v5, 0x1

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, -0x1

    :cond_c
    if-eqz v3, :cond_d

    add-int/lit8 v1, v1, -0x1

    :cond_d
    const/4 v2, 0x0

    :goto_8
    mul-int v3, v8, v1

    if-ge v2, v3, :cond_e

    const/4 v3, 0x1

    invoke-static {v13, v3}, Lcom/tencent/a/b/e/a/d;->a(Ljava/io/OutputStream;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-byte v4, v3, v2

    const/4 v2, 0x1

    int-to-byte v4, v10

    aput-byte v4, v3, v2

    const/4 v2, 0x2

    int-to-byte v4, v5

    aput-byte v4, v3, v2

    const/4 v2, 0x3

    mul-int/2addr v1, v8

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/a/b/e/a/d;->a(Landroid/graphics/Bitmap;[B)V

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-static {v0, v1, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNinePatchChunk"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_a
    return-object v0

    :cond_f
    move-object v2, v0

    goto :goto_9

    :cond_10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/tencent/a/b/e/a/d;->a([BI)I

    move-result v1

    iput v1, v4, Landroid/graphics/Rect;->left:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/tencent/a/b/e/a/d;->a([BI)I

    move-result v1

    iput v1, v4, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/tencent/a/b/e/a/d;->a([BI)I

    move-result v1

    iput v1, v4, Landroid/graphics/Rect;->top:I

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/tencent/a/b/e/a/d;->a([BI)I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    move v8, v1

    goto/16 :goto_4
.end method

.method private static a(Landroid/graphics/Bitmap;[B)V
    .locals 14

    const/4 v4, 0x1

    const/high16 v13, -0x1000000

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v1, v0, [I

    array-length v3, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    array-length v6, v1

    move-object v0, p0

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget v3, v1, v0

    if-ne v13, v3, :cond_4

    const/16 v3, 0xc

    invoke-static {p1, v3, v0}, Lcom/tencent/a/b/e/a/d;->a([BII)V

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    aget v3, v1, v0

    if-ne v13, v3, :cond_5

    const/16 v3, 0x10

    array-length v1, v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v3, v0}, Lcom/tencent/a/b/e/a/d;->a([BII)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v6, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    array-length v12, v6

    move-object v5, p0

    move v7, v2

    move v8, v4

    move v10, v2

    move v11, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_2
    array-length v0, v6

    if-ge v2, v0, :cond_2

    aget v0, v6, v2

    if-ne v13, v0, :cond_6

    const/16 v0, 0x14

    invoke-static {p1, v0, v2}, Lcom/tencent/a/b/e/a/d;->a([BII)V

    :cond_2
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    aget v1, v6, v0

    if-ne v13, v1, :cond_7

    const/16 v1, 0x18

    array-length v2, v6

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v1, v0}, Lcom/tencent/a/b/e/a/d;->a([BII)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method private static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static a([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/b/e/a/d;->g:F

    return v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/a/b/e/a/d;->g:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/a/a/e;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/d;->b:Lcom/tencent/a/b/d/e;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/e;->b()Lcom/tencent/a/b/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/a/b/d/c;->a(Lcom/tencent/a/a/a/e;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/tencent/a/b/e/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/a/b/e/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/a/a/a/e;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iget-object v4, p0, Lcom/tencent/a/b/e/a/d;->b:Lcom/tencent/a/b/d/e;

    invoke-virtual {v4}, Lcom/tencent/a/b/d/e;->b()Lcom/tencent/a/b/d/c;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/a/b/d/c;->a(Lcom/tencent/a/a/a/e;)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/d;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v1, p0, Lcom/tencent/a/b/e/a/d;->c:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/d;->a()F

    move-result v1

    float-to-int v1, v1

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x4

    new-array v5, v5, [F

    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    aput v6, v5, v7

    int-to-float v6, v1

    aput v6, v5, v2

    const/4 v2, 0x2

    mul-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    aput v6, v5, v2

    const/4 v2, 0x3

    int-to-float v1, v1

    aput v1, v5, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_3
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/a/b/e/a/d;->f:I

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/b/e/a/d;->h:F

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/d;->e:Z

    return v0
.end method

.method public e()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/a/b/e/a/d;->d:Lcom/tencent/a/a/a/f;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/a/b/e/a/d;->b:Lcom/tencent/a/b/d/e;

    invoke-virtual {v2}, Lcom/tencent/a/b/d/e;->b()Lcom/tencent/a/b/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/a/b/d/c;->c()Lcom/tencent/a/a/a/f;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/tencent/a/b/e/a/d;->d:Lcom/tencent/a/a/a/f;

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/f;->a(Lcom/tencent/a/a/a/f;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/a/b/e/a/d;->d:Lcom/tencent/a/a/a/f;

    invoke-virtual {v3, v2}, Lcom/tencent/a/a/a/f;->b(Lcom/tencent/a/a/a/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public f()V
    .locals 0

    return-void
.end method
