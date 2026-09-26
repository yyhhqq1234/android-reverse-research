.class public abstract Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.super Lio/netty/buffer/AbstractByteBuf;
.source "AbstractReferenceCountedByteBuf.java"


# static fields
.field private static final refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile refCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-class v1, Lio/netty/buffer/AbstractReferenceCountedByteBuf;

    const-string v2, "refCnt"

    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent;->newAtomicIntegerFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 34
    .local v0, "updater":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<Lio/netty/buffer/AbstractReferenceCountedByteBuf;>;"
    if-nez v0, :cond_0

    .line 35
    const-class v1, Lio/netty/buffer/AbstractReferenceCountedByteBuf;

    const-string v2, "refCnt"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 37
    :cond_0
    sput-object v0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 38
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "maxCapacity"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lio/netty/buffer/AbstractByteBuf;-><init>(I)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCnt:I

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract deallocate()V
.end method

.method public final refCnt()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCnt:I

    return v0
.end method

.method public final release()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    :cond_0
    iget v0, p0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCnt:I

    .line 100
    .local v0, "refCnt":I
    if-nez v0, :cond_1

    .line 101
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 104
    :cond_1
    sget-object v3, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    if-ne v0, v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->deallocate()V

    .line 109
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final release(I)Z
    .locals 4
    .param p1, "decrement"    # I

    .prologue
    .line 116
    if-gtz p1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "decrement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: > 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    iget v0, p0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCnt:I

    .line 122
    .local v0, "refCnt":I
    if-ge v0, p1, :cond_1

    .line 123
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    neg-int v2, p1

    invoke-direct {v1, v0, v2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 126
    :cond_1
    sget-object v1, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    sub-int v2, v0, p1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    if-ne v0, p1, :cond_2

    .line 128
    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->deallocate()V

    .line 129
    const/4 v1, 0x1

    .line 131
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 5

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x1

    .line 61
    :cond_0
    iget v0, p0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCnt:I

    .line 62
    .local v0, "refCnt":I
    if-nez v0, :cond_1

    .line 63
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 65
    :cond_1
    if-ne v0, v4, :cond_2

    .line 66
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v4, v3}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 68
    :cond_2
    sget-object v1, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "increment"    # I

    .prologue
    .line 77
    if-gtz p1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "increment: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: > 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    iget v0, p0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCnt:I

    .line 83
    .local v0, "refCnt":I
    if-nez v0, :cond_1

    .line 84
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 86
    :cond_1
    const v1, 0x7fffffff

    sub-int/2addr v1, p1

    if-le v0, v1, :cond_2

    .line 87
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-direct {v1, v0, p1}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 89
    :cond_2
    sget-object v1, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCntUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int v2, v0, p1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected final setRefCnt(I)V
    .locals 0
    .param p1, "refCnt"    # I

    .prologue
    .line 55
    iput p1, p0, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->refCnt:I

    .line 56
    return-void
.end method
