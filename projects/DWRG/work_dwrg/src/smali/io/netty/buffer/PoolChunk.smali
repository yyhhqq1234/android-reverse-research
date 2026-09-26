.class final Lio/netty/buffer/PoolChunk;
.super Ljava/lang/Object;
.source "PoolChunk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field private final depthMap:[B

.field private freeBytes:I

.field private final log2ChunkSize:I

.field private final maxOrder:I

.field private final maxSubpageAllocs:I

.field final memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final memoryMap:[B

.field next:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final pageShifts:I

.field private final pageSize:I

.field parent:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList",
            "<TT;>;"
        }
    .end annotation
.end field

.field prev:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subpageOverflowMask:I

.field private final subpages:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation
.end field

.field final unpooled:Z

.field private final unusable:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lio/netty/buffer/PoolChunk;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;I)V
    .locals 3
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<TT;>;TT;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "memory":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 169
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 170
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    .line 171
    iput-object v2, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    .line 172
    iput-object v2, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    .line 173
    iput-object v2, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 174
    iput v1, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    .line 175
    iput v1, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 176
    iput v1, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 177
    iput v1, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 178
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    .line 179
    iput p3, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 180
    iget v0, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    invoke-static {v0}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    .line 181
    iput v1, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    .line 182
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIII)V
    .locals 7
    .param p3, "pageSize"    # I
    .param p4, "maxOrder"    # I
    .param p5, "pageShifts"    # I
    .param p6, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena",
            "<TT;>;TT;IIII)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "memory":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v4, 0x0

    iput-boolean v4, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 135
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 136
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    .line 137
    iput p3, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 138
    iput p5, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 139
    iput p4, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 140
    iput p6, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 141
    add-int/lit8 v4, p4, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    .line 142
    invoke-static {p6}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result v4

    iput v4, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    .line 143
    add-int/lit8 v4, p3, -0x1

    xor-int/lit8 v4, v4, -0x1

    iput v4, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    .line 144
    iput p6, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 146
    sget-boolean v4, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const/16 v4, 0x1e

    if-lt p4, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "maxOrder should be < 30, but is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 147
    :cond_0
    shl-int v4, v6, p4

    iput v4, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    .line 150
    iget v4, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    shl-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    iput-object v4, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    .line 151
    iget-object v4, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    array-length v4, v4

    new-array v4, v4, [B

    iput-object v4, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    .line 152
    const/4 v2, 0x1

    .line 153
    .local v2, "memoryMapIndex":I
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    if-le v0, p4, :cond_1

    .line 163
    iget v4, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    invoke-direct {p0, v4}, Lio/netty/buffer/PoolChunk;->newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v4

    iput-object v4, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 164
    return-void

    .line 154
    :cond_1
    shl-int v1, v6, v0

    .line 155
    .local v1, "depth":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    if-lt v3, v1, :cond_2

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    iget-object v4, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v2

    .line 158
    iget-object v4, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private allocateNode(I)I
    .locals 10
    .param p1, "d"    # I

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    const/4 v9, 0x1

    .line 263
    const/4 v0, 0x1

    .line 264
    .local v0, "id":I
    shl-int v4, v9, p1

    neg-int v1, v4

    .line 265
    .local v1, "initial":I
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    .line 266
    .local v2, "val":B
    if-le v2, p1, :cond_1

    .line 267
    const/4 v4, -0x1

    .line 282
    :goto_0
    return v4

    .line 270
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 271
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    .line 272
    if-le v2, p1, :cond_1

    .line 273
    xor-int/lit8 v0, v0, 0x1

    .line 274
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    .line 269
    :cond_1
    if-lt v2, p1, :cond_0

    and-int v4, v0, v1

    if-eqz v4, :cond_0

    .line 277
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    .line 278
    .local v3, "value":B
    sget-boolean v4, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-ne v3, p1, :cond_2

    and-int v4, v0, v1

    shl-int v5, v9, p1

    if-eq v4, v5, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "val = %d, id & initial = %d, d = %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 279
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    and-int v7, v0, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 280
    :cond_3
    iget-byte v4, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    invoke-direct {p0, v0, v4}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 281
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->updateParentsAlloc(I)V

    move v4, v0

    .line 282
    goto :goto_0
.end method

.method private allocateRun(I)J
    .locals 5
    .param p1, "normCapacity"    # I

    .prologue
    .line 292
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v2, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    invoke-static {p1}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result v3

    iget v4, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    sub-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 293
    .local v0, "d":I
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result v1

    .line 294
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 295
    int-to-long v2, v1

    .line 298
    :goto_0
    return-wide v2

    .line 297
    :cond_0
    iget v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 298
    int-to-long v2, v1

    goto :goto_0
.end method

.method private allocateSubpage(I)J
    .locals 12
    .param p1, "normCapacity"    # I

    .prologue
    .line 309
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v6, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 310
    .local v6, "d":I
    invoke-direct {p0, v6}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result v2

    .line 311
    .local v2, "id":I
    if-gez v2, :cond_0

    .line 312
    int-to-long v10, v2

    .line 328
    :goto_0
    return-wide v10

    .line 315
    :cond_0
    iget-object v8, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 316
    .local v8, "subpages":[Lio/netty/buffer/PoolSubpage;
    iget v4, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 318
    .local v4, "pageSize":I
    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    sub-int/2addr v1, v4

    iput v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 320
    invoke-direct {p0, v2}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v7

    .line 321
    .local v7, "subpageIdx":I
    aget-object v0, v8, v7

    .line 322
    .local v0, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    if-nez v0, :cond_1

    .line 323
    new-instance v0, Lio/netty/buffer/PoolSubpage;

    .end local v0    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-direct {p0, v2}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v3

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolSubpage;-><init>(Lio/netty/buffer/PoolChunk;IIII)V

    .line 324
    .restart local v0    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    aput-object v0, v8, v7

    .line 328
    :goto_1
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v10

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {v0, p1}, Lio/netty/buffer/PoolSubpage;->init(I)V

    goto :goto_1
.end method

.method private depth(I)B
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 394
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method private initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JII)V
    .locals 10
    .param p2, "handle"    # J
    .param p4, "bitmapIdx"    # I
    .param p5, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;JII)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    sget-boolean v0, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 374
    :cond_0
    long-to-int v7, p2

    .line 376
    .local v7, "memoryMapIdx":I
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v7}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v1

    aget-object v8, v0, v1

    .line 377
    .local v8, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    sget-boolean v0, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, v8, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 378
    :cond_1
    sget-boolean v0, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, v8, Lio/netty/buffer/PoolSubpage;->elemSize:I

    if-le p5, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 382
    :cond_2
    invoke-direct {p0, v7}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, p4

    iget v2, v8, Lio/netty/buffer/PoolSubpage;->elemSize:I

    mul-int/2addr v1, v2

    add-int v4, v0, v1

    iget v6, v8, Lio/netty/buffer/PoolSubpage;->elemSize:I

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move v5, p5

    .line 380
    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;JIII)V

    .line 383
    return-void
.end method

.method private static log2(I)I
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 399
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    new-array v0, p1, [Lio/netty/buffer/PoolSubpage;

    return-object v0
.end method

.method private runLength(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 404
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    const/4 v0, 0x1

    iget v1, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v2

    sub-int/2addr v1, v2

    shl-int/2addr v0, v1

    return v0
.end method

.method private runOffset(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 409
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v2

    shl-int/2addr v1, v2

    xor-int v0, p1, v1

    .line 410
    .local v0, "shift":I
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method private setValue(IB)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # B

    .prologue
    .line 390
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aput-byte p2, v0, p1

    .line 391
    return-void
.end method

.method private subpageIdx(I)I
    .locals 1
    .param p1, "memoryMapIdx"    # I

    .prologue
    .line 414
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    xor-int/2addr v0, p1

    return v0
.end method

.method private updateParentsAlloc(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 219
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    const/4 v4, 0x1

    if-gt p1, v4, :cond_0

    .line 227
    return-void

    .line 220
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 221
    .local v0, "parentId":I
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    .line 222
    .local v2, "val1":B
    xor-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    .line 223
    .local v3, "val2":B
    if-ge v2, v3, :cond_1

    move v1, v2

    .line 224
    .local v1, "val":B
    :goto_1
    invoke-direct {p0, v0, v1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 225
    move p1, v0

    goto :goto_0

    .end local v1    # "val":B
    :cond_1
    move v1, v3

    .line 223
    goto :goto_1
.end method

.method private updateParentsFree(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 237
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 238
    .local v0, "logChild":I
    :goto_0
    const/4 v5, 0x1

    if-gt p1, v5, :cond_0

    .line 253
    return-void

    .line 239
    :cond_0
    ushr-int/lit8 v1, p1, 0x1

    .line 240
    .local v1, "parentId":I
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    .line 241
    .local v3, "val1":B
    xor-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v4

    .line 242
    .local v4, "val2":B
    add-int/lit8 v0, v0, -0x1

    .line 244
    if-ne v3, v0, :cond_1

    if-ne v4, v0, :cond_1

    .line 245
    add-int/lit8 v5, v0, -0x1

    int-to-byte v5, v5

    invoke-direct {p0, v1, v5}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 251
    :goto_1
    move p1, v1

    goto :goto_0

    .line 247
    :cond_1
    if-ge v3, v4, :cond_2

    move v2, v3

    .line 248
    .local v2, "val":B
    :goto_2
    invoke-direct {p0, v1, v2}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    goto :goto_1

    .end local v2    # "val":B
    :cond_2
    move v2, v4

    .line 247
    goto :goto_2
.end method

.method private value(I)B
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 386
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aget-byte v0, v0, p1

    return v0
.end method


# virtual methods
.method allocate(I)J
    .locals 2
    .param p1, "normCapacity"    # I

    .prologue
    .line 203
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->allocateRun(I)J

    move-result-wide v0

    .line 206
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->allocateSubpage(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method free(J)V
    .locals 7
    .param p1, "handle"    # J

    .prologue
    .line 340
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    long-to-int v1, p1

    .line 341
    .local v1, "memoryMapIdx":I
    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v0, v4

    .line 343
    .local v0, "bitmapIdx":I
    if-eqz v0, :cond_2

    .line 344
    iget-object v3, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v4

    aget-object v2, v3, v4

    .line 345
    .local v2, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    sget-boolean v3, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 346
    :cond_1
    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lio/netty/buffer/PoolSubpage;->free(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    .end local v2    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :goto_0
    return-void

    .line 350
    :cond_2
    iget v3, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 351
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v3

    invoke-direct {p0, v1, v3}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 352
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->updateParentsFree(I)V

    goto :goto_0
.end method

.method initBuf(Lio/netty/buffer/PooledByteBuf;JI)V
    .locals 10
    .param p2, "handle"    # J
    .param p4, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;JI)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    long-to-int v7, p2

    .line 357
    .local v7, "memoryMapIdx":I
    const/16 v0, 0x20

    ushr-long v0, p2, v0

    long-to-int v4, v0

    .line 358
    .local v4, "bitmapIdx":I
    if-nez v4, :cond_1

    .line 359
    invoke-direct {p0, v7}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v8

    .line 360
    .local v8, "val":B
    sget-boolean v0, Lio/netty/buffer/PoolChunk;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-byte v0, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    if-eq v8, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 361
    :cond_0
    invoke-direct {p0, v7}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v4

    .end local v4    # "bitmapIdx":I
    invoke-direct {p0, v7}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v6

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;JIII)V

    .line 365
    .end local v8    # "val":B
    :goto_0
    return-void

    .restart local v4    # "bitmapIdx":I
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .line 363
    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JII)V

    goto :goto_0
.end method

.method initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JI)V
    .locals 6
    .param p2, "handle"    # J
    .param p4, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;JI)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    const/16 v0, 0x20

    ushr-long v0, p2, v0

    long-to-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JII)V

    .line 369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "Chunk("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, "%, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget v1, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    iget v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    iget v1, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method usage()I
    .locals 6

    .prologue
    .line 190
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 191
    .local v0, "freeBytes":I
    if-nez v0, :cond_0

    .line 192
    const/16 v2, 0x64

    .line 199
    :goto_0
    return v2

    .line 195
    :cond_0
    int-to-long v2, v0

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget v4, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 196
    .local v1, "freePercentage":I
    if-nez v1, :cond_1

    .line 197
    const/16 v2, 0x63

    goto :goto_0

    .line 199
    :cond_1
    rsub-int/lit8 v2, v1, 0x64

    goto :goto_0
.end method
