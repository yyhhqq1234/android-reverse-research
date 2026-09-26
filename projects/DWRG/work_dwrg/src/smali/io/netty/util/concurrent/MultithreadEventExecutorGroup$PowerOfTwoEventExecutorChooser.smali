.class final Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;
.super Ljava/lang/Object;
.source "MultithreadEventExecutorGroup.java"

# interfaces
.implements Lio/netty/util/concurrent/MultithreadEventExecutorGroup$EventExecutorChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/MultithreadEventExecutorGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerOfTwoEventExecutorChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;


# direct methods
.method private constructor <init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;-><init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)V

    return-void
.end method


# virtual methods
.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$0(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)[Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    iget-object v1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {v1}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$1(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;->this$0:Lio/netty/util/concurrent/MultithreadEventExecutorGroup;

    invoke-static {v2}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->access$0(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)[Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method
