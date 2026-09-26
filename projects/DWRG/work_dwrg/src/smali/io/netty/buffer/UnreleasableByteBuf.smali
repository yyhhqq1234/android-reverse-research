.class final Lio/netty/buffer/UnreleasableByteBuf;
.super Lio/netty/buffer/WrappedByteBuf;
.source "UnreleasableByteBuf.java"


# instance fields
.field private swappedBuf:Lio/netty/buffer/SwappedByteBuf;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lio/netty/buffer/WrappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 30
    return-void
.end method


# virtual methods
.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "endianness"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/UnreleasableByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 45
    .end local p0    # "this":Lio/netty/buffer/UnreleasableByteBuf;
    :goto_0
    return-object p0

    .line 41
    .restart local p0    # "this":Lio/netty/buffer/UnreleasableByteBuf;
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/UnreleasableByteBuf;->swappedBuf:Lio/netty/buffer/SwappedByteBuf;

    .line 42
    .local v0, "swappedBuf":Lio/netty/buffer/SwappedByteBuf;
    if-nez v0, :cond_2

    .line 43
    new-instance v0, Lio/netty/buffer/SwappedByteBuf;

    .end local v0    # "swappedBuf":Lio/netty/buffer/SwappedByteBuf;
    invoke-direct {v0, p0}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .restart local v0    # "swappedBuf":Lio/netty/buffer/SwappedByteBuf;
    iput-object v0, p0, Lio/netty/buffer/UnreleasableByteBuf;->swappedBuf:Lio/netty/buffer/SwappedByteBuf;

    :cond_2
    move-object p0, v0

    .line 45
    goto :goto_0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 50
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 75
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 70
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/UnreleasableByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnreleasableByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 60
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    iget-object v1, p0, Lio/netty/buffer/UnreleasableByteBuf;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method
