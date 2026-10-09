.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->stopPlay()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1400(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1400(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/b/a;->c()V

    .line 401
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1400(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/b/a;->a()V

    .line 402
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1402(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/b/a;)Lcom/tencent/liteav/audio/impl/b/a;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Decoder/b;->unInit()V

    .line 406
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/Decoder/b;)Lcom/tencent/liteav/audio/impl/Decoder/b;

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    sget v1, Lcom/tencent/liteav/audio/d;->v:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I

    .line 409
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeDestoryPlayProcessor(J)V

    .line 411
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 412
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$802(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$802(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 415
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/basic/f/a;)Lcom/tencent/liteav/basic/f/a;

    .line 416
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1800(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Landroid/content/Context;)V

    .line 418
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1502(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z

    .line 419
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$1902(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z

    .line 421
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$2002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Landroid/os/Handler;)Landroid/os/Handler;

    .line 422
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$2100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$2100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 424
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$2102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 426
    :cond_3
    return-void
.end method
