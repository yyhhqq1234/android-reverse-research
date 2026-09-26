.class final Lio/netty/buffer/SimpleLeakAwareByteBuf;
.super Lio/netty/buffer/WrappedByteBuf;
.source "SimpleLeakAwareByteBuf.java"


# instance fields
.field private final leak:Lio/netty/util/ResourceLeak;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeak;)V
    .locals 0
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "leak"    # Lio/netty/util/ResourceLeak;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lio/netty/buffer/WrappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 29
    iput-object p2, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    .line 30
    return-void
.end method


# virtual methods
.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeak;)V

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .prologue
    .line 52
    iget-object v0, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-interface {v0}, Lio/netty/util/ResourceLeak;->record()V

    .line 53
    invoke-virtual {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 56
    .end local p0    # "this":Lio/netty/buffer/SimpleLeakAwareByteBuf;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lio/netty/buffer/SimpleLeakAwareByteBuf;
    :cond_0
    new-instance v0, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    invoke-super {p0, p1}, Lio/netty/buffer/WrappedByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeak;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 77
    new-instance v0, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    invoke-super {p0, p1}, Lio/netty/buffer/WrappedByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeak;)V

    return-object v0
.end method

.method public release()Z
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->release()Z

    move-result v0

    .line 35
    .local v0, "deallocated":Z
    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-interface {v1}, Lio/netty/util/ResourceLeak;->close()Z

    .line 38
    :cond_0
    return v0
.end method

.method public release(I)Z
    .locals 2
    .param p1, "decrement"    # I

    .prologue
    .line 43
    invoke-super {p0, p1}, Lio/netty/buffer/WrappedByteBuf;->release(I)Z

    move-result v0

    .line 44
    .local v0, "deallocated":Z
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-interface {v1}, Lio/netty/util/ResourceLeak;->close()Z

    .line 47
    :cond_0
    return v0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    invoke-super {p0}, Lio/netty/buffer/WrappedByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeak;)V

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 67
    new-instance v0, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    invoke-super {p0, p1, p2}, Lio/netty/buffer/WrappedByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/SimpleLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-direct {v0, v1, v2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeak;)V

    return-object v0
.end method
