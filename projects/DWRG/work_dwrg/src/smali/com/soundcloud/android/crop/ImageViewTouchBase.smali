.class abstract Lcom/soundcloud/android/crop/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field private static final SCALE_RATE:F = 1.25f


# instance fields
.field protected baseMatrix:Landroid/graphics/Matrix;

.field protected final bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

.field private final displayMatrix:Landroid/graphics/Matrix;

.field protected handler:Landroid/os/Handler;

.field private final matrixValues:[F

.field maxZoom:F

.field private onLayoutRunnable:Ljava/lang/Runnable;

.field private recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

.field protected suppMatrix:Landroid/graphics/Matrix;

.field thisHeight:I

.field thisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    .line 62
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 92
    return-void
.end method

.method private getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V
    .locals 10
    .param p1, "bitmap"    # Lcom/soundcloud/android/crop/RotateBitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "includeRotation"    # Z

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 261
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 262
    .local v4, "viewWidth":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 264
    .local v3, "viewHeight":F
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 265
    .local v5, "w":F
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 266
    .local v0, "h":F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 269
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 270
    .local v6, "widthScale":F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 271
    .local v1, "heightScale":F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 273
    .local v2, "scale":F
    if-eqz p3, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 276
    :cond_0
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 277
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 145
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 149
    .local v1, "old":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/soundcloud/android/crop/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/soundcloud/android/crop/RotateBitmap;->setRotation(I)V

    .line 152
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 155
    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateMaxZoom()F
    .locals 4

    .prologue
    .line 297
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 298
    const/high16 v2, 0x3f800000    # 1.0f

    .line 303
    :goto_0
    return v2

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 302
    .local v1, "fw":F
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 303
    .local v0, "fh":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    goto :goto_0
.end method

.method protected center(ZZ)V
    .locals 13
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 201
    iget-object v9, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v9}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 207
    .local v4, "m":Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v5, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 208
    .local v5, "rect":Landroid/graphics/RectF;
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 211
    .local v3, "height":F
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    .line 213
    .local v8, "width":F
    const/4 v1, 0x0

    .local v1, "deltaX":F
    const/4 v2, 0x0

    .line 215
    .local v2, "deltaY":F
    if-eqz p2, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v6

    .line 217
    .local v6, "viewHeight":I
    int-to-float v9, v6

    cmpg-float v9, v3, v9

    if-gez v9, :cond_3

    .line 218
    int-to-float v9, v6

    sub-float/2addr v9, v3

    div-float/2addr v9, v12

    iget v10, v5, Landroid/graphics/RectF;->top:F

    sub-float v2, v9, v10

    .line 226
    .end local v6    # "viewHeight":I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v7

    .line 228
    .local v7, "viewWidth":I
    int-to-float v9, v7

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    .line 229
    int-to-float v9, v7

    sub-float/2addr v9, v8

    div-float/2addr v9, v12

    iget v10, v5, Landroid/graphics/RectF;->left:F

    sub-float v1, v9, v10

    .line 237
    .end local v7    # "viewWidth":I
    :cond_2
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 238
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 219
    .restart local v6    # "viewHeight":I
    :cond_3
    iget v9, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_4

    .line 220
    iget v9, v5, Landroid/graphics/RectF;->top:F

    neg-float v2, v9

    goto :goto_1

    .line 221
    :cond_4
    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v6

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v9, v10

    goto :goto_1

    .line 230
    .end local v6    # "viewHeight":I
    .restart local v7    # "viewWidth":I
    :cond_5
    iget v9, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    .line 231
    iget v9, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v9

    goto :goto_2

    .line 232
    :cond_6
    iget v9, v5, Landroid/graphics/RectF;->right:F

    int-to-float v10, v7

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 233
    int-to-float v9, v7

    iget v10, v5, Landroid/graphics/RectF;->right:F

    sub-float v1, v9, v10

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 159
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 285
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 286
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 290
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    .local v0, "unrotated":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 292
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 293
    return-object v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 247
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 125
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(F)V

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 101
    sub-int v1, p4, p2

    iput v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 102
    sub-int v1, p5, p3

    iput v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 103
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 104
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 106
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 395
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 396
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 390
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 391
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 139
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 165
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    .line 166
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V
    .locals 3
    .param p1, "bitmap"    # Lcom/soundcloud/android/crop/RotateBitmap;
    .param p2, "resetSupp"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 171
    .local v0, "viewWidth":I
    if-gtz v0, :cond_0

    .line 172
    new-instance v1, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 182
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 188
    :goto_1
    if-eqz p2, :cond_1

    .line 189
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 192
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->calculateMaxZoom()F

    move-result v1

    iput v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    goto :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V
    .locals 0
    .param p1, "recycler"    # Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    .line 96
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 346
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomIn(F)V

    .line 347
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .param p1, "rate"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 354
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v2}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 362
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 364
    .local v1, "cy":F
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 365
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 350
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomOut(F)V

    .line 351
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .param p1, "rate"    # F

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 369
    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v3}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 387
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 374
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 377
    .local v1, "cy":F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 378
    .local v2, "tmp":Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 380
    invoke-virtual {p0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 381
    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 385
    :goto_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 386
    invoke-virtual {p0, v6, v6}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 340
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 341
    .local v0, "cx":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 342
    .local v1, "cy":F
    invoke-virtual {p0, p1, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 343
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    const/4 v3, 0x1

    .line 307
    iget v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 308
    iget p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 312
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 314
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 315
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 316
    invoke-virtual {p0, v3, v3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center(ZZ)V

    .line 317
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "durationMs"    # F

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 322
    .local v7, "incrementPerMs":F
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 323
    .local v6, "oldScale":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 325
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method
