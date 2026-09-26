.class Lio/netty/util/concurrent/GlobalEventExecutor$1;
.super Ljava/lang/Object;
.source "GlobalEventExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/GlobalEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

.field private final synthetic val$task:Lio/netty/util/concurrent/ScheduledFutureTask;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/GlobalEventExecutor;Lio/netty/util/concurrent/ScheduledFutureTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$1;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iput-object p2, p0, Lio/netty/util/concurrent/GlobalEventExecutor$1;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lio/netty/util/concurrent/GlobalEventExecutor$1;->this$0:Lio/netty/util/concurrent/GlobalEventExecutor;

    iget-object v0, v0, Lio/netty/util/concurrent/GlobalEventExecutor;->delayedTaskQueue:Ljava/util/Queue;

    iget-object v1, p0, Lio/netty/util/concurrent/GlobalEventExecutor$1;->val$task:Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method
