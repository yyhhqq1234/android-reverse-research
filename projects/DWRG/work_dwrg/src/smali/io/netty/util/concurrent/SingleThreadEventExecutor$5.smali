.class Lio/netty/util/concurrent/SingleThreadEventExecutor$5;
.super Ljava/lang/Object;
.source "SingleThreadEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/SingleThreadEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

.field private final synthetic val$task:Lio/netty/util/concurrent/ScheduledFutureTask;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/SingleThreadEventExecutor;Lio/netty/util/concurrent/ScheduledFutureTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$5;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    iput-object p2, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$5;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$5;->this$0:Lio/netty/util/concurrent/SingleThreadEventExecutor;

    iget-object v0, v0, Lio/netty/util/concurrent/SingleThreadEventExecutor;->delayedTaskQueue:Ljava/util/Queue;

    iget-object v1, p0, Lio/netty/util/concurrent/SingleThreadEventExecutor$5;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 840
    return-void
.end method
