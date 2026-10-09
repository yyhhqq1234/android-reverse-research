.class public final Lcom/netease/loginapi/qrcode/ViewfinderView;
.super Landroid/widget/FrameLayout;
.source "Proguard"


# static fields
.field public static final ANIMATION_DELAY:J = 0x50L

.field public static final CURRENT_POINT_OPACITY:I = 0xa0

.field public static final MAX_RESULT_POINTS:I = 0x14

.field public static final POINT_SIZE:I = 0x6

.field public static final SCANNER_ALPHA:[I


# instance fields
.field public cameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

.field public icOffline:Landroid/graphics/Bitmap;

.field public final laserColor:I

.field public lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field public mDecorPaint:Landroid/graphics/Paint;

.field public final mDecorationLen:I

.field public final mDecorationWidth:I

.field public mDrawViewfinder:Z

.field public mLayoutCaptureTip:Landroid/view/ViewGroup;

.field public mMatrix:Landroid/graphics/Matrix;

.field public mNetworkAvailable:Z

.field public final maskColor:I

.field public final paint:Landroid/graphics/Paint;

.field public possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field public final rectDecorColor:I

.field public resultBitmap:Landroid/graphics/Bitmap;

.field public final resultColor:I

.field public final resultPointColor:I

.field public scannerAlpha:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/loginapi/qrcode/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDrawViewfinder:Z

    .line 4
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 18
    sget p2, Lcom/netease/loginapi/R$color;->viewfinder_mask:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->maskColor:I

    .line 19
    sget p2, Lcom/netease/loginapi/R$color;->result_view:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultColor:I

    .line 20
    sget p2, Lcom/netease/loginapi/R$color;->viewfinder_laser:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->laserColor:I

    .line 21
    sget p2, Lcom/netease/loginapi/R$color;->viewfinder_rect_deocr:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->rectDecorColor:I

    .line 22
    sget p2, Lcom/netease/loginapi/R$color;->possible_result_points:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultPointColor:I

    .line 23
    sget p2, Lcom/netease/loginapi/R$dimen;->qr_viewfinder_decoration_len:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorationLen:I

    .line 24
    sget p2, Lcom/netease/loginapi/R$dimen;->qr_viewfinder_decoration_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorationWidth:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->scannerAlpha:I

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 29
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorationWidth:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netease/loginapi/R$drawable;->qr_ic_offline:I

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->icOffline:Landroid/graphics/Bitmap;

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private drawOfflineFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 5
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/netease/loginapi/qrcode/ViewfinderView;

    const-string v4, "Margin:%s"

    invoke-static {v3, v4, v2}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    int-to-float v0, v0

    .line 10
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->icOffline:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 11
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 12
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {v0, v2, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->icOffline:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawViewfinder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->cameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p2, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 9
    iget-object v3, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultColor:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->maskColor:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    .line 10
    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v3

    iget-object v10, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v8, v3

    iget-object v9, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v6, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v9, v3

    iget-object v10, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    move v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v7, v3

    int-to-float v9, v2

    iget-object v10, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/16 v3, 0xa0

    if-eqz v1, :cond_2

    .line 17
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->laserColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v4, Lcom/netease/loginapi/qrcode/ViewfinderView;->SCANNER_ALPHA:[I

    iget v5, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->scannerAlpha:I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 25
    iget v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v1, v1, 0x1

    sget-object v4, Lcom/netease/loginapi/qrcode/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v4, v4

    rem-int/2addr v1, v4

    iput v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->scannerAlpha:I

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    .line 27
    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v6, v4

    add-int/lit8 v4, v1, -0x1

    int-to-float v7, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v8, v4

    add-int/lit8 v1, v1, 0x2

    int-to-float v9, v1

    iget-object v10, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 32
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 33
    iget-object v5, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 34
    iget v6, p2, Landroid/graphics/Rect;->left:I

    .line 35
    iget v7, p2, Landroid/graphics/Rect;->top:I

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 37
    iput-object v2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    goto :goto_2

    .line 39
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 41
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/ResultPoint;

    .line 45
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    mul-float v8, v8, v1

    float-to-int v8, v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v7

    int-to-float v3, v3

    const/high16 v9, 0x40c00000    # 6.0f

    iget-object v10, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 47
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-eqz v5, :cond_6

    .line 50
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultPointColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    monitor-enter v5

    const/high16 v0, 0x40400000    # 3.0f

    .line 54
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/ResultPoint;

    .line 55
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    mul-float v8, v8, v1

    float-to-int v8, v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v7

    int-to-float v3, v3

    iget-object v9, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v0, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 57
    :cond_5
    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 64
    :cond_6
    :goto_4
    iget p1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, p1, -0x6

    iget p1, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, p1, -0x6

    iget p1, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, p1, 0x6

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, p1, 0x6

    const-wide/16 v1, 0x50

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/FrameLayout;->postInvalidateDelayed(JIIII)V

    :goto_5
    return-void

    :catchall_1
    move-exception p1

    .line 65
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_7
    :goto_6
    return-void
.end method

.method private drawViewfinderDecoration(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorationLen:I

    .line 5
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 8
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int v3, v2, v0

    int-to-float v5, v3

    sub-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v3

    add-int/2addr v2, v0

    int-to-float v6, v2

    iget-object v8, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v0

    int-to-float v5, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v3

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v9, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    add-int/2addr v2, v0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 16
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v0

    int-to-float v5, v3

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 17
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sub-int/2addr v2, v0

    int-to-float v6, v2

    iget-object v8, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 20
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v0

    int-to-float v5, v3

    add-int/2addr v2, v1

    int-to-float v7, v2

    iget-object v8, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 21
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, p2

    add-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v7, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDecorPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xa

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->cameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-boolean v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDrawViewfinder:Z

    if-eqz v1, :cond_2

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/netease/loginapi/qrcode/ViewfinderView;->drawViewfinder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 12
    :cond_2
    iget v1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->maskColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/netease/loginapi/qrcode/ViewfinderView;->drawViewfinderDecoration(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/netease/loginapi/qrcode/ViewfinderView;->drawOfflineFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcom/netease/loginapi/R$id;->layout_capture_tip:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mLayoutCaptureTip:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 3
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->cameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mLayoutCaptureTip:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mLayoutCaptureTip:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mLayoutCaptureTip:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 10
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    .line 11
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mLayoutCaptureTip:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    iget-object p4, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mLayoutCaptureTip:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mLayoutCaptureTip:Landroid/view/ViewGroup;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setCameraManager(Lcom/netease/loginapi/qrcode/camera/CameraManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->cameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/loginapi/qrcode/ViewfinderView;->setViewfinderDrawerEnabled(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mNetworkAvailable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mNetworkAvailable:Z

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setViewfinderDrawerEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/loginapi/qrcode/ViewfinderView;->mDrawViewfinder:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
