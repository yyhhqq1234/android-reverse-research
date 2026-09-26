.class public Lio/netty/buffer/DefaultByteBufHolder;
.super Ljava/lang/Object;
.source "DefaultByteBufHolder.java"

# interfaces
.implements Lio/netty/buffer/ByteBufHolder;


# instance fields
.field private final data:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "data"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    .line 34
    return-void
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    if-gtz v0, :cond_0

    .line 39
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    iget-object v1, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public copy()Lio/netty/buffer/ByteBufHolder;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lio/netty/buffer/DefaultByteBufHolder;

    iget-object v1, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/DefaultByteBufHolder;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lio/netty/buffer/DefaultByteBufHolder;

    iget-object v1, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/buffer/DefaultByteBufHolder;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result v0

    return v0
.end method

.method public retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 62
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 1
    .param p1, "increment"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lio/netty/buffer/DefaultByteBufHolder;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 68
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->retain()Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/DefaultByteBufHolder;->retain(I)Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
