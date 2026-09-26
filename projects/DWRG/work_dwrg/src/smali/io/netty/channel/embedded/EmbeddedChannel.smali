.class public Lio/netty/channel/embedded/EmbeddedChannel;
.super Lio/netty/channel/AbstractChannel;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;,
        Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/ChannelConfig;

.field private final inboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private lastException:Ljava/lang/Throwable;

.field private final localAddress:Ljava/net/SocketAddress;

.field private final loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

.field private final outboundMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteAddress:Ljava/net/SocketAddress;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/channel/embedded/EmbeddedChannel;->$assertionsDisabled:Z

    .line 47
    const-class v0, Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 49
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void

    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method

.method public varargs constructor <init>([Lio/netty/channel/ChannelHandler;)V
    .locals 9
    .param p1, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 66
    invoke-direct {p0, v8}, Lio/netty/channel/AbstractChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 51
    new-instance v3, Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-direct {v3}, Lio/netty/channel/embedded/EmbeddedEventLoop;-><init>()V

    iput-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    .line 52
    new-instance v3, Lio/netty/channel/DefaultChannelConfig;

    invoke-direct {v3, p0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    iput-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    .line 53
    new-instance v3, Lio/netty/channel/embedded/EmbeddedSocketAddress;

    invoke-direct {v3}, Lio/netty/channel/embedded/EmbeddedSocketAddress;-><init>()V

    iput-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->localAddress:Ljava/net/SocketAddress;

    .line 54
    new-instance v3, Lio/netty/channel/embedded/EmbeddedSocketAddress;

    invoke-direct {v3}, Lio/netty/channel/embedded/EmbeddedSocketAddress;-><init>()V

    iput-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->remoteAddress:Ljava/net/SocketAddress;

    .line 55
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    .line 56
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "handlers"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "nHandlers":I
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 74
    .local v2, "p":Lio/netty/channel/ChannelPipeline;
    array-length v5, p1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 82
    :cond_1
    if-nez v1, :cond_3

    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "handlers is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    :cond_2
    aget-object v0, p1, v3

    .line 75
    .local v0, "h":Lio/netty/channel/ChannelHandler;
    if-eqz v0, :cond_1

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    new-array v6, v7, [Lio/netty/channel/ChannelHandler;

    aput-object v0, v6, v4

    invoke-interface {v2, v6}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "h":Lio/netty/channel/ChannelHandler;
    :cond_3
    iget-object v3, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v3, p0}, Lio/netty/channel/embedded/EmbeddedEventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    .line 87
    new-array v3, v7, [Lio/netty/channel/ChannelHandler;

    new-instance v5, Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;

    invoke-direct {v5, p0, v8}, Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;)V

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lio/netty/channel/embedded/EmbeddedChannel;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1(Lio/netty/channel/embedded/EmbeddedChannel;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    return-void
.end method

.method private recordException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 242
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 243
    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 246
    const-string v1, "More than one exception was raised. Will report only the first one and log others."

    .line 245
    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkException()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    .line 256
    .local v0, "t":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->lastException:Ljava/lang/Throwable;

    .line 262
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->config:Lio/netty/channel/ChannelConfig;

    return-object v0
.end method

.method protected doBeginRead()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 313
    return-void
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:I

    .line 308
    return-void
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->doClose()V

    .line 303
    return-void
.end method

.method protected doRegister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:I

    .line 293
    return-void
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 2
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 323
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "msg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 332
    return-void

    .line 328
    :cond_0
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    goto :goto_0
.end method

.method protected final ensureOpen()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    .line 271
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 273
    :cond_0
    return-void
.end method

.method public finish()Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 225
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 226
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 227
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public inboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCompatible(Lio/netty/channel/EventLoop;)Z
    .locals 1
    .param p1, "loop"    # Lio/netty/channel/EventLoop;

    .prologue
    .line 277
    instance-of v0, p1, Lio/netty/channel/embedded/EmbeddedEventLoop;

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->state:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastInboundBuffer()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public lastOutboundBuffer()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->localAddress:Ljava/net/SocketAddress;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lio/netty/channel/embedded/EmbeddedChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;)V

    return-object v0
.end method

.method public outboundMessages()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    return-object v0
.end method

.method public readInbound()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readOutbound()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel;->remoteAddress:Ljava/net/SocketAddress;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPendingTasks()V
    .locals 2

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel;->loop:Lio/netty/channel/embedded/EmbeddedEventLoop;

    invoke-virtual {v1}, Lio/netty/channel/embedded/EmbeddedEventLoop;->runTasks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs writeInbound([Ljava/lang/Object;)Z
    .locals 6
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->ensureOpen()V

    .line 163
    array-length v4, p1

    if-nez v4, :cond_2

    .line 164
    iget-object v4, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 164
    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 168
    .local v1, "p":Lio/netty/channel/ChannelPipeline;
    array-length v5, p1

    move v4, v2

    :goto_1
    if-lt v4, v5, :cond_3

    .line 171
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 172
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 173
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 174
    iget-object v4, p0, Lio/netty/channel/embedded/EmbeddedChannel;->inboundMessages:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 168
    :cond_3
    aget-object v0, p1, v4

    .line 169
    .local v0, "m":Ljava/lang/Object;
    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public varargs writeOutbound([Ljava/lang/Object;)Z
    .locals 10
    .param p1, "msgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 184
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->ensureOpen()V

    .line 185
    array-length v7, p1

    if-nez v7, :cond_1

    .line 186
    iget-object v7, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    :goto_0
    return v5

    :cond_0
    move v5, v6

    .line 186
    goto :goto_0

    .line 189
    :cond_1
    array-length v7, p1

    invoke-static {v7}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v1

    .line 191
    .local v1, "futures":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    array-length v8, p1

    move v7, v5

    :goto_1
    if-lt v7, v8, :cond_3

    .line 198
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->flush()Lio/netty/channel/Channel;

    .line 200
    invoke-virtual {v1}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v4

    .line 201
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v4, :cond_4

    .line 209
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->runPendingTasks()V

    .line 210
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannel;->checkException()V

    .line 211
    iget-object v7, p0, Lio/netty/channel/embedded/EmbeddedChannel;->outboundMessages:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_7

    .line 213
    :goto_3
    invoke-virtual {v1}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_3
    :try_start_1
    aget-object v3, p1, v7

    .line 192
    .local v3, "m":Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {p0, v3}, Lio/netty/channel/embedded/EmbeddedChannel;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v9

    invoke-virtual {v1, v9}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "m":Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_4
    invoke-virtual {v1, v2}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFuture;

    .line 203
    .local v0, "future":Lio/netty/channel/ChannelFuture;
    sget-boolean v7, Lio/netty/channel/embedded/EmbeddedChannel;->$assertionsDisabled:Z

    if-nez v7, :cond_5

    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .end local v0    # "future":Lio/netty/channel/ChannelFuture;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    .line 213
    invoke-virtual {v1}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 214
    throw v5

    .line 204
    .restart local v0    # "future":Lio/netty/channel/ChannelFuture;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_5
    :try_start_2
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 205
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {p0, v7}, Lio/netty/channel/embedded/EmbeddedChannel;->recordException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "future":Lio/netty/channel/ChannelFuture;
    :cond_7
    move v5, v6

    .line 211
    goto :goto_3
.end method
