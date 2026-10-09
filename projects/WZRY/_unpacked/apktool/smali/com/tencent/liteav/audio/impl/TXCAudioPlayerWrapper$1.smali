.class Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$1;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setListener(Lcom/tencent/liteav/audio/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/e;

.field final synthetic b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/e;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$1;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$1;->a:Lcom/tencent/liteav/audio/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$1;->b:Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$1;->a:Lcom/tencent/liteav/audio/e;

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->access$002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/e;)Lcom/tencent/liteav/audio/e;

    .line 72
    return-void
.end method
