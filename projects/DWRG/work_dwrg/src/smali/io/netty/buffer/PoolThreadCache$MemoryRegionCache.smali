.class abstract Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry",
            "<TT;>;"
        }
    .end annotation
.end field

.field private entriesInUse:I

.field private head:I

.field private maxEntriesInUse:I

.field private final maxUnusedCached:I

.field private tail:I


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 350
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    invoke-static {p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->powerOfTwo(I)I

    move-result v1

    new-array v1, v1, [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 355
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxUnusedCached:I

    .line 356
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    new-instance v2, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;-><init>(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)V

    aput-object v2, v1, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->trim()V

    return-void
.end method

.method private static freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)Z
    .locals 6
    .param p0, "entry"    # Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .prologue
    .line 456
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 457
    .local v0, "chunk":Lio/netty/buffer/PoolChunk;
    if-nez v0, :cond_0

    .line 458
    const/4 v1, 0x0

    .line 465
    :goto_0
    return v1

    .line 461
    :cond_0
    iget-object v2, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v2

    .line 462
    :try_start_0
    iget-object v1, v0, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    iget-wide v4, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    invoke-virtual {v1, v0, v4, v5}, Lio/netty/buffer/PoolChunkList;->free(Lio/netty/buffer/PoolChunk;J)V

    .line 461
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 465
    const/4 v1, 0x1

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private nextIdx(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 477
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private static powerOfTwo(I)I
    .locals 1
    .param p0, "res"    # I

    .prologue
    const/4 v0, 0x2

    .line 359
    if-gt p0, v0, :cond_0

    move p0, v0

    .line 369
    :goto_0
    return p0

    .line 362
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 363
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 364
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 365
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 366
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 367
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 368
    add-int/lit8 p0, p0, 0x1

    .line 369
    goto :goto_0
.end method

.method private size()I
    .locals 2

    .prologue
    .line 472
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method private trim()V
    .locals 5

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const/4 v4, 0x0

    .line 436
    invoke-direct {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size()I

    move-result v2

    iget v3, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    sub-int v0, v2, v3

    .line 437
    .local v0, "free":I
    iput v4, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 438
    iput v4, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    .line 440
    iget v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxUnusedCached:I

    if-gt v0, v2, :cond_1

    .line 452
    :cond_0
    return-void

    .line 444
    :cond_1
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    .line 445
    .local v1, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 446
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    aget-object v2, v2, v1

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result v1

    .line 445
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lio/netty/buffer/PoolChunk;J)Z
    .locals 4
    .param p2, "handle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;J)Z"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    iget v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    aget-object v0, v1, v2

    .line 383
    .local v0, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 392
    :goto_0
    return v1

    .line 387
    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 389
    iput-object p1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 390
    iput-wide p2, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 391
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result v1

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->tail:I

    .line 392
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public allocate(Lio/netty/buffer/PooledByteBuf;I)Z
    .locals 7
    .param p2, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    aget-object v6, v0, v1

    .line 400
    .local v6, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    iget-object v0, v6, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 412
    :goto_0
    return v0

    .line 404
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 405
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    if-ge v0, v1, :cond_1

    .line 406
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    iput v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    .line 408
    :cond_1
    iget-object v1, v6, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iget-wide v2, v6, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->initBuf(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PooledByteBuf;I)V

    .line 410
    const/4 v0, 0x0

    iput-object v0, v6, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 411
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    .line 412
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public free()I
    .locals 3

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const/4 v2, 0x0

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "numFreed":I
    iput v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entriesInUse:I

    .line 421
    iput v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->maxEntriesInUse:I

    .line 422
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->head:I

    .line 423
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->entries:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    aget-object v2, v2, v0

    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    add-int/lit8 v1, v1, 0x1

    .line 422
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->nextIdx(I)I

    move-result v0

    goto :goto_0

    .line 427
    :cond_0
    return v1
.end method

.method protected abstract initBuf(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PooledByteBuf;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;J",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;I)V"
        }
    .end annotation
.end method
