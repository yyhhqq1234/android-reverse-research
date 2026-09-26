.class public Lio/netty/buffer/PooledByteBufAllocator;
.super Lio/netty/buffer/AbstractByteBufAllocator;
.source "PooledByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

.field private static final DEFAULT_CACHE_TRIM_INTERVAL:I

.field private static final DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

.field private static final DEFAULT_MAX_ORDER:I

.field private static final DEFAULT_NORMAL_CACHE_SIZE:I

.field private static final DEFAULT_NUM_DIRECT_ARENA:I

.field private static final DEFAULT_NUM_HEAP_ARENA:I

.field private static final DEFAULT_PAGE_SIZE:I

.field private static final DEFAULT_SMALL_CACHE_SIZE:I

.field private static final DEFAULT_TINY_CACHE_SIZE:I

.field private static final MAX_CHUNK_SIZE:I = 0x40000000

.field private static final MIN_PAGE_SIZE:I = 0x1000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final directArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena",
            "<[B>;"
        }
    .end annotation
.end field

.field private final normalCacheSize:I

.field private final smallCacheSize:I

.field final threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

.field private final tinyCacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 30
    const-class v7, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v7}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v7

    sput-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 46
    const-string v7, "io.netty.allocator.pageSize"

    const/16 v8, 0x2000

    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, "defaultPageSize":I
    const/4 v4, 0x0

    .line 49
    .local v4, "pageSizeFallbackCause":Ljava/lang/Throwable;
    :try_start_0
    invoke-static {v2}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    sput v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    .line 56
    const-string v7, "io.netty.allocator.maxOrder"

    const/16 v8, 0xb

    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, "defaultMaxOrder":I
    const/4 v3, 0x0

    .line 59
    .local v3, "maxOrderFallbackCause":Ljava/lang/Throwable;
    :try_start_1
    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    invoke-static {v7, v1}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_1
    sput v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    .line 68
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 69
    .local v5, "runtime":Ljava/lang/Runtime;
    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    shl-int v0, v7, v8

    .line 70
    .local v0, "defaultChunkSize":I
    const/4 v7, 0x0

    .line 72
    const-string v8, "io.netty.allocator.numHeapArenas"

    .line 74
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    int-to-long v10, v9

    .line 75
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    int-to-long v14, v0

    div-long/2addr v12, v14

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3

    div-long/2addr v12, v14

    .line 73
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v9, v10

    .line 71
    invoke-static {v8, v9}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 70
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    .line 76
    const/4 v7, 0x0

    .line 78
    const-string v8, "io.netty.allocator.numDirectArenas"

    .line 80
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    int-to-long v10, v9

    .line 81
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maxDirectMemory()J

    move-result-wide v12

    int-to-long v14, v0

    div-long/2addr v12, v14

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    const-wide/16 v14, 0x3

    div-long/2addr v12, v14

    .line 79
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v9, v10

    .line 77
    invoke-static {v8, v9}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 76
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    .line 84
    const-string v7, "io.netty.allocator.tinyCacheSize"

    const/16 v8, 0x200

    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    .line 85
    const-string v7, "io.netty.allocator.smallCacheSize"

    const/16 v8, 0x100

    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    .line 86
    const-string v7, "io.netty.allocator.normalCacheSize"

    const/16 v8, 0x40

    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    .line 91
    const-string v7, "io.netty.allocator.maxCachedBufferCapacity"

    const v8, 0x8000

    .line 90
    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    .line 95
    const-string v7, "io.netty.allocator.cacheTrimInterval"

    const/16 v8, 0x2000

    .line 94
    invoke-static {v7, v8}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    .line 97
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v7}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.numHeapArenas: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.numDirectArenas: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    if-nez v4, :cond_1

    .line 101
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.pageSize: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :goto_2
    if-nez v3, :cond_2

    .line 106
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.maxOrder: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :goto_3
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.chunkSize: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    shl-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.tinyCacheSize: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.smallCacheSize: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.normalCacheSize: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.maxCachedBufferCapacity: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.cacheTrimInterval: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_0
    new-instance v7, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v8

    invoke-direct {v7, v8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    .line 119
    sput-object v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 120
    return-void

    .line 50
    .end local v0    # "defaultChunkSize":I
    .end local v1    # "defaultMaxOrder":I
    .end local v3    # "maxOrderFallbackCause":Ljava/lang/Throwable;
    .end local v5    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v6

    .line 51
    .local v6, "t":Ljava/lang/Throwable;
    move-object v4, v6

    .line 52
    const/16 v2, 0x2000

    goto/16 :goto_0

    .line 60
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v1    # "defaultMaxOrder":I
    .restart local v3    # "maxOrderFallbackCause":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 61
    .restart local v6    # "t":Ljava/lang/Throwable;
    move-object v3, v6

    .line 62
    const/16 v1, 0xb

    goto/16 :goto_1

    .line 103
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "defaultChunkSize":I
    .restart local v5    # "runtime":Ljava/lang/Runtime;
    :cond_1
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.pageSize: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 108
    :cond_2
    sget-object v7, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "-Dio.netty.allocator.maxOrder: {}"

    sget v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "nHeapArena"    # I
    .param p2, "nDirectArena"    # I
    .param p3, "pageSize"    # I
    .param p4, "maxOrder"    # I

    .prologue
    .line 139
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    .line 140
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "preferDirect"    # Z

    .prologue
    .line 135
    sget v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v5, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    .line 136
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 9
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I

    .prologue
    .line 143
    .line 144
    sget v6, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    sget v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIII)V

    .line 145
    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 9
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    .line 150
    new-instance v1, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-direct {v1, p0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    .line 151
    iput p6, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    .line 152
    move/from16 v0, p7

    iput v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    .line 153
    move/from16 v0, p8

    iput v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    .line 154
    invoke-static {p4, p5}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I

    move-result v6

    .line 156
    .local v6, "chunkSize":I
    if-gez p2, :cond_0

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nHeapArena: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: >= 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_0
    if-gez p3, :cond_1

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nDirectArea: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: >= 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_1
    invoke-static {p4}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I

    move-result v5

    .line 165
    .local v5, "pageShifts":I
    if-lez p2, :cond_3

    .line 166
    invoke-static {p2}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    .line 167
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v1, v1

    if-lt v7, v1, :cond_2

    .line 174
    .end local v7    # "i":I
    :goto_1
    if-lez p3, :cond_5

    .line 175
    invoke-static {p3}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    .line 176
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    iget-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v1, v1

    if-lt v7, v1, :cond_4

    .line 182
    .end local v7    # "i":I
    :goto_3
    return-void

    .line 168
    .restart local v7    # "i":I
    :cond_2
    iget-object v8, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    new-instance v1, Lio/netty/buffer/PoolArena$HeapArena;

    move-object v2, p0

    move v3, p4

    move v4, p5

    invoke-direct/range {v1 .. v6}, Lio/netty/buffer/PoolArena$HeapArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V

    aput-object v1, v8, v7

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 171
    .end local v7    # "i":I
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    goto :goto_1

    .line 177
    .restart local v7    # "i":I
    :cond_4
    iget-object v8, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    new-instance v1, Lio/netty/buffer/PoolArena$DirectArena;

    move-object v2, p0

    move v3, p4

    move v4, p5

    invoke-direct/range {v1 .. v6}, Lio/netty/buffer/PoolArena$DirectArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V

    aput-object v1, v8, v7

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 180
    .end local v7    # "i":I
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    goto :goto_3
.end method

.method public constructor <init>(ZIIIIIIIJ)V
    .locals 0
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I
    .param p9, "cacheThreadAliveCheckInterval"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    .line 190
    invoke-direct/range {p0 .. p8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIII)V

    .line 191
    return-void
.end method

.method static synthetic access$0(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method static synthetic access$1(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method static synthetic access$2(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    return v0
.end method

.method static synthetic access$3(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return v0
.end method

.method static synthetic access$4(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    return v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    return v0
.end method

.method private static newArenaArray(I)[Lio/netty/buffer/PoolArena;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lio/netty/buffer/PoolArena",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-array v0, p0, [Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method private static validateAndCalculateChunkSize(II)I
    .locals 7
    .param p0, "pageSize"    # I
    .param p1, "maxOrder"    # I

    .prologue
    .line 212
    const/16 v2, 0xe

    if-le p1, v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "maxOrder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected: 0-14)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_0
    move v0, p0

    .line 218
    .local v0, "chunkSize":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gtz v1, :cond_1

    .line 225
    return v0

    .line 219
    :cond_1
    const/high16 v2, 0x20000000

    if-le v0, v2, :cond_2

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 221
    const-string v3, "pageSize (%d) << maxOrder (%d) must not exceed %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 220
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 218
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private static validateAndCalculatePageShifts(I)I
    .locals 4
    .param p0, "pageSize"    # I

    .prologue
    const/16 v3, 0x1000

    .line 199
    if-ge p0, v3, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pageSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pageSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: power of 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method


# virtual methods
.method public freeThreadLocalCache()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->remove()V

    .line 282
    return-void
.end method

.method public hasThreadLocalCache()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->isSet()Z

    move-result v0

    return v0
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .prologue
    .line 245
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v3}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/PoolThreadCache;

    .line 246
    .local v1, "cache":Lio/netty/buffer/PoolThreadCache;
    iget-object v2, v1, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    .line 249
    .local v2, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v2, v1, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object v0

    .line 259
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    .line 252
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    new-instance v0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 254
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 255
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    new-instance v0, Lio/netty/buffer/UnpooledDirectByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0
.end method

.method protected newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .prologue
    .line 230
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v3}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/PoolThreadCache;

    .line 231
    .local v1, "cache":Lio/netty/buffer/PoolThreadCache;
    iget-object v2, v1, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    .line 234
    .local v2, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v2, v1, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object v0

    .line 240
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3

    .line 237
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledHeapByteBuf;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0
.end method
