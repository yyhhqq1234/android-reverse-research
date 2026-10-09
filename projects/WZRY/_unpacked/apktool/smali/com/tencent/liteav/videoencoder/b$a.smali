.class Lcom/tencent/liteav/videoencoder/b$a;
.super Ljava/util/TimerTask;
.source "TXCVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoencoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/videoencoder/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 378
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b$a;->a:Ljava/lang/ref/WeakReference;

    .line 379
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 382
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoencoder/b;

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->g(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v1

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->h(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 386
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->a()[I

    move-result-object v1

    .line 387
    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->i(Lcom/tencent/liteav/videoencoder/b;)I

    .line 388
    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->j(Lcom/tencent/liteav/videoencoder/b;)F

    move-result v2

    const/4 v3, 0x0

    aget v3, v1, v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;F)F

    .line 389
    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->k(Lcom/tencent/liteav/videoencoder/b;)F

    move-result v2

    const/4 v3, 0x1

    aget v1, v1, v3

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->b(Lcom/tencent/liteav/videoencoder/b;F)F

    .line 390
    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->l(Lcom/tencent/liteav/videoencoder/b;)F

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/liteav/videoencoder/b;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;

    move-result-object v4

    iget v4, v4, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;F)F

    goto :goto_0

    .line 393
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->j(Lcom/tencent/liteav/videoencoder/b;)F

    move-result v2

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->h(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->k(Lcom/tencent/liteav/videoencoder/b;)F

    move-result v3

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->h(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->l(Lcom/tencent/liteav/videoencoder/b;)F

    move-result v4

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->h(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/liteav/basic/e/b;->a(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    invoke-static {}, Lcom/tencent/liteav/basic/e/b;->a()Lcom/tencent/liteav/basic/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/b;->c()I

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->m(Lcom/tencent/liteav/videoencoder/b;)V

    .line 397
    :cond_3
    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->n(Lcom/tencent/liteav/videoencoder/b;)V

    goto/16 :goto_0
.end method
