.class public final Lcom/netease/cc/newlive/LiveConfig$Builder;
.super Ljava/lang/Object;
.source "LiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/newlive/LiveConfig;
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

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/media/projection/MediaProjection;

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/netease/cc/newlive/RenderRect;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 301
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->a:I

    .line 302
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->b:I

    .line 303
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->c:I

    .line 304
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->d:I

    .line 305
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->e:I

    .line 306
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->f:I

    .line 307
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->g:I

    .line 308
    iput v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->h:I

    const-string v1, ""

    .line 309
    iput-object v1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->i:Ljava/lang/String;

    .line 310
    iput-object v1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->j:Ljava/lang/String;

    const/4 v2, 0x0

    .line 311
    iput-object v2, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->k:Ljava/util/List;

    const-wide/16 v3, 0x0

    .line 313
    iput-wide v3, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->m:J

    .line 314
    iput-object v1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->n:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->o:Ljava/lang/String;

    const/4 v1, 0x4

    .line 316
    iput v1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->p:I

    const/4 v1, 0x1

    .line 317
    iput-boolean v1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->q:Z

    .line 318
    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->r:Z

    .line 319
    iput-boolean v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->s:Z

    .line 320
    iput-object v2, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->t:Lcom/netease/cc/newlive/RenderRect;

    return-void
.end method

.method static synthetic a(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->h:I

    return p0
.end method

.method static synthetic b(Lcom/netease/cc/newlive/LiveConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/cc/newlive/LiveConfig$Builder;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->l:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method public static copyMultiPushUrls(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic d(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->p:I

    return p0
.end method

.method static synthetic e(Lcom/netease/cc/newlive/LiveConfig$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->q:Z

    return p0
.end method

.method static synthetic f(Lcom/netease/cc/newlive/LiveConfig$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->r:Z

    return p0
.end method

.method static synthetic g(Lcom/netease/cc/newlive/LiveConfig$Builder;)Z
    .locals 0

    .line 299
    iget-boolean p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->s:Z

    return p0
.end method

.method static synthetic h(Lcom/netease/cc/newlive/LiveConfig$Builder;)Ljava/util/List;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->c:I

    return p0
.end method

.method static synthetic j(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->d:I

    return p0
.end method

.method static synthetic k(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->e:I

    return p0
.end method

.method static synthetic l(Lcom/netease/cc/newlive/LiveConfig$Builder;)Lcom/netease/cc/newlive/RenderRect;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->t:Lcom/netease/cc/newlive/RenderRect;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->a:I

    return p0
.end method

.method static synthetic n(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->b:I

    return p0
.end method

.method static synthetic o(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->f:I

    return p0
.end method

.method static synthetic p(Lcom/netease/cc/newlive/LiveConfig$Builder;)I
    .locals 0

    .line 299
    iget p0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->g:I

    return p0
.end method


# virtual methods
.method public build()Lcom/netease/cc/newlive/LiveConfig;
    .locals 2

    .line 441
    new-instance v0, Lcom/netease/cc/newlive/LiveConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/newlive/LiveConfig;-><init>(Lcom/netease/cc/newlive/LiveConfig$Builder;Lcom/netease/cc/newlive/LiveConfig$1;)V

    return-object v0
.end method

.method public matchVideoRatioWithScreen(Z)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 422
    iput-boolean p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->q:Z

    return-object p0
.end method

.method public muteAudio(Z)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->s:Z

    return-object p0
.end method

.method public withAutoReconnect(Z)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 427
    iput-boolean p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->r:Z

    return-object p0
.end method

.method public withFps(I)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 326
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->a:I

    return-object p0
.end method

.method public withInputSize(II)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 336
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->c:I

    .line 337
    iput p2, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->d:I

    return-object p0
.end method

.method public withInputSize(III)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 342
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->c:I

    .line 343
    iput p2, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->d:I

    .line 344
    iput p3, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->e:I

    return-object p0
.end method

.method public withLiveQuality(I)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 407
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->p:I

    return-object p0
.end method

.method public withMainRenderRect(Lcom/netease/cc/newlive/RenderRect;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->t:Lcom/netease/cc/newlive/RenderRect;

    return-object p0
.end method

.method public withMediaProjection(Landroid/media/projection/MediaProjection;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->l:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method public withMultiPushUrls(Ljava/util/List;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cc/newlive/LiveConfig$Builder;"
        }
    .end annotation

    .line 372
    invoke-static {p1}, Lcom/netease/cc/newlive/LiveConfig$Builder;->copyMultiPushUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->k:Ljava/util/List;

    return-object p0
.end method

.method public withOrientation(I)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 357
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->h:I

    return-object p0
.end method

.method public withPushUrl(Ljava/lang/String;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method public withSrc(Ljava/lang/String;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 397
    iget-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public withToken(Ljava/lang/String;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public withUid(J)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 392
    iput-wide p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->m:J

    return-object p0
.end method

.method public withUid(Ljava/lang/String;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 2

    .line 383
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 386
    iput-wide v0, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->m:J

    :goto_0
    return-object p0
.end method

.method public withUrs(Ljava/lang/String;)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public withVbr(I)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 331
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->b:I

    return-object p0
.end method

.method public withVideoInfo(IIII)Lcom/netease/cc/newlive/LiveConfig$Builder;
    .locals 0

    .line 349
    iput p1, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->f:I

    .line 350
    iput p2, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->g:I

    .line 351
    iput p3, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->a:I

    .line 352
    iput p4, p0, Lcom/netease/cc/newlive/LiveConfig$Builder;->b:I

    return-object p0
.end method
