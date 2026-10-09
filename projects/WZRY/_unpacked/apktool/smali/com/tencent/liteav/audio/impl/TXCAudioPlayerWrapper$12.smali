.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setAutoAdjustMinCache(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iput p2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    iget v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;->a:F

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetAutoAdjustMinCache(JF)V

    .line 144
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;->a:F

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$502(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)F

    .line 145
    return-void
.end method
