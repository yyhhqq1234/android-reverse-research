.class final Lio/netty/util/concurrent/GlobalEventExecutor$PurgeTask;
.super Ljava/lang/Object;
.source "GlobalEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/GlobalEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PurgeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/GlobalEventExecutor;


# direct methods
.method private constructor <init>(Lio/netty/util/concurrent/GlobalEventExecutor;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$PurgeTask;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/concurrent/GlobalEventExecutor;Lio/netty/util/concurrent/GlobalEventExecutor$PurgeTask;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/GlobalEventExecutor$PurgeTask;-><init>(Lio/netty/util/concurrent/GlobalEventExecutor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 383
    iget-object v2, p0, Lio/netty/util/concurrent/GlobalEventExecutor$PurgeTask;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v2, v2, Lio/netty/util/concurrent/GlobalEventExecutor;->delayedTaskQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 384
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    return-void

    .line 385
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 386
    .local v1, "task":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    invoke-virtual {v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
