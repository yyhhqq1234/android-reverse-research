.class public abstract Lcom/netease/codescanner/widget/ViewfinderView;
.super Landroid/view/View;


# static fields
.field private static final b:[I

.field private static e:F


# instance fields
.field a:Z

.field private final c:Z

.field private d:I

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Bitmap;

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/content/Context;

.field private final t:I

.field private final u:I

.field private final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/codescanner/widget/ViewfinderView;->b:[I

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
    .locals 5

    const/high16 v4, 0x60000000

    const v3, -0x3f663400

    const/high16 v2, -0x50000000

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->i:I

    iput v4, p0, Lcom/netease/codescanner/widget/ViewfinderView;->t:I

    iput v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->u:I

    iput v3, p0, Lcom/netease/codescanner/widget/ViewfinderView;->v:I

    iput-object p1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/netease/codescanner/widget/ViewfinderView;->e:F

    const/high16 v0, 0x41a00000    # 20.0f

    sget v1, Lcom/netease/codescanner/widget/ViewfinderView;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->s:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/codescanner/widget/ViewfinderView;->getMaskColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/netease/codescanner/widget/ViewfinderView;->getColor(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->k:I

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->s:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/codescanner/widget/ViewfinderView;->getResultColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/netease/codescanner/widget/ViewfinderView;->getColor(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->l:I

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->s:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/codescanner/widget/ViewfinderView;->getResultPointColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/netease/codescanner/widget/ViewfinderView;->getColor(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->n:I

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->s:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/codescanner/widget/ViewfinderView;->getCornerWidth(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/netease/codescanner/widget/ViewfinderView;->getLineWidth(II)I

    move-result v0

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->s:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/netease/codescanner/widget/ViewfinderView;->getLineDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->o:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->p:Ljava/util/List;

    invoke-virtual {p0}, Lcom/netease/codescanner/widget/ViewfinderView;->enableDrawPoints()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->q:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V
    .locals 9

    iget-object v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->p:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->q:Ljava/util/List;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->q:Ljava/util/List;

    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    monitor-enter v2

    const/high16 v1, 0x40a00000    # 5.0f

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    mul-float/2addr v6, p3

    float-to-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    mul-float/2addr v0, p4

    float-to-int v0, v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v7, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->p:Ljava/util/List;

    iput-object v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->q:Ljava/util/List;

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    const/16 v5, 0xa0

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    iget v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->n:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    monitor-enter v1

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v7, 0x41200000    # 10.0f

    iget-object v8, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4

    new-instance v0, Lcom/google/zxing/ResultPoint;

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    sget v2, Lcom/netease/codescanner/widget/ViewfinderView;->e:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sget v3, Lcom/netease/codescanner/widget/ViewfinderView;->e:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QA: Point:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->p:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0xa

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/netease/codescanner/widget/ViewfinderView;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/netease/codescanner/widget/ViewfinderView;->invalidate()V

    return-void
.end method

.method public enableDrawPoints()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor(Ljava/lang/Integer;I)I
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public abstract getCornerWidth(Landroid/content/Context;)I
.end method

.method public abstract getLineDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public getLineWidth(II)I
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return p2

    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public abstract getMaskColor(Landroid/content/Context;)Ljava/lang/Integer;
.end method

.method public abstract getResultColor(Landroid/content/Context;)Ljava/lang/Integer;
.end method

.method public abstract getResultPointColor(Landroid/content/Context;)Ljava/lang/Integer;
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v12, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/netease/codescanner/widget/ViewfinderView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/codescanner/widget/ViewfinderView;->getHeight()I

    move-result v2

    invoke-direct {v7, v1, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->o:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/netease/codescanner/widget/ViewfinderView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    :cond_0
    iget-boolean v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->a:Z

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/netease/codescanner/widget/ViewfinderView;->a:Z

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->g:I

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->h:I

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v8

    int-to-float v10, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, v9

    int-to-float v11, v0

    iget-object v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->l:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v8

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v12

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    int-to-float v3, v8

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v9

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->j:Landroid/graphics/Bitmap;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->k:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->m:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->d:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->g:I

    iget v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->i:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->g:I

    iget v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->g:I

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_6

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->i:I

    :cond_4
    :goto_2
    iget v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->g:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netease/codescanner/widget/ViewfinderView;->r:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/netease/codescanner/widget/ViewfinderView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v12, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->c:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v7, v10, v11}, Lcom/netease/codescanner/widget/ViewfinderView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;FF)V

    :cond_5
    const-wide/16 v1, 0xa

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/codescanner/widget/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/netease/codescanner/widget/ViewfinderView;->g:I

    iget v1, v7, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_4

    iput v6, p0, Lcom/netease/codescanner/widget/ViewfinderView;->i:I

    goto :goto_2
.end method
