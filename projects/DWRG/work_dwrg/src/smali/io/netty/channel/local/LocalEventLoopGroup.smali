.class public Lio/netty/channel/local/LocalEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "LocalEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/local/LocalEventLoopGroup;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "nThreads"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/local/LocalEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected varargs newChild(Ljava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lio/netty/channel/local/LocalEventLoop;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/local/LocalEventLoop;-><init>(Lio/netty/channel/local/LocalEventLoopGroup;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
