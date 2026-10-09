.class interface abstract Lcom/netease/glide/load/engine/EngineJobListener;
.super Ljava/lang/Object;
.source "EngineJobListener.java"


# virtual methods
.method public abstract onEngineJobCancelled(Lcom/netease/glide/load/engine/EngineJob;Lcom/netease/glide/load/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/netease/glide/load/Key;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onEngineJobComplete(Lcom/netease/glide/load/engine/EngineJob;Lcom/netease/glide/load/Key;Lcom/netease/glide/load/engine/EngineResource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/netease/glide/load/Key;",
            "Lcom/netease/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation
.end method
