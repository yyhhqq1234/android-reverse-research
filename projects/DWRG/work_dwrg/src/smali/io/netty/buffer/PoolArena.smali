.class abstract Lio/netty/buffer/PoolArena;
.super Ljava/lang/Object;
.source "PoolArena.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolArena$DirectArena;,
        Lio/netty/buffer/PoolArena$HeapArena;
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


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final numTinySubpagePools:I = 0x20


# instance fields
.field final chunkSize:I

.field private final maxOrder:I

.field final numSmallSubpagePools:I

.field final pageShifts:I

.field final pageSize:I

.field final parent:Lio/netty/buffer/PooledByteBufAllocator;

.field private final q000:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final q025:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final q050:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final q075:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final q100:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final qInit:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final smallSubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation
.end field

.field final subpageOverflowMask:I

.field private final tinySubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lio/netty/buffer/PoolArena;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/buffer/PoolArena;->$assertionsDisabled:Z

    .line 26
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V
    .locals 8
    .param p1, "parent"    # Lio/netty/buffer/PooledByteBufAllocator;
    .param p2, "pageSize"    # I
    .param p3, "maxOrder"    # I
    .param p4, "pageShifts"    # I
    .param p5, "chunkSize"    # I

    .prologue
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    const/4 v7, 0x0

    const/16 v6, 0x4b

    const/16 v5, 0x32

    const/16 v4, 0x19

    const/16 v3, 0x64

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    .line 51
    iput p2, p0, Lio/netty/buffer/PoolArena;->pageSize:I

    .line 52
    iput p3, p0, Lio/netty/buffer/PoolArena;->maxOrder:I

    .line 53
    iput p4, p0, Lio/netty/buffer/PoolArena;->pageShifts:I

    .line 54
    iput p5, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    .line 55
    add-int/lit8 v1, p2, -0x1

    xor-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    .line 56
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 61
    add-int/lit8 v1, p4, -0x9

    iput v1, p0, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    .line 62
    iget v1, p0, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v1

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 63
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 67
    new-instance v1, Lio/netty/buffer/PoolChunkList;

    const v2, 0x7fffffff

    invoke-direct {v1, p0, v7, v3, v2}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;II)V

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    .line 68
    new-instance v1, Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    invoke-direct {v1, p0, v2, v6, v3}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;II)V

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 69
    new-instance v1, Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    invoke-direct {v1, p0, v2, v5, v3}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;II)V

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 70
    new-instance v1, Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    invoke-direct {v1, p0, v2, v4, v6}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;II)V

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 71
    new-instance v1, Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;II)V

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 72
    new-instance v1, Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    const/high16 v3, -0x80000000

    invoke-direct {v1, p0, v2, v3, v4}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;II)V

    iput-object v1, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 74
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    iput-object v2, v1, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 75
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    iput-object v2, v1, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 76
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    iput-object v2, v1, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 77
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    iput-object v2, v1, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 78
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    iput-object v7, v1, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 79
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    iput-object v2, v1, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 80
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, p2}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v2

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, p2}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v2

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V
    .locals 10
    .param p1, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .param p3, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p3}, Lio/netty/buffer/PoolArena;->normalizeCapacity(I)I

    move-result v3

    .line 128
    .local v3, "normCapacity":I
    invoke-virtual {p0, v3}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 131
    invoke-static {v3}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 132
    invoke-virtual {p1, p0, p2, p3, v3}, Lio/netty/buffer/PoolThreadCache;->allocateTiny(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-static {v3}, Lio/netty/buffer/PoolArena;->tinyIdx(I)I

    move-result v6

    .line 137
    .local v6, "tableIdx":I
    iget-object v5, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 147
    .local v5, "table":[Lio/netty/buffer/PoolSubpage;
    :goto_1
    monitor-enter p0

    .line 148
    :try_start_0
    aget-object v2, v5, v6

    .line 149
    .local v2, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v4, v2, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 150
    .local v4, "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    if-eq v4, v2, :cond_6

    .line 151
    sget-boolean v7, Lio/netty/buffer/PoolArena;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    iget-boolean v7, v4, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-eqz v7, :cond_2

    iget v7, v4, Lio/netty/buffer/PoolSubpage;->elemSize:I

    if-eq v7, v3, :cond_4

    :cond_2
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 147
    .end local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v4    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 139
    .end local v5    # "table":[Lio/netty/buffer/PoolSubpage;
    .end local v6    # "tableIdx":I
    :cond_3
    invoke-virtual {p1, p0, p2, p3, v3}, Lio/netty/buffer/PoolThreadCache;->allocateSmall(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 143
    invoke-static {v3}, Lio/netty/buffer/PoolArena;->smallIdx(I)I

    move-result v6

    .line 144
    .restart local v6    # "tableIdx":I
    iget-object v5, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .restart local v5    # "table":[Lio/netty/buffer/PoolSubpage;
    goto :goto_1

    .line 152
    .restart local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local v4    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v0

    .line 153
    .local v0, "handle":J
    sget-boolean v7, Lio/netty/buffer/PoolArena;->$assertionsDisabled:Z

    if-nez v7, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_5

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 154
    :cond_5
    iget-object v7, v4, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    invoke-virtual {v7, p2, v0, v1, p3}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JI)V

    .line 155
    monitor-exit p0

    goto :goto_0

    .line 147
    .end local v0    # "handle":J
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .end local v2    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v4    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v5    # "table":[Lio/netty/buffer/PoolSubpage;
    .end local v6    # "tableIdx":I
    :cond_7
    invoke-direct {p0, p2, p3, v3}, Lio/netty/buffer/PoolArena;->allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V

    goto :goto_0

    .line 158
    :cond_8
    iget v7, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    if-gt v3, v7, :cond_9

    .line 159
    invoke-virtual {p1, p0, p2, p3, v3}, Lio/netty/buffer/PoolThreadCache;->allocateNormal(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    .line 165
    :cond_9
    invoke-direct {p0, p2, p3}, Lio/netty/buffer/PoolArena;->allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V

    goto :goto_0
.end method

.method private allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V
    .locals 1
    .param p2, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p2}, Lio/netty/buffer/PoolArena;->newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lio/netty/buffer/PooledByteBuf;->initUnpooled(Lio/netty/buffer/PoolChunk;I)V

    .line 188
    return-void
.end method

.method private declared-synchronized allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V
    .locals 7
    .param p2, "reqCapacity"    # I
    .param p3, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    :try_start_1
    iget v1, p0, Lio/netty/buffer/PoolArena;->pageSize:I

    iget v4, p0, Lio/netty/buffer/PoolArena;->maxOrder:I

    iget v5, p0, Lio/netty/buffer/PoolArena;->pageShifts:I

    iget v6, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    invoke-virtual {p0, v1, v4, v5, v6}, Lio/netty/buffer/PoolArena;->newChunk(IIII)Lio/netty/buffer/PoolChunk;

    move-result-object v0

    .line 180
    .local v0, "c":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-virtual {v0, p3}, Lio/netty/buffer/PoolChunk;->allocate(I)J

    move-result-wide v2

    .line 181
    .local v2, "handle":J
    sget-boolean v1, Lio/netty/buffer/PoolArena;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v0    # "c":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .end local v2    # "handle":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 182
    .restart local v0    # "c":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .restart local v2    # "handle":J
    :cond_2
    :try_start_2
    invoke-virtual {v0, p1, v2, v3, p2}, Lio/netty/buffer/PoolChunk;->initBuf(Lio/netty/buffer/PooledByteBuf;JI)V

    .line 183
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, v0}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static isTiny(I)Z
    .locals 1
    .param p0, "normCapacity"    # I

    .prologue
    .line 123
    and-int/lit16 v0, p0, -0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;
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
    .line 91
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    new-array v0, p1, [Lio/netty/buffer/PoolSubpage;

    return-object v0
.end method

.method private newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 1
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    new-instance v0, Lio/netty/buffer/PoolSubpage;

    invoke-direct {v0, p1}, Lio/netty/buffer/PoolSubpage;-><init>(I)V

    .line 84
    .local v0, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 85
    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 86
    return-object v0
.end method

.method static smallIdx(I)I
    .locals 2
    .param p0, "normCapacity"    # I

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, "tableIdx":I
    ushr-int/lit8 v0, p0, 0xa

    .line 109
    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_0

    .line 113
    return v1

    .line 110
    :cond_0
    ushr-int/lit8 v0, v0, 0x1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static tinyIdx(I)I
    .locals 1
    .param p0, "normCapacity"    # I

    .prologue
    .line 103
    ushr-int/lit8 v0, p0, 0x4

    return v0
.end method


# virtual methods
.method allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .param p1, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .param p2, "reqCapacity"    # I
    .param p3, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "II)",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-virtual {p0, p3}, Lio/netty/buffer/PoolArena;->newByteBuf(I)Lio/netty/buffer/PooledByteBuf;

    move-result-object v0

    .line 98
    .local v0, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-direct {p0, p1, v0, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    .line 99
    return-object v0
.end method

.method protected abstract destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 3
    .param p1, "elemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    ushr-int/lit8 v1, p1, 0x4

    .line 210
    .local v1, "tableIdx":I
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 221
    .local v0, "table":[Lio/netty/buffer/PoolSubpage;
    :goto_0
    aget-object v2, v0, v1

    return-object v2

    .line 212
    .end local v0    # "table":[Lio/netty/buffer/PoolSubpage;
    .end local v1    # "tableIdx":I
    :cond_0
    const/4 v1, 0x0

    .line 213
    .restart local v1    # "tableIdx":I
    ushr-int/lit8 p1, p1, 0xa

    .line 214
    :goto_1
    if-nez p1, :cond_1

    .line 218
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .restart local v0    # "table":[Lio/netty/buffer/PoolSubpage;
    goto :goto_0

    .line 215
    .end local v0    # "table":[Lio/netty/buffer/PoolSubpage;
    :cond_1
    ushr-int/lit8 p1, p1, 0x1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method free(Lio/netty/buffer/PoolChunk;JI)V
    .locals 8
    .param p2, "handle"    # J
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;JI)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-boolean v0, p1, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    iget-object v0, v0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/PoolThreadCache;

    .local v1, "cache":Lio/netty/buffer/PoolThreadCache;
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    .line 195
    invoke-virtual/range {v1 .. v6}, Lio/netty/buffer/PoolThreadCache;->add(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunk;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->free(Lio/netty/buffer/PoolChunk;J)V

    .line 199
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract isDirect()Z
.end method

.method isTinyOrSmall(I)Z
    .locals 1
    .param p1, "normCapacity"    # I

    .prologue
    .line 118
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract memoryCopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITT;II)V"
        }
    .end annotation
.end method

.method protected abstract newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;"
        }
    .end annotation
.end method

.method normalizeCapacity(I)I
    .locals 4
    .param p1, "reqCapacity"    # I

    .prologue
    .line 225
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    if-gez p1, :cond_0

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "capacity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: 0+)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    if-lt p1, v1, :cond_2

    .line 256
    .end local p1    # "reqCapacity":I
    :cond_1
    :goto_0
    return p1

    .line 232
    .restart local p1    # "reqCapacity":I
    :cond_2
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 235
    move v0, p1

    .line 236
    .local v0, "normalizedCapacity":I
    add-int/lit8 v0, v0, -0x1

    .line 237
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 238
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 239
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 240
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 241
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 244
    if-gez v0, :cond_3

    .line 245
    ushr-int/lit8 v0, v0, 0x1

    :cond_3
    move p1, v0

    .line 248
    goto :goto_0

    .line 252
    .end local v0    # "normalizedCapacity":I
    :cond_4
    and-int/lit8 v1, p1, 0xf

    if-eqz v1, :cond_1

    .line 256
    and-int/lit8 v1, p1, -0x10

    add-int/lit8 p1, v1, 0x10

    goto :goto_0
.end method

.method reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V
    .locals 24
    .param p2, "newCapacity"    # I
    .param p3, "freeOldMemory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    if-ltz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/PooledByteBuf;->maxCapacity()I

    move-result v6

    move/from16 v0, p2

    if-le v0, v6, :cond_1

    .line 261
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "newCapacity: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 264
    :cond_1
    move-object/from16 v0, p1

    iget v11, v0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 265
    .local v11, "oldCapacity":I
    move/from16 v0, p2

    if-ne v11, v0, :cond_3

    .line 300
    :cond_2
    :goto_0
    return-void

    .line 269
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    move-object/from16 v18, v0

    .line 270
    .local v18, "oldChunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    move-object/from16 v0, p1

    iget-wide v0, v0, Lio/netty/buffer/PooledByteBuf;->handle:J

    move-wide/from16 v20, v0

    .line 271
    .local v20, "oldHandle":J
    move-object/from16 v0, p1

    iget-object v7, v0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 272
    .local v7, "oldMemory":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p1

    iget v8, v0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 273
    .local v8, "oldOffset":I
    move-object/from16 v0, p1

    iget v0, v0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    move/from16 v19, v0

    .line 274
    .local v19, "oldMaxLength":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v22

    .line 275
    .local v22, "readerIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v23

    .line 277
    .local v23, "writerIndex":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    iget-object v6, v6, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v6}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/buffer/PoolThreadCache;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v6, v1, v2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    .line 278
    move/from16 v0, p2

    if-le v0, v11, :cond_5

    .line 281
    move-object/from16 v0, p1

    iget-object v9, v0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v10, v0, Lio/netty/buffer/PooledByteBuf;->offset:I

    move-object/from16 v6, p0

    .line 279
    invoke-virtual/range {v6 .. v11}, Lio/netty/buffer/PoolArena;->memoryCopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 297
    if-eqz p3, :cond_2

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;JI)V

    goto :goto_0

    .line 282
    :cond_5
    move/from16 v0, p2

    if-ge v0, v11, :cond_4

    .line 283
    move/from16 v0, v22

    move/from16 v1, p2

    if-ge v0, v1, :cond_7

    .line 284
    move/from16 v0, v23

    move/from16 v1, p2

    if-le v0, v1, :cond_6

    .line 285
    move/from16 v23, p2

    .line 288
    :cond_6
    add-int v14, v8, v22

    .line 289
    move-object/from16 v0, p1

    iget-object v15, v0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v6, v0, Lio/netty/buffer/PooledByteBuf;->offset:I

    add-int v16, v6, v22

    sub-int v17, v23, v22

    move-object/from16 v12, p0

    move-object v13, v7

    .line 287
    invoke-virtual/range {v12 .. v17}, Lio/netty/buffer/PoolArena;->memoryCopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 291
    :cond_7
    move/from16 v23, p2

    move/from16 v22, p2

    goto :goto_1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 309
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v4, "Chunk(s) at 0~25%:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v4, "Chunk(s) at 0~50%:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v4, "Chunk(s) at 25~75%:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v4, "Chunk(s) at 50~100%:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v4, "Chunk(s) at 75~100%:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v4, "Chunk(s) at 100%:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v4, "tiny subpages:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 353
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v4, "small subpages:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 373
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 336
    :cond_0
    :try_start_1
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    aget-object v1, v4, v2

    .line 337
    .local v1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v4, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v4, v1, :cond_1

    .line 335
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_1
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v3, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 346
    .local v3, "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    iget-object v3, v3, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 348
    if-ne v3, v1, :cond_2

    goto :goto_2

    .line 356
    .end local v1    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v3    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_3
    iget-object v4, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    aget-object v1, v4, v2

    .line 357
    .restart local v1    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v4, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v4, v1, :cond_4

    .line 355
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    :cond_4
    sget-object v4, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v3, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 366
    .restart local v3    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v3, v3, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    if-ne v3, v1, :cond_5

    goto :goto_3

    .line 309
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v2    # "i":I
    .end local v3    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
