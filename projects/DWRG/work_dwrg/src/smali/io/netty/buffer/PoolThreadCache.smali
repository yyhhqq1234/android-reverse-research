.class final Lio/netty/buffer/PoolThreadCache;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;,
        Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;,
        Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private allocations:I

.field final directArena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final freeSweepAllocationThreshold:I

.field private final freeTask:Ljava/lang/Runnable;

.field final heapArena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena",
            "<[B>;"
        }
    .end annotation
.end field

.field private final normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<[B>;"
        }
    .end annotation
.end field

.field private final numShiftsNormalDirect:I

.field private final numShiftsNormalHeap:I

.field private final smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<[B>;"
        }
    .end annotation
.end field

.field private final thread:Ljava/lang/Thread;

.field private final tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lio/netty/buffer/PoolThreadCache;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V
    .locals 4
    .param p3, "tinyCacheSize"    # I
    .param p4, "smallCacheSize"    # I
    .param p5, "normalCacheSize"    # I
    .param p6, "maxCachedBufferCapacity"    # I
    .param p7, "freeSweepAllocationThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<[B>;",
            "Lio/netty/buffer/PoolArena",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;IIIII)V"
        }
    .end annotation

    .prologue
    .local p1, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    .local p2, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    const/16 v3, 0x20

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->thread:Ljava/lang/Thread;

    .line 55
    new-instance v0, Lio/netty/buffer/PoolThreadCache$1;

    invoke-direct {v0, p0}, Lio/netty/buffer/PoolThreadCache$1;-><init>(Lio/netty/buffer/PoolThreadCache;)V

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->freeTask:Ljava/lang/Runnable;

    .line 68
    if-gez p6, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxCachedBufferCapacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    const/4 v0, 0x1

    if-ge p7, v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "freeSweepAllocationThreshold: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: > 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iput p7, p0, Lio/netty/buffer/PoolThreadCache;->freeSweepAllocationThreshold:I

    .line 77
    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    .line 78
    iput-object p2, p0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    .line 79
    if-eqz p2, :cond_2

    .line 80
    invoke-static {p3, v3}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 81
    iget v0, p2, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    invoke-static {p4, v0}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 83
    iget v0, p2, Lio/netty/buffer/PoolArena;->pageSize:I

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalDirect:I

    .line 84
    invoke-static {p5, p6, p2}, Lio/netty/buffer/PoolThreadCache;->createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 93
    :goto_0
    if-eqz p1, :cond_3

    .line 95
    invoke-static {p3, v3}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 96
    iget v0, p1, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    invoke-static {p4, v0}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 98
    iget v0, p1, Lio/netty/buffer/PoolArena;->pageSize:I

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalHeap:I

    .line 99
    invoke-static {p5, p6, p1}, Lio/netty/buffer/PoolThreadCache;->createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 111
    :goto_1
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->thread:Ljava/lang/Thread;

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->freeTask:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/netty/util/ThreadDeathWatcher;->watch(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 112
    return-void

    .line 88
    :cond_2
    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 89
    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 90
    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 91
    iput v2, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalDirect:I

    goto :goto_0

    .line 103
    :cond_3
    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 104
    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 105
    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 106
    iput v2, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalHeap:I

    goto :goto_1
.end method

.method static synthetic access$0(Lio/netty/buffer/PoolThreadCache;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lio/netty/buffer/PoolThreadCache;->free0()V

    return-void
.end method

.method private allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z
    .locals 4
    .param p2, "buf"    # Lio/netty/buffer/PooledByteBuf;
    .param p3, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;",
            "Lio/netty/buffer/PooledByteBuf;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    const/4 v1, 0x0

    .line 177
    if-nez p1, :cond_1

    move v0, v1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    invoke-virtual {p1, p2, p3}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocate(Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    .line 182
    .local v0, "allocated":Z
    iget v2, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    iget v3, p0, Lio/netty/buffer/PoolThreadCache;->freeSweepAllocationThreshold:I

    if-lt v2, v3, :cond_0

    .line 183
    iput v1, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    .line 184
    invoke-virtual {p0}, Lio/netty/buffer/PoolThreadCache;->trim()V

    goto :goto_0
.end method

.method private static cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 1
    .param p0, "cache"    # [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<TT;>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 302
    if-eqz p0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, p0, p1

    goto :goto_0
.end method

.method private cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget v1, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalDirect:I

    shr-int v1, p2, v1

    invoke-static {v1}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    .line 295
    .local v0, "idx":I
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 297
    .end local v0    # "idx":I
    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalHeap:I

    shr-int v1, p2, v1

    invoke-static {v1}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    .line 298
    .restart local v0    # "idx":I
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    goto :goto_0
.end method

.method private cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-static {p2}, Lio/netty/buffer/PoolArena;->smallIdx(I)I

    move-result v0

    .line 286
    .local v0, "idx":I
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    goto :goto_0
.end method

.method private cacheForTiny(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-static {p2}, Lio/netty/buffer/PoolArena;->tinyIdx(I)I

    move-result v0

    .line 278
    .local v0, "idx":I
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    .line 281
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    goto :goto_0
.end method

.method private static createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;
    .locals 6
    .param p0, "cacheSize"    # I
    .param p1, "maxCachedBufferCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lio/netty/buffer/PoolArena",
            "<TT;>;)[",
            "Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    if-lez p0, :cond_1

    .line 131
    iget v4, p2, Lio/netty/buffer/PoolArena;->chunkSize:I

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 132
    .local v3, "max":I
    const/4 v4, 0x1

    iget v5, p2, Lio/netty/buffer/PoolArena;->pageSize:I

    div-int v5, v3, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 135
    .local v0, "arraySize":I
    new-array v1, v0, [Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;

    .line 136
    .local v1, "cache":[Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_0

    .line 141
    .end local v0    # "arraySize":I
    .end local v1    # "cache":[Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;
    .end local v2    # "i":I
    .end local v3    # "max":I
    :goto_1
    return-object v1

    .line 137
    .restart local v0    # "arraySize":I
    .restart local v1    # "cache":[Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;
    .restart local v2    # "i":I
    .restart local v3    # "max":I
    :cond_0
    new-instance v4, Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;

    invoke-direct {v4, p0}, Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;-><init>(I)V

    aput-object v4, v1, v2

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "arraySize":I
    .end local v1    # "cache":[Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;
    .end local v2    # "i":I
    .end local v3    # "max":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static createSubPageCaches(II)[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    .locals 3
    .param p0, "cacheSize"    # I
    .param p1, "numCaches"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)[",
            "Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    if-lez p0, :cond_1

    .line 117
    new-array v0, p1, [Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    .line 118
    .local v0, "cache":[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 124
    .end local v0    # "cache":[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    .end local v1    # "i":I
    :goto_1
    return-object v0

    .line 120
    .restart local v0    # "cache":[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    invoke-direct {v2, p0}, Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;-><init>(I)V

    aput-object v2, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "cache":[Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static free(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free()I

    move-result v0

    goto :goto_0
.end method

.method private static free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I
    .locals 5
    .param p0, "caches"    # [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 233
    if-nez p0, :cond_1

    move v1, v2

    .line 241
    :cond_0
    return v1

    .line 237
    :cond_1
    const/4 v1, 0x0

    .line 238
    .local v1, "numFreed":I
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 239
    .local v0, "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->free(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I

    move-result v4

    add-int/2addr v1, v4

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private free0()V
    .locals 5

    .prologue
    .line 220
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I

    move-result v1

    .line 221
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I

    move-result v2

    .line 220
    add-int/2addr v1, v2

    .line 222
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I

    move-result v2

    .line 220
    add-int/2addr v1, v2

    .line 223
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I

    move-result v2

    .line 220
    add-int/2addr v1, v2

    .line 224
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I

    move-result v2

    .line 220
    add-int/2addr v1, v2

    .line 225
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)I

    move-result v2

    .line 220
    add-int v0, v1, v2

    .line 227
    .local v0, "numFreed":I
    if-lez v0, :cond_0

    sget-object v1, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Freed {} thread-local buffer(s) from thread: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lio/netty/buffer/PoolThreadCache;->thread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method private static log2(I)I
    .locals 2
    .param p0, "val"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "res":I
    :goto_0
    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    .line 151
    return v0

    .line 148
    :cond_0
    shr-int/lit8 p0, p0, 0x1

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static trim(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->access$0(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    goto :goto_0
.end method

.method private static trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 3
    .param p0, "caches"    # [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 261
    if-nez p0, :cond_1

    .line 267
    :cond_0
    return-void

    .line 264
    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 265
    .local v0, "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method add(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunk;JI)Z
    .locals 3
    .param p2, "chunk"    # Lio/netty/buffer/PoolChunk;
    .param p3, "handle"    # J
    .param p5, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<*>;",
            "Lio/netty/buffer/PoolChunk;",
            "JI)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {p1, p5}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-static {p5}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-direct {p0, p1, p5}, Lio/netty/buffer/PoolThreadCache;->cacheForTiny(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    .line 205
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    :goto_0
    if-nez v0, :cond_2

    .line 206
    const/4 v1, 0x0

    .line 208
    :goto_1
    return v1

    .line 200
    .end local v0    # "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    :cond_0
    invoke-direct {p0, p1, p5}, Lio/netty/buffer/PoolThreadCache;->cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    .line 202
    .restart local v0    # "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    goto :goto_0

    .line 203
    .end local v0    # "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    :cond_1
    invoke-direct {p0, p1, p5}, Lio/netty/buffer/PoolThreadCache;->cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    .restart local v0    # "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {v0, p2, p3, p4}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->add(Lio/netty/buffer/PoolChunk;J)Z

    move-result v1

    goto :goto_1
.end method

.method allocateNormal(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<*>;",
            "Lio/netty/buffer/PooledByteBuf",
            "<*>;II)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method allocateSmall(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<*>;",
            "Lio/netty/buffer/PooledByteBuf",
            "<*>;II)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method allocateTiny(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<*>;",
            "Lio/netty/buffer/PooledByteBuf",
            "<*>;II)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForTiny(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method free()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->thread:Ljava/lang/Thread;

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->freeTask:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lio/netty/util/ThreadDeathWatcher;->unwatch(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 216
    invoke-direct {p0}, Lio/netty/buffer/PoolThreadCache;->free0()V

    .line 217
    return-void
.end method

.method trim()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 253
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 254
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 255
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 256
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 257
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 258
    return-void
.end method
