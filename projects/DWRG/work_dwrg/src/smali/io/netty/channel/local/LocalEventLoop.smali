.class final Lio/netty/channel/local/LocalEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "LocalEventLoop.java"


# direct methods
.method constructor <init>(Lio/netty/channel/local/LocalEventLoopGroup;Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/local/LocalEventLoopGroup;
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;Z)V

    .line 26
    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .prologue
    .line 31
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/local/LocalEventLoop;->takeTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 32
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    invoke-virtual {p0}, Lio/netty/channel/local/LocalEventLoop;->updateLastExecutionTime()V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/local/LocalEventLoop;->confirmShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    return-void
.end method
