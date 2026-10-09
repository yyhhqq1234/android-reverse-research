.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;
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
    .line 528
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$2200(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeQueryData(J)[B

    .line 533
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetCacheSize(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$802(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 534
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$2000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    const/high16 v0, 0x41a80000    # 21.0f

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetPlaySpeed(J)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 536
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$2000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;->a:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v3, v3, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->traePlayAudioTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    :cond_0
    return-void
.end method
