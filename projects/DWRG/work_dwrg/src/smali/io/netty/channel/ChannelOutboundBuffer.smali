.class public final Lio/netty/channel/ChannelOutboundBuffer;
.super Ljava/lang/Object;
.source "ChannelOutboundBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/ChannelOutboundBuffer$Entry;,
        Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal",
            "<[",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lio/netty/channel/ChannelOutboundBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lio/netty/channel/ChannelOutboundBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private flushed:I

.field private flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

.field private inFail:Z

.field private nioBufferCount:I

.field private nioBufferSize:J

.field private tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

.field private volatile totalPendingSize:J

.field private unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

.field private volatile writable:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    const-class v2, Lio/netty/channel/ChannelOutboundBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lio/netty/channel/ChannelOutboundBuffer;->$assertionsDisabled:Z

    .line 44
    const-class v2, Lio/netty/channel/ChannelOutboundBuffer;

    invoke-static {v2}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    sput-object v2, Lio/netty/channel/ChannelOutboundBuffer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 46
    new-instance v2, Lio/netty/channel/ChannelOutboundBuffer$1;

    invoke-direct {v2}, Lio/netty/channel/ChannelOutboundBuffer$1;-><init>()V

    sput-object v2, Lio/netty/channel/ChannelOutboundBuffer;->NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;

    .line 83
    const-class v2, Lio/netty/channel/ChannelOutboundBuffer;

    const-string v3, "writable"

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->newAtomicIntegerFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    .line 84
    .local v1, "writableUpdater":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<Lio/netty/channel/ChannelOutboundBuffer;>;"
    if-nez v1, :cond_0

    .line 85
    const-class v2, Lio/netty/channel/ChannelOutboundBuffer;

    const-string v3, "writable"

    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    .line 87
    :cond_0
    sput-object v1, Lio/netty/channel/ChannelOutboundBuffer;->WRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 90
    const-class v2, Lio/netty/channel/ChannelOutboundBuffer;

    const-string v3, "totalPendingSize"

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->newAtomicLongFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 91
    .local v0, "pendingSizeUpdater":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<Lio/netty/channel/ChannelOutboundBuffer;>;"
    if-nez v0, :cond_1

    .line 92
    const-class v2, Lio/netty/channel/ChannelOutboundBuffer;

    const-string v3, "totalPendingSize"

    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 94
    :cond_1
    sput-object v0, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 95
    return-void

    .line 42
    .end local v0    # "pendingSizeUpdater":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<Lio/netty/channel/ChannelOutboundBuffer;>;"
    .end local v1    # "writableUpdater":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<Lio/netty/channel/ChannelOutboundBuffer;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lio/netty/channel/AbstractChannel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/AbstractChannel;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->writable:I

    .line 98
    iput-object p1, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    .line 99
    return-void
.end method

.method private static expandNioBufferArray([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "array"    # [Ljava/nio/ByteBuffer;
    .param p1, "neededSpace"    # I
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 405
    array-length v1, p0

    .line 409
    .local v1, "newCapacity":I
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 411
    if-gez v1, :cond_1

    .line 412
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 406
    :cond_1
    if-gt p1, v1, :cond_0

    .line 417
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    .line 418
    .local v0, "newArray":[Ljava/nio/ByteBuffer;
    invoke-static {p0, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    return-object v0
.end method

.method private static fillBufferArray([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p0, "nioBufs"    # [Ljava/nio/ByteBuffer;
    .param p1, "nioBuffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "nioBufferCount"    # I

    .prologue
    .line 395
    array-length v3, p0

    const/4 v2, 0x0

    move v1, p2

    .end local p2    # "nioBufferCount":I
    .local v1, "nioBufferCount":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 401
    :cond_0
    return v1

    .line 395
    :cond_1
    aget-object v0, p0, v2

    .line 396
    .local v0, "nioBuf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 399
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "nioBufferCount":I
    .restart local p2    # "nioBufferCount":I
    aput-object v0, p1, v1

    .line 395
    add-int/lit8 v2, v2, 0x1

    move v1, p2

    .end local p2    # "nioBufferCount":I
    .restart local v1    # "nioBufferCount":I
    goto :goto_0
.end method

.method private isFlushedEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)Z
    .locals 1
    .param p1, "e"    # Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .prologue
    .line 569
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)V
    .locals 2
    .param p1, "e"    # Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .prologue
    const/4 v1, 0x0

    .line 289
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    if-nez v0, :cond_1

    .line 291
    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 292
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-ne p1, v0, :cond_0

    .line 293
    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 294
    iput-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    goto :goto_0
.end method

.method private static safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 529
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    sget-object v0, Lio/netty/channel/ChannelOutboundBuffer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    :cond_0
    return-void
.end method

.method private static safeSuccess(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 523
    instance-of v0, p0, Lio/netty/channel/VoidChannelPromise;

    if-nez v0, :cond_0

    invoke-interface {p0}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    sget-object v0, Lio/netty/channel/ChannelOutboundBuffer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to mark a promise as success because it is done already: {}"

    invoke-interface {v0, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    :cond_0
    return-void
.end method

.method private static total(Ljava/lang/Object;)J
    .locals 2
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 189
    instance-of v0, p0, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 190
    check-cast p0, Lio/netty/buffer/ByteBuf;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    .line 198
    :goto_0
    return-wide v0

    .line 192
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_1

    .line 193
    check-cast p0, Lio/netty/channel/FileRegion;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-interface {p0}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v0

    goto :goto_0

    .line 195
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_2

    .line 196
    check-cast p0, Lio/netty/buffer/ByteBufHolder;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-interface {p0}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 198
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addFlush()V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 134
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-eqz v0, :cond_2

    .line 135
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-nez v2, :cond_0

    .line 137
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 140
    :cond_0
    iget v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    .line 141
    iget-object v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v2}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancel()I

    move-result v1

    .line 144
    .local v1, "pending":I
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 146
    .end local v1    # "pending":I
    :cond_1
    iget-object v0, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 147
    if-nez v0, :cond_0

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 152
    :cond_2
    return-void
.end method

.method public addMessage(Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 106
    invoke-static {p1}, Lio/netty/channel/ChannelOutboundBuffer;->total(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3, p3}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->newInstance(Ljava/lang/Object;IJLio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelOutboundBuffer$Entry;

    move-result-object v0

    .line 107
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-nez v2, :cond_1

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 109
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 115
    :goto_0
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    if-nez v2, :cond_0

    .line 116
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 121
    :cond_0
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    .line 122
    return-void

    .line 111
    :cond_1
    iget-object v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 112
    .local v1, "tail":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    iput-object v0, v1, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 113
    iput-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->tailEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    goto :goto_0
.end method

.method close(Ljava/nio/channels/ClosedChannelException;)V
    .locals 7
    .param p1, "cause"    # Ljava/nio/channels/ClosedChannelException;

    .prologue
    const/4 v6, 0x0

    .line 483
    iget-boolean v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    new-instance v3, Lio/netty/channel/ChannelOutboundBuffer$2;

    invoke-direct {v3, p0, p1}, Lio/netty/channel/ChannelOutboundBuffer$2;-><init>(Lio/netty/channel/ChannelOutboundBuffer;Ljava/nio/channels/ClosedChannelException;)V

    invoke-interface {v2, v3}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 520
    :goto_0
    return-void

    .line 493
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 495
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "close() must be invoked after the channel is closed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 500
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "close() must be invoked after all flushed writes are handled."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 505
    :cond_2
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->unflushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .local v0, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :goto_1
    if-nez v0, :cond_3

    .line 518
    iput-boolean v6, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    goto :goto_0

    .line 508
    :cond_3
    :try_start_1
    iget v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    .line 509
    .local v1, "size":I
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-int v3, v1

    int-to-long v4, v3

    invoke-virtual {v2, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 511
    iget-boolean v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v2, :cond_4

    .line 512
    iget-object v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 513
    iget-object v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v2, p1}, Lio/netty/channel/ChannelOutboundBuffer;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 515
    :cond_4
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->recycleAndGetNext()Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 517
    .end local v0    # "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    .line 518
    iput-boolean v6, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 519
    throw v2
.end method

.method public current()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 206
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-nez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    goto :goto_0
.end method

.method decrementPendingOutboundBytes(J)V
    .locals 9
    .param p1, "size"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 176
    cmp-long v2, p1, v6

    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    neg-long v4, p1

    invoke-virtual {v2, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 181
    .local v0, "newWriteBufferSize":J
    cmp-long v2, v0, v6

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 182
    :cond_2
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->WRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;

    goto :goto_0
.end method

.method failFlushed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    if-eqz v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 473
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 478
    iput-boolean v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    .line 478
    iput-boolean v1, p0, Lio/netty/channel/ChannelOutboundBuffer;->inFail:Z

    .line 479
    throw v0
.end method

.method public forEachFlushedMessage(Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;)V
    .locals 3
    .param p1, "processor"    # Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "processor"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_0
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 554
    .local v0, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-nez v0, :cond_2

    .line 566
    :cond_1
    :goto_0
    return-void

    .line 559
    :cond_2
    iget-boolean v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v1, :cond_3

    .line 560
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;->processMessage(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    :cond_3
    iget-object v0, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 565
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOutboundBuffer;->isFlushedEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method incrementPendingOutboundBytes(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 159
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->TOTAL_PENDING_SIZE_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 164
    .local v0, "newWriteBufferSize":J
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 165
    sget-object v2, Lio/netty/channel/ChannelOutboundBuffer;->WRITABLE_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lio/netty/channel/ChannelOutboundBuffer;->channel:Lio/netty/channel/Channel;

    invoke-interface {v2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelPipeline;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWritable()Z
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->writable:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nioBufferCount()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferCount:I

    return v0
.end method

.method public nioBufferSize()J
    .locals 2

    .prologue
    .line 438
    iget-wide v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferSize:J

    return-wide v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 18

    .prologue
    .line 344
    const-wide/16 v10, 0x0

    .line 345
    .local v10, "nioBufferSize":J
    const/4 v7, 0x0

    .line 346
    .local v7, "nioBufferCount":I
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v15

    .line 347
    .local v15, "threadLocalMap":Lio/netty/util/internal/InternalThreadLocalMap;
    sget-object v16, Lio/netty/channel/ChannelOutboundBuffer;->NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lio/netty/util/concurrent/FastThreadLocal;->get(Lio/netty/util/internal/InternalThreadLocalMap;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/nio/ByteBuffer;

    .line 348
    .local v9, "nioBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 349
    .local v4, "entry":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lio/netty/channel/ChannelOutboundBuffer;->isFlushedEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)Z

    move-result v16

    if-eqz v16, :cond_0

    iget-object v0, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lio/netty/buffer/ByteBuf;

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iput v7, v0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferCount:I

    .line 389
    move-object/from16 v0, p0

    iput-wide v10, v0, Lio/netty/channel/ChannelOutboundBuffer;->nioBufferSize:J

    .line 391
    return-object v9

    .line 350
    :cond_1
    iget-boolean v0, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 351
    iget-object v2, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    check-cast v2, Lio/netty/buffer/ByteBuf;

    .line 352
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v14

    .line 353
    .local v14, "readerIndex":I
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v16

    sub-int v13, v16, v14

    .line 355
    .local v13, "readableBytes":I
    if-lez v13, :cond_5

    .line 356
    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v10, v10, v16

    .line 357
    iget v3, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->count:I

    .line 358
    .local v3, "count":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_2

    .line 360
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    iput v3, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->count:I

    .line 362
    :cond_2
    add-int v5, v7, v3

    .line 363
    .local v5, "neededSpace":I
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v5, v0, :cond_3

    .line 364
    invoke-static {v9, v5, v7}, Lio/netty/channel/ChannelOutboundBuffer;->expandNioBufferArray([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 365
    sget-object v16, Lio/netty/channel/ChannelOutboundBuffer;->NIO_BUFFERS:Lio/netty/util/concurrent/FastThreadLocal;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v9}, Lio/netty/util/concurrent/FastThreadLocal;->set(Lio/netty/util/internal/InternalThreadLocalMap;Ljava/lang/Object;)V

    .line 367
    :cond_3
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_6

    .line 368
    iget-object v6, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->buf:Ljava/nio/ByteBuffer;

    .line 369
    .local v6, "nioBuf":Ljava/nio/ByteBuffer;
    if-nez v6, :cond_4

    .line 372
    invoke-virtual {v2, v14, v13}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->buf:Ljava/nio/ByteBuffer;

    .line 374
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "nioBufferCount":I
    .local v8, "nioBufferCount":I
    aput-object v6, v9, v7

    move v7, v8

    .line 386
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "count":I
    .end local v5    # "neededSpace":I
    .end local v6    # "nioBuf":Ljava/nio/ByteBuffer;
    .end local v8    # "nioBufferCount":I
    .end local v13    # "readableBytes":I
    .end local v14    # "readerIndex":I
    .restart local v7    # "nioBufferCount":I
    :cond_5
    :goto_1
    iget-object v4, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->next:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    goto :goto_0

    .line 376
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "count":I
    .restart local v5    # "neededSpace":I
    .restart local v13    # "readableBytes":I
    .restart local v14    # "readerIndex":I
    :cond_6
    iget-object v12, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->bufs:[Ljava/nio/ByteBuffer;

    .line 377
    .local v12, "nioBufs":[Ljava/nio/ByteBuffer;
    if-nez v12, :cond_7

    .line 380
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    iput-object v12, v4, Lio/netty/channel/ChannelOutboundBuffer$Entry;->bufs:[Ljava/nio/ByteBuffer;

    .line 382
    :cond_7
    invoke-static {v12, v9, v7}, Lio/netty/channel/ChannelOutboundBuffer;->fillBufferArray([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;I)I

    move-result v7

    goto :goto_1
.end method

.method public progress(J)V
    .locals 7
    .param p1, "amount"    # J

    .prologue
    .line 217
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 218
    .local v0, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    sget-boolean v4, Lio/netty/channel/ChannelOutboundBuffer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 219
    :cond_0
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    .line 220
    .local v1, "p":Lio/netty/channel/ChannelPromise;
    instance-of v4, v1, Lio/netty/channel/ChannelProgressivePromise;

    if-eqz v4, :cond_1

    .line 221
    iget-wide v4, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->progress:J

    add-long v2, v4, p1

    .line 222
    .local v2, "progress":J
    iput-wide v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->progress:J

    .line 223
    check-cast v1, Lio/netty/channel/ChannelProgressivePromise;

    .end local v1    # "p":Lio/netty/channel/ChannelPromise;
    iget-wide v4, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->total:J

    invoke-interface {v1, v2, v3, v4, v5}, Lio/netty/channel/ChannelProgressivePromise;->tryProgress(JJ)Z

    .line 225
    .end local v2    # "progress":J
    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    return-void
.end method

.method public remove()Z
    .locals 6

    .prologue
    .line 233
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 234
    .local v0, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-nez v0, :cond_0

    .line 235
    const/4 v4, 0x0

    .line 254
    :goto_0
    return v4

    .line 237
    :cond_0
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    .line 239
    .local v1, "msg":Ljava/lang/Object;
    iget-object v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    .line 240
    .local v2, "promise":Lio/netty/channel/ChannelPromise;
    iget v3, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    .line 242
    .local v3, "size":I
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOutboundBuffer;->removeEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)V

    .line 244
    iget-boolean v4, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v4, :cond_1

    .line 246
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 247
    invoke-static {v2}, Lio/netty/channel/ChannelOutboundBuffer;->safeSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 248
    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 252
    :cond_1
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->recycle()V

    .line 254
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 263
    iget-object v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushedEntry:Lio/netty/channel/ChannelOutboundBuffer$Entry;

    .line 264
    .local v0, "e":Lio/netty/channel/ChannelOutboundBuffer$Entry;
    if-nez v0, :cond_0

    .line 265
    const/4 v4, 0x0

    .line 285
    :goto_0
    return v4

    .line 267
    :cond_0
    iget-object v1, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->msg:Ljava/lang/Object;

    .line 269
    .local v1, "msg":Ljava/lang/Object;
    iget-object v2, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->promise:Lio/netty/channel/ChannelPromise;

    .line 270
    .local v2, "promise":Lio/netty/channel/ChannelPromise;
    iget v3, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->pendingSize:I

    .line 272
    .local v3, "size":I
    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOutboundBuffer;->removeEntry(Lio/netty/channel/ChannelOutboundBuffer$Entry;)V

    .line 274
    iget-boolean v4, v0, Lio/netty/channel/ChannelOutboundBuffer$Entry;->cancelled:Z

    if-nez v4, :cond_1

    .line 276
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 278
    invoke-static {v2, p1}, Lio/netty/channel/ChannelOutboundBuffer;->safeFail(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 279
    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 283
    :cond_1
    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer$Entry;->recycle()V

    .line 285
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public removeBytes(J)V
    .locals 9
    .param p1, "writtenBytes"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 307
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v1

    .line 308
    .local v1, "msg":Ljava/lang/Object;
    instance-of v4, v1, Lio/netty/buffer/ByteBuf;

    if-nez v4, :cond_0

    .line 309
    sget-boolean v4, Lio/netty/channel/ChannelOutboundBuffer;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    cmp-long v4, p1, v6

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    move-object v0, v1

    .line 313
    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 314
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 315
    .local v3, "readerIndex":I
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    sub-int v2, v4, v3

    .line 317
    .local v2, "readableBytes":I
    int-to-long v4, v2

    cmp-long v4, v4, p1

    if-gtz v4, :cond_2

    .line 318
    cmp-long v4, p1, v6

    if-eqz v4, :cond_1

    .line 319
    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 320
    int-to-long v4, v2

    sub-long/2addr p1, v4

    .line 322
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0

    .line 324
    :cond_2
    cmp-long v4, p1, v6

    if-eqz v4, :cond_3

    .line 325
    long-to-int v4, p1

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 326
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 331
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v2    # "readableBytes":I
    .end local v3    # "readerIndex":I
    :cond_3
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->flushed:I

    return v0
.end method

.method public totalPendingWriteBytes()J
    .locals 2

    .prologue
    .line 540
    iget-wide v0, p0, Lio/netty/channel/ChannelOutboundBuffer;->totalPendingSize:J

    return-wide v0
.end method
