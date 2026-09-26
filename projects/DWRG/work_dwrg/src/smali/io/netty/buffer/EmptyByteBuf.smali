.class public final Lio/netty/buffer/EmptyByteBuf;
.super Lio/netty/buffer/ByteBuf;
.source "EmptyByteBuf.java"


# static fields
.field private static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field private static final EMPTY_BYTE_BUFFER_ADDRESS:J


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private final order:Ljava/nio/ByteOrder;

.field private final str:Ljava/lang/String;

.field private swapped:Lio/netty/buffer/EmptyByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    .line 41
    const-wide/16 v0, 0x0

    .line 43
    .local v0, "emptyByteBufferAddress":J
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    sget-object v2, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 49
    :cond_0
    :goto_0
    sput-wide v0, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER_ADDRESS:J

    .line 50
    return-void

    .line 46
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .prologue
    .line 58
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/EmptyByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteOrder;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteOrder;)V
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 61
    invoke-direct {p0}, Lio/netty/buffer/ByteBuf;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alloc"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lio/netty/buffer/EmptyByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 67
    iput-object p2, p0, Lio/netty/buffer/EmptyByteBuf;->order:Ljava/nio/ByteOrder;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_1

    const-string v0, "BE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/EmptyByteBuf;->str:Ljava/lang/String;

    .line 69
    return-void

    .line 68
    :cond_1
    const-string v0, "LE"

    goto :goto_0
.end method

.method private checkIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 845
    if-eqz p1, :cond_0

    .line 846
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 848
    :cond_0
    return-object p0
.end method

.method private checkIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 852
    if-gez p2, :cond_0

    .line 853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 856
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 858
    :cond_2
    return-object p0
.end method

.method private checkLength(I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 862
    if-gez p1, :cond_0

    .line 863
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_0
    if-eqz p1, :cond_1

    .line 866
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 868
    :cond_1
    return-object p0
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lio/netty/buffer/EmptyByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 1

    .prologue
    .line 756
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public bytesBefore(B)I
    .locals 1
    .param p1, "value"    # B

    .prologue
    .line 655
    const/4 v0, -0x1

    return v0
.end method

.method public bytesBefore(IB)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "value"    # B

    .prologue
    .line 660
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    .line 661
    const/4 v0, -0x1

    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .prologue
    .line 666
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 667
    const/4 v0, -0x1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "newCapacity"    # I

    .prologue
    .line 78
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public clear()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 178
    return-object p0
.end method

.method public compareTo(Lio/netty/buffer/ByteBuf;)I
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 801
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copy()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 694
    return-object p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 699
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 203
    return-object p0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 208
    return-object p0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 714
    return-object p0
.end method

.method public ensureWritable(IZ)I
    .locals 3
    .param p1, "minWritableBytes"    # I
    .param p2, "force"    # Z

    .prologue
    .line 224
    if-gez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minWritableBytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-nez p1, :cond_1

    .line 229
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "minWritableBytes"    # I

    .prologue
    .line 213
    if-gez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "minWritableBytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    if-eqz p1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 219
    :cond_1
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 796
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/buffer/ByteBuf;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forEachByte(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 677
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 678
    const/4 v0, -0x1

    return v0
.end method

.method public forEachByte(Lio/netty/buffer/ByteBufProcessor;)I
    .locals 1
    .param p1, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 672
    const/4 v0, -0x1

    return v0
.end method

.method public forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 688
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 689
    const/4 v0, -0x1

    return v0
.end method

.method public forEachByteDesc(Lio/netty/buffer/ByteBufProcessor;)I
    .locals 1
    .param p1, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 683
    const/4 v0, -0x1

    return v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 237
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 242
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I

    .prologue
    .line 337
    invoke-direct {p0, p1, p3}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 302
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .prologue
    .line 307
    invoke-direct {p0, p1, p3}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 312
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I

    .prologue
    .line 332
    invoke-direct {p0, p1, p3}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 327
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .prologue
    .line 317
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 322
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 287
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getDouble(I)D
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 297
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 292
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 272
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 282
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 262
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 252
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getUnsignedByte(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 247
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getUnsignedInt(I)J
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 277
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 267
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getUnsignedShort(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 257
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x1

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 4

    .prologue
    .line 766
    sget-wide v0, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER_ADDRESS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(I)Lio/netty/buffer/ByteBuf;

    .line 649
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(I)Lio/netty/buffer/ByteBuf;

    .line 650
    const/4 v0, -0x1

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 746
    sget-object v0, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public isReadable(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 811
    const/4 v0, 0x0

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public isWritable(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 183
    return-object p0
.end method

.method public markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 193
    return-object p0
.end method

.method public maxCapacity()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public maxWritableBytes()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lio/netty/buffer/EmptyByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    sget-wide v0, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER_ADDRESS:J

    return-wide v0

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 724
    sget-object v0, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 729
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 730
    invoke-virtual {p0}, Lio/netty/buffer/EmptyByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x1

    return v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 735
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    sget-object v2, Lio/netty/buffer/EmptyByteBuf;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 741
    invoke-virtual {p0}, Lio/netty/buffer/EmptyByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "endianness"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/EmptyByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne p1, v1, :cond_2

    move-object v0, p0

    .line 121
    :cond_1
    :goto_0
    return-object v0

    .line 115
    :cond_2
    iget-object v0, p0, Lio/netty/buffer/EmptyByteBuf;->swapped:Lio/netty/buffer/EmptyByteBuf;

    .line 116
    .local v0, "swapped":Lio/netty/buffer/EmptyByteBuf;
    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lio/netty/buffer/EmptyByteBuf;

    .end local v0    # "swapped":Lio/netty/buffer/EmptyByteBuf;
    invoke-virtual {p0}, Lio/netty/buffer/EmptyByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/netty/buffer/EmptyByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteOrder;)V

    .restart local v0    # "swapped":Lio/netty/buffer/EmptyByteBuf;
    iput-object v0, p0, Lio/netty/buffer/EmptyByteBuf;->swapped:Lio/netty/buffer/EmptyByteBuf;

    goto :goto_0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/netty/buffer/EmptyByteBuf;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1

    .prologue
    .line 435
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 440
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I

    .prologue
    .line 545
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public readBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 510
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .prologue
    .line 515
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 520
    invoke-direct {p0, p3}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I

    .prologue
    .line 540
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 535
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # [B

    .prologue
    .line 525
    array-length v0, p1

    invoke-direct {p0, v0}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 530
    invoke-direct {p0, p3}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readChar()C
    .locals 1

    .prologue
    .line 485
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readDouble()D
    .locals 1

    .prologue
    .line 495
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 490
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 470
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 1

    .prologue
    .line 480
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readMedium()I
    .locals 1

    .prologue
    .line 460
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 450
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()S
    .locals 1

    .prologue
    .line 445
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readUnsignedInt()J
    .locals 1

    .prologue
    .line 475
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readUnsignedMedium()I
    .locals 1

    .prologue
    .line 465
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .prologue
    .line 455
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public readableBytes()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public readerIndex()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "readerIndex"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x1

    return v0
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 188
    return-object p0
.end method

.method public resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 198
    return-object p0
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 826
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 831
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/EmptyByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 343
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 348
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I

    .prologue
    .line 418
    invoke-direct {p0, p1, p3}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I

    .prologue
    .line 424
    invoke-direct {p0, p1, p3}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 388
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .prologue
    .line 393
    invoke-direct {p0, p1, p3}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 398
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 413
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .prologue
    .line 403
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 408
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 373
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 383
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 378
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(I)Lio/netty/buffer/ByteBuf;

    .line 147
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(I)Lio/netty/buffer/ByteBuf;

    .line 148
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 363
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 368
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 358
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 353
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 704
    return-object p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 709
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lio/netty/buffer/EmptyByteBuf;->str:Ljava/lang/String;

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 785
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(II)Lio/netty/buffer/ByteBuf;

    .line 786
    invoke-virtual {p0, p3}, Lio/netty/buffer/EmptyByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 780
    const-string v0, ""

    return-object v0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public writableBytes()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 556
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 561
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 631
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I

    .prologue
    .line 637
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 601
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .prologue
    .line 606
    invoke-direct {p0, p2}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 611
    invoke-direct {p0, p3}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # [B

    .prologue
    .line 616
    array-length v0, p1

    invoke-direct {p0, v0}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 621
    invoke-direct {p0, p3}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 586
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 596
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 591
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 576
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 581
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 571
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 566
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkLength(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writerIndex()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "writerIndex"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lio/netty/buffer/EmptyByteBuf;->checkIndex(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
