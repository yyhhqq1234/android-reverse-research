.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->playData(Lcom/tencent/liteav/basic/f/a;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/f/a;

.field final synthetic b:Lcom/tencent/liteav/audio/e;

.field final synthetic c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/basic/f/a;Lcom/tencent/liteav/audio/e;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->b:Lcom/tencent/liteav/audio/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 312
    .line 313
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    if-ne v0, v1, :cond_b

    const/4 v4, 0x1

    .line 314
    :goto_0
    sget v0, Lcom/tencent/liteav/basic/a/a;->k:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v1, v1, Lcom/tencent/liteav/basic/f/a;->d:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/liteav/basic/a/a;->l:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v1, v1, Lcom/tencent/liteav/basic/f/a;->d:I

    if-ne v0, v1, :cond_5

    .line 315
    :cond_0
    sget v0, Lcom/tencent/liteav/basic/a/a;->k:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v1, v1, Lcom/tencent/liteav/basic/f/a;->d:I

    if-ne v0, v1, :cond_2

    .line 316
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    sget v1, Lcom/tencent/liteav/audio/d;->y:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I

    .line 317
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v3

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativePlayPorcessorInit(JLandroid/content/Context;IZZ)V

    .line 318
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->b:Lcom/tencent/liteav/audio/e;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/Decoder/b;->init(ILjava/lang/ref/WeakReference;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/basic/f/a;)Lcom/tencent/liteav/basic/f/a;

    .line 341
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 342
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget-object v2, v2, Lcom/tencent/liteav/basic/f/a;->f:[B

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v3, v3, Lcom/tencent/liteav/basic/f/a;->d:I

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget-wide v4, v4, Lcom/tencent/liteav/basic/f/a;->e:J

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativePlayProcess(J[BIJ)[B

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetCacheSize(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$802(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 344
    if-eqz v0, :cond_3

    .line 345
    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b;->a([B)I

    move-result v1

    .line 346
    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/b;->a([B)I

    move-result v2

    .line 347
    const/16 v3, 0x9

    invoke-static {v0, v8, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    aget-byte v0, v0, v6

    .line 348
    new-instance v3, Lcom/tencent/liteav/basic/f/a;

    invoke-direct {v3}, Lcom/tencent/liteav/basic/f/a;-><init>()V

    .line 349
    iput v1, v3, Lcom/tencent/liteav/basic/f/a;->a:I

    .line 350
    iput v2, v3, Lcom/tencent/liteav/basic/f/a;->b:I

    .line 351
    iput v0, v3, Lcom/tencent/liteav/basic/f/a;->c:I

    .line 352
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V

    .line 358
    :cond_3
    :goto_2
    sget v0, Lcom/tencent/liteav/basic/a/a;->m:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v1, v1, Lcom/tencent/liteav/basic/f/a;->d:I

    if-ne v0, v1, :cond_4

    .line 359
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->v:I

    if-ne v0, v1, :cond_4

    .line 360
    new-instance v0, Lcom/tencent/liteav/basic/f/a;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/f/a;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetPlaySamplerate(J)I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->a:I

    .line 362
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetPlayChannel(J)I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->b:I

    .line 363
    sget v1, Lcom/tencent/liteav/audio/b;->c:I

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->c:I

    .line 364
    sget v1, Lcom/tencent/liteav/basic/a/a;->m:I

    iput v1, v0, Lcom/tencent/liteav/basic/f/a;->d:I

    .line 365
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V

    .line 366
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    sget v1, Lcom/tencent/liteav/audio/d;->x:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I

    .line 369
    :cond_4
    :goto_3
    return-void

    .line 323
    :cond_5
    sget v0, Lcom/tencent/liteav/basic/a/a;->n:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v1, v1, Lcom/tencent/liteav/basic/f/a;->d:I

    if-ne v0, v1, :cond_6

    .line 324
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->v:I

    if-ne v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    sget v1, Lcom/tencent/liteav/audio/d;->w:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I

    .line 326
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v3

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativePlayPorcessorInit(JLandroid/content/Context;IZZ)V

    .line 327
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V

    goto/16 :goto_1

    .line 329
    :cond_6
    sget v0, Lcom/tencent/liteav/basic/a/a;->m:I

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v1, v1, Lcom/tencent/liteav/basic/f/a;->d:I

    if-ne v0, v1, :cond_9

    .line 330
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->v:I

    if-ne v0, v1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I

    move-result v0

    sget v1, Lcom/tencent/liteav/audio/d;->B:I

    if-ne v0, v1, :cond_8

    .line 332
    :cond_7
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    sget v1, Lcom/tencent/liteav/audio/d;->x:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I

    goto :goto_3

    .line 335
    :cond_8
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tencent/liteav/audio/d;->x:I

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v5}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativePlayPorcessorInit(JLandroid/content/Context;IZZ)V

    goto/16 :goto_1

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    sget v1, Lcom/tencent/liteav/audio/d;->g:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e0d\u652f\u6301\u7684\u97f3\u9891\u5305\u683c\u5f0f : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    iget v3, v3, Lcom/tencent/liteav/basic/f/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->onPlayError(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 355
    :cond_a
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;->a:Lcom/tencent/liteav/basic/f/a;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/audio/impl/Decoder/b;->doDecodec(Lcom/tencent/liteav/basic/f/a;)V

    goto/16 :goto_2

    :cond_b
    move v4, v6

    goto/16 :goto_0
.end method
