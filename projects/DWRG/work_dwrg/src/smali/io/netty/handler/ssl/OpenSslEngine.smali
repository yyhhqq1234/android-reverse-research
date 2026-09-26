.class public final Lio/netty/handler/ssl/OpenSslEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "OpenSslEngine.java"


# static fields
.field private static final DESTROYED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lio/netty/handler/ssl/OpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

.field private static final EMPTY_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

.field private static final ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

.field private static final ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

.field private static final MAX_CIPHERTEXT_LENGTH:I = 0x4800

.field private static final MAX_COMPRESSED_LENGTH:I = 0x4400

.field static final MAX_ENCRYPTED_PACKET_LENGTH:I = 0x4919

.field static final MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x919

.field private static final MAX_PLAINTEXT_LENGTH:I = 0x4000

.field private static final RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private accepted:I

.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private volatile applicationProtocol:Ljava/lang/String;

.field private cipher:Ljava/lang/String;

.field private volatile destroyed:I

.field private engineClosed:Z

.field private final fallbackApplicationProtocol:Ljava/lang/String;

.field private handshakeFinished:Z

.field private isInboundDone:Z

.field private isOutboundDone:Z

.field private lastPrimingReadResult:I

.field private networkBIO:J

.field private receivedShutdown:Z

.field private session:Ljavax/net/ssl/SSLSession;

.field private ssl:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-class v0, Lio/netty/handler/ssl/OpenSslEngine;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 49
    new-array v0, v1, [Ljava/security/cert/Certificate;

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    .line 50
    new-array v0, v1, [Ljavax/security/cert/X509Certificate;

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    .line 52
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "engine closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    .line 53
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "renegotiation unsupported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

    .line 54
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "encrypted packet oversized"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

    .line 57
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 58
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 59
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 71
    const-class v0, Lio/netty/handler/ssl/OpenSslEngine;

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->DESTROYED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)V
    .locals 3
    .param p1, "sslCtx"    # J
    .param p3, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p4, "fallbackApplicationProtocol"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 108
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    if-nez p3, :cond_1

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alloc"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iput-object p3, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 117
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/apache/tomcat/jni/SSL;->newSSL(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    .line 118
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->makeNetworkBIO(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    .line 119
    iput-object p4, p0, Lio/netty/handler/ssl/OpenSslEngine;->fallbackApplicationProtocol:Ljava/lang/String;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/OpenSslEngine;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/ssl/OpenSslEngine;

    .prologue
    .line 45
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    return-wide v0
.end method

.method static synthetic access$100()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$200()[Ljavax/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/ssl/OpenSslEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/OpenSslEngine;

    .prologue
    .line 45
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->cipher:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/ssl/OpenSslEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/OpenSslEngine;

    .prologue
    .line 45
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized beginHandshakeImplicitly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v0, :cond_0

    .line 776
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 779
    :cond_0
    :try_start_1
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-nez v0, :cond_1

    .line 780
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->doHandshake(J)I

    .line 781
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_0
.end method

.method private readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .locals 12
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pending"    # I

    .prologue
    const/4 v6, 0x0

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-lt v7, p2, :cond_1

    .line 272
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 273
    .local v5, "pos":I
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    int-to-long v10, v5

    add-long v0, v8, v10

    .line 274
    .local v0, "addr":J
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v8, v9, v0, v1, p2}, Lorg/apache/tomcat/jni/SSL;->readFromBIO(JJI)I

    move-result v2

    .line 275
    .local v2, "bioRead":I
    if-lez v2, :cond_0

    .line 276
    add-int v6, v5, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v6, v2

    .line 302
    .end local v5    # "pos":I
    :cond_0
    :goto_0
    return v6

    .line 280
    .end local v0    # "addr":J
    .end local v2    # "bioRead":I
    :cond_1
    iget-object v7, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v7, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 283
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 284
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    .line 289
    .restart local v0    # "addr":J
    :goto_1
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v8, v9, v0, v1, p2}, Lorg/apache/tomcat/jni/SSL;->readFromBIO(JJI)I

    move-result v2

    .line 290
    .restart local v2    # "bioRead":I
    if-lez v2, :cond_3

    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 292
    .local v4, "oldLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    const/4 v6, 0x0

    invoke-virtual {v3, v6, p1}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 294
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    move v6, v2

    goto :goto_0

    .line 286
    .end local v0    # "addr":J
    .end local v2    # "bioRead":I
    .end local v4    # "oldLimit":I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .restart local v0    # "addr":J
    goto :goto_1

    .line 298
    .restart local v2    # "bioRead":I
    :cond_3
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0

    .end local v0    # "addr":J
    .end local v2    # "bioRead":I
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v6
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 12
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 230
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 232
    .local v5, "pos":I
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    int-to-long v10, v5

    add-long v0, v8, v10

    .line 233
    .local v0, "addr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    sub-int v3, v8, v5

    .line 234
    .local v3, "len":I
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v8, v9, v0, v1, v3}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result v6

    .line 235
    .local v6, "sslRead":I
    if-lez v6, :cond_3

    .line 236
    add-int v7, v5, v6

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 264
    .end local v6    # "sslRead":I
    :goto_0
    return v6

    .line 240
    .end local v0    # "addr":J
    .end local v3    # "len":I
    .end local v5    # "pos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 241
    .restart local v5    # "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 242
    .local v4, "limit":I
    const/16 v8, 0x4919

    sub-int v9, v4, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 243
    .restart local v3    # "len":I
    iget-object v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v8, v3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 246
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 247
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    .line 252
    .restart local v0    # "addr":J
    :goto_1
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v8, v9, v0, v1, v3}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result v6

    .line 253
    .restart local v6    # "sslRead":I
    if-lez v6, :cond_2

    .line 254
    add-int v7, v5, v6

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 255
    const/4 v7, 0x0

    invoke-virtual {v2, v7, p1}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 256
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0

    .line 249
    .end local v0    # "addr":J
    .end local v6    # "sslRead":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .restart local v0    # "addr":J
    goto :goto_1

    .line 260
    .restart local v6    # "sslRead":I
    :cond_2
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v4    # "limit":I
    :cond_3
    move v6, v7

    .line 264
    goto :goto_0

    .line 260
    .end local v0    # "addr":J
    .end local v6    # "sslRead":I
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v4    # "limit":I
    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v7
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;)I
    .locals 12
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x0

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 189
    .local v5, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 190
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 191
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    int-to-long v10, v5

    add-long v0, v8, v10

    .line 192
    .local v0, "addr":J
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v8, v9, v0, v1, v3}, Lorg/apache/tomcat/jni/SSL;->writeToBIO(JJI)I

    move-result v4

    .line 193
    .local v4, "netWrote":I
    if-ltz v4, :cond_3

    .line 194
    add-int v7, v5, v4

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v8, v9, v0, v1, v6}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result v6

    iput v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I

    .line 223
    .end local v4    # "netWrote":I
    :goto_0
    return v4

    .line 199
    .end local v0    # "addr":J
    :cond_0
    iget-object v7, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v7, v3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 202
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    .line 208
    .restart local v0    # "addr":J
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v2, v7, p1}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 210
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v8, v9, v0, v1, v3}, Lorg/apache/tomcat/jni/SSL;->writeToBIO(JJI)I

    move-result v4

    .line 211
    .restart local v4    # "netWrote":I
    if-ltz v4, :cond_2

    .line 212
    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    iget-wide v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v1, v8}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result v6

    iput v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0

    .line 205
    .end local v0    # "addr":J
    .end local v4    # "netWrote":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .restart local v0    # "addr":J
    goto :goto_1

    .line 216
    .restart local v4    # "netWrote":I
    :cond_2
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_3
    move v4, v6

    .line 223
    goto :goto_0

    .line 219
    .end local v0    # "addr":J
    .end local v4    # "netWrote":I
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v6
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 12
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 143
    .local v5, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 144
    .local v4, "limit":I
    sub-int v8, v4, v5

    const/16 v9, 0x4000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 147
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 148
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    int-to-long v10, v5

    add-long v0, v8, v10

    .line 149
    .local v0, "addr":J
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v8, v9, v0, v1, v3}, Lorg/apache/tomcat/jni/SSL;->writeToSSL(JJI)I

    move-result v6

    .line 150
    .local v6, "sslWrote":I
    if-lez v6, :cond_3

    .line 151
    add-int v8, v5, v6

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v7, v6

    .line 177
    .end local v6    # "sslWrote":I
    .local v7, "sslWrote":I
    :goto_0
    return v7

    .line 155
    .end local v0    # "addr":J
    .end local v7    # "sslWrote":I
    :cond_0
    iget-object v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v8, v3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 158
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 159
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    .line 164
    .restart local v0    # "addr":J
    :goto_1
    add-int v8, v5, v3

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 166
    const/4 v8, 0x0

    invoke-virtual {v2, v8, p1}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 167
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 169
    iget-wide v8, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v8, v9, v0, v1, v3}, Lorg/apache/tomcat/jni/SSL;->writeToSSL(JJI)I

    move-result v6

    .line 170
    .restart local v6    # "sslWrote":I
    if-lez v6, :cond_2

    .line 171
    add-int v8, v5, v6

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    move v7, v6

    .end local v6    # "sslWrote":I
    .restart local v7    # "sslWrote":I
    goto :goto_0

    .line 161
    .end local v0    # "addr":J
    .end local v7    # "sslWrote":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .restart local v0    # "addr":J
    goto :goto_1

    .line 174
    .restart local v6    # "sslWrote":I
    :cond_2
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 181
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSL.writeToSSL() returned a non-positive value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 177
    .end local v0    # "addr":J
    .end local v6    # "sslWrote":I
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    throw v8
.end method


# virtual methods
.method public declared-synchronized beginHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v0, :cond_0

    .line 750
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 753
    :cond_0
    :try_start_1
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    packed-switch v0, :pswitch_data_0

    .line 770
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 755
    :pswitch_0
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->doHandshake(J)I

    .line 756
    const/4 v0, 0x2

    iput v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    :goto_0
    monitor-exit p0

    return-void

    .line 765
    :pswitch_1
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    goto :goto_0

    .line 768
    :pswitch_2
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized closeInbound()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    .line 557
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-eqz v0, :cond_2

    .line 558
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->receivedShutdown:Z

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 560
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 565
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized closeOutbound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 576
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 580
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    .line 581
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    .line 583
    iget v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-eqz v1, :cond_2

    iget v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    if-nez v1, :cond_2

    .line 584
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->getShutdown(J)I

    move-result v0

    .line 585
    .local v0, "mode":I
    and-int/lit8 v1, v0, 0x1

    if-eq v1, v4, :cond_0

    .line 586
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->shutdownSSL(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 576
    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 590
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4

    .prologue
    .line 791
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-eqz v1, :cond_0

    iget v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    if-eqz v1, :cond_1

    .line 792
    :cond_0
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    :goto_0
    monitor-exit p0

    return-object v1

    .line 796
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    if-nez v1, :cond_6

    .line 798
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 804
    :cond_2
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->isInInit(J)I

    move-result v1

    if-nez v1, :cond_5

    .line 805
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    .line 806
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->getCipherForSSL(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->cipher:Ljava/lang/String;

    .line 807
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "applicationProtocol":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 809
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->fallbackApplicationProtocol:Ljava/lang/String;

    .line 811
    :cond_3
    if-eqz v0, :cond_4

    .line 812
    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->applicationProtocol:Ljava/lang/String;

    .line 816
    :goto_1
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 814
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->applicationProtocol:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 791
    .end local v0    # "applicationProtocol":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 821
    :cond_5
    :try_start_2
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 825
    :cond_6
    iget-boolean v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v1, :cond_8

    .line 827
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v1

    if-eqz v1, :cond_7

    .line 828
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 832
    :cond_7
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 835
    :cond_8
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->session:Ljavax/net/ssl/SSLSession;

    .line 632
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_0

    .line 633
    new-instance v0, Lio/netty/handler/ssl/OpenSslEngine$1;

    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslEngine$1;-><init>(Lio/netty/handler/ssl/OpenSslEngine;)V

    .restart local v0    # "session":Ljavax/net/ssl/SSLSession;
    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->session:Ljavax/net/ssl/SSLSession;

    .line 744
    :cond_0
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isInboundDone()Z
    .locals 1

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOutboundDone()Z
    .locals 1

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 876
    if-eqz p1, :cond_0

    .line 877
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 879
    :cond_0
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 611
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 626
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 852
    if-eqz p1, :cond_0

    .line 853
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 855
    :cond_0
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1
    .param p1, "clientMode"    # Z

    .prologue
    .line 840
    if-eqz p1, :cond_0

    .line 841
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 843
    :cond_0
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 864
    if-eqz p1, :cond_0

    .line 865
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 867
    :cond_0
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->DESTROYED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->freeSSL(J)V

    .line 128
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->freeBIO(J)V

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 19
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    if-eqz v14, :cond_0

    .line 416
    new-instance v14, Ljavax/net/ssl/SSLEngineResult;

    sget-object v15, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v16, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :goto_0
    monitor-exit p0

    return-object v14

    .line 420
    :cond_0
    if-nez p1, :cond_1

    .line 421
    :try_start_1
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "src"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 423
    :cond_1
    if-nez p2, :cond_2

    .line 424
    :try_start_2
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "dsts"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 426
    :cond_2
    move-object/from16 v0, p2

    array-length v14, v0

    move/from16 v0, p3

    if-ge v0, v14, :cond_3

    add-int v14, p3, p4

    move-object/from16 v0, p2

    array-length v15, v0

    if-le v14, v15, :cond_4

    .line 427
    :cond_3
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "offset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", length: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " (expected: offset <= offset + length <= dsts.length ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "))"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 432
    :cond_4
    const/4 v5, 0x0

    .line 433
    .local v5, "capacity":I
    add-int v8, p3, p4

    .line 434
    .local v8, "endOffset":I
    move/from16 v11, p3

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_7

    .line 435
    aget-object v6, p2, v11

    .line 436
    .local v6, "dst":Ljava/nio/ByteBuffer;
    if-nez v6, :cond_5

    .line 437
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 439
    :cond_5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 440
    new-instance v14, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v14}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v14

    .line 442
    :cond_6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    add-int/2addr v5, v14

    .line 434
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 446
    .end local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-nez v14, :cond_8

    .line 447
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->beginHandshakeImplicitly()V

    .line 452
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    .line 453
    .local v10, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v14, :cond_a

    :cond_9
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v10, v14, :cond_a

    .line 454
    new-instance v14, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v15

    sget-object v16, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 458
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    const/16 v15, 0x4919

    if-le v14, v15, :cond_b

    .line 459
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z

    .line 460
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    .line 461
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    .line 462
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 463
    sget-object v14, Lio/netty/handler/ssl/OpenSslEngine;->ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

    throw v14

    .line 467
    :cond_b
    const/4 v2, 0x0

    .line 468
    .local v2, "bytesConsumed":I
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/ssl/OpenSslEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    add-int/2addr v2, v14

    .line 476
    :try_start_4
    invoke-static {}, Lorg/apache/tomcat/jni/SSL;->getLastError()Ljava/lang/String;

    move-result-object v9

    .line 477
    .local v9, "error":Ljava/lang/String;
    if-eqz v9, :cond_d

    const-string v14, "error:00000000:"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 478
    sget-object v14, Lio/netty/handler/ssl/OpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v14}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 479
    sget-object v14, Lio/netty/handler/ssl/OpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SSL_read failed: primingReadResult: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; OpenSSL error: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x27

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    .line 485
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 486
    new-instance v14, Ljavax/net/ssl/SSLException;

    invoke-direct {v14, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 471
    .end local v9    # "error":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 472
    .local v7, "e":Ljava/lang/Exception;
    new-instance v14, Ljavax/net/ssl/SSLException;

    invoke-direct {v14, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 490
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "error":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-wide v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v14, v15}, Lorg/apache/tomcat/jni/SSL;->isInInit(J)I

    move-result v14

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-wide v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v14, v15}, Lorg/apache/tomcat/jni/SSL;->pendingReadableBytesInSSL(J)I

    move-result v13

    .line 493
    .local v13, "pendingApp":I
    :goto_2
    if-ge v5, v13, :cond_f

    .line 494
    new-instance v14, Ljavax/net/ssl/SSLEngineResult;

    sget-object v15, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v2, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 490
    .end local v13    # "pendingApp":I
    :cond_e
    const/4 v13, 0x0

    goto :goto_2

    .line 498
    .restart local v13    # "pendingApp":I
    :cond_f
    const/4 v3, 0x0

    .line 499
    .local v3, "bytesProduced":I
    move/from16 v12, p3

    .line 500
    .local v12, "idx":I
    :cond_10
    :goto_3
    if-ge v12, v8, :cond_12

    .line 501
    aget-object v6, p2, v12

    .line 502
    .restart local v6    # "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-nez v14, :cond_11

    .line 503
    add-int/lit8 v12, v12, 0x1

    .line 504
    goto :goto_3

    .line 507
    :cond_11
    if-gtz v13, :cond_14

    .line 531
    .end local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->receivedShutdown:Z

    if-nez v14, :cond_13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v14, v15}, Lorg/apache/tomcat/jni/SSL;->getShutdown(J)I

    move-result v14

    and-int/lit8 v14, v14, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13

    .line 532
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lio/netty/handler/ssl/OpenSslEngine;->receivedShutdown:Z

    .line 533
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->closeOutbound()V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->closeInbound()V

    .line 537
    :cond_13
    new-instance v14, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v2, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 513
    .restart local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_14
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lio/netty/handler/ssl/OpenSslEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    .line 518
    .local v4, "bytesRead":I
    if-eqz v4, :cond_12

    .line 522
    add-int/2addr v3, v4

    .line 523
    sub-int/2addr v13, v4

    .line 525
    :try_start_6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-nez v14, :cond_10

    .line 526
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 514
    .end local v4    # "bytesRead":I
    :catch_1
    move-exception v7

    .line 515
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v14, Ljavax/net/ssl/SSLException;

    invoke-direct {v14, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 15
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget v10, p0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    if-eqz v10, :cond_0

    .line 311
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :goto_0
    monitor-exit p0

    return-object v10

    .line 315
    :cond_0
    if-nez p1, :cond_1

    .line 316
    :try_start_1
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "srcs"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 318
    :cond_1
    if-nez p4, :cond_2

    .line 319
    :try_start_2
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "dst"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 322
    :cond_2
    move-object/from16 v0, p1

    array-length v10, v0

    move/from16 v0, p2

    if-ge v0, v10, :cond_3

    add-int v10, p2, p3

    move-object/from16 v0, p1

    array-length v11, v0

    if-le v10, v11, :cond_4

    .line 323
    :cond_3
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "offset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "))"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 328
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 329
    new-instance v10, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v10}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v10

    .line 333
    :cond_5
    iget v10, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-nez v10, :cond_6

    .line 334
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->beginHandshakeImplicitly()V

    .line 339
    :cond_6
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 340
    .local v6, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-boolean v10, p0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v10, :cond_8

    :cond_7
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v10, :cond_8

    .line 341
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 344
    :cond_8
    const/4 v3, 0x0

    .line 348
    .local v3, "bytesProduced":I
    iget-wide v10, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v8

    .line 349
    .local v8, "pendingNet":I
    if-lez v8, :cond_b

    .line 351
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 352
    .local v4, "capacity":I
    if-ge v4, v8, :cond_9

    .line 353
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v6, v12, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 358
    :cond_9
    :try_start_3
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v8}, Lio/netty/handler/ssl/OpenSslEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    add-int/2addr v3, v10

    .line 366
    :try_start_4
    iget-boolean v10, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    if-eqz v10, :cond_a

    .line 367
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 370
    :cond_a
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v5

    .line 360
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Ljavax/net/ssl/SSLException;

    invoke-direct {v10, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 374
    .end local v4    # "capacity":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v2, 0x0

    .line 375
    .local v2, "bytesConsumed":I
    move/from16 v7, p2

    .local v7, "i":I
    :goto_1
    move/from16 v0, p3

    if-ge v7, v0, :cond_f

    .line 376
    aget-object v9, p1, v7

    .line 377
    .local v9, "src":Ljava/nio/ByteBuffer;
    :cond_c
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-eqz v10, :cond_e

    .line 381
    :try_start_5
    invoke-direct {p0, v9}, Lio/netty/handler/ssl/OpenSslEngine;->writePlaintextData(Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    add-int/2addr v2, v10

    .line 387
    :try_start_6
    iget-wide v10, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v10, v11}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v8

    .line 388
    if-lez v8, :cond_c

    .line 390
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 391
    .restart local v4    # "capacity":I
    if-ge v4, v8, :cond_d

    .line 392
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    invoke-direct {v10, v11, v12, v2, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 382
    .end local v4    # "capacity":I
    :catch_1
    move-exception v5

    .line 383
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v10, Ljavax/net/ssl/SSLException;

    invoke-direct {v10, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 397
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "capacity":I
    :cond_d
    :try_start_7
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v8}, Lio/netty/handler/ssl/OpenSslEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v10

    add-int/2addr v3, v10

    .line 402
    :try_start_8
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    invoke-direct {v10, v11, v12, v2, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_0

    .line 398
    :catch_2
    move-exception v5

    .line 399
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v10, Ljavax/net/ssl/SSLException;

    invoke-direct {v10, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 375
    .end local v4    # "capacity":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 407
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    :cond_f
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v12

    invoke-direct {v10, v11, v12, v2, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method
