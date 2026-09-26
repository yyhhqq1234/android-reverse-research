.class final Lio/netty/buffer/PoolArena$HeapArena;
.super Lio/netty/buffer/PoolArena;
.source "PoolArena.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolArena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeapArena"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PoolArena",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V
    .locals 0
    .param p1, "parent"    # Lio/netty/buffer/PooledByteBufAllocator;
    .param p2, "pageSize"    # I
    .param p3, "maxOrder"    # I
    .param p4, "pageShifts"    # I
    .param p5, "chunkSize"    # I

    .prologue
    .line 381
    invoke-direct/range {p0 .. p5}, Lio/netty/buffer/PoolArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V

    .line 382
    return-void
.end method


# virtual methods
.method protected destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<[B>;"
    return-void
.end method

.method isDirect()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic memoryCopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 6

    .prologue
    .line 1
    move-object v1, p1

    check-cast v1, [B

    move-object v3, p3

    check-cast v3, [B

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/PoolArena$HeapArena;->memoryCopy([BI[BII)V

    return-void
.end method

.method protected memoryCopy([BI[BII)V
    .locals 0
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "dst"    # [B
    .param p4, "dstOffset"    # I
    .param p5, "length"    # I

    .prologue
    .line 411
    if-nez p5, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .param p1, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {p1}, Lio/netty/buffer/PooledHeapByteBuf;->newInstance(I)Lio/netty/buffer/PooledHeapByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .locals 7
    .param p1, "pageSize"    # I
    .param p2, "maxOrder"    # I
    .param p3, "pageShifts"    # I
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v0, Lio/netty/buffer/PoolChunk;

    new-array v2, p4, [B

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIII)V

    return-object v0
.end method

.method protected newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .locals 2
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lio/netty/buffer/PoolChunk;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1, p1}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;I)V

    return-object v0
.end method
