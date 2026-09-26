.class abstract Lio/netty/buffer/PooledByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "PooledByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected handle:J

.field protected length:I

.field maxLength:I

.field protected memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected offset:I

.field private final recyclerHandle:Lio/netty/util/Recycler$Handle;

.field private tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lio/netty/buffer/PooledByteBuf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/buffer/PooledByteBuf;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lio/netty/util/Recycler$Handle;I)V
    .locals 0
    .param p2, "maxCapacity"    # I

    .prologue
    .line 38
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .local p1, "recyclerHandle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    invoke-direct {p0, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 39
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/Recycler$Handle;

    .line 40
    return-void
.end method

.method private recycle()V
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/Recycler$Handle;

    .line 150
    .local v0, "recyclerHandle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->recycler()Lio/netty/util/Recycler;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lio/netty/util/Recycler;->recycle(Ljava/lang/Object;Lio/netty/util/Recycler$Handle;)Z

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public final alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    return-object v0
.end method

.method public final capacity()I
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return v0
.end method

.method public final capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "newCapacity"    # I

    .prologue
    .line 75
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->ensureAccessible()V

    .line 78
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-boolean v0, v0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_1

    .line 79
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ne p1, v0, :cond_4

    .line 109
    :cond_0
    :goto_0
    return-object p0

    .line 83
    :cond_1
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-le p1, v0, :cond_2

    .line 84
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    if-gt p1, v0, :cond_4

    .line 85
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    goto :goto_0

    .line 88
    :cond_2
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ge p1, v0, :cond_0

    .line 89
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    ushr-int/lit8 v0, v0, 0x1

    if-le p1, v0, :cond_4

    .line 90
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    const/16 v1, 0x200

    if-gt v0, v1, :cond_3

    .line 91
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    add-int/lit8 v0, v0, -0x10

    if-le p1, v0, :cond_4

    .line 92
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 93
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 97
    :cond_3
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 98
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 108
    :cond_4
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lio/netty/buffer/PoolArena;->reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V

    goto :goto_0
.end method

.method protected final deallocate()V
    .locals 6

    .prologue
    .line 139
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-wide v2, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 140
    iget-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 141
    .local v0, "handle":J
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v2, v2, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v3, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget v4, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    invoke-virtual {v2, v3, v0, v1, v4}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;JI)V

    .line 144
    invoke-direct {p0}, Lio/netty/buffer/PooledByteBuf;->recycle()V

    .line 146
    .end local v0    # "handle":J
    :cond_0
    return-void
.end method

.method protected final idx(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 158
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method init(Lio/netty/buffer/PoolChunk;JIII)V
    .locals 4
    .param p2, "handle"    # J
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "maxLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;JIII)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    const/4 v2, 0x0

    .line 43
    sget-boolean v0, Lio/netty/buffer/PooledByteBuf;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    sget-boolean v0, Lio/netty/buffer/PooledByteBuf;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 47
    iput-wide p2, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 48
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 49
    iput p4, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 50
    iput p5, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 51
    iput p6, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    .line 52
    invoke-virtual {p0, v2, v2}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 54
    return-void
.end method

.method initUnpooled(Lio/netty/buffer/PoolChunk;I)V
    .locals 3
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    const/4 v2, 0x0

    .line 57
    sget-boolean v0, Lio/netty/buffer/PooledByteBuf;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 61
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 62
    iput v2, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 63
    iput p2, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    iput p2, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 64
    invoke-virtual {p0, v2, v2}, Lio/netty/buffer/PooledByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method protected final internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 129
    .local v0, "tmpNioBuf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/netty/buffer/PooledByteBuf;->newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 132
    :cond_0
    return-object v0
.end method

.method protected abstract newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected abstract recycler()Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler",
            "<*>;"
        }
    .end annotation
.end method

.method public final unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
