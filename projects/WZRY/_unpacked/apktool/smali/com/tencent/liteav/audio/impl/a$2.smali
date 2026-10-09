.class Lcom/tencent/liteav/audio/impl/a$2;
.super Ljava/lang/Object;
.source "TXCAudioRecorderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->g()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    sget v1, Lcom/tencent/liteav/audio/b;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->c(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 378
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 379
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    sget v1, Lcom/tencent/liteav/audio/b;->b:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 380
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    sget v1, Lcom/tencent/liteav/audio/b;->c:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 381
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    sget v1, Lcom/tencent/liteav/audio/b;->d:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->b(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 382
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    sget v1, Lcom/tencent/liteav/audio/b;->e:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 383
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Z)Z

    .line 384
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    sget v1, Lcom/tencent/liteav/audio/b;->f:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->g(Lcom/tencent/liteav/audio/impl/a;I)I

    .line 385
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->b(Lcom/tencent/liteav/audio/impl/a;Z)Z

    .line 386
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;F)F

    .line 387
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->c(Lcom/tencent/liteav/audio/impl/a;Z)Z

    .line 388
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;Z)Z

    .line 390
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->d(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/a/b;->a()V

    .line 392
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/a/b;)Lcom/tencent/liteav/audio/impl/a/b;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Encoder/a;->unInit()V

    .line 397
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Lcom/tencent/liteav/audio/impl/Encoder/a;)Lcom/tencent/liteav/audio/impl/Encoder/a;

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeDestoryRecordProcessor(J)V

    .line 402
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;J)J

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->g(Lcom/tencent/liteav/audio/impl/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Landroid/content/Context;)V

    .line 406
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v3}, Lcom/tencent/liteav/audio/impl/a;->b(Lcom/tencent/liteav/audio/impl/a;Landroid/content/Context;)Landroid/content/Context;

    .line 408
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->e(Lcom/tencent/liteav/audio/impl/a;Z)Z

    .line 409
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Landroid/os/Handler;)Landroid/os/Handler;

    .line 410
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->q(Lcom/tencent/liteav/audio/impl/a;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->q(Lcom/tencent/liteav/audio/impl/a;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 412
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v3}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    iget-object v1, v0, Lcom/tencent/liteav/audio/impl/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    iget-object v0, v0, Lcom/tencent/liteav/audio/impl/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$2;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/a;->f(Lcom/tencent/liteav/audio/impl/a;Z)Z

    .line 423
    return-void

    .line 421
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method
