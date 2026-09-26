.class final Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
.super Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubPageMemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 313
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;-><init>(I)V

    .line 314
    return-void
.end method


# virtual methods
.method protected initBuf(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PooledByteBuf;I)V
    .locals 0
    .param p2, "handle"    # J
    .param p5, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk",
            "<TT;>;J",
            "Lio/netty/buffer/PooledByteBuf",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p4, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p1, p4, p2, p3, p5}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;JI)V

    .line 320
    return-void
.end method
