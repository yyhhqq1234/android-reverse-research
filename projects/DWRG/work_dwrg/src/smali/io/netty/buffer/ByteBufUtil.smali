.class public final Lio/netty/buffer/ByteBufUtil;
.super Ljava/lang/Object;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;,
        Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;
    }
.end annotation


# static fields
.field static final DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

.field private static final HEXDUMP_TABLE:[C

.field private static final THREAD_LOCAL_BUFFER_SIZE:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 41
    const-class v4, Lio/netty/buffer/ByteBufUtil;

    invoke-static {v4}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v4

    sput-object v4, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 43
    const/16 v4, 0x400

    new-array v4, v4, [C

    sput-object v4, Lio/netty/buffer/ByteBufUtil;->HEXDUMP_TABLE:[C

    .line 50
    const-string v4, "0123456789abcdef"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 51
    .local v0, "DIGITS":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x100

    if-lt v3, v4, :cond_0

    .line 56
    const-string v4, "io.netty.allocator.type"

    const-string v5, "unpooled"

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "allocType":Ljava/lang/String;
    const-string v4, "unpooled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    sget-object v1, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 60
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    sget-object v4, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "-Dio.netty.allocator.type: {}"

    invoke-interface {v4, v5, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :goto_1
    sput-object v1, Lio/netty/buffer/ByteBufUtil;->DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

    .line 71
    const-string v4, "io.netty.threadLocalDirectBufferSize"

    const/high16 v5, 0x10000

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    .line 72
    sget-object v4, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "-Dio.netty.threadLocalDirectBufferSize: {}"

    sget v6, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void

    .line 52
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local v2    # "allocType":Ljava/lang/String;
    :cond_0
    sget-object v4, Lio/netty/buffer/ByteBufUtil;->HEXDUMP_TABLE:[C

    shl-int/lit8 v5, v3, 0x1

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v4, v5

    .line 53
    sget-object v4, Lio/netty/buffer/ByteBufUtil;->HEXDUMP_TABLE:[C

    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v3, 0xf

    aget-char v6, v0, v6

    aput-char v6, v4, v5

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .restart local v2    # "allocType":Ljava/lang/String;
    :cond_1
    const-string v4, "pooled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 63
    .restart local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    sget-object v4, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "-Dio.netty.allocator.type: {}"

    invoke-interface {v4, v5, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :cond_2
    sget-object v1, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 66
    .restart local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    sget-object v4, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "-Dio.netty.allocator.type: unpooled (unknown: {})"

    invoke-interface {v4, v5, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    return v0
.end method

.method public static compare(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 18
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 194
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 195
    .local v3, "aLen":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    .line 196
    .local v5, "bLen":I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 197
    .local v8, "minLength":I
    ushr-int/lit8 v9, v8, 0x2

    .line 198
    .local v9, "uintCount":I
    and-int/lit8 v6, v8, 0x3

    .line 200
    .local v6, "byteCount":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    .line 201
    .local v2, "aIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 203
    .local v4, "bIndex":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v15

    if-ne v14, v15, :cond_4

    .line 204
    move v7, v9

    .local v7, "i":I
    :goto_0
    if-gtz v7, :cond_1

    .line 231
    :cond_0
    move v7, v6

    :goto_1
    if-gtz v7, :cond_7

    .line 244
    sub-int v14, v3, v5

    :goto_2
    return v14

    .line 205
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v10

    .line 206
    .local v10, "va":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v12

    .line 207
    .local v12, "vb":J
    cmp-long v14, v10, v12

    if-lez v14, :cond_2

    .line 208
    const/4 v14, 0x1

    goto :goto_2

    .line 210
    :cond_2
    cmp-long v14, v10, v12

    if-gez v14, :cond_3

    .line 211
    const/4 v14, -0x1

    goto :goto_2

    .line 213
    :cond_3
    add-int/lit8 v2, v2, 0x4

    .line 214
    add-int/lit8 v4, v4, 0x4

    .line 204
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 217
    .end local v7    # "i":I
    .end local v10    # "va":J
    .end local v12    # "vb":J
    :cond_4
    move v7, v9

    .restart local v7    # "i":I
    :goto_3
    if-lez v7, :cond_0

    .line 218
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v10

    .line 219
    .restart local v10    # "va":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v14

    invoke-static {v14}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v12, v14, v16

    .line 220
    .restart local v12    # "vb":J
    cmp-long v14, v10, v12

    if-lez v14, :cond_5

    .line 221
    const/4 v14, 0x1

    goto :goto_2

    .line 223
    :cond_5
    cmp-long v14, v10, v12

    if-gez v14, :cond_6

    .line 224
    const/4 v14, -0x1

    goto :goto_2

    .line 226
    :cond_6
    add-int/lit8 v2, v2, 0x4

    .line 227
    add-int/lit8 v4, v4, 0x4

    .line 217
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 232
    .end local v10    # "va":J
    .end local v12    # "vb":J
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v10

    .line 233
    .local v10, "va":S
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v12

    .line 234
    .local v12, "vb":S
    if-le v10, v12, :cond_8

    .line 235
    const/4 v14, 0x1

    goto :goto_2

    .line 237
    :cond_8
    if-ge v10, v12, :cond_9

    .line 238
    const/4 v14, -0x1

    goto :goto_2

    .line 240
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 241
    add-int/lit8 v4, v4, 0x1

    .line 231
    add-int/lit8 v7, v7, -0x1

    goto :goto_1
.end method

.method static decodeString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 380
    invoke-static {p1}, Lio/netty/util/CharsetUtil;->getDecoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 382
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 381
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 384
    .local v2, "dst":Ljava/nio/CharBuffer;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, p0, v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 385
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 386
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 388
    :cond_0
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-nez v4, :cond_1

    .line 390
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_1
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 392
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v3

    .line 393
    .local v3, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method static encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 12
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "enforceHeap"    # Z
    .param p2, "src"    # Ljava/nio/CharBuffer;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 347
    invoke-static {p3}, Lio/netty/util/CharsetUtil;->getEncoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 348
    .local v3, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v4, v8

    .line 349
    .local v4, "length":I
    const/4 v6, 0x1

    .line 351
    .local v6, "release":Z
    if-eqz p1, :cond_3

    .line 352
    invoke-interface {p0, v4}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 357
    .local v1, "dst":Lio/netty/buffer/ByteBuf;
    :goto_0
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v1, v8, v4}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 358
    .local v2, "dstBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 359
    .local v5, "pos":I
    const/4 v8, 0x1

    invoke-virtual {v3, p2, v2, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 360
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-nez v8, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 363
    :cond_0
    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v8

    if-nez v8, :cond_1

    .line 365
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 367
    :cond_1
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v8, v5

    invoke-virtual {v1, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    const/4 v6, 0x0

    .line 373
    if-eqz v6, :cond_2

    .line 374
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 369
    :cond_2
    return-object v1

    .line 354
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    .end local v1    # "dst":Lio/netty/buffer/ByteBuf;
    .end local v2    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v5    # "pos":I
    :cond_3
    invoke-interface {p0, v4}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .restart local v1    # "dst":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 370
    :catch_0
    move-exception v7

    .line 371
    .local v7, "x":Ljava/nio/charset/CharacterCodingException;
    :try_start_1
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .end local v7    # "x":Ljava/nio/charset/CharacterCodingException;
    :catchall_0
    move-exception v8

    .line 373
    if-eqz v6, :cond_4

    .line 374
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 376
    :cond_4
    throw v8
.end method

.method public static equals(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Z
    .locals 12
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;

    .prologue
    const/4 v6, 0x0

    .line 149
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 150
    .local v1, "aLen":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    if-eq v1, v7, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v6

    .line 154
    :cond_1
    ushr-int/lit8 v5, v1, 0x3

    .line 155
    .local v5, "longCount":I
    and-int/lit8 v3, v1, 0x7

    .line 157
    .local v3, "byteCount":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 158
    .local v0, "aIndex":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    .line 160
    .local v2, "bIndex":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 161
    move v4, v5

    .local v4, "i":I
    :goto_1
    if-gtz v4, :cond_3

    .line 178
    :cond_2
    move v4, v3

    :goto_2
    if-gtz v4, :cond_5

    .line 186
    const/4 v6, 0x1

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 165
    add-int/lit8 v0, v0, 0x8

    .line 166
    add-int/lit8 v2, v2, 0x8

    .line 161
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 169
    .end local v4    # "i":I
    :cond_4
    move v4, v5

    .restart local v4    # "i":I
    :goto_3
    if-lez v4, :cond_2

    .line 170
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v8

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Lio/netty/buffer/ByteBufUtil;->swapLong(J)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 173
    add-int/lit8 v0, v0, 0x8

    .line 174
    add-int/lit8 v2, v2, 0x8

    .line 169
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 179
    :cond_5
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v8

    if-ne v7, v8, :cond_0

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 178
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method private static firstIndexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .prologue
    const/4 v1, -0x1

    .line 309
    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 310
    if-ge p1, p2, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 320
    :cond_1
    :goto_0
    return v0

    .line 314
    :cond_2
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_3

    move v0, v1

    .line 320
    goto :goto_0

    .line 315
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    if-eq v2, p3, :cond_1

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static hashCode(Lio/netty/buffer/ByteBuf;)I
    .locals 9
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 114
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 115
    .local v0, "aLen":I
    ushr-int/lit8 v6, v0, 0x2

    .line 116
    .local v6, "intCount":I
    and-int/lit8 v3, v0, 0x3

    .line 118
    .local v3, "byteCount":I
    const/4 v4, 0x1

    .line 119
    .local v4, "hashCode":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 120
    .local v1, "arrayIndex":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_3

    .line 121
    move v5, v6

    .local v5, "i":I
    :goto_0
    if-gtz v5, :cond_2

    .line 132
    :cond_0
    move v5, v3

    move v2, v1

    .end local v1    # "arrayIndex":I
    .local v2, "arrayIndex":I
    :goto_1
    if-gtz v5, :cond_4

    .line 136
    if-nez v4, :cond_1

    .line 137
    const/4 v4, 0x1

    .line 140
    :cond_1
    return v4

    .line 122
    .end local v2    # "arrayIndex":I
    .restart local v1    # "arrayIndex":I
    :cond_2
    mul-int/lit8 v7, v4, 0x1f

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v8

    add-int v4, v7, v8

    .line 123
    add-int/lit8 v1, v1, 0x4

    .line 121
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 126
    .end local v5    # "i":I
    :cond_3
    move v5, v6

    .restart local v5    # "i":I
    :goto_2
    if-lez v5, :cond_0

    .line 127
    mul-int/lit8 v7, v4, 0x1f

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v8

    add-int v4, v7, v8

    .line 128
    add-int/lit8 v1, v1, 0x4

    .line 126
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 133
    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    :cond_4
    mul-int/lit8 v7, v4, 0x1f

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayIndex":I
    .restart local v1    # "arrayIndex":I
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v8

    add-int v4, v7, v8

    .line 132
    add-int/lit8 v5, v5, -0x1

    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    goto :goto_1
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 80
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 7
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .prologue
    .line 88
    if-gez p2, :cond_0

    .line 89
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    :cond_0
    if-nez p2, :cond_1

    .line 92
    const-string v4, ""

    .line 106
    :goto_0
    return-object v4

    .line 95
    :cond_1
    add-int v2, p1, p2

    .line 96
    .local v2, "endIndex":I
    shl-int/lit8 v4, p2, 0x1

    new-array v0, v4, [C

    .line 98
    .local v0, "buf":[C
    move v3, p1

    .line 99
    .local v3, "srcIdx":I
    const/4 v1, 0x0

    .line 100
    .local v1, "dstIdx":I
    :goto_1
    if-lt v3, v2, :cond_2

    .line 106
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 102
    :cond_2
    sget-object v4, Lio/netty/buffer/ByteBufUtil;->HEXDUMP_TABLE:[C

    invoke-virtual {p0, v3}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    shl-int/lit8 v5, v5, 0x1

    .line 103
    const/4 v6, 0x2

    .line 101
    invoke-static {v4, v5, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public static indexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .prologue
    .line 252
    if-gt p1, p2, :cond_0

    .line 253
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->firstIndexOf(Lio/netty/buffer/ByteBuf;IIB)I

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->lastIndexOf(Lio/netty/buffer/ByteBuf;IIB)I

    move-result v0

    goto :goto_0
.end method

.method private static lastIndexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .prologue
    const/4 v1, -0x1

    .line 324
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 325
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 335
    :cond_1
    :goto_0
    return v0

    .line 329
    :cond_2
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_3

    move v0, v1

    .line 335
    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    if-eq v2, p3, :cond_1

    .line 329
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .prologue
    .line 295
    const/4 v1, 0x1

    .line 296
    .local v1, "release":Z
    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 298
    .local v0, "dst":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v1, 0x0

    .line 302
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 300
    :cond_0
    return-object v0

    .line 301
    :catchall_0
    move-exception v2

    .line 302
    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 305
    :cond_1
    throw v2
.end method

.method public static swapInt(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 281
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static swapLong(J)J
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 288
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static swapMedium(I)I
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 270
    shl-int/lit8 v1, p0, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 271
    .local v0, "swapped":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 272
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 274
    :cond_0
    return v0
.end method

.method public static swapShort(S)S
    .locals 1
    .param p0, "value"    # S

    .prologue
    .line 263
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public static threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 404
    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    if-gtz v0, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    .line 408
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;

    move-result-object v0

    goto :goto_0
.end method
