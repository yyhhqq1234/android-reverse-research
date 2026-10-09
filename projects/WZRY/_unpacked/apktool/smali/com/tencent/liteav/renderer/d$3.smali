.class Lcom/tencent/liteav/renderer/d$3;
.super Ljava/lang/Object;
.source "TXCGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/d;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/liteav/renderer/d;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/d;Z)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/tencent/liteav/renderer/d$3;->b:Lcom/tencent/liteav/renderer/d;

    iput-boolean p2, p0, Lcom/tencent/liteav/renderer/d$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$3;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->b(Lcom/tencent/liteav/renderer/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$3;->b:Lcom/tencent/liteav/renderer/d;

    iget-boolean v2, p0, Lcom/tencent/liteav/renderer/d$3;->a:Z

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/renderer/d;->a(Z)V

    .line 324
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$3;->b:Lcom/tencent/liteav/renderer/d;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/d;->b(Lcom/tencent/liteav/renderer/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 325
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
