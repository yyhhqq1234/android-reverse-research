.class public final Lio/netty/util/internal/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final addend:J = 0xbL

.field private static volatile initialSeedUniquifier:J = 0x0L

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lio/netty/util/internal/ThreadLocalRandom;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->newSeed()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->initialized:Z

    .line 207
    return-void
.end method

.method static synthetic access$000()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static current()Lio/netty/util/internal/ThreadLocalRandom;
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->random()Lio/netty/util/internal/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInitialSeedUniquifier()J
    .locals 24

    .prologue
    .line 75
    const-class v16, Lio/netty/util/internal/ThreadLocalRandom;

    monitor-enter v16

    :try_start_0
    sget-wide v6, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 76
    .local v6, "initialSeedUniquifier":J
    const-wide/16 v18, 0x0

    cmp-long v11, v6, v18

    if-nez v11, :cond_0

    .line 78
    const-string v11, "io.netty.initialSeedUniquifier"

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v11, v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 83
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v11, v6, v18

    if-nez v11, :cond_2

    .line 86
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 87
    .local v9, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<[B>;"
    new-instance v5, Lio/netty/util/internal/ThreadLocalRandom$1;

    const-string v11, "initialSeedUniquifierGenerator"

    invoke-direct {v5, v11, v9}, Lio/netty/util/internal/ThreadLocalRandom$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 94
    .local v5, "generatorThread":Ljava/lang/Thread;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 95
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 96
    new-instance v11, Lio/netty/util/internal/ThreadLocalRandom$2;

    invoke-direct {v11}, Lio/netty/util/internal/ThreadLocalRandom$2;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 104
    const-wide/16 v12, 0x3

    .line 105
    .local v12, "timeoutSeconds":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v20, 0x3

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v20

    add-long v2, v18, v20

    .line 106
    .local v2, "deadLine":J
    const/4 v8, 0x0

    .line 108
    .local v8, "interrupted":Z
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    sub-long v14, v2, v18

    .line 109
    .local v14, "waitTime":J
    const-wide/16 v18, 0x0

    cmp-long v11, v14, v18

    if-gtz v11, :cond_3

    .line 110
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 111
    sget-object v11, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v17, "Failed to generate a seed from SecureRandom within {} seconds. Not enough entrophy?"

    const-wide/16 v18, 0x3

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :goto_0
    const-wide v18, 0x3255ecdc33bae119L    # 3.253008663204319E-66

    xor-long v6, v6, v18

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v18

    xor-long v6, v6, v18

    .line 143
    sput-wide v6, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 145
    if-eqz v8, :cond_2

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    .line 151
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v2    # "deadLine":J
    .end local v5    # "generatorThread":Ljava/lang/Thread;
    .end local v8    # "interrupted":Z
    .end local v9    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<[B>;"
    .end local v12    # "timeoutSeconds":J
    .end local v14    # "waitTime":J
    :cond_2
    monitor-exit v16

    return-wide v6

    .line 119
    .restart local v2    # "deadLine":J
    .restart local v5    # "generatorThread":Ljava/lang/Thread;
    .restart local v8    # "interrupted":Z
    .restart local v9    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<[B>;"
    .restart local v12    # "timeoutSeconds":J
    .restart local v14    # "waitTime":J
    :cond_3
    :try_start_1
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v14, v15, v11}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 120
    .local v10, "seed":[B
    if-eqz v10, :cond_1

    .line 121
    const/4 v11, 0x0

    aget-byte v11, v10, v11

    int-to-long v0, v11

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    const/16 v11, 0x38

    shl-long v18, v18, v11

    const/4 v11, 0x1

    aget-byte v11, v10, v11

    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    const/16 v11, 0x30

    shl-long v20, v20, v11

    or-long v18, v18, v20

    const/4 v11, 0x2

    aget-byte v11, v10, v11

    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    const/16 v11, 0x28

    shl-long v20, v20, v11

    or-long v18, v18, v20

    const/4 v11, 0x3

    aget-byte v11, v10, v11

    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    const/16 v11, 0x20

    shl-long v20, v20, v11

    or-long v18, v18, v20

    const/4 v11, 0x4

    aget-byte v11, v10, v11

    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    const/16 v11, 0x18

    shl-long v20, v20, v11

    or-long v18, v18, v20

    const/4 v11, 0x5

    aget-byte v11, v10, v11

    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    const/16 v11, 0x10

    shl-long v20, v20, v11

    or-long v18, v18, v20

    const/4 v11, 0x6

    aget-byte v11, v10, v11

    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    const/16 v11, 0x8

    shl-long v20, v20, v11

    or-long v18, v18, v20

    const/4 v11, 0x7

    aget-byte v11, v10, v11
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v11

    move-wide/from16 v20, v0

    const-wide/16 v22, 0xff

    and-long v20, v20, v22

    or-long v6, v18, v20

    goto/16 :goto_0

    .line 132
    .end local v10    # "seed":[B
    :catch_0
    move-exception v4

    .line 133
    .local v4, "e":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    .line 134
    :try_start_2
    sget-object v11, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v17, "Failed to generate a seed from SecureRandom due to an InterruptedException."

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 75
    .end local v2    # "deadLine":J
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "generatorThread":Ljava/lang/Thread;
    .end local v8    # "interrupted":Z
    .end local v9    # "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<[B>;"
    .end local v12    # "timeoutSeconds":J
    .end local v14    # "waitTime":J
    :catchall_0
    move-exception v11

    monitor-exit v16

    throw v11
.end method

.method private static newSeed()J
    .locals 16

    .prologue
    const-wide/16 v10, 0x0

    .line 159
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 161
    .local v6, "startTime":J
    :cond_0
    sget-object v8, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 162
    .local v2, "current":J
    cmp-long v8, v2, v10

    if-eqz v8, :cond_2

    move-wide v0, v2

    .line 165
    .local v0, "actualCurrent":J
    :goto_0
    const-wide v8, 0x285d320ad33fdb5L

    mul-long v4, v0, v8

    .line 167
    .local v4, "next":J
    sget-object v8, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 168
    cmp-long v8, v2, v10

    if-nez v8, :cond_1

    sget-object v8, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v8}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 169
    sget-object v8, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v9, "-Dio.netty.initialSeedUniquifier: 0x%016x (took %d ms)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-virtual {v12, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 173
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    xor-long/2addr v8, v4

    return-wide v8

    .line 162
    .end local v0    # "actualCurrent":J
    .end local v4    # "next":J
    :cond_2
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->getInitialSeedUniquifier()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static setInitialSeedUniquifier(J)V
    .locals 0
    .param p0, "initialSeedUniquifier"    # J

    .prologue
    .line 70
    sput-wide p0, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 71
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 4
    .param p1, "bits"    # I

    .prologue
    .line 232
    iget-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    .line 233
    iget-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nextDouble(D)D
    .locals 3
    .param p1, "n"    # D

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public nextDouble(DD)D
    .locals 5
    .param p1, "least"    # D
    .param p3, "bound"    # D

    .prologue
    .line 329
    cmpl-double v0, p1, p3

    if-ltz v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public nextInt(II)I
    .locals 1
    .param p1, "least"    # I
    .param p2, "bound"    # I

    .prologue
    .line 247
    if-lt p1, p2, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 250
    :cond_0
    sub-int v0, p2, p1

    invoke-virtual {p0, v0}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public nextLong(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    .line 263
    const-wide/16 v8, 0x0

    cmp-long v1, p1, v8

    if-gtz v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v8, "n must be positive"

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    const-wide/16 v6, 0x0

    .line 273
    .local v6, "offset":J
    :goto_0
    const-wide/32 v8, 0x7fffffff

    cmp-long v1, p1, v8

    if-ltz v1, :cond_3

    .line 274
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/netty/util/internal/ThreadLocalRandom;->next(I)I

    move-result v0

    .line 275
    .local v0, "bits":I
    const/4 v1, 0x1

    ushr-long v2, p1, v1

    .line 276
    .local v2, "half":J
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    move-wide v4, v2

    .line 277
    .local v4, "nextn":J
    :goto_1
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 278
    sub-long v8, p1, v4

    add-long/2addr v6, v8

    .line 280
    :cond_1
    move-wide p1, v4

    .line 281
    goto :goto_0

    .line 276
    .end local v4    # "nextn":J
    :cond_2
    sub-long v4, p1, v2

    goto :goto_1

    .line 282
    .end local v0    # "bits":I
    .end local v2    # "half":J
    :cond_3
    long-to-int v1, p1

    invoke-virtual {p0, v1}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v8, v6

    return-wide v8
.end method

.method public nextLong(JJ)J
    .locals 3
    .param p1, "least"    # J
    .param p3, "bound"    # J

    .prologue
    .line 296
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 299
    :cond_0
    sub-long v0, p3, p1

    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/ThreadLocalRandom;->nextLong(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    .line 225
    iget-boolean v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->initialized:Z

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 228
    :cond_0
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    .line 229
    return-void
.end method
