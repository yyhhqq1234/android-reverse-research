.class public final Lio/netty/channel/PendingWriteQueue;
.super Ljava/lang/Object;
.source "PendingWriteQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/PendingWriteQueue$PendingWrite;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final buffer:Lio/netty/channel/ChannelOutboundBuffer;

.field private final ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

.field private head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

.field private size:I

.field private tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    .line 29
    const-class v0, Lio/netty/channel/PendingWriteQueue;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 45
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 46
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/MessageSizeEstimator;->newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 47
    return-void
.end method

.method private assertEmpty()V
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_0

    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 168
    :cond_1
    return-void
.end method

.method private recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V
    .locals 4
    .param p1, "write"    # Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .prologue
    .line 220
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$3(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v0

    .line 222
    .local v0, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    iget-object v1, p0, Lio/netty/channel/PendingWriteQueue;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$2(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 223
    invoke-static {p1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$6(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 224
    iget v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 225
    if-nez v0, :cond_0

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 228
    sget-boolean v1, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 230
    :cond_0
    iput-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 231
    sget-boolean v1, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget v1, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-gtz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 233
    :cond_1
    return-void
.end method

.method private static safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 236
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lio/netty/channel/PendingWriteQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 69
    sget-boolean v3, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "msg"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_1
    if-nez p2, :cond_2

    .line 74
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "promise"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_2
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    invoke-interface {v3, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result v1

    .line 77
    .local v1, "messageSize":I
    if-gez v1, :cond_3

    .line 79
    const/4 v1, 0x0

    .line 81
    :cond_3
    invoke-static {p1, v1, p2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->newInstance(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v2

    .line 82
    .local v2, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 83
    .local v0, "currentTail":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_4

    .line 84
    iput-object v2, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    iput-object v2, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 89
    :goto_0
    iget v3, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    .line 90
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-static {v2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$2(Lio/netty/channel/PendingWriteQueue$PendingWrite;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    .line 91
    return-void

    .line 86
    :cond_4
    invoke-static {v0, v2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$1(Lio/netty/channel/PendingWriteQueue$PendingWrite;Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 87
    iput-object v2, p0, Lio/netty/channel/PendingWriteQueue;->tail:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    goto :goto_0
.end method

.method public current()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 211
    sget-boolean v1, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 212
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 213
    .local v0, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v0, :cond_1

    .line 214
    const/4 v1, 0x0

    .line 216
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()Lio/netty/channel/ChannelPromise;
    .locals 3

    .prologue
    .line 196
    sget-boolean v2, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 197
    :cond_0
    iget-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 198
    .local v1, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v1, :cond_1

    .line 199
    const/4 v0, 0x0

    .line 204
    :goto_0
    return-object v0

    .line 201
    :cond_1
    invoke-static {v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 202
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    invoke-static {v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0, v1}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    goto :goto_0
.end method

.method public removeAndFail(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    sget-boolean v2, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 121
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "cause"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_1
    iget-object v1, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 124
    .local v1, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v1, :cond_2

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-static {v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 128
    invoke-static {v1}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 129
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    invoke-static {v0, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 130
    invoke-direct {p0, v1}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    goto :goto_0
.end method

.method public removeAndFailAll(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    sget-boolean v3, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 99
    :cond_0
    if-nez p1, :cond_1

    .line 100
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "cause"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_1
    iget-object v2, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 103
    .local v2, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    :goto_0
    if-nez v2, :cond_2

    .line 111
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    .line 112
    return-void

    .line 104
    :cond_2
    invoke-static {v2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$3(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v0

    .line 105
    .local v0, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {v2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 106
    invoke-static {v2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 107
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, v2}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 108
    invoke-static {v1, p1}, Lio/netty/channel/PendingWriteQueue;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 109
    move-object v2, v0

    goto :goto_0
.end method

.method public removeAndWrite()Lio/netty/channel/ChannelFuture;
    .locals 4

    .prologue
    .line 178
    sget-boolean v3, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 179
    :cond_0
    iget-object v2, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 180
    .local v2, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v2, :cond_1

    .line 181
    const/4 v3, 0x0

    .line 186
    :goto_0
    return-object v3

    .line 183
    :cond_1
    invoke-static {v2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "msg":Ljava/lang/Object;
    invoke-static {v2}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v1

    .line 185
    .local v1, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, v2}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 186
    iget-object v3, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3, v0, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    goto :goto_0
.end method

.method public removeAndWriteAll()Lio/netty/channel/ChannelFuture;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 141
    sget-boolean v6, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 142
    :cond_0
    iget-object v5, p0, Lio/netty/channel/PendingWriteQueue;->head:Lio/netty/channel/PendingWriteQueue$PendingWrite;

    .line 143
    .local v5, "write":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    if-nez v5, :cond_1

    .line 145
    const/4 v3, 0x0

    .line 163
    :goto_0
    return-object v3

    .line 147
    :cond_1
    iget v6, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    if-ne v6, v8, :cond_2

    .line 149
    invoke-virtual {p0}, Lio/netty/channel/PendingWriteQueue;->removeAndWrite()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    goto :goto_0

    .line 151
    :cond_2
    iget-object v6, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    .line 152
    .local v3, "p":Lio/netty/channel/ChannelPromise;
    new-instance v0, Lio/netty/channel/ChannelPromiseAggregator;

    invoke-direct {v0, v3}, Lio/netty/channel/ChannelPromiseAggregator;-><init>(Lio/netty/channel/ChannelPromise;)V

    .line 153
    .local v0, "aggregator":Lio/netty/channel/ChannelPromiseAggregator;
    :goto_1
    if-nez v5, :cond_3

    .line 162
    invoke-direct {p0}, Lio/netty/channel/PendingWriteQueue;->assertEmpty()V

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {v5}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$3(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/PendingWriteQueue$PendingWrite;

    move-result-object v2

    .line 155
    .local v2, "next":Lio/netty/channel/PendingWriteQueue$PendingWrite;
    invoke-static {v5}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$4(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Ljava/lang/Object;

    move-result-object v1

    .line 156
    .local v1, "msg":Ljava/lang/Object;
    invoke-static {v5}, Lio/netty/channel/PendingWriteQueue$PendingWrite;->access$5(Lio/netty/channel/PendingWriteQueue$PendingWrite;)Lio/netty/channel/ChannelPromise;

    move-result-object v4

    .line 157
    .local v4, "promise":Lio/netty/channel/ChannelPromise;
    invoke-direct {p0, v5}, Lio/netty/channel/PendingWriteQueue;->recycle(Lio/netty/channel/PendingWriteQueue$PendingWrite;)V

    .line 158
    iget-object v6, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v6, v1, v4}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 159
    new-array v6, v8, [Lio/netty/channel/ChannelPromise;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v6}, Lio/netty/channel/ChannelPromiseAggregator;->add([Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromiseAggregator;

    .line 160
    move-object v5, v2

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lio/netty/channel/PendingWriteQueue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/PendingWriteQueue;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    iget v0, p0, Lio/netty/channel/PendingWriteQueue;->size:I

    return v0
.end method
