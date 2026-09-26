.class public Lio/netty/buffer/CompositeByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "CompositeByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/CompositeByteBuf$Component;
    }
.end annotation


# static fields
.field private static final FULL_BYTEBUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/netty/buffer/CompositeByteBuf$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final direct:Z

.field private freed:Z

.field private final leak:Lio/netty/util/ResourceLeak;

.field private final maxNumComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->FULL_BYTEBUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI)V
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I

    .prologue
    .line 52
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alloc"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 57
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 58
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 59
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    .line 60
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZILjava/lang/Iterable;)V
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBufAllocator;",
            "ZI",
            "Ljava/lang/Iterable",
            "<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    const/4 v1, 0x0

    .line 84
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alloc"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxNumComponents: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 94
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 95
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 96
    invoke-direct {p0, v1, p4}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ILjava/lang/Iterable;)I

    .line 97
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 98
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 99
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    .line 100
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p4, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .prologue
    const/4 v1, 0x0

    .line 63
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alloc"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxNumComponents: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 73
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 74
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 76
    invoke-direct {p0, v1, p4}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    .line 77
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 78
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 79
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    .line 80
    return-void
.end method

.method private addComponent0(ILio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p1, "cIndex"    # I
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 162
    if-nez p2, :cond_0

    .line 163
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "buffer"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 167
    .local v2, "readableBytes":I
    if-nez v2, :cond_1

    .line 186
    :goto_0
    return p1

    .line 172
    :cond_1
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$Component;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {v0, v3}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 173
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_3

    .line 174
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    if-nez p1, :cond_2

    .line 176
    iput v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    .line 178
    :cond_2
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 179
    .local v1, "prev":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iput v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 180
    iget v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    add-int/2addr v3, v2

    iput v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    .line 183
    .end local v1    # "prev":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_3
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v3, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    goto :goto_0
.end method

.method private addComponents0(ILjava/lang/Iterable;)I
    .locals 5
    .param p1, "cIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable",
            "<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    if-nez p2, :cond_0

    .line 258
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "buffers"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_0
    instance-of v3, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 263
    check-cast v3, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, v3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    move-result v3

    .line 275
    :goto_0
    return v3

    .line 266
    :cond_1
    instance-of v3, p2, Ljava/util/Collection;

    if-nez v3, :cond_2

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 271
    move-object p2, v2

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :cond_2
    move-object v1, p2

    .line 274
    check-cast v1, Ljava/util/Collection;

    .line 275
    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/buffer/ByteBuf;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Lio/netty/buffer/ByteBuf;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, v3}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    move-result v3

    goto :goto_0

    .line 268
    .end local v1    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/buffer/ByteBuf;>;"
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 269
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private varargs addComponents0(I[Lio/netty/buffer/ByteBuf;)I
    .locals 8
    .param p1, "cIndex"    # I
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 207
    if-nez p2, :cond_0

    .line 208
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "buffers"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    :cond_0
    const/4 v2, 0x0

    .line 212
    .local v2, "readableBytes":I
    array-length v6, p2

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_2

    .line 219
    :cond_1
    if-nez v2, :cond_3

    move v1, p1

    .line 238
    .end local p1    # "cIndex":I
    .local v1, "cIndex":I
    :goto_1
    return v1

    .line 212
    .end local v1    # "cIndex":I
    .restart local p1    # "cIndex":I
    :cond_2
    aget-object v0, p2, v5

    .line 213
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    add-int/2addr v2, v7

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "b":Lio/netty/buffer/ByteBuf;
    :cond_3
    array-length v5, p2

    :goto_2
    if-lt v4, v5, :cond_5

    :cond_4
    move v1, p1

    .line 238
    .end local p1    # "cIndex":I
    .restart local v1    # "cIndex":I
    goto :goto_1

    .line 224
    .end local v1    # "cIndex":I
    .restart local p1    # "cIndex":I
    :cond_5
    aget-object v0, p2, v4

    .line 225
    .restart local v0    # "b":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 229
    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    move-result v6

    add-int/lit8 p1, v6, 0x1

    .line 230
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 231
    .local v3, "size":I
    if-le p1, v3, :cond_6

    .line 232
    move p1, v3

    .line 224
    .end local v3    # "size":I
    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 235
    :cond_7
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_3
.end method

.method private allocBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 1309
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1312
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method private checkComponentIndex(I)V
    .locals 5
    .param p1, "cIndex"    # I

    .prologue
    .line 306
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 307
    if-ltz p1, :cond_0

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 309
    const-string v1, "cIndex: %d (expected: >= 0 && <= numComponents(%d))"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 308
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    return-void
.end method

.method private checkComponentIndex(II)V
    .locals 5
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 316
    if-ltz p1, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 318
    const-string v1, "cIndex: %d, numComponents: %d (expected: cIndex >= 0 && cIndex + numComponents <= totalNumComponents(%d))"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 317
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    return-void
.end method

.method private consolidateIfNeeded()V
    .locals 8

    .prologue
    .line 285
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 286
    .local v5, "numComponents":I
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-le v5, v6, :cond_0

    .line 287
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/buffer/CompositeByteBuf$Component;

    iget v2, v6, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 289
    .local v2, "capacity":I
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 292
    .local v3, "consolidated":Lio/netty/buffer/ByteBuf;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 298
    new-instance v1, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {v1, v3}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 299
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v6, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    iput v6, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 300
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 301
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "capacity":I
    .end local v3    # "consolidated":Lio/netty/buffer/ByteBuf;
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 293
    .restart local v2    # "capacity":I
    .restart local v3    # "consolidated":Lio/netty/buffer/ByteBuf;
    .restart local v4    # "i":I
    :cond_1
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 294
    .restart local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 295
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 296
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private copyTo(IIILio/netty/buffer/ByteBuf;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "componentId"    # I
    .param p4, "dst"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1016
    const/4 v2, 0x0

    .line 1017
    .local v2, "dstIndex":I
    move v3, p3

    .line 1019
    .local v3, "i":I
    :goto_0
    if-gtz p2, :cond_0

    .line 1031
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v6

    invoke-virtual {p4, v6}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1032
    return-void

    .line 1020
    :cond_0
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1021
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v5, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1022
    .local v5, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1023
    .local v0, "adjustment":I
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v6

    sub-int v7, p1, v0

    sub-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1024
    .local v4, "localLength":I
    sub-int v6, p1, v0

    invoke-virtual {v5, v6, p4, v2, v4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1025
    add-int/2addr p1, v4

    .line 1026
    add-int/2addr v2, v4

    .line 1027
    sub-int/2addr p2, v4

    .line 1028
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 1076
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 1078
    const/4 v2, 0x0

    .local v2, "low":I
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "high":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 1090
    new-instance v4, Ljava/lang/Error;

    const-string v5, "should not reach here"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1079
    :cond_0
    add-int v4, v2, v1

    ushr-int/lit8 v3, v4, 0x1

    .line 1080
    .local v3, "mid":I
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1081
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v4, :cond_1

    .line 1082
    add-int/lit8 v2, v3, 0x1

    .line 1083
    goto :goto_0

    :cond_1
    iget v4, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v4, :cond_2

    .line 1084
    add-int/lit8 v1, v3, -0x1

    .line 1085
    goto :goto_0

    .line 1086
    :cond_2
    return-object v0
.end method

.method private updateComponentOffsets(I)V
    .locals 7
    .param p1, "cIndex"    # I

    .prologue
    .line 325
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 326
    .local v4, "size":I
    if-gt v4, p1, :cond_1

    .line 343
    :cond_0
    return-void

    .line 330
    :cond_1
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 331
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    if-nez p1, :cond_2

    .line 332
    const/4 v5, 0x0

    iput v5, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 333
    iget v5, v0, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    iput v5, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 334
    add-int/lit8 p1, p1, 0x1

    .line 337
    :cond_2
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 338
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 339
    .local v3, "prev":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 340
    .local v1, "cur":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iput v5, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 341
    iget v5, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v6, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    add-int/2addr v5, v6

    iput v5, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 601
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    return v1
.end method

.method protected _getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const v3, 0xffff

    .line 630
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 631
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 632
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v1

    .line 636
    :goto_0
    return v1

    .line 633
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 634
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    goto :goto_0

    .line 636
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method protected _getLong(I)J
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 642
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 643
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 644
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v2

    .line 648
    :goto_0
    return-wide v2

    .line 645
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 646
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    shl-long/2addr v2, v8

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    goto :goto_0
.end method

.method protected _getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 607
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 608
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v1

    .line 612
    :goto_0
    return v1

    .line 609
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 610
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0

    .line 612
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const v3, 0xffff

    .line 618
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 619
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 620
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v1

    .line 624
    :goto_0
    return v1

    .line 621
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method protected _setByte(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 771
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    .line 772
    return-void
.end method

.method protected _setInt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 820
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 821
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 829
    :goto_0
    return-void

    .line 822
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 823
    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 824
    add-int/lit8 v1, p1, 0x2

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    goto :goto_0

    .line 826
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 827
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    goto :goto_0
.end method

.method protected _setLong(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    const/16 v3, 0x20

    .line 838
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 839
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 840
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 848
    :goto_0
    return-void

    .line 841
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 842
    ushr-long v2, p2, v3

    long-to-int v1, v2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 843
    add-int/lit8 v1, p1, 0x4

    long-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    goto :goto_0

    .line 845
    :cond_1
    long-to-int v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 846
    add-int/lit8 v1, p1, 0x4

    ushr-long v2, p2, v3

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    goto :goto_0
.end method

.method protected _setMedium(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 801
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 802
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 810
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 804
    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 805
    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 807
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 808
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0
.end method

.method protected _setShort(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 782
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 783
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 791
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 785
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 786
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 788
    :cond_1
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 789
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0
.end method

.method public addComponent(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "cIndex"    # I
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    .line 155
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 156
    return-object p0
.end method

.method public addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 111
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    .line 112
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 113
    return-object p0
.end method

.method public addComponents(ILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "cIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable",
            "<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ILjava/lang/Iterable;)I

    .line 252
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 253
    return-object p0
.end method

.method public varargs addComponents(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "cIndex"    # I
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    .line 200
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 201
    return-object p0
.end method

.method public addComponents(Ljava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ILjava/lang/Iterable;)I

    .line 140
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 141
    return-object p0
.end method

.method public varargs addComponents([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .prologue
    .line 125
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(I[Lio/netty/buffer/ByteBuf;)I

    .line 126
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 127
    return-object p0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    return v0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public capacity()I
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0
.end method

.method public bridge synthetic capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 11
    .param p1, "newCapacity"    # I

    .prologue
    const/4 v10, 0x0

    .line 494
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 495
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->maxCapacity()I

    move-result v8

    if-le p1, v8, :cond_1

    .line 496
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "newCapacity: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 499
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v5

    .line 500
    .local v5, "oldCapacity":I
    if-le p1, v5, :cond_4

    .line 501
    sub-int v7, p1, v5

    .line 503
    .local v7, "paddingLength":I
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 504
    .local v3, "nComponents":I
    iget v8, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-ge v3, v8, :cond_3

    .line 505
    invoke-direct {p0, v7}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 506
    .local v6, "padding":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v6, v10, v7}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 507
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v8, v6}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    .line 540
    .end local v3    # "nComponents":I
    .end local v6    # "padding":Lio/netty/buffer/ByteBuf;
    .end local v7    # "paddingLength":I
    :cond_2
    :goto_0
    return-object p0

    .line 509
    .restart local v3    # "nComponents":I
    .restart local v7    # "paddingLength":I
    :cond_3
    invoke-direct {p0, v7}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 510
    .restart local v6    # "padding":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v6, v10, v7}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 513
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v8, v6}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ILio/netty/buffer/ByteBuf;)I

    .line 514
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    goto :goto_0

    .line 516
    .end local v3    # "nComponents":I
    .end local v6    # "padding":Lio/netty/buffer/ByteBuf;
    .end local v7    # "paddingLength":I
    :cond_4
    if-ge p1, v5, :cond_2

    .line 517
    sub-int v0, v5, p1

    .line 518
    .local v0, "bytesToTrim":I
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    iget-object v9, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lio/netty/buffer/CompositeByteBuf$Component;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-nez v8, :cond_5

    .line 534
    :goto_2
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v8

    if-le v8, p1, :cond_7

    .line 535
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    goto :goto_0

    .line 519
    :cond_5
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 520
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v8, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    if-lt v0, v8, :cond_6

    .line 521
    iget v8, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    sub-int/2addr v0, v8

    .line 522
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 527
    :cond_6
    new-instance v4, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v8, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v9, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    sub-int/2addr v9, v0

    invoke-virtual {v8, v10, v9}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-direct {v4, v8}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 528
    .local v4, "newC":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v8, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iput v8, v4, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 529
    iget v8, v4, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v9, v4, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    add-int/2addr v8, v9

    iput v8, v4, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 530
    invoke-interface {v2, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 536
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "newC":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_7
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v8

    if-le v8, p1, :cond_2

    .line 537
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->clear()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 1356
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public component(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->internalComponent(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public componentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1051
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->internalComponentAtOffset(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public consolidate()Lio/netty/buffer/CompositeByteBuf;
    .locals 9

    .prologue
    .line 1172
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1173
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->numComponents()I

    move-result v6

    .line 1174
    .local v6, "numComponents":I
    const/4 v7, 0x1

    if-gt v6, v7, :cond_0

    .line 1192
    :goto_0
    return-object p0

    .line 1178
    :cond_0
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1179
    .local v5, "last":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 1180
    .local v2, "capacity":I
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 1182
    .local v3, "consolidated":Lio/netty/buffer/ByteBuf;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v6, :cond_1

    .line 1189
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1190
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    new-instance v8, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {v8, v3}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    goto :goto_0

    .line 1183
    :cond_1
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1184
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1185
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 1186
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 1182
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public consolidate(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 9
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .prologue
    .line 1202
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    .line 1203
    const/4 v7, 0x1

    if-gt p2, v7, :cond_0

    .line 1222
    :goto_0
    return-object p0

    .line 1207
    :cond_0
    add-int v4, p1, p2

    .line 1208
    .local v4, "endCIndex":I
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1209
    .local v6, "last":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v8, v6, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/buffer/CompositeByteBuf$Component;

    iget v7, v7, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, v8, v7

    .line 1210
    .local v2, "capacity":I
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 1212
    .local v3, "consolidated":Lio/netty/buffer/ByteBuf;
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-lt v5, v4, :cond_1

    .line 1219
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int/lit8 v8, p1, 0x1

    invoke-interface {v7, v8, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1220
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    new-instance v8, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {v8, v3}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {v7, p1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    goto :goto_0

    .line 1213
    :cond_1
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1214
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1215
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 1216
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 1212
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 1007
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1008
    invoke-static {p2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1009
    .local v0, "dst":Lio/netty/buffer/ByteBuf;
    if-eqz p2, :cond_0

    .line 1010
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->copyTo(IIILio/netty/buffer/ByteBuf;)V

    .line 1012
    :cond_0
    return-object v0
.end method

.method protected deallocate()V
    .locals 3

    .prologue
    .line 1581
    iget-boolean v2, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    if-eqz v2, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    .line 1586
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1589
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 1593
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    if-eqz v2, :cond_0

    .line 1594
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->leak:Lio/netty/util/ResourceLeak;

    invoke-interface {v2}, Lio/netty/util/ResourceLeak;->close()Z

    goto :goto_0

    .line 1590
    :cond_2
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v2}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 1589
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public decompose(II)Ljava/util/List;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 390
    if-nez p2, :cond_1

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 427
    :cond_0
    return-object v7

    .line 394
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 395
    .local v2, "componentId":I
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    .local v7, "slice":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 399
    .local v4, "firstC":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v8, v4, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 400
    .local v3, "first":Lio/netty/buffer/ByteBuf;
    iget v8, v4, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v8, p1, v8

    invoke-virtual {v3, v8}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 402
    move-object v0, v3

    .line 403
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    move v1, p2

    .line 405
    .local v1, "bytesToSlice":I
    :cond_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    .line 406
    .local v6, "readableBytes":I
    if-gt v1, v6, :cond_3

    .line 408
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 409
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 424
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 423
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 413
    .end local v5    # "i":I
    :cond_3
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    sub-int/2addr v1, v6

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 418
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v8, v8, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 404
    if-gtz v1, :cond_2

    goto :goto_0
.end method

.method public bridge synthetic discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1265
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1266
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v5

    .line 1267
    .local v5, "readerIndex":I
    if-nez v5, :cond_0

    .line 1305
    :goto_0
    return-object p0

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v6

    .line 1273
    .local v6, "writerIndex":I
    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1274
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1277
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1278
    invoke-virtual {p0, v9, v9}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1279
    invoke-virtual {p0, v5}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    goto :goto_0

    .line 1274
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1275
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    goto :goto_1

    .line 1284
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_2
    invoke-virtual {p0, v5}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 1285
    .local v2, "firstComponentId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v2, :cond_3

    .line 1288
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v9, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1291
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1292
    .restart local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v7, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v0, v5, v7

    .line 1293
    .local v0, "adjustment":I
    iget v7, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    if-ne v0, v7, :cond_4

    .line 1295
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1302
    :goto_3
    invoke-direct {p0, v9}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1303
    sub-int v7, v6, v5

    invoke-virtual {p0, v9, v7}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1304
    invoke-virtual {p0, v5}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    goto :goto_0

    .line 1286
    .end local v0    # "adjustment":I
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_3
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v7}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 1285
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1297
    .restart local v0    # "adjustment":I
    .restart local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_4
    new-instance v4, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v7, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v8, v1, Lio/netty/buffer/CompositeByteBuf$Component;->length:I

    sub-int/2addr v8, v0

    invoke-virtual {v7, v0, v8}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-direct {v4, v7}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 1298
    .local v4, "newC":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v9, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public discardReadComponents()Lio/netty/buffer/CompositeByteBuf;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1229
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1230
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v5

    .line 1231
    .local v5, "readerIndex":I
    if-nez v5, :cond_0

    .line 1260
    :goto_0
    return-object p0

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v6

    .line 1237
    .local v6, "writerIndex":I
    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1238
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1241
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1242
    invoke-virtual {p0, v9, v9}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1243
    invoke-virtual {p0, v5}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    goto :goto_0

    .line 1238
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1239
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    goto :goto_1

    .line 1248
    .end local v0    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_2
    invoke-virtual {p0, v5}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 1249
    .local v2, "firstComponentId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v2, :cond_3

    .line 1252
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v9, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1255
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1256
    .local v1, "first":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1257
    .local v4, "offset":I
    invoke-direct {p0, v9}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1258
    sub-int v7, v5, v4

    sub-int v8, v6, v4

    invoke-virtual {p0, v7, v8}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1259
    invoke-virtual {p0, v4}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    goto :goto_0

    .line 1250
    .end local v1    # "first":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "offset":I
    :cond_3
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v7}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 1249
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public bridge synthetic discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 1576
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadComponents()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "minWritableBytes"    # I

    .prologue
    .line 1381
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->nioBufferCount()I

    move-result v0

    .line 729
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 730
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 736
    :goto_0
    return v1

    .line 732
    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 733
    .local v2, "writtenBytes":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 734
    const v1, 0x7fffffff

    goto :goto_0

    .line 736
    :cond_1
    long-to-int v1, v2

    goto :goto_0
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1386
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .prologue
    .line 1391
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 705
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    invoke-virtual {p0, p1, p4, p3, v5}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    .line 706
    if-nez p4, :cond_1

    .line 722
    :cond_0
    return-object p0

    .line 710
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 711
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_0

    .line 712
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 713
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v4, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 714
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 715
    .local v0, "adjustment":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 716
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-virtual {v4, v5, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 717
    add-int/2addr p1, v3

    .line 718
    add-int/2addr p3, v3

    .line 719
    sub-int/2addr p4, v3

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 744
    if-nez p3, :cond_1

    .line 759
    :cond_0
    return-object p0

    .line 748
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 749
    .local v2, "i":I
    :goto_0
    if-lez p3, :cond_0

    .line 750
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 751
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v4, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 752
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 753
    .local v0, "adjustment":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 754
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-virtual {v4, v5, p2, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 755
    add-int/2addr p1, v3

    .line 756
    sub-int/2addr p3, v3

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 9
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 676
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 677
    .local v4, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 679
    .local v3, "length":I
    invoke-virtual {p0, p1, v3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 680
    if-nez v3, :cond_0

    .line 700
    :goto_0
    return-object p0

    .line 684
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 686
    .local v2, "i":I
    :goto_1
    if-gtz v3, :cond_1

    .line 698
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 687
    :cond_1
    :try_start_0
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 688
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 689
    .local v6, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 690
    .local v0, "adjustment":I
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 691
    .local v5, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 692
    sub-int v7, p1, v0

    invoke-virtual {v6, v7, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    add-int/2addr p1, v5

    .line 694
    sub-int/2addr v3, v5

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 697
    .end local v0    # "adjustment":I
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v5    # "localLength":I
    .end local v6    # "s":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v7

    .line 698
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 699
    throw v7
.end method

.method public getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .prologue
    .line 1396
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 654
    array-length v5, p2

    invoke-virtual {p0, p1, p4, p3, v5}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    .line 655
    if-nez p4, :cond_1

    .line 671
    :cond_0
    return-object p0

    .line 659
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 660
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_0

    .line 661
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 662
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v4, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 663
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 664
    .local v0, "adjustment":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 665
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-virtual {v4, v5, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 666
    add-int/2addr p1, v3

    .line 667
    add-int/2addr p3, v3

    .line 668
    sub-int/2addr p4, v3

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public hasArray()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 446
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 447
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    .line 449
    :cond_0
    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 470
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 471
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    .line 473
    :cond_0
    return v0
.end method

.method public internalComponent(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .prologue
    .line 1061
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 1062
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public internalComponentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 1110
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1111
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isDirect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 432
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 433
    .local v1, "size":I
    if-nez v1, :cond_0

    move v2, v3

    .line 441
    :goto_0
    return v2

    .line 436
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 441
    const/4 v2, 0x1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 438
    goto :goto_0

    .line 436
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2

    .line 379
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 380
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 1361
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 1371
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markWriterIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public maxNumComponents()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1118
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1119
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v0, v4, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1120
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1121
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v4, v4, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1133
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    return-object v3

    .line 1124
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1125
    .local v3, "merged":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1128
    .local v1, "buffers":[Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 1132
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 1129
    :cond_1
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public nioBufferCount()I
    .locals 6

    .prologue
    .line 1095
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1096
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v4, v4, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v2

    .line 1104
    :cond_0
    return v2

    .line 1098
    :cond_1
    const/4 v2, 0x0

    .line 1099
    .local v2, "count":I
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 1100
    .local v1, "componentsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1101
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1102
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v4, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 1100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 1571
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 1138
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1139
    if-nez p2, :cond_0

    .line 1140
    sget-object v6, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTE_BUFFERS:[Ljava/nio/ByteBuffer;

    .line 1165
    :goto_0
    return-object v6

    .line 1143
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1144
    .local v1, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v3

    .line 1145
    .local v3, "i":I
    :goto_1
    if-gtz p2, :cond_1

    .line 1165
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/nio/ByteBuffer;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1147
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v5, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1148
    .local v5, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1149
    .local v0, "adjustment":I
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v6

    sub-int v7, p1, v0

    sub-int/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1150
    .local v4, "localLength":I
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1157
    sub-int v6, p1, v0

    invoke-virtual {v5, v6, v4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1160
    :goto_2
    add-int/2addr p1, v4

    .line 1161
    sub-int/2addr p2, v4

    .line 1162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1152
    :pswitch_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 1154
    :pswitch_1
    sub-int v6, p1, v0

    invoke-virtual {v5, v6, v4}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public numComponents()I
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 550
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1441
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .prologue
    .line 1446
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 1451
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1471
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1466
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public readBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # [B

    .prologue
    .line 1456
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public readBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 1461
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "readerIndex"    # I

    .prologue
    .line 1341
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public removeComponent(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 352
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    .line 353
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 354
    return-object p0
.end method

.method public removeComponents(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 4
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    .line 366
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    add-int v3, p1, p2

    invoke-interface {v2, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, "toRemove":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/CompositeByteBuf$Component;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 370
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 372
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 373
    return-object p0

    .line 367
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 368
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->freeIfNecessary()V

    goto :goto_0
.end method

.method public bridge synthetic resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 1366
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 1376
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetWriterIndex()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retain()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 1566
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public retain(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increment"    # I

    .prologue
    .line 1561
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1401
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBoolean(IZ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 765
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 766
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 926
    if-nez p3, :cond_1

    .line 927
    sget-object v7, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    invoke-virtual {p2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 959
    :cond_0
    :goto_0
    return v5

    .line 930
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 931
    .local v2, "i":I
    const/4 v5, 0x0

    .line 934
    .local v5, "readBytes":I
    :cond_2
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 935
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 936
    .local v6, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 937
    .local v0, "adjustment":I
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 938
    .local v3, "localLength":I
    sub-int v7, p1, v0

    invoke-virtual {v6, v7, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v4

    .line 939
    .local v4, "localReadBytes":I
    if-gez v4, :cond_3

    .line 940
    if-nez v5, :cond_0

    .line 941
    const/4 v5, -0x1

    goto :goto_0

    .line 947
    :cond_3
    if-ne v4, v3, :cond_4

    .line 948
    add-int/2addr p1, v3

    .line 949
    sub-int/2addr p3, v3

    .line 950
    add-int/2addr v5, v3

    .line 951
    add-int/lit8 v2, v2, 0x1

    .line 933
    :goto_1
    if-gtz p3, :cond_2

    goto :goto_0

    .line 953
    :cond_4
    add-int/2addr p1, v4

    .line 954
    sub-int/2addr p3, v4

    .line 955
    add-int/2addr v5, v4

    goto :goto_1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 965
    if-nez p3, :cond_1

    .line 966
    sget-object v7, Lio/netty/buffer/CompositeByteBuf;->FULL_BYTEBUFFER:Ljava/nio/ByteBuffer;

    invoke-interface {p2, v7}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 1002
    :cond_0
    :goto_0
    return v5

    .line 969
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 970
    .local v2, "i":I
    const/4 v5, 0x0

    .line 972
    .local v5, "readBytes":I
    :cond_2
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 973
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 974
    .local v6, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 975
    .local v0, "adjustment":I
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 976
    .local v3, "localLength":I
    sub-int v7, p1, v0

    invoke-virtual {v6, v7, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v4

    .line 978
    .local v4, "localReadBytes":I
    if-eqz v4, :cond_0

    .line 982
    if-gez v4, :cond_3

    .line 983
    if-nez v5, :cond_0

    .line 984
    const/4 v5, -0x1

    goto :goto_0

    .line 990
    :cond_3
    if-ne v4, v3, :cond_4

    .line 991
    add-int/2addr p1, v3

    .line 992
    sub-int/2addr p3, v3

    .line 993
    add-int/2addr v5, v3

    .line 994
    add-int/lit8 v2, v2, 0x1

    .line 971
    :goto_1
    if-gtz p3, :cond_2

    goto :goto_0

    .line 996
    :cond_4
    add-int/2addr p1, v4

    .line 997
    sub-int/2addr p3, v4

    .line 998
    add-int/2addr v5, v4

    goto :goto_1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1421
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .prologue
    .line 1426
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 903
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    invoke-virtual {p0, p1, p4, p3, v5}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    .line 904
    if-nez p4, :cond_1

    .line 920
    :cond_0
    return-object p0

    .line 908
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 909
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_0

    .line 910
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 911
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v4, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 912
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 913
    .local v0, "adjustment":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 914
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-virtual {v4, v5, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 915
    add-int/2addr p1, v3

    .line 916
    add-int/2addr p3, v3

    .line 917
    sub-int/2addr p4, v3

    .line 918
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 9
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 874
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 875
    .local v4, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 877
    .local v3, "length":I
    invoke-virtual {p0, p1, v3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 878
    if-nez v3, :cond_0

    .line 898
    :goto_0
    return-object p0

    .line 882
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 884
    .local v2, "i":I
    :goto_1
    if-gtz v3, :cond_1

    .line 896
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 885
    :cond_1
    :try_start_0
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 886
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 887
    .local v6, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 888
    .local v0, "adjustment":I
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v7

    sub-int v8, p1, v0

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 889
    .local v5, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 890
    sub-int v7, p1, v0

    invoke-virtual {v6, v7, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    add-int/2addr p1, v5

    .line 892
    sub-int/2addr v3, v5

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 895
    .end local v0    # "adjustment":I
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v5    # "localLength":I
    .end local v6    # "s":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v7

    .line 896
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 897
    throw v7
.end method

.method public setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .prologue
    .line 1431
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(I[B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 852
    array-length v5, p2

    invoke-virtual {p0, p1, p4, p3, v5}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    .line 853
    if-nez p4, :cond_1

    .line 869
    :cond_0
    return-object p0

    .line 857
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex(I)I

    move-result v2

    .line 858
    .local v2, "i":I
    :goto_0
    if-lez p4, :cond_0

    .line 859
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 860
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v4, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 861
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 862
    .local v0, "adjustment":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    sub-int v6, p1, v0

    sub-int/2addr v5, v6

    invoke-static {p4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 863
    .local v3, "localLength":I
    sub-int v5, p1, v0

    invoke-virtual {v4, v5, p2, p3, v3}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 864
    add-int/2addr p1, v3

    .line 865
    add-int/2addr p3, v3

    .line 866
    sub-int/2addr p4, v3

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setChar(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setChar(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 1406
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setChar(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 2

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setDouble(ID)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(ID)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 1416
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setDouble(ID)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setFloat(IF)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setFloat(IF)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 1411
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setFloat(IF)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setIndex(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .prologue
    .line 1351
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setInt(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 814
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 2

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setLong(IJ)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 833
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setMedium(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setMedium(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 795
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setShort(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 776
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setZero(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setZero(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 1436
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->skipBytes(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public skipBytes(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 1476
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public toByteIndex(I)I
    .locals 1
    .param p1, "cIndex"    # I

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 590
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    return v0
.end method

.method public toComponentIndex(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 573
    const/4 v2, 0x0

    .local v2, "low":I
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "high":I
    :goto_0
    if-le v2, v1, :cond_0

    .line 585
    new-instance v4, Ljava/lang/Error;

    const-string v5, "should not reach here"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 574
    :cond_0
    add-int v4, v2, v1

    ushr-int/lit8 v3, v4, 0x1

    .line 575
    .local v3, "mid":I
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf$Component;

    .line 576
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v4, :cond_1

    .line 577
    add-int/lit8 v2, v3, 0x1

    .line 578
    goto :goto_0

    :cond_1
    iget v4, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v4, :cond_2

    .line 579
    add-int/lit8 v1, v3, -0x1

    .line 580
    goto :goto_0

    .line 581
    :cond_2
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1317
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", components="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1481
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeByte(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1486
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1526
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .prologue
    .line 1531
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 1536
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1551
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public writeBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # [B

    .prologue
    .line 1541
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 1546
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeChar(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeChar(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1511
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeChar(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeDouble(D)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeDouble(D)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 1521
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeFloat(F)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeFloat(F)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1516
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeInt(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1501
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeLong(J)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1506
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeMedium(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeMedium(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1496
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeShort(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1491
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeZero(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeZero(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 1556
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method

.method public bridge synthetic writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "writerIndex"    # I

    .prologue
    .line 1346
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    return-object v0
.end method
