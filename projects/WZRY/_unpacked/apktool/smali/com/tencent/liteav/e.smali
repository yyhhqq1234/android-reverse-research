.class public Lcom/tencent/liteav/e;
.super Lcom/tencent/liteav/o;
.source "TXCLivePlayer.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/a;
.implements Lcom/tencent/liteav/h$a;
.implements Lcom/tencent/liteav/network/e;
.implements Lcom/tencent/liteav/renderer/b$a;
.implements Lcom/tencent/liteav/renderer/j;


# instance fields
.field private e:Lcom/tencent/liteav/h;

.field private f:Lcom/tencent/liteav/renderer/b;

.field private g:Lcom/tencent/liteav/network/TXCStreamDownloader;

.field private h:Landroid/os/Handler;

.field private i:Landroid/view/TextureView;

.field private j:Landroid/view/Surface;

.field private k:Z

.field private l:Z

.field private m:Lcom/tencent/liteav/d;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/tencent/liteav/o;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    .line 45
    iput-object v0, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    .line 46
    iput-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    .line 52
    iput-boolean v1, p0, Lcom/tencent/liteav/e;->k:Z

    .line 54
    iput-boolean v1, p0, Lcom/tencent/liteav/e;->l:Z

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/e;->n:Ljava/lang/String;

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    .line 482
    iput-boolean v1, p0, Lcom/tencent/liteav/e;->r:Z

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/e;->h:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/tencent/liteav/renderer/b;

    invoke-direct {v0}, Lcom/tencent/liteav/renderer/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    .line 91
    iget-object v0, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/b;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 92
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 463
    const-string v0, "%s-%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    iget-object v1, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/h;->setID(Ljava/lang/String;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    iget-object v1, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/b;->setID(Ljava/lang/String;)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setID(Ljava/lang/String;)V

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/d;->b(Ljava/lang/String;)V

    .line 480
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/e;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/tencent/liteav/e;->r:Z

    return v0
.end method

.method private b(Ljava/lang/String;I)I
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 416
    if-nez p2, :cond_1

    .line 417
    new-instance v2, Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v3, p0, Lcom/tencent/liteav/e;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v3, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setID(Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setListener(Lcom/tencent/liteav/network/e;)V

    .line 425
    iget-object v2, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V

    .line 426
    if-ne p2, v5, :cond_0

    move v0, v1

    .line 427
    :cond_0
    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, v5}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryTimes(I)V

    .line 429
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryInterval(I)V

    .line 434
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/e;->a:Lcom/tencent/liteav/g;

    iget-boolean v1, v1, Lcom/tencent/liteav/g;->i:Z

    iget-object v2, p0, Lcom/tencent/liteav/e;->a:Lcom/tencent/liteav/g;

    iget v2, v2, Lcom/tencent/liteav/g;->j:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->start(Ljava/lang/String;ZI)I

    move-result v0

    return v0

    .line 418
    :cond_1
    if-ne p2, v5, :cond_2

    .line 419
    new-instance v2, Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v3, p0, Lcom/tencent/liteav/e;->b:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v0, v4}, Lcom/tencent/liteav/network/TXCStreamDownloader;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    goto :goto_0

    .line 421
    :cond_2
    new-instance v2, Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v3, p0, Lcom/tencent/liteav/e;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    goto :goto_0

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/e;->a:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryTimes(I)V

    .line 432
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/e;->a:Lcom/tencent/liteav/g;

    iget v1, v1, Lcom/tencent/liteav/g;->e:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryInterval(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/liteav/e;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/liteav/e;->m()V

    return-void
.end method

.method private d(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    iget-object v2, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 394
    :cond_0
    new-instance v2, Lcom/tencent/liteav/h;

    iget-object v3, p0, Lcom/tencent/liteav/e;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/tencent/liteav/h;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    .line 395
    iget-object v2, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 396
    iget-object v2, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    iget-object v3, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/renderer/h;)V

    .line 397
    iget-object v2, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h$a;)V

    .line 398
    iget-object v2, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    iget-object v3, p0, Lcom/tencent/liteav/e;->a:Lcom/tencent/liteav/g;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/g;)V

    .line 399
    iget-object v2, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    iget-object v3, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/h;->setID(Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/tencent/liteav/h;->a(Z)V

    .line 401
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    iget-object v1, p0, Lcom/tencent/liteav/e;->j:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/h;->a(Landroid/view/Surface;)V

    .line 402
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    iget-boolean v1, p0, Lcom/tencent/liteav/e;->k:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/h;->b(Z)V

    .line 403
    return-void

    :cond_1
    move v0, v1

    .line 400
    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/h;->a()V

    .line 408
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/renderer/h;)V

    .line 409
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/h$a;)V

    .line 410
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 411
    iput-object v1, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    .line 413
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setListener(Lcom/tencent/liteav/network/e;)V

    .line 440
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V

    .line 441
    iget-object v0, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->stop()V

    .line 442
    iput-object v1, p0, Lcom/tencent/liteav/e;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    .line 444
    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 447
    new-instance v0, Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/liteav/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    .line 448
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/liteav/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/d;->a(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    iget v0, p0, Lcom/tencent/liteav/e;->o:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/d;->a(Z)V

    .line 450
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/d;->b(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/d;->a()V

    .line 452
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/d;->c()V

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    .line 459
    :cond_0
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/e;->r:Z

    .line 485
    iget-object v0, p0, Lcom/tencent/liteav/e;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/tencent/liteav/e;->h:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/e$1;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/e$1;-><init>(Lcom/tencent/liteav/e;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 495
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/e;->r:Z

    .line 499
    return-void
.end method

.method private m()V
    .locals 10

    .prologue
    .line 503
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->a()[I

    move-result-object v0

    .line 504
    const/4 v1, 0x0

    aget v1, v0, v1

    div-int/lit8 v1, v1, 0xa

    .line 505
    const/4 v2, 0x1

    aget v0, v0, v2

    div-int/lit8 v0, v0, 0xa

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    const/16 v2, 0x1bbe

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    const/16 v3, 0x1bbd

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v2

    .line 509
    iget-object v3, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    const/16 v4, 0x1bc6

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 510
    iget-object v4, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    const/16 v5, 0x1772

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->e(Ljava/lang/String;I)D

    move-result-wide v4

    double-to-int v4, v4

    .line 511
    iget-object v5, p0, Lcom/tencent/liteav/e;->q:Ljava/lang/String;

    const/16 v6, 0x1bcb

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v5

    .line 512
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 513
    iget-object v7, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    if-eqz v7, :cond_0

    .line 514
    const-string v7, "VIDEO_WIDTH"

    iget-object v8, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v8}, Lcom/tencent/liteav/renderer/b;->h()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    const-string v7, "VIDEO_HEIGHT"

    iget-object v8, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v8}, Lcom/tencent/liteav/renderer/b;->i()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    :cond_0
    iget-object v7, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v7, :cond_1

    .line 518
    const-string v7, "CODEC_CACHE"

    iget-object v8, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v8}, Lcom/tencent/liteav/h;->b()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    const-string v7, "CACHE_SIZE"

    iget-object v8, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v8}, Lcom/tencent/liteav/h;->c()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    :cond_1
    const-string v7, "NET_SPEED"

    add-int v8, v2, v1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 523
    const-string v7, "VIDEO_FPS"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    const-string v4, "VIDEO_GOP"

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    const-string v4, "VIDEO_BITRATE"

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    const-string v2, "AUDIO_BITRATE"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    const-string v1, "SERVER_IP"

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 528
    const-string v1, "CPU_USAGE"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/tencent/liteav/e;->d:Ljava/lang/ref/WeakReference;

    const/16 v1, 0x3a99

    invoke-static {v0, v1, v6}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    .line 533
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/h;->d()V

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lcom/tencent/liteav/e;->m:Lcom/tencent/liteav/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/d;->e()V

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/e;->h:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/liteav/e;->r:Z

    if-eqz v0, :cond_4

    .line 542
    iget-object v0, p0, Lcom/tencent/liteav/e;->h:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/e$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/e$2;-><init>(Lcom/tencent/liteav/e;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    :cond_4
    return-void
.end method


# virtual methods
.method public a(I[F)I
    .locals 0

    .prologue
    .line 633
    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 127
    iput-object p1, p0, Lcom/tencent/liteav/e;->n:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/tencent/liteav/e;->o:I

    .line 130
    invoke-direct {p0, p1}, Lcom/tencent/liteav/e;->a(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/e;->l:Z

    .line 134
    invoke-direct {p0, p2}, Lcom/tencent/liteav/e;->d(I)V

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/e;->b(Ljava/lang/String;I)I

    move-result v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/liteav/e;->l:Z

    .line 140
    invoke-direct {p0}, Lcom/tencent/liteav/e;->h()V

    .line 142
    invoke-direct {p0}, Lcom/tencent/liteav/e;->g()V

    .line 144
    iget-object v1, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/e;->i()V

    .line 151
    invoke-direct {p0}, Lcom/tencent/liteav/e;->k()V

    .line 153
    iget-object v1, p0, Lcom/tencent/liteav/e;->b:Landroid/content/Context;

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->aE:I

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public a(Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/tencent/liteav/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const-string v0, "TXCLivePlayer"

    const-string v1, "play: ignore stop play when not started"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, -0x2

    .line 179
    :goto_0
    return v0

    .line 165
    :cond_0
    const-string v1, "TXCLivePlayer"

    const-string v2, "play: stop"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-boolean v0, p0, Lcom/tencent/liteav/e;->l:Z

    .line 168
    invoke-direct {p0}, Lcom/tencent/liteav/e;->h()V

    .line 170
    invoke-direct {p0}, Lcom/tencent/liteav/e;->g()V

    .line 172
    iget-object v1, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/e;->j()V

    .line 178
    invoke-direct {p0}, Lcom/tencent/liteav/e;->l()V

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/e;->a(Z)I

    .line 184
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(I)V

    .line 222
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/tencent/liteav/e;->e()I

    .line 666
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tencent/liteav/e;->j:Landroid/view/Surface;

    .line 208
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Landroid/view/Surface;)V

    .line 211
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/f/a;)V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method public a(Lcom/tencent/liteav/g;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/liteav/g;)V

    .line 120
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/g;)V

    .line 123
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/p;)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/p;)V

    .line 296
    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tencent/liteav/e;->p:Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;

    .line 273
    return-void
.end method

.method public a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eq v0, p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/e;->c:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    iget-object v1, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/tencent/liteav/e;->f:Lcom/tencent/liteav/renderer/b;

    iget-object v1, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/b;->a(Landroid/view/TextureView;)V

    .line 115
    :cond_3
    return-void
.end method

.method public a([BJ)V
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/tencent/liteav/e;->p:Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/tencent/liteav/e;->p:Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;->onPcmDataAvailable([BJ)V

    .line 680
    :cond_0
    return-void
.end method

.method public a([B)Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a([B)Z

    move-result v0

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tencent/liteav/e;->n:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/liteav/e;->o:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/e;->a(Ljava/lang/String;I)I

    .line 188
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->b(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/tencent/liteav/e;->k:Z

    .line 244
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    iget-boolean v1, p0, Lcom/tencent/liteav/e;->k:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/h;->b(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 657
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/tencent/liteav/e;->l:Z

    return v0
.end method

.method public d()Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/liteav/e;->i:Landroid/view/TextureView;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/tencent/liteav/e;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/tencent/liteav/e;->h:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/liteav/e$3;-><init>(Lcom/tencent/liteav/e;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    :cond_0
    return-void
.end method

.method public onPullAudio(Lcom/tencent/liteav/basic/f/a;)V
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/tencent/liteav/e;->l:Z

    if-nez v0, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/basic/f/a;)V

    goto :goto_0
.end method

.method public onPullNAL(Lcom/tencent/liteav/basic/f/b;)V
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/tencent/liteav/e;->l:Z

    if-nez v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/tencent/liteav/e;->e:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/basic/f/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
