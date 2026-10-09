.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->onPlayPcmData([BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:J

.field final synthetic c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;[BJ)V
    .locals 1

    .prologue
    .line 484
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->a:[B

    iput-wide p3, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->a:[B

    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/e;->onPlayPcmData([BJ)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->a:[B

    sget v3, Lcom/tencent/liteav/basic/a/a;->n:I

    iget-wide v4, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->b:J

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativePlayProcess(J[BIJ)[B

    .line 489
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;->c:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetCacheSize(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$802(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J

    .line 490
    return-void
.end method
