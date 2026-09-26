.class public Lio/netty/util/internal/chmv8/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$EmptyTask;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ASHIFT:I

.field private static final CTL:J

.field private static final EC_SHIFT:I = 0x10

.field private static final EVENMASK:I = 0xfffe

.field private static final E_MASK:I = 0x7fffffff

.field private static final E_SEQ:I = 0x10000

.field private static final FAST_IDLE_TIMEOUT:J = 0xbebc200L

.field static final FIFO_QUEUE:I = 0x1

.field private static final IDLE_TIMEOUT:J = 0x77359400L

.field private static final INDEXSEED:J

.field private static final INT_SIGN:I = -0x80000000

.field static final LIFO_QUEUE:I = 0x0

.field private static final MAX_CAP:I = 0x7fff

.field private static final MAX_HELP:I = 0x40

.field private static final PARKBLOCKER:J

.field private static final PLOCK:J

.field private static final PL_LOCK:I = 0x2

.field private static final PL_SIGNAL:I = 0x1

.field private static final PL_SPINS:I = 0x100

.field private static final QBASE:J

.field private static final QLOCK:J

.field private static final SEED_INCREMENT:I = 0x61c88647

.field static final SHARED_QUEUE:I = -0x1

.field private static final SHORT_SIGN:I = 0x8000

.field private static final SHUTDOWN:I = -0x80000000

.field private static final SMASK:I = 0xffff

.field private static final SQMASK:I = 0x7e

.field private static final STEALCOUNT:J

.field private static final STOP_BIT:J = 0x80000000L

.field private static final ST_SHIFT:I = 0x1f

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TIMEOUT_SLOP:J = 0x1e8480L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UAC_MASK:I = -0x10000

.field private static final UAC_SHIFT:I = 0x10

.field private static final UAC_UNIT:I = 0x10000

.field private static final UTC_MASK:I = 0xffff

.field private static final UTC_SHIFT:I = 0x0

.field private static final UTC_UNIT:I = 0x1

.field static final common:Lio/netty/util/internal/chmv8/ForkJoinPool;

.field static final commonParallelism:I

.field public static final defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I

.field static final submitters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile ctl:J

.field final factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile indexSeed:I

.field final mode:S

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad10:Ljava/lang/Object;

.field volatile pad11:Ljava/lang/Object;

.field volatile pad12:Ljava/lang/Object;

.field volatile pad13:Ljava/lang/Object;

.field volatile pad14:Ljava/lang/Object;

.field volatile pad15:Ljava/lang/Object;

.field volatile pad16:Ljava/lang/Object;

.field volatile pad17:Ljava/lang/Object;

.field volatile pad18:Ljava/lang/Object;

.field volatile pad19:Ljava/lang/Object;

.field volatile pad1a:Ljava/lang/Object;

.field volatile pad1b:Ljava/lang/Object;

.field final parallelism:S

.field volatile plock:I

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 3254
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v7

    sput-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3255
    const-class v2, Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 3256
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "ctl"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    .line 3258
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "stealCount"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->STEALCOUNT:J

    .line 3260
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "plock"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    .line 3262
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "indexSeed"

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->INDEXSEED:J

    .line 3264
    const-class v5, Ljava/lang/Thread;

    .line 3265
    .local v5, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "parkBlocker"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->PARKBLOCKER:J

    .line 3267
    const-class v6, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 3268
    .local v6, "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "base"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->QBASE:J

    .line 3270
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v8, "qlock"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    .line 3272
    const-class v0, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 3273
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v7

    sput v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    .line 3274
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v7, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    .line 3275
    .local v4, "scale":I
    add-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v4

    if-eqz v7, :cond_0

    .line 3276
    new-instance v7, Ljava/lang/Error;

    const-string v8, "data type scale not a power of two"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3278
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "scale":I
    .end local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 3279
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 3277
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "scale":I
    .restart local v5    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x1f

    sput v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3282
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    .line 3283
    new-instance v7, Lio/netty/util/internal/chmv8/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v7}, Lio/netty/util/internal/chmv8/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3285
    new-instance v7, Ljava/lang/RuntimePermission;

    const-string v8, "modifyThread"

    invoke-direct {v7, v8}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3287
    new-instance v7, Lio/netty/util/internal/chmv8/ForkJoinPool$1;

    invoke-direct {v7}, Lio/netty/util/internal/chmv8/ForkJoinPool$1;-><init>()V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/util/internal/chmv8/ForkJoinPool;

    sput-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 3290
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-short v3, v7, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    .line 3291
    .local v3, "par":I
    if-lez v3, :cond_1

    .end local v3    # "par":I
    :goto_0
    sput v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonParallelism:I

    .line 3292
    return-void

    .line 3291
    .restart local v3    # "par":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 2396
    const/16 v0, 0x7fff

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2398
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "parallelism"    # I

    .prologue
    .line 2415
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2416
    return-void
.end method

.method private constructor <init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V
    .locals 8
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "mode"    # I
    .param p5, "workerNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 2476
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2477
    iput-object p5, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2478
    iput-object p2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2479
    iput-object p3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2480
    int-to-short v2, p4

    iput-short v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->mode:S

    .line 2481
    int-to-short v2, p1

    iput-short v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    .line 2482
    neg-int v2, p1

    int-to-long v0, v2

    .line 2483
    .local v0, "np":J
    const/16 v2, 0x30

    shl-long v2, v0, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    const-wide v6, 0xffff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .line 2484
    return-void
.end method

.method public constructor <init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 6
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .prologue
    .line 2446
    invoke-static {p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkParallelism(I)I

    move-result v1

    invoke-static {p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkFactory(Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;)Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-result-object v2

    if-eqz p4, :cond_0

    const/4 v4, 0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForkJoinPool-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->nextPoolId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-worker-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    .line 2451
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkPermission()V

    .line 2452
    return-void

    .line 2446
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->makeCommonPool()Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method private acquirePlock()I
    .locals 14

    .prologue
    .line 1275
    const/16 v13, 0x100

    .line 1277
    .local v13, "spins":I
    :cond_0
    :goto_0
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .local v4, "ps":I
    and-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v5, v4, 0x2

    .local v5, "nps":I
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1279
    return v5

    .line 1280
    .end local v5    # "nps":I
    :cond_1
    if-ltz v13, :cond_2

    .line 1281
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->current()Lio/netty/util/internal/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1282
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1284
    :cond_2
    sget-object v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    or-int/lit8 v11, v4, 0x1

    move-object v7, p0

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    monitor-enter p0

    .line 1286
    :try_start_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1288
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1289
    :catch_0
    move-exception v12

    .line 1291
    .local v12, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1292
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1297
    .end local v12    # "ie":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private final awaitWork(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;JI)I
    .locals 28
    .param p1, "w"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .param p2, "c"    # J
    .param p4, "ec"    # I

    .prologue
    .line 1744
    move-object/from16 v0, p1

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    move/from16 v24, v0

    .local v24, "stat":I
    if-ltz v24, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1746
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v20, v0

    .line 1747
    .local v20, "e":I
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v0, v2

    move/from16 v25, v0

    .line 1748
    .local v25, "u":I
    shr-int/lit8 v2, v25, 0x10

    move-object/from16 v0, p0

    iget-short v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int v16, v2, v3

    .line 1750
    .local v16, "d":I
    if-ltz v20, :cond_0

    if-gtz v16, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1751
    :cond_0
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 1785
    .end local v16    # "d":I
    .end local v20    # "e":I
    .end local v25    # "u":I
    :cond_1
    :goto_0
    return v24

    .line 1752
    .restart local v16    # "d":I
    .restart local v20    # "e":I
    .restart local v25    # "u":I
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v21, v0

    .local v21, "ns":I
    if-eqz v21, :cond_4

    .line 1754
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1755
    :cond_3
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    .local v6, "sc":J
    move/from16 v0, v21

    int-to-long v8, v0

    add-long/2addr v8, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 1759
    .end local v6    # "sc":J
    :cond_4
    if-gtz v16, :cond_5

    const/high16 v2, -0x80000000

    or-int v2, v2, v20

    move/from16 v0, p4

    if-eq v0, v2, :cond_7

    :cond_5
    const-wide/16 v14, 0x0

    .line 1762
    .local v14, "pc":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_9

    .line 1763
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-short v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .line 1764
    .local v17, "dc":I
    if-gez v17, :cond_8

    const-wide/32 v22, 0xbebc200

    .line 1766
    .local v22, "parkTime":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v2, v2, v22

    const-wide/32 v4, 0x1e8480

    sub-long v18, v2, v4

    .line 1770
    .end local v17    # "dc":I
    .local v18, "deadline":J
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 1771
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    .line 1772
    .local v26, "wt":Ljava/lang/Thread;
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->PARKBLOCKER:J

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1773
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1774
    move-object/from16 v0, p1

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-wide v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_6

    .line 1775
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 1776
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1777
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->PARKBLOCKER:J

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1778
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v18, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    sget-object v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v9, p0

    move-wide/from16 v12, p2

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1781
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    goto/16 :goto_0

    .line 1759
    .end local v14    # "pc":J
    .end local v18    # "deadline":J
    .end local v22    # "parkTime":J
    .end local v26    # "wt":Ljava/lang/Thread;
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int v4, v4, v25

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    or-long v14, v2, v4

    goto/16 :goto_1

    .line 1764
    .restart local v14    # "pc":J
    .restart local v17    # "dc":I
    :cond_8
    add-int/lit8 v2, v17, 0x1

    int-to-long v2, v2

    const-wide/32 v4, 0x77359400

    mul-long v22, v2, v4

    goto/16 :goto_2

    .line 1769
    .end local v17    # "dc":I
    :cond_9
    const-wide/16 v18, 0x0

    .restart local v18    # "deadline":J
    move-wide/from16 v22, v18

    .restart local v22    # "parkTime":J
    goto/16 :goto_3
.end method

.method private static checkFactory(Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;)Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1
    .param p0, "factory"    # Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .prologue
    .line 2462
    if-nez p0, :cond_0

    .line 2463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2464
    :cond_0
    return-object p0
.end method

.method private static checkParallelism(I)I
    .locals 1
    .param p0, "parallelism"    # I

    .prologue
    .line 2455
    if-lez p0, :cond_0

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_1

    .line 2456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2457
    :cond_1
    return p0
.end method

.method private static checkPermission()V
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 535
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 536
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 537
    :cond_0
    return-void
.end method

.method public static commonPool()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 1

    .prologue
    .line 2501
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .locals 5

    .prologue
    .line 2317
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .local v3, "z":Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;
    if-eqz v3, :cond_0

    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .local v1, "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    array-length v4, v2

    add-int/lit8 v0, v4, -0x1

    .local v0, "m":I
    if-ltz v0, :cond_0

    iget v4, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x7e

    aget-object v4, v2, v4

    .end local v0    # "m":I
    .end local v1    # "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    .end local v2    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findNonEmptyStealQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .locals 8

    .prologue
    .line 2078
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->current()Lio/netty/util/internal/ThreadLocalRandom;

    move-result-object v6

    invoke-virtual {v6}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt()I

    move-result v4

    .line 2080
    .local v4, "r":I
    :cond_0
    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .line 2081
    .local v2, "ps":I
    iget-object v5, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v5, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_2

    array-length v6, v5

    add-int/lit8 v1, v6, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_2

    .line 2082
    add-int/lit8 v6, v1, 0x1

    shl-int/lit8 v0, v6, 0x2

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2083
    sub-int v6, v4, v0

    shl-int/lit8 v6, v6, 0x1

    or-int/lit8 v6, v6, 0x1

    and-int/2addr v6, v1

    aget-object v3, v5, v6

    .local v3, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    iget v6, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v7, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v6, v7

    if-gez v6, :cond_1

    .line 2089
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v3    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_1
    return-object v3

    .line 2082
    .restart local v0    # "j":I
    .restart local v1    # "m":I
    .restart local v3    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2088
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v3    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_2
    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    if-ne v6, v2, :cond_0

    .line 2089
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private fullExternalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1535
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/4 v8, 0x0

    .line 1536
    .local v8, "r":I
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .line 1538
    .local v38, "z":Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;
    :cond_0
    :goto_0
    if-nez v38, :cond_2

    .line 1539
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->indexSeed:I

    const v5, 0x61c88647

    add-int v9, v8, v5

    .end local v8    # "r":I
    .local v9, "r":I
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_16

    if-eqz v9, :cond_16

    .line 1541
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    new-instance v38, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .end local v38    # "z":Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;
    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;-><init>(I)V

    .restart local v38    # "z":Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;
    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v8, v9

    .line 1549
    .end local v9    # "r":I
    .restart local v8    # "r":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .local v14, "ps":I
    if-gez v14, :cond_3

    .line 1550
    new-instance v4, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v4

    .line 1543
    .end local v14    # "ps":I
    :cond_2
    if-nez v8, :cond_1

    .line 1544
    move-object/from16 v0, v38

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    .line 1545
    shl-int/lit8 v4, v8, 0xd

    xor-int/2addr v8, v4

    .line 1546
    ushr-int/lit8 v4, v8, 0x11

    xor-int/2addr v8, v4

    .line 1547
    shl-int/lit8 v4, v8, 0x5

    xor-int/2addr v8, v4

    move-object/from16 v0, v38

    iput v8, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    goto :goto_1

    .line 1551
    .restart local v14    # "ps":I
    :cond_3
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .local v37, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_4

    move-object/from16 v0, v37

    array-length v4, v0

    add-int/lit8 v31, v4, -0x1

    .local v31, "m":I
    if-gez v31, :cond_b

    .line 1553
    .end local v31    # "m":I
    .end local v37    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    move/from16 v34, v0

    .line 1554
    .local v34, "p":I
    const/4 v4, 0x1

    move/from16 v0, v34

    if-le v0, v4, :cond_9

    add-int/lit8 v32, v34, -0x1

    .line 1555
    .local v32, "n":I
    :goto_2
    ushr-int/lit8 v4, v32, 0x1

    or-int v32, v32, v4

    ushr-int/lit8 v4, v32, 0x2

    or-int v32, v32, v4

    ushr-int/lit8 v4, v32, 0x4

    or-int v32, v32, v4

    .line 1556
    ushr-int/lit8 v4, v32, 0x8

    or-int v32, v32, v4

    ushr-int/lit8 v4, v32, 0x10

    or-int v32, v32, v4

    add-int/lit8 v4, v32, 0x1

    shl-int/lit8 v32, v4, 0x1

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .restart local v37    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_5

    move-object/from16 v0, v37

    array-length v4, v0

    if-nez v4, :cond_a

    :cond_5
    move/from16 v0, v32

    new-array v0, v0, [Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v33, v0

    .line 1559
    .local v33, "nws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_6

    sget-object v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_15

    move v14, v15

    .line 1561
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1562
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    if-eqz v37, :cond_7

    move-object/from16 v0, v37

    array-length v4, v0

    if-nez v4, :cond_8

    :cond_7
    if-eqz v33, :cond_8

    .line 1563
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1564
    :cond_8
    const/high16 v4, -0x80000000

    and-int/2addr v4, v14

    add-int/lit8 v5, v14, 0x2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 1565
    .local v21, "nps":I
    sget-object v16, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1566
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_0

    .line 1554
    .end local v21    # "nps":I
    .end local v32    # "n":I
    .end local v33    # "nws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v37    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_9
    const/16 v32, 0x1

    goto :goto_2

    .line 1557
    .restart local v32    # "n":I
    .restart local v37    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_a
    const/16 v33, 0x0

    goto :goto_3

    .line 1568
    .end local v32    # "n":I
    .end local v34    # "p":I
    .restart local v31    # "m":I
    :cond_b
    and-int v4, v8, v31

    and-int/lit8 v30, v4, 0x7e

    .local v30, "k":I
    aget-object v23, v37, v30

    .local v23, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v23, :cond_10

    .line 1569
    move-object/from16 v0, v23

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-nez v4, :cond_f

    sget-object v22, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v24, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v22 .. v27}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1570
    move-object/from16 v0, v23

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v28, v0

    .line 1571
    .local v28, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-object/from16 v0, v23

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    move/from16 v35, v0

    .line 1572
    .local v35, "s":I
    const/16 v36, 0x0

    .line 1574
    .local v36, "submitted":Z
    if-eqz v28, :cond_c

    :try_start_0
    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v5, v35, 0x1

    move-object/from16 v0, v23

    iget v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_d

    :cond_c
    invoke-virtual/range {v23 .. v23}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v28

    if-eqz v28, :cond_e

    .line 1576
    :cond_d
    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int v4, v4, v35

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v4, v5

    sget v5, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int v29, v4, v5

    .line 1577
    .local v29, "j":I
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v29

    int-to-long v6, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v6, v7, v1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1578
    add-int/lit8 v4, v35, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    const/16 v36, 0x1

    .line 1582
    .end local v29    # "j":I
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 1584
    if-eqz v36, :cond_f

    .line 1585
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 1586
    return-void

    .line 1582
    :catchall_0
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    iput v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    throw v4

    .line 1589
    .end local v28    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v35    # "s":I
    .end local v36    # "submitted":Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1591
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_13

    .line 1592
    new-instance v23, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .end local v23    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5, v8}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;-><init>(Lio/netty/util/internal/chmv8/ForkJoinPool;Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;II)V

    .line 1593
    .restart local v23    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    move/from16 v0, v30

    int-to-short v4, v0

    move-object/from16 v0, v23

    iput-short v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1594
    move-object/from16 v0, p0

    iget v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_11

    sget-object v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .restart local v15    # "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_14

    move v14, v15

    .line 1596
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_11
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1597
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    if-eqz v37, :cond_12

    move-object/from16 v0, v37

    array-length v4, v0

    move/from16 v0, v30

    if-ge v0, v4, :cond_12

    aget-object v4, v37, v30

    if-nez v4, :cond_12

    .line 1598
    aput-object v23, v37, v30

    .line 1599
    :cond_12
    const/high16 v4, -0x80000000

    and-int/2addr v4, v14

    add-int/lit8 v5, v14, 0x2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 1600
    .restart local v21    # "nps":I
    sget-object v16, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1601
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_0

    .line 1604
    .end local v21    # "nps":I
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_0

    .end local v14    # "ps":I
    .restart local v15    # "ps":I
    :cond_14
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto :goto_5

    .end local v14    # "ps":I
    .end local v23    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v30    # "k":I
    .end local v31    # "m":I
    .restart local v15    # "ps":I
    .restart local v32    # "n":I
    .restart local v33    # "nws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v34    # "p":I
    :cond_15
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto/16 :goto_4

    .end local v8    # "r":I
    .end local v14    # "ps":I
    .end local v32    # "n":I
    .end local v33    # "nws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v34    # "p":I
    .end local v37    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v9    # "r":I
    :cond_16
    move v8, v9

    .end local v9    # "r":I
    .restart local v8    # "r":I
    goto/16 :goto_1
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    .prologue
    .line 2680
    sget v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonParallelism:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .local v5, "t":Ljava/lang/Thread;
    instance-of v8, v5, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v8, :cond_0

    move-object v6, v5

    .line 2199
    check-cast v6, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .local v6, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    iget-object v3, v6, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .local v3, "pool":Lio/netty/util/internal/chmv8/ForkJoinPool;
    iget-short v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    .line 2200
    .local v2, "p":I
    iget-object v4, v6, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v4, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    iget v8, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    iget v9, v4, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v1, v8, v9

    .line 2201
    .local v1, "n":I
    iget-wide v8, v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v10, 0x30

    shr-long/2addr v8, v10

    long-to-int v8, v8

    add-int v0, v8, v2

    .line 2202
    .local v0, "a":I
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_1

    :goto_0
    sub-int v7, v1, v7

    .line 2208
    .end local v0    # "a":I
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "pool":Lio/netty/util/internal/chmv8/ForkJoinPool;
    .end local v4    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v6    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :cond_0
    return v7

    .line 2202
    .restart local v0    # "a":I
    .restart local v1    # "n":I
    .restart local v2    # "p":I
    .restart local v3    # "pool":Lio/netty/util/internal/chmv8/ForkJoinPool;
    .restart local v4    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v6    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v7, 0x4

    goto :goto_0

    :cond_4
    const/16 v7, 0x8

    goto :goto_0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .prologue
    .line 3339
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3342
    :goto_0
    return-object v1

    .line 3340
    :catch_0
    move-exception v1

    .line 3342
    :try_start_1
    new-instance v1, Lio/netty/util/internal/chmv8/ForkJoinPool$2;

    invoke-direct {v1}, Lio/netty/util/internal/chmv8/ForkJoinPool$2;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3354
    :catch_1
    move-exception v0

    .line 3355
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private helpComplete(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/CountedCompleter;)I
    .locals 12
    .param p1, "joiner"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1918
    .local p2, "task":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    const/4 v8, 0x0

    .line 1919
    .local v8, "s":I
    iget-object v10, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v10, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_0

    array-length v11, v10

    add-int/lit8 v6, v11, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1921
    iget-short v4, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1922
    .local v4, "j":I
    add-int v11, v6, v6

    add-int/lit8 v9, v11, 0x1

    .line 1923
    .local v9, "scans":I
    const-wide/16 v0, 0x0

    .line 1924
    .local v0, "c":J
    move v5, v9

    .line 1926
    .local v5, "k":I
    :goto_0
    iget v8, p2, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-gez v8, :cond_1

    .line 1941
    .end local v0    # "c":J
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "m":I
    .end local v9    # "scans":I
    :cond_0
    return v8

    .line 1928
    .restart local v0    # "c":J
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "m":I
    .restart local v9    # "scans":I
    :cond_1
    invoke-virtual {p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->internalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1929
    move v5, v9

    .line 1924
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 1930
    :cond_3
    iget v8, p2, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-ltz v8, :cond_0

    .line 1932
    and-int v11, v4, v6

    aget-object v7, v10, v11

    .local v7, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_4

    invoke-virtual {v7, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1933
    move v5, v9

    goto :goto_1

    .line 1934
    :cond_4
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_2

    .line 1935
    iget-wide v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .end local v0    # "c":J
    .local v2, "c":J
    cmp-long v11, v0, v2

    if-eqz v11, :cond_0

    .line 1937
    move v5, v9

    move-wide v0, v2

    .end local v2    # "c":J
    .restart local v0    # "c":J
    goto :goto_1
.end method

.method private final helpRelease(J[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)V
    .locals 15
    .param p1, "c"    # J
    .param p3, "ws"    # [Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .param p4, "w"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .param p5, "q"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .param p6, "b"    # I

    .prologue
    .line 1797
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_0

    move-wide/from16 v0, p1

    long-to-int v10, v0

    .local v10, "e":I
    if-lez v10, :cond_0

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    const v3, 0xffff

    and-int v11, v10, v3

    .local v11, "i":I
    if-le v2, v11, :cond_0

    aget-object v14, p3, v11

    .local v14, "v":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v14, :cond_0

    iget-wide v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1800
    iget v2, v14, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v4, v4

    const/high16 v5, 0x10000

    add-int/2addr v4, v5

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long v8, v2, v4

    .line 1802
    .local v8, "nc":J
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int v12, v2, v3

    .line 1803
    .local v12, "ne":I
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    move/from16 v0, p6

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p4

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_0

    iget v2, v14, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_0

    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1806
    iput v12, v14, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1807
    iget-object v13, v14, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v13, "p":Ljava/lang/Thread;
    if-eqz v13, :cond_0

    .line 1808
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v13}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1811
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v11    # "i":I
    .end local v12    # "ne":I
    .end local v13    # "p":Ljava/lang/Thread;
    .end local v14    # "v":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_0
    return-void
.end method

.method private static makeCommonPool()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 10

    .prologue
    .line 3299
    const/4 v2, -0x1

    .line 3300
    .local v2, "parallelism":I
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3302
    .local v3, "factory":Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v4, 0x0

    .line 3304
    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    const-string v1, "java.util.concurrent.ForkJoinPool.common.parallelism"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3306
    .local v9, "pp":Ljava/lang/String;
    const-string v1, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3308
    .local v7, "fp":Ljava/lang/String;
    const-string v1, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3310
    .local v8, "hp":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 3311
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3312
    :cond_0
    if-eqz v7, :cond_1

    .line 3313
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v3, v0

    .line 3315
    :cond_1
    if-eqz v8, :cond_2

    .line 3316
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3321
    .end local v7    # "fp":Ljava/lang/String;
    .end local v8    # "hp":Ljava/lang/String;
    .end local v9    # "pp":Ljava/lang/String;
    :cond_2
    :goto_0
    if-gez v2, :cond_3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-gez v2, :cond_3

    .line 3323
    const/4 v2, 0x0

    .line 3324
    :cond_3
    const/16 v1, 0x7fff

    if-le v2, v1, :cond_4

    .line 3325
    const/16 v2, 0x7fff

    .line 3326
    :cond_4
    new-instance v1, Lio/netty/util/internal/chmv8/ForkJoinPool;

    const/4 v5, 0x0

    const-string v6, "ForkJoinPool.commonPool-worker-"

    invoke-direct/range {v1 .. v6}, Lio/netty/util/internal/chmv8/ForkJoinPool;-><init>(ILio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    return-object v1

    .line 3318
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static managedBlock(Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;)V
    .locals 4
    .param p0, "blocker"    # Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3206
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 3207
    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v2, :cond_4

    .line 3208
    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 3209
    .local v0, "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    :cond_0
    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3210
    iget-wide v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    invoke-virtual {v0, v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryCompensate(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3212
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 3215
    :cond_2
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    .line 3225
    .end local v0    # "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    :cond_3
    :goto_0
    return-void

    .line 3215
    .restart local v0    # "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    throw v2

    .line 3222
    .end local v0    # "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_4
    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    .prologue
    .line 1123
    const-class v1, Lio/netty/util/internal/chmv8/ForkJoinPool;

    monitor-enter v1

    :try_start_0
    sget v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static quiesceCommonPool()V
    .locals 4

    .prologue
    .line 3107
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3108
    return-void
.end method

.method private releasePlock(I)V
    .locals 1
    .param p1, "ps"    # I

    .prologue
    .line 1308
    iput p1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .line 1309
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    .line 1310
    return-void

    .line 1309
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final scan(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)I
    .locals 29
    .param p1, "w"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .param p2, "r"    # I

    .prologue
    .line 1690
    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .line 1691
    .local v6, "c":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v8, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_1

    array-length v5, v8

    add-int/lit8 v28, v5, -0x1

    .local v28, "m":I
    if-ltz v28, :cond_1

    if-eqz p1, :cond_1

    .line 1692
    add-int v5, v28, v28

    add-int/lit8 v27, v5, 0x1

    .local v27, "j":I
    move-object/from16 v0, p1

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v26, v0

    .line 1694
    .local v26, "ec":I
    :cond_0
    sub-int v5, p2, v27

    and-int v5, v5, v28

    aget-object v10, v8, v5

    .local v10, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_4

    iget v11, v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v11, "b":I
    iget v5, v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v5, v11, v5

    if-gez v5, :cond_4

    iget-object v13, v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v13, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v13, :cond_4

    .line 1696
    array-length v5, v13

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v11

    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v5, v9

    sget v9, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int/2addr v5, v9

    int-to-long v14, v5

    .line 1697
    .local v14, "i":J
    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v5, v13, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v16, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v16, :cond_1

    .line 1699
    if-gez v26, :cond_2

    move-object/from16 v5, p0

    move-object/from16 v9, p1

    .line 1700
    invoke-direct/range {v5 .. v11}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpRelease(J[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)V

    .line 1725
    .end local v10    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v11    # "b":I
    .end local v13    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v14    # "i":J
    .end local v16    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v26    # "ec":I
    .end local v27    # "j":I
    .end local v28    # "m":I
    :cond_1
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 1701
    .restart local v10    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v11    # "b":I
    .restart local v13    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v14    # "i":J
    .restart local v16    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v26    # "ec":I
    .restart local v27    # "j":I
    .restart local v28    # "m":I
    :cond_2
    iget v5, v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v5, v11, :cond_1

    sget-object v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1703
    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lio/netty/util/internal/chmv8/ForkJoinPool;->QBASE:J

    add-int/lit8 v9, v11, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v5, v10, v0, v1, v9}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1704
    add-int/lit8 v5, v11, 0x1

    iget v9, v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v5, v9

    if-gez v5, :cond_3

    .line 1705
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 1706
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->runTask(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0

    .line 1711
    .end local v11    # "b":I
    .end local v13    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v14    # "i":J
    .end local v16    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v27, v27, -0x1

    if-gez v27, :cond_0

    .line 1712
    long-to-int v4, v6

    .local v4, "e":I
    or-int v5, v26, v4

    if-gez v5, :cond_5

    .line 1713
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v6, v7, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitWork(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;JI)I

    move-result v5

    goto :goto_1

    .line 1714
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    cmp-long v5, v18, v6

    if-nez v5, :cond_1

    .line 1715
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x1000000000000L

    sub-long v20, v6, v20

    const-wide v22, -0x100000000L

    and-long v20, v20, v22

    or-long v24, v18, v20

    .line 1716
    .local v24, "nc":J
    move-object/from16 v0, p1

    iput v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    .line 1717
    const/high16 v5, -0x80000000

    or-int v5, v5, v26

    move-object/from16 v0, p1

    iput v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1718
    sget-object v18, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v20, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v19, p0

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v25}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1719
    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    goto :goto_0
.end method

.method private tryAddWorker()V
    .locals 15

    .prologue
    const/16 v14, 0x20

    .line 1319
    :cond_0
    iget-wide v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .local v4, "c":J
    ushr-long v0, v4, v14

    long-to-int v12, v0

    .local v12, "u":I
    if-gez v12, :cond_1

    const v0, 0x8000

    and-int/2addr v0, v12

    if-eqz v0, :cond_1

    long-to-int v8, v4

    .local v8, "e":I
    if-ltz v8, :cond_1

    .line 1320
    add-int/lit8 v0, v12, 0x1

    const v1, 0xffff

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v1, v12

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    shl-long/2addr v0, v14

    int-to-long v2, v8

    or-long v6, v0, v2

    .line 1322
    .local v6, "nc":J
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    const/4 v9, 0x0

    .line 1325
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v13, 0x0

    .line 1327
    .local v13, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :try_start_0
    iget-object v10, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v10, "fac":Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v10, :cond_2

    invoke-interface {v10, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lio/netty/util/internal/chmv8/ForkJoinPool;)Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1329
    invoke-virtual {v13}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v6    # "nc":J
    .end local v8    # "e":I
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "fac":Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .end local v13    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    return-void

    .line 1332
    .restart local v6    # "nc":J
    .restart local v8    # "e":I
    .restart local v9    # "ex":Ljava/lang/Throwable;
    .restart local v13    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :catch_0
    move-exception v11

    .line 1333
    .local v11, "rex":Ljava/lang/Throwable;
    move-object v9, v11

    .line 1335
    .end local v11    # "rex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, v13, v9}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryHelpStealer(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I
    .locals 23
    .param p1, "joiner"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1832
    .local p2, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/16 v18, 0x0

    .local v18, "stat":I
    const/16 v19, 0x0

    .line 1833
    .local v19, "steps":I
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p1

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v2, v4

    if-ltz v2, :cond_1

    .line 1836
    :cond_0
    move-object/from16 v20, p2

    .line 1837
    .local v20, "subtask":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-object/from16 v11, p1

    .line 1839
    .local v11, "j":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    move/from16 v17, v0

    .local v17, "s":I
    if-gez v17, :cond_2

    .line 1840
    move/from16 v18, v17

    .line 1907
    .end local v11    # "j":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v17    # "s":I
    .end local v20    # "subtask":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_1
    :goto_1
    return v18

    .line 1843
    .restart local v11    # "j":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v17    # "s":I
    .restart local v20    # "subtask":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    .local v22, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v13, v2, -0x1

    .local v13, "m":I
    if-lez v13, :cond_1

    .line 1845
    iget v2, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    or-int/lit8 v2, v2, 0x1

    and-int v9, v2, v13

    .local v9, "h":I
    aget-object v21, v22, v9

    .local v21, "v":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v0, v20

    if-eq v2, v0, :cond_6

    .line 1847
    :cond_3
    move v15, v9

    .line 1848
    .local v15, "origin":I
    :cond_4
    add-int/lit8 v2, v9, 0x2

    and-int v9, v2, v13

    and-int/lit8 v2, v9, 0xf

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v0, v20

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    .line 1851
    :cond_5
    aget-object v21, v22, v9

    if-eqz v21, :cond_9

    move-object/from16 v0, v21

    iget-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_9

    .line 1853
    iput v9, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    .line 1862
    .end local v15    # "origin":I
    :cond_6
    move-object/from16 v0, v20

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 1864
    move-object/from16 v0, v21

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v8, "b":I
    move-object/from16 v0, v21

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v8, v2

    if-gez v2, :cond_a

    move-object/from16 v0, v21

    iget-object v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v3, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;
    if-eqz v3, :cond_a

    .line 1865
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v8

    sget v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int v10, v2, v4

    .line 1866
    .local v10, "i":I
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1868
    .local v6, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-object/from16 v0, v20

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    .line 1871
    const/16 v18, 0x1

    .line 1872
    move-object/from16 v0, v21

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    if-ne v2, v8, :cond_6

    .line 1873
    if-eqz v6, :cond_1

    .line 1875
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1876
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->QBASE:J

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4, v5, v7}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 1877
    move-object/from16 v0, p1

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v16, v0

    .line 1878
    .local v16, "ps":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    iget v12, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 1880
    .local v12, "jt":I
    :cond_7
    move-object/from16 v0, p1

    iput-object v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1881
    invoke-virtual {v6}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 1883
    move-object/from16 v0, p2

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p1

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-eq v2, v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pop()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1885
    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto/16 :goto_1

    .line 1856
    .end local v3    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;
    .end local v6    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v10    # "i":I
    .end local v12    # "jt":I
    .end local v16    # "ps":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v15    # "origin":I
    :cond_9
    if-ne v9, v15, :cond_4

    goto/16 :goto_1

    .line 1891
    .end local v15    # "origin":I
    .restart local v8    # "b":I
    :cond_a
    move-object/from16 v0, v21

    iget-object v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1892
    .local v14, "next":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-object/from16 v0, v20

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v0, v20

    if-ne v2, v0, :cond_0

    .line 1895
    if-eqz v14, :cond_1

    add-int/lit8 v19, v19, 0x1

    const/16 v2, 0x40

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 1898
    move-object/from16 v20, v14

    .line 1899
    move-object/from16 v11, v21

    .line 1900
    goto/16 :goto_0
.end method

.method private tryTerminate(ZZ)Z
    .locals 38
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 2229
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v4, :cond_0

    .line 2230
    const/4 v4, 0x0

    .line 2260
    :goto_0
    return v4

    .line 2231
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .local v8, "ps":I
    if-ltz v8, :cond_3

    .line 2232
    if-nez p2, :cond_1

    .line 2233
    const/4 v4, 0x0

    goto :goto_0

    .line 2234
    :cond_1
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_2

    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v9, v8, 0x2

    .end local v8    # "ps":I
    .local v9, "ps":I
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_e

    move v8, v9

    .line 2236
    .end local v9    # "ps":I
    .restart local v8    # "ps":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v8

    .line 2237
    :goto_1
    add-int/lit8 v4, v8, 0x2

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x80000000

    or-int v15, v4, v5

    .line 2238
    .local v15, "nps":I
    sget-object v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v11, p0

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2239
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    .line 2242
    .end local v15    # "nps":I
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    move-wide/from16 v20, v0

    .local v20, "c":J
    const-wide v4, 0x80000000L

    and-long v4, v4, v20

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 2243
    const/16 v4, 0x20

    ushr-long v4, v20, v4

    long-to-int v4, v4

    int-to-short v4, v4

    move-object/from16 v0, p0

    iget-short v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v4, v5

    if-gtz v4, :cond_4

    .line 2244
    monitor-enter p0

    .line 2245
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 2246
    monitor-exit p0

    .line 2248
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 2246
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2250
    :cond_5
    if-nez p1, :cond_9

    .line 2252
    const/16 v4, 0x30

    shr-long v4, v20, v4

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-short v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v4, v5

    if-lez v4, :cond_6

    .line 2253
    const/4 v4, 0x0

    goto :goto_0

    .line 2254
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v36, v0

    .local v36, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v36, :cond_9

    .line 2255
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_2
    move-object/from16 v0, v36

    array-length v4, v0

    move/from16 v0, v31

    if-ge v0, v4, :cond_9

    .line 2256
    aget-object v35, v36, v31

    .local v35, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_8

    invoke-virtual/range {v35 .. v35}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    and-int/lit8 v4, v31, 0x1

    if-eqz v4, :cond_8

    move-object/from16 v0, v35

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v4, :cond_8

    .line 2259
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 2260
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2255
    :cond_8
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 2265
    .end local v31    # "i":I
    .end local v35    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v36    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_9
    sget-object v16, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    const-wide v4, 0x80000000L

    or-long v22, v20, v4

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v23}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2266
    const/16 v34, 0x0

    .local v34, "pass":I
    :goto_3
    const/4 v4, 0x3

    move/from16 v0, v34

    if-ge v0, v4, :cond_3

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v36, v0

    .restart local v36    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v36, :cond_d

    .line 2269
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v32, v0

    .line 2270
    .local v32, "n":I
    const/16 v31, 0x0

    .restart local v31    # "i":I
    :goto_4
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_c

    .line 2271
    aget-object v35, v36, v31

    .restart local v35    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_b

    .line 2272
    const/4 v4, -0x1

    move-object/from16 v0, v35

    iput v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 2273
    if-lez v34, :cond_b

    .line 2274
    invoke-virtual/range {v35 .. v35}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 2275
    const/4 v4, 0x1

    move/from16 v0, v34

    if-le v0, v4, :cond_b

    move-object/from16 v0, v35

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->owner:Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    move-object/from16 v37, v0

    .local v37, "wt":Ljava/lang/Thread;
    if-eqz v37, :cond_b

    .line 2276
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 2278
    :try_start_1
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2282
    :cond_a
    :goto_5
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 2270
    .end local v37    # "wt":Ljava/lang/Thread;
    :cond_b
    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    .line 2290
    .end local v35    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    move-wide/from16 v26, v0

    .local v26, "cc":J
    move-wide/from16 v0, v26

    long-to-int v4, v0

    const v5, 0x7fffffff

    and-int v30, v4, v5

    .local v30, "e":I
    if-eqz v30, :cond_d

    const v4, 0xffff

    and-int v31, v30, v4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    if-ltz v31, :cond_d

    aget-object v35, v36, v31

    .restart local v35    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_d

    .line 2292
    move-object/from16 v0, v35

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/high16 v6, 0x1000000000000L

    add-long v6, v6, v26

    const-wide/high16 v10, -0x1000000000000L

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    const-wide v6, 0xffff80000000L

    and-long v6, v6, v26

    or-long v28, v4, v6

    .line 2295
    .local v28, "nc":J
    move-object/from16 v0, v35

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v5, -0x80000000

    or-int v5, v5, v30

    if-ne v4, v5, :cond_c

    sget-object v22, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v24, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v23, p0

    invoke-virtual/range {v22 .. v29}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2297
    const/high16 v4, 0x10000

    add-int v4, v4, v30

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-object/from16 v0, v35

    iput v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2298
    const/4 v4, -0x1

    move-object/from16 v0, v35

    iput v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 2299
    move-object/from16 v0, v35

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v33, v0

    .local v33, "p":Ljava/lang/Thread;
    if-eqz v33, :cond_c

    .line 2300
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_6

    .line 2266
    .end local v26    # "cc":J
    .end local v28    # "nc":J
    .end local v30    # "e":I
    .end local v31    # "i":I
    .end local v32    # "n":I
    .end local v33    # "p":Ljava/lang/Thread;
    .end local v35    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_d
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_3

    .line 2279
    .restart local v31    # "i":I
    .restart local v32    # "n":I
    .restart local v35    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v37    # "wt":Ljava/lang/Thread;
    :catch_0
    move-exception v4

    goto/16 :goto_5

    .end local v8    # "ps":I
    .end local v20    # "c":J
    .end local v31    # "i":I
    .end local v32    # "n":I
    .end local v34    # "pass":I
    .end local v35    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v36    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v37    # "wt":Ljava/lang/Thread;
    .restart local v9    # "ps":I
    :cond_e
    move v8, v9

    .end local v9    # "ps":I
    .restart local v8    # "ps":I
    goto/16 :goto_1
.end method


# virtual methods
.method final awaitJoin(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I
    .locals 18
    .param p1, "joiner"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 2007
    .local p2, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/4 v13, 0x0

    .line 2008
    .local v13, "s":I
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v13, :cond_8

    if-eqz p1, :cond_8

    .line 2009
    move-object/from16 v0, p1

    iget-object v12, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2010
    .local v12, "prevJoin":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2011
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget v13, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v13, :cond_0

    .line 2013
    :cond_1
    if-ltz v13, :cond_2

    move-object/from16 v0, p2

    instance-of v2, v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v2, :cond_2

    move-object/from16 v2, p2

    .line 2014
    check-cast v2, Lio/netty/util/internal/chmv8/CountedCompleter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpComplete(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/CountedCompleter;)I

    move-result v13

    .line 2015
    :cond_2
    const-wide/16 v10, 0x0

    .line 2016
    .local v10, "cc":J
    :cond_3
    :goto_0
    if-ltz v13, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v13, :cond_7

    .line 2017
    invoke-direct/range {p0 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryHelpStealer(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p2

    iget v13, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v13, :cond_3

    .line 2019
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryCompensate(J)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2020
    move-object/from16 v0, p0

    iget-wide v10, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    goto :goto_0

    .line 2022
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinTask;->trySetSignal()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget v13, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v13, :cond_5

    .line 2023
    monitor-enter p2

    .line 2024
    :try_start_0
    move-object/from16 v0, p2

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v2, :cond_6

    .line 2026
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2032
    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2035
    :cond_5
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide v8, 0xffffffffffffL

    and-long/2addr v8, v6

    const-wide/high16 v14, -0x1000000000000L

    and-long/2addr v14, v6

    const-wide/high16 v16, 0x1000000000000L

    add-long v14, v14, v16

    or-long/2addr v8, v14

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 2031
    .end local v6    # "c":J
    :cond_6
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 2032
    :catchall_0
    move-exception v2

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2042
    :cond_7
    move-object/from16 v0, p1

    iput-object v12, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2044
    .end local v10    # "cc":J
    .end local v12    # "prevJoin":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_8
    return v13

    .line 2027
    .restart local v10    # "cc":J
    .restart local v12    # "prevJoin":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 23
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 3069
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 3071
    .local v8, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    .line 3072
    .local v16, "thread":Ljava/lang/Thread;
    move-object/from16 v0, v16

    instance-of v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v18, v16

    check-cast v18, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .local v18, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    move-object/from16 v0, v18

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 3074
    move-object/from16 v0, v18

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpQuiescePool(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 3075
    const/16 v19, 0x1

    .line 3099
    .end local v18    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :goto_0
    return v19

    .line 3077
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 3079
    .local v14, "startTime":J
    const/4 v11, 0x0

    .line 3080
    .local v11, "r":I
    const/4 v5, 0x1

    .line 3081
    .local v5, "found":Z
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->isQuiescent()Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v7, v19, -0x1

    .local v7, "m":I
    if-ltz v7, :cond_5

    .line 3083
    if-nez v5, :cond_3

    .line 3084
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v20, v14

    cmp-long v19, v20, v8

    if-lez v19, :cond_2

    .line 3085
    const/16 v19, 0x0

    goto :goto_0

    .line 3086
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3088
    :cond_3
    const/4 v5, 0x0

    .line 3089
    add-int/lit8 v19, v7, 0x1

    shl-int/lit8 v6, v19, 0x2

    .local v6, "j":I
    move v12, v11

    .end local v11    # "r":I
    .local v12, "r":I
    :goto_2
    if-ltz v6, :cond_6

    .line 3091
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "r":I
    .restart local v11    # "r":I
    and-int v19, v12, v7

    aget-object v10, v17, v19

    .local v10, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_4

    iget v4, v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v4, "b":I
    iget v0, v10, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    move/from16 v19, v0

    sub-int v19, v4, v19

    if-gez v19, :cond_4

    .line 3092
    const/4 v5, 0x1

    .line 3093
    invoke-virtual {v10, v4}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v13

    .local v13, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v13, :cond_1

    .line 3094
    invoke-virtual {v13}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_1

    .line 3089
    .end local v4    # "b":I
    .end local v13    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v6, v6, -0x1

    move v12, v11

    .end local v11    # "r":I
    .restart local v12    # "r":I
    goto :goto_2

    .line 3099
    .end local v6    # "j":I
    .end local v7    # "m":I
    .end local v10    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v12    # "r":I
    .end local v17    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v11    # "r":I
    :cond_5
    const/16 v19, 0x1

    goto :goto_0

    .end local v11    # "r":I
    .restart local v6    # "j":I
    .restart local v7    # "m":I
    .restart local v12    # "r":I
    .restart local v17    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_6
    move v11, v12

    .end local v12    # "r":I
    .restart local v11    # "r":I
    goto :goto_1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const-wide/16 v14, 0x0

    const/4 v10, 0x0

    .line 3032
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3033
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 3034
    :cond_0
    sget-object v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v12, :cond_2

    .line 3035
    invoke-virtual/range {p0 .. p3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3049
    :cond_1
    :goto_0
    return v10

    .line 3038
    :cond_2
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 3039
    .local v8, "nanos":J
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->isTerminated()Z

    move-result v12

    if-eqz v12, :cond_3

    move v10, v11

    .line 3040
    goto :goto_0

    .line 3041
    :cond_3
    cmp-long v12, v8, v14

    if-lez v12, :cond_1

    .line 3043
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    add-long v4, v12, v8

    .line 3044
    .local v4, "deadline":J
    monitor-enter p0

    .line 3046
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->isTerminated()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3047
    monitor-exit p0

    move v10, v11

    goto :goto_0

    .line 3048
    :cond_4
    cmp-long v12, v8, v14

    if-gtz v12, :cond_5

    .line 3049
    monitor-exit p0

    goto :goto_0

    .line 3054
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3050
    :cond_5
    :try_start_1
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 3051
    .local v6, "millis":J
    cmp-long v12, v6, v14

    if-lez v12, :cond_6

    .end local v6    # "millis":J
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 3052
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    sub-long v8, v4, v12

    .line 3053
    goto :goto_1

    .line 3051
    .restart local v6    # "millis":J
    :cond_6
    const-wide/16 v6, 0x1

    goto :goto_2
.end method

.method final deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 36
    .param p1, "wt"    # Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1403
    const/16 v34, 0x0

    .line 1404
    .local v34, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v34, v0

    if-eqz v34, :cond_3

    .line 1406
    const/4 v2, -0x1

    move-object/from16 v0, v34

    iput v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 1407
    :cond_0
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    .local v6, "sc":J
    move-object/from16 v0, v34

    iget v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v8, v3

    add-long/2addr v8, v6

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1410
    move-object/from16 v0, p0

    iget v12, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .local v12, "ps":I
    and-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_1

    sget-object v8, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v13, v12, 0x2

    .end local v12    # "ps":I
    .local v13, "ps":I
    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_a

    move v12, v13

    .line 1412
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v12

    .line 1413
    :goto_0
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    add-int/lit8 v3, v12, 0x2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    or-int v19, v2, v3

    .line 1415
    .local v19, "nps":I
    :try_start_0
    move-object/from16 v0, v34

    iget-short v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    move/from16 v30, v0

    .line 1416
    .local v30, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    .line 1417
    .local v35, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_2

    if-ltz v30, :cond_2

    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_2

    aget-object v2, v35, v30

    move-object/from16 v0, v34

    if-ne v2, v0, :cond_2

    .line 1418
    const/4 v2, 0x0

    aput-object v2, v35, v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    :cond_2
    sget-object v14, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1421
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    .line 1426
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .end local v30    # "idx":I
    .end local v35    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_3
    sget-object v20, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    move-wide/from16 v24, v0

    .local v24, "c":J
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v24, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0x100000000L

    sub-long v4, v24, v4

    const-wide v8, 0xffff00000000L

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long v4, v4, v24

    or-long v26, v2, v4

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1431
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v34, :cond_5

    move-object/from16 v0, v34

    iget-object v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v2, :cond_5

    .line 1432
    invoke-virtual/range {v34 .. v34}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1434
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    move-wide/from16 v24, v0

    const/16 v2, 0x20

    ushr-long v2, v24, v2

    long-to-int v0, v2

    move/from16 v32, v0

    .local v32, "u":I
    if-gez v32, :cond_5

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v28, v0

    .local v28, "e":I
    if-ltz v28, :cond_5

    .line 1435
    if-lez v28, :cond_8

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    .restart local v35    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_5

    const v2, 0xffff

    and-int v29, v28, v2

    .local v29, "i":I
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v29

    if-ge v0, v2, :cond_5

    aget-object v33, v35, v29

    .local v33, "v":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-nez v33, :cond_7

    .line 1458
    .end local v28    # "e":I
    .end local v29    # "i":I
    .end local v32    # "u":I
    .end local v33    # "v":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v35    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_5
    :goto_1
    if-nez p2, :cond_9

    .line 1459
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->helpExpungeStaleExceptions()V

    .line 1462
    :goto_2
    return-void

    .line 1420
    .end local v24    # "c":J
    .restart local v6    # "sc":J
    .restart local v12    # "ps":I
    .restart local v19    # "nps":I
    :catchall_0
    move-exception v2

    sget-object v14, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1421
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    :cond_6
    throw v2

    .line 1440
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .restart local v24    # "c":J
    .restart local v28    # "e":I
    .restart local v29    # "i":I
    .restart local v32    # "u":I
    .restart local v33    # "v":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v35    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_7
    move-object/from16 v0, v33

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int v4, v4, v32

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    or-long v26, v2, v4

    .line 1442
    .local v26, "nc":J
    move-object/from16 v0, v33

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int v3, v3, v28

    if-ne v2, v3, :cond_5

    .line 1444
    sget-object v20, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1445
    const/high16 v2, 0x10000

    add-int v2, v2, v28

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v33

    iput v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1446
    move-object/from16 v0, v33

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v31, v0

    .local v31, "p":Ljava/lang/Thread;
    if-eqz v31, :cond_5

    .line 1447
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_1

    .line 1452
    .end local v26    # "nc":J
    .end local v29    # "i":I
    .end local v31    # "p":Ljava/lang/Thread;
    .end local v33    # "v":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v35    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_8
    move/from16 v0, v32

    int-to-short v2, v0

    if-gez v2, :cond_5

    .line 1453
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryAddWorker()V

    goto :goto_1

    .line 1461
    .end local v28    # "e":I
    .end local v32    # "u":I
    :cond_9
    invoke-static/range {p2 .. p2}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v24    # "c":J
    .restart local v6    # "sc":J
    .restart local v13    # "ps":I
    :cond_a
    move v12, v13

    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    goto/16 :goto_0
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 2869
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Lio/netty/util/internal/chmv8/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 2871
    .local v0, "count":I
    iget-object v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2872
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 2873
    aget-object v3, v4, v1

    .local v3, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2874
    :goto_1
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v2

    .local v2, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    .line 2875
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2876
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2872
    .end local v2    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2881
    .end local v1    # "i":I
    .end local v3    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public execute(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2538
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-nez p1, :cond_0

    .line 2539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2540
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2541
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 2551
    if-nez p1, :cond_0

    .line 2552
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2554
    :cond_0
    instance-of v1, p1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2555
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2558
    .local v0, "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2559
    return-void

    .line 2557
    .end local v0    # "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method final externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/CountedCompleter",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 2352
    .local p1, "task":Lio/netty/util/internal/chmv8/CountedCompleter;, "Lio/netty/util/internal/chmv8/CountedCompleter<*>;"
    sget-object v13, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .line 2353
    .local v12, "z":Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;
    iget-object v11, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 2354
    .local v11, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    const/4 v9, 0x0

    .line 2355
    .local v9, "s":I
    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    array-length v13, v11

    add-int/lit8 v7, v13, -0x1

    .local v7, "m":I
    if-ltz v7, :cond_0

    iget v4, v12, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    .local v4, "j":I
    and-int v13, v4, v7

    and-int/lit8 v13, v13, 0x7e

    aget-object v5, v11, v13

    .local v5, "joiner":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 2357
    add-int v13, v7, v7

    add-int/lit8 v10, v13, 0x1

    .line 2358
    .local v10, "scans":I
    const-wide/16 v0, 0x0

    .line 2359
    .local v0, "c":J
    or-int/lit8 v4, v4, 0x1

    .line 2360
    move v6, v10

    .line 2362
    .local v6, "k":I
    :goto_0
    iget v9, p1, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-gez v9, :cond_1

    .line 2377
    .end local v0    # "c":J
    .end local v4    # "j":I
    .end local v5    # "joiner":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v6    # "k":I
    .end local v7    # "m":I
    .end local v10    # "scans":I
    :cond_0
    return v9

    .line 2364
    .restart local v0    # "c":J
    .restart local v4    # "j":I
    .restart local v5    # "joiner":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v6    # "k":I
    .restart local v7    # "m":I
    .restart local v10    # "scans":I
    :cond_1
    invoke-virtual {v5, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->externalPopAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2365
    move v6, v10

    .line 2360
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 2366
    :cond_3
    iget v9, p1, Lio/netty/util/internal/chmv8/CountedCompleter;->status:I

    if-ltz v9, :cond_0

    .line 2368
    and-int v13, v4, v7

    aget-object v8, v11, v13

    .local v8, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_4

    invoke-virtual {v8, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAndExecCC(Lio/netty/util/internal/chmv8/CountedCompleter;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2369
    move v6, v10

    goto :goto_1

    .line 2370
    :cond_4
    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    .line 2371
    iget-wide v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .end local v0    # "c":J
    .local v2, "c":J
    cmp-long v13, v0, v2

    if-eqz v13, :cond_0

    .line 2373
    move v6, v10

    move-wide v0, v2

    .end local v2    # "c":J
    .restart local v0    # "c":J
    goto :goto_1
.end method

.method final externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1495
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .line 1497
    .local v17, "z":Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;
    move-object/from16 v0, p0

    iget v13, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .line 1498
    .local v13, "ps":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    .line 1499
    .local v16, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_2

    if-lez v13, :cond_2

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v11, v2, -0x1

    .local v11, "m":I
    if-ltz v11, :cond_2

    move-object/from16 v0, v17

    iget v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    .local v14, "r":I
    and-int v2, v11, v14

    and-int/lit8 v2, v2, 0x7e

    aget-object v3, v16, v2

    .local v3, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_2

    if-eqz v14, :cond_2

    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1502
    iget-object v8, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v8, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v8, :cond_1

    array-length v2, v8

    add-int/lit8 v9, v2, -0x1

    .local v9, "am":I
    iget v15, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v15, "s":I
    iget v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    sub-int v12, v15, v2

    .local v12, "n":I
    if-le v9, v12, :cond_1

    .line 1504
    and-int v2, v9, v15

    sget v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int v10, v2, v4

    .line 1505
    .local v10, "j":I
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    move-object/from16 v0, p1

    invoke-virtual {v2, v8, v4, v5, v0}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1506
    add-int/lit8 v2, v15, 0x1

    iput v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 1507
    const/4 v2, 0x0

    iput v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 1508
    const/4 v2, 0x1

    if-gt v12, v2, :cond_0

    .line 1509
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 1515
    .end local v3    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v8    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v9    # "am":I
    .end local v10    # "j":I
    .end local v11    # "m":I
    .end local v12    # "n":I
    .end local v14    # "r":I
    .end local v15    # "s":I
    :cond_0
    :goto_0
    return-void

    .line 1512
    .restart local v3    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v8    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .restart local v11    # "m":I
    .restart local v14    # "r":I
    :cond_1
    const/4 v2, 0x0

    iput v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 1514
    .end local v3    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v8    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v11    # "m":I
    .end local v14    # "r":I
    :cond_2
    invoke-direct/range {p0 .. p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->fullExternalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0
.end method

.method public getActiveThreadCount()I
    .locals 5

    .prologue
    .line 2733
    iget-short v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    iget-wide v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2734
    .local v0, "r":I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .end local v0    # "r":I
    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2702
    iget-short v1, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->mode:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFactory()Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 1

    .prologue
    .line 2670
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    .local v0, "par":I
    if-lez v0, :cond_0

    .end local v0    # "par":I
    :goto_0
    return v0

    .restart local v0    # "par":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 4

    .prologue
    .line 2692
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    iget-wide v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    .prologue
    .line 2805
    const/4 v0, 0x0

    .line 2807
    .local v0, "count":I
    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2808
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2809
    aget-object v2, v3, v1

    .local v2, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    .line 2810
    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 2808
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2813
    .end local v1    # "i":I
    .end local v2    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 8

    .prologue
    .line 2786
    const-wide/16 v0, 0x0

    .line 2788
    .local v0, "count":J
    iget-object v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2789
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2790
    aget-object v3, v4, v2

    .local v3, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2791
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 2789
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2794
    .end local v2    # "i":I
    .end local v3    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    .prologue
    .line 2714
    const/4 v1, 0x0

    .line 2716
    .local v1, "rc":I
    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2717
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2718
    aget-object v2, v3, v0

    .local v2, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2719
    add-int/lit8 v1, v1, 0x1

    .line 2717
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2722
    .end local v0    # "i":I
    .end local v2    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 8

    .prologue
    .line 2764
    iget-wide v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    .line 2766
    .local v0, "count":J
    iget-object v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 2767
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 2768
    aget-object v3, v4, v2

    .local v3, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2769
    iget v5, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 2767
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2772
    .end local v2    # "i":I
    .end local v3    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    .prologue
    .line 2824
    iget-object v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    .line 2825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2826
    aget-object v1, v2, v0

    .local v1, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2827
    const/4 v3, 0x1

    .line 2830
    .end local v0    # "i":I
    .end local v1    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_1
    return v3

    .line 2825
    .restart local v0    # "i":I
    .restart local v1    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2830
    .end local v0    # "i":I
    .end local v1    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method final helpJoinOnce(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 3
    .param p1, "joiner"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2057
    .local p2, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget v1, p2, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v1, "s":I
    if-ltz v1, :cond_4

    .line 2058
    iget-object v0, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2059
    .local v0, "prevJoin":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    iput-object p2, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2060
    :cond_0
    invoke-virtual {p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p2, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v1, :cond_0

    .line 2062
    :cond_1
    if-ltz v1, :cond_3

    .line 2063
    instance-of v2, p2, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 2064
    check-cast v2, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-direct {p0, p1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpComplete(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/CountedCompleter;)I

    .line 2065
    :cond_2
    iget v2, p2, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryHelpStealer(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 2068
    :cond_3
    iput-object v0, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentJoin:Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2070
    .end local v0    # "prevJoin":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v1    # "s":I
    :cond_4
    return-void
.end method

.method final helpQuiescePool(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V
    .locals 23
    .param p1, "w"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .prologue
    .line 2100
    move-object/from16 v0, p1

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-object/from16 v20, v0

    .line 2101
    .local v20, "ps":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/16 v18, 0x1

    .line 2103
    .local v18, "active":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v22

    .local v22, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v22, :cond_1

    .line 2104
    invoke-virtual/range {v22 .. v22}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 2105
    :cond_1
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->findNonEmptyStealQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v21

    .local v21, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_4

    .line 2106
    if-nez v18, :cond_3

    .line 2107
    const/16 v18, 0x1

    .line 2108
    :cond_2
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide v10, 0xffffffffffffL

    and-long/2addr v10, v6

    const-wide/high16 v12, -0x1000000000000L

    and-long/2addr v12, v6

    const-wide/high16 v14, 0x1000000000000L

    add-long/2addr v12, v14

    or-long v8, v10, v12

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2113
    .end local v6    # "c":J
    :cond_3
    move-object/from16 v0, v21

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    move/from16 v19, v0

    .local v19, "b":I
    move-object/from16 v0, v21

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v19, v2

    if-gez v2, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 2114
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-virtual/range {v22 .. v22}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    .line 2115
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->currentSteal:Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_0

    .line 2118
    .end local v19    # "b":I
    :cond_4
    if-eqz v18, :cond_6

    .line 2119
    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v6

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v4, v6

    const-wide/high16 v10, 0x1000000000000L

    sub-long/2addr v4, v10

    or-long v8, v2, v4

    .line 2120
    .local v8, "nc":J
    const/16 v2, 0x30

    shr-long v2, v8, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget-short v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-nez v2, :cond_5

    .line 2131
    .end local v8    # "nc":J
    :goto_1
    return-void

    .line 2122
    .restart local v8    # "nc":J
    :cond_5
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2123
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2125
    .end local v6    # "c":J
    .end local v8    # "nc":J
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget-short v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    sget-object v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v6

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v4, v6

    const-wide/high16 v14, 0x1000000000000L

    add-long/2addr v4, v14

    or-long v16, v2, v4

    move-object/from16 v11, p0

    move-wide v14, v6

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method final incrementActiveCount()V
    .locals 12

    .prologue
    .line 1615
    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .local v4, "c":J
    const-wide v6, 0xffffffffffffL

    and-long/2addr v6, v4

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v8, v4

    const-wide/high16 v10, 0x1000000000000L

    add-long/2addr v8, v10

    or-long/2addr v6, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    return-void
.end method

.method public invoke(Lio/netty/util/internal/chmv8/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2523
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2524
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2525
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2526
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v9, 0x0

    .line 2624
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2626
    .local v2, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 2628
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Callable;

    .line 2629
    .local v6, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v1, v6}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2630
    .local v1, "f":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    invoke-virtual {p0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2638
    .end local v1    # "f":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-nez v0, :cond_2

    .line 2639
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 2640
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2639
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2633
    .end local v3    # "i":I
    .end local v5    # "size":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "size":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 2634
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-virtual {v7}, Lio/netty/util/internal/chmv8/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2633
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2635
    :cond_1
    const/4 v0, 0x1

    .line 2638
    if-nez v0, :cond_3

    .line 2639
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3
    if-ge v3, v5, :cond_3

    .line 2640
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2639
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "size":I
    :cond_2
    throw v8

    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "size":I
    :cond_3
    return-object v2
.end method

.method public isQuiescent()Z
    .locals 4

    .prologue
    .line 2749
    iget-short v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    iget-wide v2, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    const/16 v1, 0x30

    shr-long/2addr v2, v1

    long-to-int v1, v2

    add-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 3013
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 6

    .prologue
    .line 2983
    iget-wide v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .line 2984
    .local v0, "c":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget-short v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isTerminating()Z
    .locals 6

    .prologue
    .line 3002
    iget-wide v0, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .line 3003
    .local v0, "c":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget-short v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    add-int/2addr v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3232
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3236
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 4
    .param p1, "w"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;",
            ")",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2141
    :cond_0
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v2

    .local v2, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 2146
    :goto_0
    return-object v3

    .line 2143
    :cond_1
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->findNonEmptyStealQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v1

    .local v1, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-nez v1, :cond_2

    .line 2144
    const/4 v3, 0x0

    goto :goto_0

    .line 2145
    :cond_2
    iget v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v3, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    sub-int v3, v0, v3

    if-gez v3, :cond_0

    invoke-virtual {v1, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->pollAt(I)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    .line 2146
    goto :goto_0
.end method

.method protected pollSubmission()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2842
    iget-object v3, p0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2843
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2844
    aget-object v2, v3, v0

    .local v2, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poll()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v1

    .local v1, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 2848
    .end local v0    # "i":I
    .end local v1    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v2    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_1
    return-object v1

    .line 2843
    .restart local v0    # "i":I
    .restart local v2    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2848
    .end local v0    # "i":I
    .end local v2    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final registerWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;)Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .locals 30
    .param p1, "wt"    # Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .prologue
    .line 1355
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v22, v0

    .local v22, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v22, :cond_0

    .line 1357
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1359
    :cond_0
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->indexSeed:I

    .local v8, "s":I
    const v5, 0x61c88647

    add-int v9, v8, v5

    .end local v8    # "s":I
    .local v9, "s":I
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v9, :cond_0

    .line 1361
    new-instance v28, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    iget-short v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->mode:S

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v9}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;-><init>(Lio/netty/util/internal/chmv8/ForkJoinPool;Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;II)V

    .line 1362
    .local v28, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    .local v14, "ps":I
    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_1

    sget-object v10, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_8

    move v14, v15

    .line 1364
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1365
    :goto_0
    const/high16 v4, -0x80000000

    and-int/2addr v4, v14

    add-int/lit8 v5, v14, 0x2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 1367
    .local v21, "nps":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v29, v0

    .local v29, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v29, :cond_5

    .line 1368
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "n":I
    add-int/lit8 v23, v24, -0x1

    .line 1369
    .local v23, "m":I
    shl-int/lit8 v4, v9, 0x1

    or-int/lit8 v26, v4, 0x1

    .line 1370
    .local v26, "r":I
    and-int v26, v26, v23

    aget-object v4, v29, v26

    if-eqz v4, :cond_4

    .line 1371
    const/16 v25, 0x0

    .line 1372
    .local v25, "probes":I
    const/4 v4, 0x4

    move/from16 v0, v24

    if-gt v0, v4, :cond_3

    const/16 v27, 0x2

    .line 1373
    .local v27, "step":I
    :cond_2
    :goto_1
    add-int v4, v26, v27

    and-int v26, v4, v23

    aget-object v4, v29, v26

    if-eqz v4, :cond_4

    .line 1374
    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 1375
    shl-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    check-cast v29, [Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .restart local v29    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1376
    add-int/lit8 v23, v24, -0x1

    .line 1377
    const/16 v25, 0x0

    goto :goto_1

    .line 1372
    .end local v27    # "step":I
    :cond_3
    ushr-int/lit8 v4, v24, 0x1

    const v5, 0xfffe

    and-int/2addr v4, v5

    add-int/lit8 v27, v4, 0x2

    goto :goto_1

    .line 1381
    .end local v25    # "probes":I
    :cond_4
    move/from16 v0, v26

    int-to-short v4, v0

    move-object/from16 v0, v28

    iput-short v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    .line 1382
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1383
    aput-object v28, v29, v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    .end local v23    # "m":I
    .end local v24    # "n":I
    .end local v26    # "r":I
    :cond_5
    sget-object v16, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1387
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    .line 1389
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-short v5, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->poolIndex:S

    ushr-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    .line 1390
    return-object v28

    .line 1386
    .end local v29    # "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    sget-object v16, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lio/netty/util/internal/chmv8/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1387
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->releasePlock(I)V

    :cond_7
    throw v4

    .end local v14    # "ps":I
    .end local v21    # "nps":I
    .restart local v15    # "ps":I
    :cond_8
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto/16 :goto_0
.end method

.method final runWorker(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V
    .locals 2
    .param p1, "w"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .prologue
    .line 1660
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->growArray()[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1661
    iget v0, p1, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->hint:I

    .local v0, "r":I
    :goto_0
    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->scan(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1662
    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    goto :goto_0

    .line 1664
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 2949
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkPermission()V

    .line 2950
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 2951
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2972
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->checkPermission()V

    .line 2973
    invoke-direct {p0, v0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 2974
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork([Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V
    .locals 17
    .param p1, "ws"    # [Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .param p2, "q"    # Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .prologue
    .line 1629
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v14, v2

    .local v14, "u":I
    if-ltz v14, :cond_2

    .line 1652
    :cond_1
    :goto_0
    return-void

    .line 1631
    :cond_2
    long-to-int v10, v6

    .local v10, "e":I
    if-gtz v10, :cond_3

    .line 1632
    int-to-short v2, v14

    if-gez v2, :cond_1

    .line 1633
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryAddWorker()V

    goto :goto_0

    .line 1636
    :cond_3
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v2, v0

    const v3, 0xffff

    and-int v11, v10, v3

    .local v11, "i":I
    if-le v2, v11, :cond_1

    aget-object v15, p1, v11

    .local v15, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    .line 1639
    iget v2, v15, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int/2addr v4, v14

    int-to-long v4, v4

    const/16 v16, 0x20

    shl-long v4, v4, v16

    or-long v8, v2, v4

    .line 1641
    .local v8, "nc":J
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int v12, v2, v3

    .line 1642
    .local v12, "ne":I
    iget v2, v15, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_4

    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1644
    iput v12, v15, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1645
    iget-object v13, v15, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v13, "p":Ljava/lang/Thread;
    if-eqz v13, :cond_1

    .line 1646
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v13}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_0

    .line 1649
    .end local v13    # "p":Ljava/lang/Thread;
    :cond_4
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p2

    iget v3, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-lt v2, v3, :cond_0

    goto :goto_0
.end method

.method public submit(Lio/netty/util/internal/chmv8/ForkJoinTask;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TT;>;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2571
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2572
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2573
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2574
    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2605
    if-nez p1, :cond_0

    .line 2606
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2608
    :cond_0
    instance-of v1, p1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2609
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 2612
    .local v0, "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2613
    return-object v0

    .line 2611
    .end local v0    # "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2594
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2595
    .local v0, "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2596
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2583
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2584
    .local v0, "job":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 2585
    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->submit(Ljava/lang/Runnable;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    .prologue
    .line 2893
    const-wide/16 v10, 0x0

    .local v10, "qt":J
    const-wide/16 v8, 0x0

    .local v8, "qs":J
    const/4 v12, 0x0

    .line 2894
    .local v12, "rc":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->stealCount:J

    .line 2895
    .local v14, "st":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    .line 2897
    .local v4, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .local v18, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_2

    .line 2898
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    .line 2899
    aget-object v17, v18, v3

    .local v17, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_0

    .line 2900
    invoke-virtual/range {v17 .. v17}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v13

    .line 2901
    .local v13, "size":I
    and-int/lit8 v19, v3, 0x1

    if-nez v19, :cond_1

    .line 2902
    int-to-long v0, v13

    move-wide/from16 v20, v0

    add-long v8, v8, v20

    .line 2898
    .end local v13    # "size":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2904
    .restart local v13    # "size":I
    :cond_1
    int-to-long v0, v13

    move-wide/from16 v20, v0

    add-long v10, v10, v20

    .line 2905
    move-object/from16 v0, v17

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    .line 2906
    invoke-virtual/range {v17 .. v17}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2907
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2912
    .end local v3    # "i":I
    .end local v13    # "size":I
    .end local v17    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_2
    move-object/from16 v0, p0

    iget-short v7, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    .line 2913
    .local v7, "pc":I
    const/16 v19, 0x20

    ushr-long v20, v4, v19

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    add-int v16, v7, v19

    .line 2914
    .local v16, "tc":I
    const/16 v19, 0x30

    shr-long v20, v4, v19

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v2, v7, v19

    .line 2915
    .local v2, "ac":I
    if-gez v2, :cond_3

    .line 2916
    const/4 v2, 0x0

    .line 2918
    :cond_3
    const-wide v20, 0x80000000L

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_5

    .line 2919
    if-nez v16, :cond_4

    const-string v6, "Terminated"

    .line 2922
    .local v6, "level":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", parallelism = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", active = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", running = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", steals = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", tasks = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", submissions = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 2919
    .end local v6    # "level":Ljava/lang/String;
    :cond_4
    const-string v6, "Terminating"

    goto :goto_2

    .line 2921
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->plock:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    const-string v6, "Shutting down"

    .restart local v6    # "level":Ljava/lang/String;
    :goto_3
    goto/16 :goto_2

    .end local v6    # "level":Ljava/lang/String;
    :cond_6
    const-string v6, "Running"

    goto :goto_3
.end method

.method final tryCompensate(J)Z
    .locals 23
    .param p1, "c"    # J

    .prologue
    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v20, v0

    .line 1955
    .local v20, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget-short v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->parallelism:S

    move/from16 v16, v0

    .local v16, "pc":I
    move-wide/from16 v0, p1

    long-to-int v10, v0

    .line 1956
    .local v10, "e":I
    if-eqz v20, :cond_4

    move-object/from16 v0, v20

    array-length v2, v0

    add-int/lit8 v13, v2, -0x1

    .local v13, "m":I
    if-ltz v13, :cond_4

    if-ltz v10, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_4

    .line 1957
    and-int v2, v10, v13

    aget-object v19, v20, v2

    .line 1958
    .local v19, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_1

    if-eqz v19, :cond_1

    .line 1960
    move-object/from16 v0, v19

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const-wide v4, -0x100000000L

    and-long v4, v4, p1

    or-long v8, v2, v4

    .line 1962
    .local v8, "nc":J
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int v14, v2, v3

    .line 1963
    .local v14, "ne":I
    move-object/from16 v0, v19

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_4

    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1965
    move-object/from16 v0, v19

    iput v14, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1966
    move-object/from16 v0, v19

    iget-object v15, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v15, "p":Ljava/lang/Thread;
    if-eqz v15, :cond_0

    .line 1967
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v15}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1968
    :cond_0
    const/4 v2, 0x1

    .line 1996
    .end local v8    # "nc":J
    .end local v13    # "m":I
    .end local v14    # "ne":I
    .end local v15    # "p":Ljava/lang/Thread;
    .end local v19    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_0
    return v2

    .line 1971
    .restart local v13    # "m":I
    .restart local v19    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_1
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-short v0, v2

    move/from16 v18, v0

    .local v18, "tc":I
    if-ltz v18, :cond_2

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v2, v2

    add-int v2, v2, v16

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1973
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, p1, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffffffL

    and-long v4, v4, p1

    or-long v8, v2, v4

    .line 1974
    .restart local v8    # "nc":J
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1975
    const/4 v2, 0x1

    goto :goto_0

    .line 1977
    .end local v8    # "nc":J
    :cond_2
    add-int v2, v18, v16

    const/16 v3, 0x7fff

    if-ge v2, v3, :cond_4

    .line 1978
    const-wide v2, 0x100000000L

    add-long v2, v2, p1

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    const-wide v4, -0xffff00000001L

    and-long v4, v4, p1

    or-long v8, v2, v4

    .line 1979
    .restart local v8    # "nc":J
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1981
    const/4 v11, 0x0

    .line 1982
    .local v11, "ex":Ljava/lang/Throwable;
    const/16 v21, 0x0

    .line 1984
    .local v21, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->factory:Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v12, "fac":Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lio/netty/util/internal/chmv8/ForkJoinPool;)Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 1986
    invoke-virtual/range {v21 .. v21}, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1987
    const/4 v2, 0x1

    goto :goto_0

    .line 1989
    .end local v12    # "fac":Lio/netty/util/internal/chmv8/ForkJoinPool$ForkJoinWorkerThreadFactory;
    :catch_0
    move-exception v17

    .line 1990
    .local v17, "rex":Ljava/lang/Throwable;
    move-object/from16 v11, v17

    .line 1992
    .end local v17    # "rex":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lio/netty/util/internal/chmv8/ForkJoinPool;->deregisterWorker(Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 1996
    .end local v8    # "nc":J
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v13    # "m":I
    .end local v18    # "tc":I
    .end local v19    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v21    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2329
    .local p1, "task":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;

    .line 2330
    .local v17, "z":Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->workQueues:[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    .line 2331
    .local v16, "ws":[Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    const/4 v14, 0x0

    .line 2332
    .local v14, "popped":Z
    if-eqz v17, :cond_1

    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v11, v2, -0x1

    .local v11, "m":I
    if-ltz v11, :cond_1

    move-object/from16 v0, v17

    iget v2, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v2, v11

    and-int/lit8 v2, v2, 0x7e

    aget-object v3, v16, v2

    .local v3, "joiner":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    iget v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->base:I

    iget v15, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .local v15, "s":I
    if-eq v2, v15, :cond_1

    iget-object v10, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    .local v10, "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v10, :cond_1

    .line 2336
    array-length v2, v10

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v15, -0x1

    and-int/2addr v2, v4

    sget v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->ABASE:I

    add-int/2addr v2, v4

    int-to-long v12, v2

    .line 2337
    .local v12, "j":J
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v10, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_1

    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2339
    iget v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    if-ne v2, v15, :cond_0

    iget-object v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->array:[Lio/netty/util/internal/chmv8/ForkJoinTask;

    if-ne v2, v10, :cond_0

    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    move-object v5, v10

    move-wide v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2341
    add-int/lit8 v2, v15, -0x1

    iput v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->top:I

    .line 2342
    const/4 v14, 0x1

    .line 2344
    :cond_0
    const/4 v2, 0x0

    iput v2, v3, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    .line 2347
    .end local v3    # "joiner":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v10    # "a":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v11    # "m":I
    .end local v12    # "j":J
    .end local v15    # "s":I
    :cond_1
    return v14
.end method
