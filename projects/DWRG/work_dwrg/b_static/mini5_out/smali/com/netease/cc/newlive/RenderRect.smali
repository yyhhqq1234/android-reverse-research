.class public Lcom/netease/cc/newlive/RenderRect;
.super Ljava/lang/Object;
.source "RenderRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/newlive/RenderRect$BmpInfo;,
        Lcom/netease/cc/newlive/RenderRect$Builder;
    }
.end annotation


# static fields
.field public static final ASPECT_TO_FILL:I = 0x1

.field public static final ASPECT_TO_FIT:I = 0x2

.field public static final RECT_TYPE_BITMAP:I = 0x3

.field public static final RECT_TYPE_MAIN:I = 0x1

.field public static final RECT_TYPE_RTMP_BRIDGE:I = 0x2

.field public static final RENDER_TYPE_ALL:I = 0x3

.field public static final RENDER_TYPE_PREVIEW:I = 0x1

.field public static final RENDER_TYPE_STREAM:I = 0x2

.field public static final WEIGHT_MAX:I = 0x3e8

.field private static a:I = 0x1


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field public mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/nio/FloatBuffer;

.field private s:Ljava/nio/FloatBuffer;

.field private t:[F

.field private u:[F

.field private v:[F

.field private w:[F

.field private x:I

.field private y:F

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/netease/cc/newlive/RenderRect$Builder;)V
    .locals 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    .line 44
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    .line 45
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->d:I

    const/4 v1, 0x1

    .line 46
    iput v1, p0, Lcom/netease/cc/newlive/RenderRect;->e:I

    .line 48
    iput-boolean v1, p0, Lcom/netease/cc/newlive/RenderRect;->f:Z

    .line 50
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    .line 51
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    .line 53
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    .line 54
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 56
    iput v2, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 57
    iput v3, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    .line 58
    iput v3, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    .line 59
    iput v2, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    .line 61
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    .line 62
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->r:Ljava/nio/FloatBuffer;

    .line 66
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->s:Ljava/nio/FloatBuffer;

    .line 68
    sget-object v2, Lcom/netease/cc/newlive/f/h;->m:[F

    iput-object v2, p0, Lcom/netease/cc/newlive/RenderRect;->t:[F

    .line 69
    sget-object v2, Lcom/netease/cc/newlive/f/h;->n:[F

    iput-object v2, p0, Lcom/netease/cc/newlive/RenderRect;->u:[F

    .line 70
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->v:[F

    .line 71
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->w:[F

    .line 72
    iput v1, p0, Lcom/netease/cc/newlive/RenderRect;->x:I

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/netease/cc/newlive/RenderRect;->y:F

    .line 75
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->z:Landroid/graphics/Bitmap;

    .line 76
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    .line 80
    sget v0, Lcom/netease/cc/newlive/RenderRect;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/netease/cc/newlive/RenderRect;->a:I

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    .line 82
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->a(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    .line 83
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->b(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->d:I

    .line 85
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->c(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    .line 86
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->d(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    .line 88
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->e(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    .line 89
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->f(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    .line 91
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->g(Lcom/netease/cc/newlive/RenderRect$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    .line 92
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->h(Lcom/netease/cc/newlive/RenderRect$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    .line 93
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->i(Lcom/netease/cc/newlive/RenderRect$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    .line 94
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->j(Lcom/netease/cc/newlive/RenderRect$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    .line 96
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->k(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    .line 97
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->l(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    .line 99
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->m(Lcom/netease/cc/newlive/RenderRect$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->z:Landroid/graphics/Bitmap;

    .line 100
    invoke-static {p1}, Lcom/netease/cc/newlive/RenderRect$Builder;->n(Lcom/netease/cc/newlive/RenderRect$Builder;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/cc/newlive/RenderRect;->setScaleMode(I)V

    .line 102
    new-instance p1, Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    invoke-direct {p1, p0}, Lcom/netease/cc/newlive/RenderRect$BmpInfo;-><init>(Lcom/netease/cc/newlive/RenderRect;)V

    iput-object p1, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/newlive/RenderRect$Builder;Lcom/netease/cc/newlive/RenderRect$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/netease/cc/newlive/RenderRect;-><init>(Lcom/netease/cc/newlive/RenderRect$Builder;)V

    return-void
.end method

.method private a()V
    .locals 11

    .line 272
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 275
    :cond_0
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_1

    new-array v4, v3, [I

    aput v0, v4, v2

    .line 277
    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 278
    iput v1, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget-object v0, v0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iput-boolean v2, v0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->update:Z

    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget-object v0, v0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/netease/cc/newlive/f/e;->a(Landroid/graphics/Bitmap;I)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    .line 291
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget-object v0, v0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 292
    iget-object v1, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget-object v1, v1, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 295
    iget v4, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    int-to-float v5, v4

    const v6, 0x3b360b61

    mul-float v5, v5, v6

    iget v7, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    int-to-float v8, v7

    div-float/2addr v5, v8

    if-ge v7, v4, :cond_3

    int-to-float v5, v7

    mul-float v5, v5, v6

    int-to-float v4, v4

    div-float v4, v5, v4

    const v5, 0x3b360b61

    goto :goto_0

    :cond_3
    const v4, 0x3b360b61

    :goto_0
    mul-float v0, v0, v4

    mul-float v1, v1, v5

    .line 307
    iget-object v6, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v6, v6, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->align:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    if-eq v6, v3, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    if-eq v6, v8, :cond_5

    if-eq v6, v7, :cond_4

    .line 330
    iget-object v6, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v6, v6, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->x:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    add-float/2addr v6, v9

    .line 331
    iget-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v4, v4, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->y:I

    :goto_1
    int-to-float v4, v4

    mul-float v4, v4, v5

    sub-float/2addr v10, v4

    sub-float/2addr v10, v1

    goto :goto_3

    .line 317
    :cond_4
    iget-object v6, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v6, v6, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->x:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    sub-float v4, v10, v6

    sub-float v6, v4, v0

    .line 318
    iget-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v4, v4, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->y:I

    goto :goto_1

    .line 324
    :cond_5
    iget-object v6, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v6, v6, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->x:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    sub-float/2addr v10, v6

    sub-float v6, v10, v0

    .line 325
    iget-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v4, v4, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->y:I

    goto :goto_2

    .line 311
    :cond_6
    iget-object v6, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v6, v6, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->x:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    add-float/2addr v6, v9

    .line 312
    iget-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    iget v4, v4, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->y:I

    :goto_2
    int-to-float v4, v4

    mul-float v4, v4, v5

    add-float v10, v4, v9

    :goto_3
    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 335
    iput-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->v:[F

    .line 336
    iget-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->v:[F

    aput v6, v4, v2

    .line 337
    aput v10, v4, v3

    add-float/2addr v0, v6

    .line 339
    aput v0, v4, v8

    .line 340
    aput v10, v4, v7

    const/4 v2, 0x4

    .line 342
    aput v6, v4, v2

    const/4 v2, 0x5

    add-float/2addr v10, v1

    .line 343
    aput v10, v4, v2

    const/4 v1, 0x6

    .line 345
    aput v0, v4, v1

    const/4 v0, 0x7

    .line 346
    aput v10, v4, v0

    .line 349
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    if-eqz v0, :cond_7

    .line 350
    invoke-virtual {v0}, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->release()V

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    :cond_7
    :goto_4
    return-void
.end method

.method private a([F)V
    .locals 5

    .line 454
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 456
    aget v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->y:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    mul-float v1, v1, v3

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 10

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInputWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOutputWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOutputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rect-updateVertexArr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    if-eqz v2, :cond_7

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    if-eqz v3, :cond_7

    iget v4, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    if-eqz v4, :cond_7

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v3

    int-to-float v3, v4

    div-float/2addr v2, v3

    .line 364
    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    iget v4, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    sub-float v5, v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 365
    iget v7, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    iget v8, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    sub-float v9, v7, v8

    div-float/2addr v9, v6

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v7, v8

    div-float/2addr v7, v6

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "foutRight:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " foutLeft:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " foutTop:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " fOutBottom:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "\nfWidthHalf:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " fHeightHalf:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " fCenterX:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " fCenterY:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 372
    iget v4, p0, Lcom/netease/cc/newlive/RenderRect;->x:I

    const/4 v6, 0x0

    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    div-float/2addr v2, v0

    const/4 v0, 0x0

    .line 375
    :goto_0
    iget-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->t:[F

    array-length v8, v4

    if-ge v0, v8, :cond_5

    .line 376
    rem-int/lit8 v8, v0, 0x2

    if-nez v8, :cond_0

    .line 377
    aget v4, v4, v0

    mul-float v4, v4, v5

    add-float/2addr v4, v3

    aput v4, v1, v0

    goto :goto_1

    .line 380
    :cond_0
    aget v4, v4, v0

    mul-float v4, v4, v2

    mul-float v4, v4, v9

    add-float/2addr v4, v7

    aput v4, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 386
    :goto_2
    iget-object v4, p0, Lcom/netease/cc/newlive/RenderRect;->t:[F

    array-length v8, v4

    if-ge v2, v8, :cond_5

    .line 387
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_2

    .line 388
    aget v4, v4, v2

    mul-float v4, v4, v0

    mul-float v4, v4, v5

    add-float/2addr v4, v3

    aput v4, v1, v2

    goto :goto_3

    .line 391
    :cond_2
    aget v4, v4, v2

    mul-float v4, v4, v9

    add-float/2addr v4, v7

    aput v4, v1, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 397
    :goto_4
    iget-object v2, p0, Lcom/netease/cc/newlive/RenderRect;->t:[F

    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 398
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_4

    .line 399
    aget v2, v2, v0

    mul-float v2, v2, v5

    add-float/2addr v2, v3

    aput v2, v1, v0

    goto :goto_5

    .line 401
    :cond_4
    aget v2, v2, v0

    mul-float v2, v2, v9

    add-float/2addr v2, v7

    aput v2, v1, v0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 406
    :cond_5
    invoke-direct {p0, v1}, Lcom/netease/cc/newlive/RenderRect;->a([F)V

    const-string v0, "vertex:\n"

    .line 409
    :goto_6
    array-length v2, v1

    if-ge v6, v2, :cond_6

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v6, 0x1

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x2

    goto :goto_6

    .line 411
    :cond_6
    iput-object v1, p0, Lcom/netease/cc/newlive/RenderRect;->v:[F

    const-string v1, "updateVertexArr"

    .line 412
    invoke-static {v1, v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private c()V
    .locals 9

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInputWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOutputWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOutputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Rect-updateTextureArr"

    invoke-static {v1, v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    if-eqz v1, :cond_8

    iget v2, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    if-eqz v2, :cond_8

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    if-eqz v3, :cond_8

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 422
    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->x:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    const/4 v3, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v1

    if-lez v8, :cond_2

    div-float/2addr v1, v0

    sub-float v0, v7, v1

    div-float/2addr v0, v6

    const/4 v1, 0x0

    .line 425
    :goto_0
    iget-object v5, p0, Lcom/netease/cc/newlive/RenderRect;->u:[F

    array-length v6, v5

    if-ge v1, v6, :cond_6

    .line 426
    rem-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_1

    .line 427
    aget v5, v5, v1

    cmpl-float v5, v5, v3

    if-nez v5, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    sub-float v5, v7, v0

    :goto_1
    aput v5, v2, v1

    goto :goto_2

    .line 429
    :cond_1
    aget v5, v5, v1

    aput v5, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    div-float/2addr v0, v1

    sub-float v0, v7, v0

    div-float/2addr v0, v6

    const/4 v1, 0x0

    .line 433
    :goto_3
    iget-object v6, p0, Lcom/netease/cc/newlive/RenderRect;->u:[F

    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 434
    rem-int/lit8 v8, v1, 0x2

    if-ne v8, v5, :cond_4

    .line 435
    aget v6, v6, v1

    cmpl-float v6, v6, v3

    if-nez v6, :cond_3

    move v6, v0

    goto :goto_4

    :cond_3
    sub-float v6, v7, v0

    :goto_4
    aput v6, v2, v1

    goto :goto_5

    .line 437
    :cond_4
    aget v6, v6, v1

    aput v6, v2, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    const/4 v0, 0x0

    .line 441
    :goto_6
    iget-object v1, p0, Lcom/netease/cc/newlive/RenderRect;->u:[F

    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 442
    aget v1, v1, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    const-string v0, "texture:\n"

    .line 446
    :goto_7
    array-length v1, v2

    if-ge v4, v1, :cond_7

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x1

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x2

    goto :goto_7

    .line 448
    :cond_7
    iput-object v2, p0, Lcom/netease/cc/newlive/RenderRect;->w:[F

    const-string v1, "updateTextureArr"

    .line 449
    invoke-static {v1, v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public copy(Lcom/netease/cc/newlive/RenderRect;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    iget v1, p1, Lcom/netease/cc/newlive/RenderRect;->c:I

    if-eq v0, v1, :cond_1

    return-void

    .line 112
    :cond_1
    iget v1, p1, Lcom/netease/cc/newlive/RenderRect;->d:I

    iput v1, p0, Lcom/netease/cc/newlive/RenderRect;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    .line 115
    iget v0, p1, Lcom/netease/cc/newlive/RenderRect;->g:I

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    .line 116
    iget v0, p1, Lcom/netease/cc/newlive/RenderRect;->h:I

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    .line 117
    iget v0, p1, Lcom/netease/cc/newlive/RenderRect;->b:I

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    .line 120
    :cond_2
    iget-boolean v0, p1, Lcom/netease/cc/newlive/RenderRect;->f:Z

    iput-boolean v0, p0, Lcom/netease/cc/newlive/RenderRect;->f:Z

    .line 122
    iget v0, p1, Lcom/netease/cc/newlive/RenderRect;->k:F

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    .line 123
    iget v0, p1, Lcom/netease/cc/newlive/RenderRect;->l:F

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    .line 125
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->e:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_4

    .line 126
    iget v3, p1, Lcom/netease/cc/newlive/RenderRect;->n:F

    mul-float v3, v3, v1

    goto :goto_1

    :cond_4
    iget v3, p1, Lcom/netease/cc/newlive/RenderRect;->m:F

    :goto_1
    iput v3, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    if-eqz v0, :cond_5

    .line 127
    iget v0, p1, Lcom/netease/cc/newlive/RenderRect;->m:F

    mul-float v0, v0, v1

    goto :goto_2

    :cond_5
    iget v0, p1, Lcom/netease/cc/newlive/RenderRect;->n:F

    :goto_2
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    .line 129
    iget-object v0, p1, Lcom/netease/cc/newlive/RenderRect;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->z:Landroid/graphics/Bitmap;

    .line 131
    :cond_6
    iget p1, p1, Lcom/netease/cc/newlive/RenderRect;->x:I

    invoke-virtual {p0, p1}, Lcom/netease/cc/newlive/RenderRect;->setScaleMode(I)V

    .line 132
    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->updateRenderRect()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->z:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFBTexture()Ljava/nio/FloatBuffer;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->s:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getFBVertex()Ljava/nio/FloatBuffer;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->r:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getFoutLeft()F
    .locals 1

    .line 152
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    return v0
.end method

.method public getFoutRight()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    return v0
.end method

.method public getFoutTop()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    return v0
.end method

.method public getId()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    return v0
.end method

.method public getInputHeight()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    return v0
.end method

.method public getInputWidth()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    return v0
.end method

.method public getOutputHeight()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    return v0
.end method

.method public getOutputWidth()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->d:I

    return v0
.end method

.method public getfOutBottom()F
    .locals 1

    .line 164
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/netease/cc/newlive/RenderRect;->f:Z

    return v0
.end method

.method public setBaseTextureArr([F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 258
    iput-object p1, p0, Lcom/netease/cc/newlive/RenderRect;->u:[F

    .line 259
    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->updateRenderRect()V

    :cond_0
    return-void
.end method

.method public setBaseVertexArr([F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 251
    iput-object p1, p0, Lcom/netease/cc/newlive/RenderRect;->t:[F

    .line 252
    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->updateRenderRect()V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;III)V
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set rect bmp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[renderrect]"

    invoke-static {v1, v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGF(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/netease/cc/newlive/f/h;->n:[F

    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->u:[F

    .line 266
    sget-object v0, Lcom/netease/cc/newlive/f/h;->n:[F

    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->w:[F

    .line 267
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->updateBmp(Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/netease/cc/newlive/RenderRect;->f:Z

    return-void
.end method

.method public setInputSize(II)V
    .locals 1

    .line 177
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    if-eq v0, p2, :cond_1

    .line 178
    :cond_0
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect;->g:I

    .line 179
    iput p2, p0, Lcom/netease/cc/newlive/RenderRect;->h:I

    .line 180
    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->updateRenderRect()V

    :cond_1
    return-void
.end method

.method public setOutputRatio(FFFF)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    .line 186
    iput p2, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    .line 187
    iput p3, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    .line 188
    iput p4, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    return-void
.end method

.method public setRenderType(I)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect;->e:I

    return-void
.end method

.method public setScaleMode(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect;->x:I

    .line 173
    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->updateRenderRect()V

    return-void
.end method

.method public setTextureId(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    return-void
.end method

.method public setVideoSize(II)V
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGI(Ljava/lang/String;)V

    .line 229
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    .line 230
    iput p2, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    .line 231
    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->updateRenderRect()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 502
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/netease/cc/newlive/RenderRect;->f:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "type=%d enable=%d left=%f right=%f top=%f bottom=%f videoW=%d videoH=%d scale_mode=%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFB()V
    .locals 5

    .line 463
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->r:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 464
    sget-object v0, Lcom/netease/cc/newlive/f/h;->h:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->r:Ljava/nio/FloatBuffer;

    .line 465
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->r:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/netease/cc/newlive/f/h;->h:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->s:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    .line 469
    sget-object v0, Lcom/netease/cc/newlive/f/h;->b:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->s:Ljava/nio/FloatBuffer;

    .line 470
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->s:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/netease/cc/newlive/f/f;->a:Lcom/netease/cc/newlive/f/f;

    invoke-static {v2, v1, v1}, Lcom/netease/cc/newlive/f/h;->a(Lcom/netease/cc/newlive/f/f;ZZ)[F

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 474
    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/netease/cc/newlive/f/e;->a(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->q:I

    .line 475
    iput-object v2, p0, Lcom/netease/cc/newlive/RenderRect;->z:Landroid/graphics/Bitmap;

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->mBmpInfo:Lcom/netease/cc/newlive/RenderRect$BmpInfo;

    if-eqz v0, :cond_3

    .line 479
    iget-boolean v0, v0, Lcom/netease/cc/newlive/RenderRect$BmpInfo;->update:Z

    if-eqz v0, :cond_3

    .line 480
    invoke-direct {p0}, Lcom/netease/cc/newlive/RenderRect;->a()V

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->v:[F

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->r:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 485
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->r:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/newlive/RenderRect;->v:[F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 486
    iput-object v2, p0, Lcom/netease/cc/newlive/RenderRect;->v:[F

    .line 489
    :cond_4
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->w:[F

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->s:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    .line 490
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 491
    iget-object v0, p0, Lcom/netease/cc/newlive/RenderRect;->s:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/netease/cc/newlive/RenderRect;->w:[F

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 492
    iput-object v2, p0, Lcom/netease/cc/newlive/RenderRect;->w:[F

    :cond_5
    return-void
.end method

.method public updateOutputSize()V
    .locals 5

    .line 242
    iget v0, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    if-lez v1, :cond_0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 243
    iget v3, p0, Lcom/netease/cc/newlive/RenderRect;->l:F

    iget v4, p0, Lcom/netease/cc/newlive/RenderRect;->k:F

    sub-float/2addr v3, v4

    mul-float v0, v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    int-to-float v0, v1

    mul-float v0, v0, v2

    .line 244
    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->m:F

    iget v2, p0, Lcom/netease/cc/newlive/RenderRect;->n:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " outputWidth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " outputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/cc/newlive/RenderRect;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateOutputSize"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateRenderRect()V
    .locals 0

    .line 236
    invoke-virtual {p0}, Lcom/netease/cc/newlive/RenderRect;->updateOutputSize()V

    .line 237
    invoke-direct {p0}, Lcom/netease/cc/newlive/RenderRect;->b()V

    .line 238
    invoke-direct {p0}, Lcom/netease/cc/newlive/RenderRect;->c()V

    return-void
.end method

.method public updateZoomScale(F)V
    .locals 0

    .line 497
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect;->y:F

    .line 498
    invoke-direct {p0}, Lcom/netease/cc/newlive/RenderRect;->b()V

    return-void
.end method
