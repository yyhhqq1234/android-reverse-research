.class Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/netease/glide/util/pool/FactoryPools$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/glide/load/engine/Engine$EngineJobFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/glide/util/pool/FactoryPools$Factory<",
        "Lcom/netease/glide/load/engine/EngineJob<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;


# direct methods
.method constructor <init>(Lcom/netease/glide/load/engine/Engine$EngineJobFactory;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/netease/glide/load/engine/EngineJob;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation

    .line 551
    new-instance v8, Lcom/netease/glide/load/engine/EngineJob;

    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    iget-object v1, v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->diskCacheExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    iget-object v2, v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->sourceExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    iget-object v3, v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->sourceUnlimitedExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    iget-object v4, v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->animationExecutor:Lcom/netease/glide/load/engine/executor/GlideExecutor;

    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    iget-object v5, v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->engineJobListener:Lcom/netease/glide/load/engine/EngineJobListener;

    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    iget-object v6, v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->resourceListener:Lcom/netease/glide/load/engine/EngineResource$ResourceListener;

    iget-object v0, p0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->this$0:Lcom/netease/glide/load/engine/Engine$EngineJobFactory;

    iget-object v7, v0, Lcom/netease/glide/load/engine/Engine$EngineJobFactory;->pool:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netease/glide/load/engine/EngineJob;-><init>(Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/executor/GlideExecutor;Lcom/netease/glide/load/engine/EngineJobListener;Lcom/netease/glide/load/engine/EngineResource$ResourceListener;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/netease/glide/load/engine/Engine$EngineJobFactory$1;->create()Lcom/netease/glide/load/engine/EngineJob;

    move-result-object v0

    return-object v0
.end method
