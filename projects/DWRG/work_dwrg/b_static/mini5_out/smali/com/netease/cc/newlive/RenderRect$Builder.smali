.class public final Lcom/netease/cc/newlive/RenderRect$Builder;
.super Ljava/lang/Object;
.source "RenderRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/newlive/RenderRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 507
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->a:I

    .line 508
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->b:I

    .line 510
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->c:I

    .line 511
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->d:I

    .line 513
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->e:I

    .line 514
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->f:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 516
    iput v1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->g:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 517
    iput v2, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->h:F

    .line 518
    iput v2, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->i:F

    .line 519
    iput v1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->j:F

    .line 521
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->k:I

    .line 522
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->l:I

    const/4 v0, 0x1

    .line 524
    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->m:I

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->n:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->a:I

    return p0
.end method

.method static synthetic b(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->c:I

    return p0
.end method

.method static synthetic d(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->f:I

    return p0
.end method

.method static synthetic g(Lcom/netease/cc/newlive/RenderRect$Builder;)F
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->g:F

    return p0
.end method

.method static synthetic h(Lcom/netease/cc/newlive/RenderRect$Builder;)F
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->h:F

    return p0
.end method

.method static synthetic i(Lcom/netease/cc/newlive/RenderRect$Builder;)F
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->i:F

    return p0
.end method

.method static synthetic j(Lcom/netease/cc/newlive/RenderRect$Builder;)F
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->j:F

    return p0
.end method

.method static synthetic k(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->k:I

    return p0
.end method

.method static synthetic l(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->l:I

    return p0
.end method

.method static synthetic m(Lcom/netease/cc/newlive/RenderRect$Builder;)Landroid/graphics/Bitmap;
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->n:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/cc/newlive/RenderRect$Builder;)I
    .locals 0

    .line 505
    iget p0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->m:I

    return p0
.end method


# virtual methods
.method public build()Lcom/netease/cc/newlive/RenderRect;
    .locals 2

    .line 567
    new-instance v0, Lcom/netease/cc/newlive/RenderRect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/newlive/RenderRect;-><init>(Lcom/netease/cc/newlive/RenderRect$Builder;Lcom/netease/cc/newlive/RenderRect$1;)V

    return-object v0
.end method

.method public withBitmap(Landroid/graphics/Bitmap;)Lcom/netease/cc/newlive/RenderRect$Builder;
    .locals 1

    .line 558
    iput-object p1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->n:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->c:I

    .line 561
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->d:I

    :cond_0
    return-object p0
.end method

.method public withInputSize(II)Lcom/netease/cc/newlive/RenderRect$Builder;
    .locals 0

    .line 529
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->c:I

    .line 530
    iput p2, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->d:I

    return-object p0
.end method

.method public withOutputRatio(FFFF)Lcom/netease/cc/newlive/RenderRect$Builder;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 545
    :cond_1
    :goto_0
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->g:F

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    cmpl-float p1, p2, v0

    if-lez p1, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    .line 546
    :cond_3
    :goto_1
    iput p2, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->h:F

    cmpg-float p1, p3, v1

    if-gez p1, :cond_4

    const/high16 p3, -0x40800000    # -1.0f

    goto :goto_2

    :cond_4
    cmpl-float p1, p3, v0

    if-lez p1, :cond_5

    const/high16 p3, 0x3f800000    # 1.0f

    .line 547
    :cond_5
    :goto_2
    iput p3, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->i:F

    cmpg-float p1, p4, v1

    if-gez p1, :cond_6

    const/high16 p4, -0x40800000    # -1.0f

    goto :goto_3

    :cond_6
    cmpl-float p1, p4, v0

    if-lez p1, :cond_7

    const/high16 p4, 0x3f800000    # 1.0f

    .line 548
    :cond_7
    :goto_3
    iput p4, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->j:F

    return-object p0
.end method

.method public withScaleMode(I)Lcom/netease/cc/newlive/RenderRect$Builder;
    .locals 0

    .line 553
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->m:I

    return-object p0
.end method

.method public withType(I)Lcom/netease/cc/newlive/RenderRect$Builder;
    .locals 0

    .line 535
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->a:I

    return-object p0
.end method

.method public withWeight(I)Lcom/netease/cc/newlive/RenderRect$Builder;
    .locals 0

    .line 540
    iput p1, p0, Lcom/netease/cc/newlive/RenderRect$Builder;->b:I

    return-object p0
.end method
