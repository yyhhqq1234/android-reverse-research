.class Lcom/netease/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field final animationExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

.field final diskCacheExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

.field final engineJobListener:Lcom/netease/glide/load/engine/EngineJobListener;

.field final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/netease/glide/load/engine/EngineJob<",
            "*>;>;"
        }
    .end annotation
.end field

.field final resourceListener:Lcom/netease/glide/load/engine/EngineResource$ResourceListener;

.field final sourceExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

.field final sourceUnlimitedExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;


# direct methods
.method constructor <init>(Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/EngineJobListener;Lcom/netease/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 2

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    new-instance v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;

    invoke-direct {v0, p0}, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;-><init>(Lcom/netease/glide/load/engine/Engine$EngineJobFactory;)V

    const/16 v1, 0x96

    .line 546
    invoke-static {v1, v0}, Lcom/netease/glide/util/pool/FactoryPools;->threadSafe(ILcom/netease/glide/util/pool/FactoryPools$Factory;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    .line 569
    iput-object p1, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    .line 570
    iput-object p2, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    .line 571
    iput-object p3, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    .line 572
    iput-object p4, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    .line 573
    iput-object p5, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->engineJobListener:Lcom/netease/glide/load/engine/EngineJobListener;

    .line 574
    iput-object p6, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->resourceListener:Lcom/netease/glide/load/engine/EngineResource$ResourceListener;

    return-void
.end method


# virtual methods
.method build(Lcom/netease/glide/load/Key;ZZZZ)Lcom/netease/glide/load/engine/EngineJob;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/glide/load/Key;",
            "ZZZZ)",
            "Lcom/netease/glide/load/engine/EngineJob<",
            "TR;>;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/glide/load/engine/EngineJob;

    invoke-static {v0}, Lcom/netease/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netease/glide/load/engine/EngineJob;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 593
    invoke-virtual/range {v1 .. v6}, Lcom/netease/glide/load/engine/EngineJob;->init(Lcom/netease/glide/load/Key;ZZZZ)Lcom/netease/glide/load/engine/EngineJob;

    move-result-object p1

    return-object p1
.end method

.method shutdown()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/netease/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 580
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/netease/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 581
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/netease/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    .line 582
    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    invoke-static {v0}, Lcom/netease/glide/util/Executors;->shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
