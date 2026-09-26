.class public Lio/netty/handler/ssl/SslHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SslHandler.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/SslHandler$8;,
        Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CHANNEL_CLOSED:Ljava/nio/channels/ClosedChannelException;

.field private static final HANDSHAKE_TIMED_OUT:Ljavax/net/ssl/SSLException;

.field private static final IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

.field private static final SSLENGINE_CLOSED:Ljavax/net/ssl/SSLException;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile closeNotifyTimeoutMillis:J

.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final delegatedTaskExecutor:Ljava/util/concurrent/Executor;

.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private flushedBeforeHandshakeDone:Z

.field private final handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

.field private volatile handshakeTimeoutMillis:J

.field private final maxPacketBufferSize:I

.field private needsFlush:Z

.field private packetLength:I

.field private pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

.field private sentFirstMessage:Z

.field private final sslCloseFuture:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

.field private final startTls:Z

.field private final wantsDirectBuffer:Z

.field private wantsInboundHeapBuffer:Z

.field private final wantsLargeOutboundNetworkBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 157
    const-class v0, Lio/netty/handler/ssl/SslHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    .line 159
    const-class v0, Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 162
    const-string v0, "^.*(?:Socket|Datagram|Sctp|Udt)Channel.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    .line 164
    const-string v0, "^.*(?:connection.*(?:reset|closed|abort|broken)|broken.*pipe).*$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    .line 167
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "SSLEngine closed already"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->SSLENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    .line 168
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "handshake timed out"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->HANDSHAKE_TIMED_OUT:Ljavax/net/ssl/SSLException;

    .line 169
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/SslHandler;->CHANNEL_CLOSED:Ljava/nio/channels/ClosedChannelException;

    .line 172
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->SSLENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 173
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->HANDSHAKE_TIMED_OUT:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 174
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->CHANNEL_CLOSED:Ljava/nio/channels/ClosedChannelException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/nio/channels/ClosedChannelException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 175
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    .line 231
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;Z)V
    .locals 1
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z

    .prologue
    .line 242
    sget-object v0, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLEngine;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "startTls"    # Z
    .param p3, "delegatedTaskExecutor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 210
    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    .line 211
    new-instance v0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslCloseFuture:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    .line 221
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 222
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyTimeoutMillis:J

    .line 258
    if-nez p1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "engine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    if-nez p3, :cond_1

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegatedTaskExecutor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    .line 265
    iput-object p3, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    .line 266
    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    .line 267
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/SslHandler;->maxPacketBufferSize:I

    .line 269
    instance-of v0, p1, Lio/netty/handler/ssl/OpenSslEngine;

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->wantsDirectBuffer:Z

    .line 270
    instance-of v0, p1, Lio/netty/handler/ssl/OpenSslEngine;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->wantsLargeOutboundNetworkBuffer:Z

    .line 271
    return-void

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .prologue
    .line 157
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method static synthetic access$200()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .prologue
    .line 157
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/ssl/SslHandler;)Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;

    .prologue
    .line 157
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method static synthetic access$500()Ljavax/net/ssl/SSLException;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->HANDSHAKE_TIMED_OUT:Ljavax/net/ssl/SSLException;

    return-object v0
.end method

.method static synthetic access$600(Lio/netty/handler/ssl/SslHandler;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->notifyHandshakeFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method private allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "capacity"    # I

    .prologue
    .line 1261
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    .line 1262
    .local v0, "alloc":Lio/netty/buffer/ByteBufAllocator;
    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->wantsDirectBuffer:Z

    if-eqz v1, :cond_0

    .line 1263
    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 1265
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0
.end method

.method private allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "pendingBytes"    # I

    .prologue
    .line 1274
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->wantsLargeOutboundNetworkBuffer:Z

    if-eqz v0, :cond_0

    .line 1275
    iget v0, p0, Lio/netty/handler/ssl/SslHandler;->maxPacketBufferSize:I

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    :cond_0
    add-int/lit16 v0, p2, 0x919

    iget v1, p0, Lio/netty/handler/ssl/SslHandler;->maxPacketBufferSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method private closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "disconnect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1130
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1131
    if-eqz p3, :cond_0

    .line 1132
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 1145
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 1139
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 1141
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 1142
    .local v0, "closeNotifyFuture":Lio/netty/channel/ChannelPromise;
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/handler/ssl/SslHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 1143
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 1144
    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/ssl/SslHandler;->safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;Z)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p4, "inUnwrap"    # Z

    .prologue
    .line 502
    if-nez p2, :cond_2

    .line 503
    sget-object p2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 509
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 510
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 515
    :goto_1
    if-eqz p4, :cond_1

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    .line 518
    :cond_1
    return-void

    .line 504
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 506
    sget-object p2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 512
    :cond_3
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    goto :goto_1
.end method

.method private static getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I
    .locals 8
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 729
    const/4 v2, 0x0

    .line 733
    .local v2, "packetLength":I
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 742
    const/4 v4, 0x0

    .line 745
    .local v4, "tls":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 747
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v1

    .line 748
    .local v1, "majorVersion":I
    if-ne v1, v6, :cond_3

    .line 750
    add-int/lit8 v7, p1, 0x3

    invoke-virtual {p0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x5

    .line 751
    const/4 v7, 0x5

    if-gt v2, v7, :cond_0

    .line 753
    const/4 v4, 0x0

    .line 761
    .end local v1    # "majorVersion":I
    :cond_0
    :goto_1
    if-nez v4, :cond_7

    .line 763
    const/4 v3, 0x1

    .line 764
    .local v3, "sslv2":Z
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    move v0, v5

    .line 765
    .local v0, "headerLength":I
    :goto_2
    add-int v7, p1, v0

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v1

    .line 766
    .restart local v1    # "majorVersion":I
    if-eq v1, v5, :cond_1

    if-ne v1, v6, :cond_6

    .line 768
    :cond_1
    if-ne v0, v5, :cond_5

    .line 769
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v5

    and-int/lit16 v5, v5, 0x7fff

    add-int/lit8 v2, v5, 0x2

    .line 773
    :goto_3
    if-gt v2, v0, :cond_2

    .line 774
    const/4 v3, 0x0

    .line 780
    :cond_2
    :goto_4
    if-nez v3, :cond_7

    .line 781
    const/4 v5, -0x1

    .line 784
    .end local v0    # "headerLength":I
    .end local v1    # "majorVersion":I
    .end local v3    # "sslv2":Z
    :goto_5
    return v5

    .line 738
    .end local v4    # "tls":Z
    :pswitch_0
    const/4 v4, 0x1

    .line 739
    .restart local v4    # "tls":Z
    goto :goto_0

    .line 757
    .restart local v1    # "majorVersion":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .end local v1    # "majorVersion":I
    .restart local v3    # "sslv2":Z
    :cond_4
    move v0, v6

    .line 764
    goto :goto_2

    .line 771
    .restart local v0    # "headerLength":I
    .restart local v1    # "majorVersion":I
    :cond_5
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v5

    and-int/lit16 v5, v5, 0x3fff

    add-int/lit8 v2, v5, 0x3

    goto :goto_3

    .line 777
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .end local v0    # "headerLength":I
    .end local v1    # "majorVersion":I
    .end local v3    # "sslv2":Z
    :cond_7
    move v5, v2

    .line 784
    goto :goto_5

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handshake()Lio/netty/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    iget-wide v2, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1165
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    new-instance v3, Lio/netty/handler/ssl/SslHandler$3;

    invoke-direct {v3, p0}, Lio/netty/handler/ssl/SslHandler$3;-><init>(Lio/netty/handler/ssl/SslHandler;)V

    iget-wide v4, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 1178
    .local v1, "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :goto_0
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    new-instance v3, Lio/netty/handler/ssl/SslHandler$4;

    invoke-direct {v3, p0, v1}, Lio/netty/handler/ssl/SslHandler$4;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;)V

    invoke-virtual {v2, v3}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 1187
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 1188
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 1189
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :goto_1
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v2

    .line 1175
    .end local v1    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_0

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->notifyHandshakeFailure(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private ignoreException(Ljava/lang/Throwable;)Z
    .locals 12
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v9, 0x1

    .line 640
    instance-of v10, p1, Ljavax/net/ssl/SSLException;

    if-nez v10, :cond_4

    instance-of v10, p1, Ljava/io/IOException;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lio/netty/handler/ssl/SslHandler;->sslCloseFuture:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v10}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 641
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 645
    .local v7, "message":Ljava/lang/String;
    sget-object v10, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_ERROR_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 693
    .end local v7    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return v9

    .line 650
    .restart local v7    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 651
    .local v4, "elements":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, v0, v5

    .line 652
    .local v3, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "classname":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    .line 656
    .local v8, "methodname":Ljava/lang/String;
    const-string v10, "io.netty."

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 651
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 661
    :cond_3
    const-string v10, "read"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 667
    sget-object v10, Lio/netty/handler/ssl/SslHandler;->IGNORABLE_CLASS_IN_STACK:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_0

    .line 675
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 677
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v10, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    const-class v10, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v10, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 683
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v10

    const/4 v11, 0x7

    if-lt v10, v11, :cond_2

    const-string v10, "com.sun.nio.sctp.SctpChannel"

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    .line 693
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v1    # "classname":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "element":Ljava/lang/StackTraceElement;
    .end local v4    # "elements":[Ljava/lang/StackTraceElement;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "methodname":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 687
    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .restart local v1    # "classname":Ljava/lang/String;
    .restart local v3    # "element":Ljava/lang/StackTraceElement;
    .restart local v4    # "elements":[Ljava/lang/StackTraceElement;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "methodname":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method public static isEncrypted(Lio/netty/buffer/ByteBuf;)Z
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 709
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer must have at least 5 readable bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p0, v0}, Lio/netty/handler/ssl/SslHandler;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyHandshakeFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1122
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v1, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-direct {v1, p1}, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1124
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 1126
    :cond_0
    return-void
.end method

.method private runDelegatedTasks()V
    .locals 10

    .prologue
    .line 1008
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    sget-object v6, Lio/netty/util/concurrent/ImmediateExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateExecutor;

    if-ne v5, v6, :cond_2

    .line 1010
    :goto_0
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v3

    .line 1011
    .local v3, "task":Ljava/lang/Runnable;
    if-nez v3, :cond_1

    .line 1062
    :cond_0
    :goto_1
    return-void

    .line 1015
    :cond_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1018
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1020
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_2
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v3

    .line 1021
    .restart local v3    # "task":Ljava/lang/Runnable;
    if-nez v3, :cond_3

    .line 1028
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1032
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1033
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lio/netty/handler/ssl/SslHandler;->delegatedTaskExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lio/netty/handler/ssl/SslHandler$2;

    invoke-direct {v6, p0, v4, v2}, Lio/netty/handler/ssl/SslHandler$2;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1048
    const/4 v1, 0x0

    .line 1049
    .local v1, "interrupted":Z
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 1051
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1052
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 1055
    goto :goto_3

    .line 1025
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "interrupted":Z
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_3
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1058
    .restart local v1    # "interrupted":Z
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    if-eqz v1, :cond_0

    .line 1059
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method private safeClose(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "flushFuture"    # Lio/netty/channel/ChannelFuture;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 1220
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1221
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 1254
    :goto_0
    return-void

    .line 1226
    :cond_0
    iget-wide v2, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyTimeoutMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1228
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ssl/SslHandler$6;

    invoke-direct {v2, p0, p1, p3}, Lio/netty/handler/ssl/SslHandler$6;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    iget-wide v4, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyTimeoutMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 1242
    .local v0, "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :goto_1
    new-instance v1, Lio/netty/handler/ssl/SslHandler$7;

    invoke-direct {v1, p0, v0, p1, p3}, Lio/netty/handler/ssl/SslHandler$7;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/util/concurrent/ScheduledFuture;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {p2, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 1238
    .end local v0    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "timeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    goto :goto_1
.end method

.method private setHandshakeFailure(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1103
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 1106
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->notifyHandshakeFailure(Ljava/lang/Throwable;)V

    .line 1118
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v2, p1}, Lio/netty/channel/PendingWriteQueue;->removeAndFailAll(Ljava/lang/Throwable;)V

    .line 1119
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, "msg":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "possible truncation attack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1114
    :cond_1
    sget-object v2, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "SSLEngine.closeInbound() raised an exception."

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setHandshakeSuccess()V
    .locals 4

    .prologue
    .line 1084
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "cipherSuite":Ljava/lang/String;
    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->wantsDirectBuffer:Z

    if-nez v1, :cond_1

    const-string v1, "_GCM_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-GCM-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1086
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/ssl/SslHandler;->wantsInboundHeapBuffer:Z

    .line 1089
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->trySuccess(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1090
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1091
    sget-object v1, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v3}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HANDSHAKEN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1093
    :cond_2
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v2, Lio/netty/handler/ssl/SslHandshakeCompletionEvent;->SUCCESS:Lio/netty/handler/ssl/SslHandshakeCompletionEvent;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 1095
    :cond_3
    return-void
.end method

.method private setHandshakeSuccessIfStillHandshaking()Z
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    .line 1074
    const/4 v0, 0x1

    .line 1076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static unwrap(Ljavax/net/ssl/SSLEngine;Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 979
    const/4 v2, 0x0

    .line 981
    .local v2, "overflows":I
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 982
    .local v1, "out0":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, v1}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4

    .line 983
    .local v4, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 984
    sget-object v5, Lio/netty/handler/ssl/SslHandler$8;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 996
    return-object v4

    .line 986
    :pswitch_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 987
    .local v0, "max":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "overflows":I
    .local v3, "overflows":I
    packed-switch v2, :pswitch_data_1

    .line 992
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    :goto_1
    move v2, v3

    .line 998
    .end local v3    # "overflows":I
    .restart local v2    # "overflows":I
    goto :goto_0

    .line 989
    .end local v2    # "overflows":I
    .restart local v3    # "overflows":I
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 987
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private unwrap(Lio/netty/channel/ChannelHandlerContext;Ljava/nio/ByteBuffer;I)V
    .locals 17
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "packet"    # Ljava/nio/ByteBuffer;
    .param p3, "initialOutAppBufCapacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 894
    .local v9, "oldPos":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lio/netty/handler/ssl/SslHandler;->wantsInboundHeapBuffer:Z

    if-eqz v14, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 895
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    sub-int/2addr v15, v9

    invoke-interface {v14, v15}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 896
    .local v7, "newPacket":Lio/netty/buffer/ByteBuf;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 897
    move-object/from16 v8, p2

    .line 898
    .local v8, "oldPacket":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 904
    :goto_0
    const/4 v13, 0x0

    .line 905
    .local v13, "wrapLater":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler;->allocate(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 908
    .local v4, "decodeOut":Lio/netty/buffer/ByteBuf;
    :cond_0
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    move-object/from16 v0, p2

    invoke-static {v14, v0, v4}, Lio/netty/handler/ssl/SslHandler;->unwrap(Ljavax/net/ssl/SSLEngine;Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11

    .line 909
    .local v11, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v12

    .line 910
    .local v12, "status":Ljavax/net/ssl/SSLEngineResult$Status;
    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 911
    .local v6, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v10

    .line 912
    .local v10, "produced":I
    invoke-virtual {v11}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v3

    .line 914
    .local v3, "consumed":I
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v12, v14, :cond_5

    .line 916
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/netty/handler/ssl/SslHandler;->sslCloseFuture:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->trySuccess(Ljava/lang/Object;)Z

    .line 956
    :cond_1
    :goto_2
    if-eqz v13, :cond_2

    .line 957
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    :cond_2
    if-eqz v7, :cond_3

    .line 966
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v8, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 967
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 970
    :cond_3
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 971
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 976
    :goto_3
    return-void

    .line 900
    .end local v3    # "consumed":I
    .end local v4    # "decodeOut":Lio/netty/buffer/ByteBuf;
    .end local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v7    # "newPacket":Lio/netty/buffer/ByteBuf;
    .end local v8    # "oldPacket":Ljava/nio/ByteBuffer;
    .end local v10    # "produced":I
    .end local v11    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v12    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .end local v13    # "wrapLater":Z
    :cond_4
    const/4 v8, 0x0

    .line 901
    .restart local v8    # "oldPacket":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .restart local v7    # "newPacket":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 920
    .restart local v3    # "consumed":I
    .restart local v4    # "decodeOut":Lio/netty/buffer/ByteBuf;
    .restart local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v10    # "produced":I
    .restart local v11    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v12    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    .restart local v13    # "wrapLater":Z
    :cond_5
    :try_start_1
    sget-object v14, Lio/netty/handler/ssl/SslHandler$8;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 948
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown handshake status: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    .end local v3    # "consumed":I
    .end local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v10    # "produced":I
    .end local v11    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v12    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :catch_0
    move-exception v5

    .line 960
    .local v5, "e":Ljavax/net/ssl/SSLException;
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Ljava/lang/Throwable;)V

    .line 961
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 965
    .end local v5    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v14

    if-eqz v7, :cond_6

    .line 966
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    add-int/2addr v15, v9

    invoke-virtual {v8, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 967
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 970
    :cond_6
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 971
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 973
    :goto_4
    throw v14

    .line 924
    .restart local v3    # "consumed":I
    .restart local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v10    # "produced":I
    .restart local v11    # "result":Ljavax/net/ssl/SSLEngineResult;
    .restart local v12    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :pswitch_0
    const/4 v14, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lio/netty/handler/ssl/SslHandler;->wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 951
    :cond_7
    :goto_5
    :pswitch_1
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v12, v14, :cond_1

    if-nez v3, :cond_0

    if-nez v10, :cond_0

    goto :goto_2

    .line 927
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto :goto_5

    .line 930
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    .line 931
    const/4 v13, 0x1

    .line 932
    goto/16 :goto_1

    .line 934
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 935
    const/4 v13, 0x1

    .line 936
    goto/16 :goto_1

    .line 938
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshakeDone:Z

    if-eqz v14, :cond_7

    .line 942
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshakeDone:Z
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 943
    const/4 v13, 0x1

    goto :goto_5

    .line 973
    :cond_9
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_3

    .end local v3    # "consumed":I
    .end local v6    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v10    # "produced":I
    .end local v11    # "result":Ljavax/net/ssl/SSLEngineResult;
    .end local v12    # "status":Ljavax/net/ssl/SSLEngineResult$Status;
    :cond_a
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_4

    .line 920
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 881
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Ljava/nio/ByteBuffer;I)V

    .line 882
    return-void
.end method

.method private wrap(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;
    .locals 6
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 579
    .local v0, "in0":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 580
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 581
    .local v1, "newIn0":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 582
    move-object v0, v1

    .line 586
    .end local v1    # "newIn0":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v5

    invoke-virtual {p3, v4, v5}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 587
    .local v2, "out0":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0, v2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 588
    .local v3, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v4

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 589
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p3, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 591
    sget-object v4, Lio/netty/handler/ssl/SslHandler$8;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 596
    return-object v3

    .line 593
    :pswitch_0
    iget v4, p0, Lio/netty/handler/ssl/SslHandler;->maxPacketBufferSize:I

    invoke-virtual {p3, v4}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private wrap(Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "inUnwrap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v4, 0x0

    .line 438
    .local v4, "out":Lio/netty/buffer/ByteBuf;
    const/4 v5, 0x0

    .line 441
    .local v5, "promise":Lio/netty/channel/ChannelPromise;
    :goto_0
    :try_start_0
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v7}, Lio/netty/channel/PendingWriteQueue;->current()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 442
    .local v3, "msg":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 497
    invoke-direct {p0, p1, v4, v5, p2}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;Z)V

    .line 499
    :goto_1
    return-void

    .line 446
    :cond_0
    :try_start_1
    instance-of v7, v3, Lio/netty/buffer/ByteBuf;

    if-nez v7, :cond_1

    .line 447
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v7}, Lio/netty/channel/PendingWriteQueue;->removeAndWrite()Lio/netty/channel/ChannelFuture;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 493
    .end local v3    # "msg":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljavax/net/ssl/SSLException;
    :try_start_2
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Ljava/lang/Throwable;)V

    .line 495
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v7

    invoke-direct {p0, p1, v4, v5, p2}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;Z)V

    throw v7

    .line 451
    .restart local v3    # "msg":Ljava/lang/Object;
    :cond_1
    :try_start_3
    move-object v0, v3

    check-cast v0, Lio/netty/buffer/ByteBuf;

    move-object v1, v0

    .line 452
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    if-nez v4, :cond_2

    .line 453
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    invoke-direct {p0, p1, v7}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 456
    :cond_2
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-direct {p0, v7, v1, v4}, Lio/netty/handler/ssl/SslHandler;->wrap(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    .line 458
    .local v6, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v7

    if-nez v7, :cond_3

    .line 459
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v7}, Lio/netty/channel/PendingWriteQueue;->remove()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    .line 464
    :goto_2
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v7, v8, :cond_4

    .line 467
    iget-object v7, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    sget-object v8, Lio/netty/handler/ssl/SslHandler;->SSLENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    invoke-virtual {v7, v8}, Lio/netty/channel/PendingWriteQueue;->removeAndFailAll(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    invoke-direct {p0, p1, v4, v5, p2}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;Z)V

    goto :goto_1

    .line 461
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 470
    :cond_4
    :try_start_4
    sget-object v7, Lio/netty/handler/ssl/SslHandler$8;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 488
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown handshake status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 472
    :pswitch_0
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto/16 :goto_0

    .line 475
    :pswitch_1
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    .line 478
    :pswitch_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    .line 481
    :pswitch_3
    invoke-direct {p0, p1, v4, v5, p2}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;Z)V
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    const/4 v5, 0x0

    .line 483
    const/4 v4, 0x0

    .line 484
    goto/16 :goto_0

    .line 497
    :pswitch_4
    invoke-direct {p0, p1, v4, v5, p2}, Lio/netty/handler/ssl/SslHandler;->finishWrap(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;Z)V

    goto/16 :goto_1

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wrapNonAppData(Lio/netty/channel/ChannelHandlerContext;Z)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "inUnwrap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 524
    .local v1, "out":Lio/netty/buffer/ByteBuf;
    :cond_0
    if-nez v1, :cond_1

    .line 525
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, v3}, Lio/netty/handler/ssl/SslHandler;->allocateOutNetBuf(Lio/netty/channel/ChannelHandlerContext;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 527
    :cond_1
    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    sget-object v4, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, v3, v4, v1}, Lio/netty/handler/ssl/SslHandler;->wrap(Ljavax/net/ssl/SSLEngine;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 529
    .local v2, "result":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-lez v3, :cond_3

    .line 530
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 531
    if-eqz p2, :cond_2

    .line 532
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    .line 534
    :cond_2
    const/4 v1, 0x0

    .line 537
    :cond_3
    sget-object v3, Lio/netty/handler/ssl/SslHandler$8;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 560
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown handshake status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    .end local v2    # "result":Ljavax/net/ssl/SSLEngineResult;
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_1
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Ljava/lang/Throwable;)V

    .line 569
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 572
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_4
    throw v3

    .line 539
    .restart local v2    # "result":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_0
    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccess()V

    .line 563
    :cond_5
    :goto_0
    :pswitch_1
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 571
    if-eqz v1, :cond_6

    .line 572
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 575
    :cond_6
    return-void

    .line 542
    :pswitch_2
    :try_start_3
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->runDelegatedTasks()V

    goto :goto_0

    .line 545
    :pswitch_3
    if-nez p2, :cond_5

    .line 546
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 552
    :pswitch_4
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeSuccessIfStillHandshaking()Z

    .line 555
    if-nez p2, :cond_5

    .line 556
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler;->unwrapNonAppData(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 380
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 381
    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1201
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->handshake()Lio/netty/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lio/netty/handler/ssl/SslHandler$5;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/SslHandler$5;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 1214
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 1215
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 605
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->CHANNEL_CLOSED:Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Ljava/lang/Throwable;)V

    .line 606
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 607
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 870
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->needsFlush:Z

    .line 872
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 874
    :cond_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    .line 875
    return-void
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/ssl/SslHandler;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "future"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 339
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 340
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/ssl/SslHandler$1;

    invoke-direct {v2, p0, v0, p1}, Lio/netty/handler/ssl/SslHandler$1;-><init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 355
    return-object p1
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    .line 404
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 387
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 790
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    .line 791
    .local v8, "startOffset":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 792
    .local v1, "endOffset":I
    move v5, v8

    .line 793
    .local v5, "offset":I
    const/4 v9, 0x0

    .line 796
    .local v9, "totalLength":I
    iget v10, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    if-lez v10, :cond_2

    .line 797
    sub-int v10, v1, v8

    iget v11, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    if-ge v10, v11, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget v10, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    add-int/2addr v5, v10

    .line 801
    iget v9, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 802
    const/4 v10, 0x0

    iput v10, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    .line 806
    :cond_2
    const/4 v4, 0x0

    .line 808
    .local v4, "nonSslRecord":Z
    :goto_1
    const/16 v10, 0x4919

    if-ge v9, v10, :cond_3

    .line 809
    sub-int v7, v1, v5

    .line 810
    .local v7, "readableBytes":I
    const/4 v10, 0x5

    if-ge v7, v10, :cond_4

    .line 840
    .end local v7    # "readableBytes":I
    :cond_3
    :goto_2
    if-lez v9, :cond_8

    .line 852
    invoke-virtual {p2, v9}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 853
    invoke-virtual {p2, v8, v9}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 854
    .local v2, "inNetBuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v2, v9}, Lio/netty/handler/ssl/SslHandler;->unwrap(Lio/netty/channel/ChannelHandlerContext;Ljava/nio/ByteBuffer;I)V

    .line 855
    sget-boolean v10, Lio/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    if-nez v10, :cond_8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v10

    if-nez v10, :cond_8

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 814
    .end local v2    # "inNetBuf":Ljava/nio/ByteBuffer;
    .restart local v7    # "readableBytes":I
    :cond_4
    invoke-static {p2, v5}, Lio/netty/handler/ssl/SslHandler;->getEncryptedPacketLength(Lio/netty/buffer/ByteBuf;I)I

    move-result v6

    .line 815
    .local v6, "packetLength":I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_5

    .line 816
    const/4 v4, 0x1

    .line 817
    goto :goto_2

    .line 820
    :cond_5
    sget-boolean v10, Lio/netty/handler/ssl/SslHandler;->$assertionsDisabled:Z

    if-nez v10, :cond_6

    if-gtz v6, :cond_6

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 822
    :cond_6
    if-le v6, v7, :cond_7

    .line 824
    iput v6, p0, Lio/netty/handler/ssl/SslHandler;->packetLength:I

    goto :goto_2

    .line 828
    :cond_7
    add-int v3, v9, v6

    .line 829
    .local v3, "newTotalLength":I
    const/16 v10, 0x4919

    if-gt v3, v10, :cond_3

    .line 836
    add-int/2addr v5, v6

    .line 837
    move v9, v3

    .line 838
    goto :goto_1

    .line 858
    .end local v3    # "newTotalLength":I
    .end local v6    # "packetLength":I
    .end local v7    # "readableBytes":I
    :cond_8
    if-eqz v4, :cond_0

    .line 860
    new-instance v0, Lio/netty/handler/ssl/NotSslRecordException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not an SSL/TLS record: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lio/netty/handler/ssl/NotSslRecordException;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, "e":Lio/netty/handler/ssl/NotSslRecordException;
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v10

    invoke-virtual {p2, v10}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 863
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 864
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler;->setHandshakeFailure(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 391
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 392
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V

    .line 398
    return-void
.end method

.method public engine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 611
    invoke-direct {p0, p2}, Lio/netty/handler/ssl/SslHandler;->ignoreException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lio/netty/handler/ssl/SslHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Swallowing a harmless \'connection reset by peer / broken pipe\' error that occurred while writing close_notify in response to the peer\'s close_notify"

    invoke-interface {v0, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 622
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 628
    :cond_1
    :goto_0
    return-void

    .line 626
    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 420
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->startTls:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler;->sentFirstMessage:Z

    if-nez v0, :cond_0

    .line 421
    iput-boolean v3, p0, Lio/netty/handler/ssl/SslHandler;->sentFirstMessage:Z

    .line 422
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v0}, Lio/netty/channel/PendingWriteQueue;->removeAndWriteAll()Lio/netty/channel/ChannelFuture;

    .line 423
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 434
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v0}, Lio/netty/channel/PendingWriteQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/PendingWriteQueue;->add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 429
    :cond_1
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    iput-boolean v3, p0, Lio/netty/handler/ssl/SslHandler;->flushedBeforeHandshakeDone:Z

    .line 432
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/SslHandler;->wrap(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 433
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0
.end method

.method public getCloseNotifyTimeoutMillis()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyTimeoutMillis:J

    return-wide v0
.end method

.method public getHandshakeTimeoutMillis()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1149
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 1150
    new-instance v0, Lio/netty/channel/PendingWriteQueue;

    invoke-direct {v0, p1}, Lio/netty/channel/PendingWriteQueue;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    iput-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    .line 1152
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler;->handshake()Lio/netty/util/concurrent/Future;

    .line 1160
    :cond_0
    return-void
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v0}, Lio/netty/channel/PendingWriteQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "Pending write on removal of SslHandler"

    invoke-direct {v1, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/netty/channel/PendingWriteQueue;->removeAndFailAll(Ljava/lang/Throwable;)V

    .line 376
    :cond_0
    return-void
.end method

.method public handshakeFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->handshakePromise:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .prologue
    .line 408
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 409
    return-void
.end method

.method public setCloseNotifyTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "closeNotifyTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 298
    if-nez p3, :cond_0

    .line 299
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setCloseNotifyTimeoutMillis(J)V

    .line 303
    return-void
.end method

.method public setCloseNotifyTimeoutMillis(J)V
    .locals 3
    .param p1, "closeNotifyTimeoutMillis"    # J

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeNotifyTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->closeNotifyTimeoutMillis:J

    .line 311
    return-void
.end method

.method public setHandshakeTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "handshakeTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 278
    if-nez p3, :cond_0

    .line 279
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/ssl/SslHandler;->setHandshakeTimeoutMillis(J)V

    .line 283
    return-void
.end method

.method public setHandshakeTimeoutMillis(J)V
    .locals 3
    .param p1, "handshakeTimeoutMillis"    # J

    .prologue
    .line 286
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshakeTimeoutMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iput-wide p1, p0, Lio/netty/handler/ssl/SslHandler;->handshakeTimeoutMillis:J

    .line 291
    return-void
.end method

.method public sslCloseFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->sslCloseFuture:Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;

    return-object v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler;->pendingUnencryptedWrites:Lio/netty/channel/PendingWriteQueue;

    invoke-virtual {v0, p2, p3}, Lio/netty/channel/PendingWriteQueue;->add(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 414
    return-void
.end method
