.class public final Lio/netty/buffer/Unpooled;
.super Ljava/lang/Object;
.source "Unpooled.java"


# static fields
.field private static final ALLOC:Lio/netty/buffer/ByteBufAllocator;

.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    sput-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    .line 84
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 89
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lio/netty/buffer/Unpooled;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 94
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 860
    return-void
.end method

.method public static buffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I

    .prologue
    .line 118
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static buffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "maxCapacity"    # I

    .prologue
    .line 137
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static compositeBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .prologue
    .line 348
    const/16 v0, 0x10

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 3
    .param p0, "maxNumComponents"    # I

    .prologue
    .line 355
    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    return-object v0
.end method

.method public static copiedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 413
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 414
    .local v1, "readable":I
    if-lez v1, :cond_0

    .line 415
    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 416
    .local v0, "copy":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {v0, p0, v2, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 419
    .end local v0    # "copy":Lio/netty/buffer/ByteBuf;
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 603
    if-nez p0, :cond_0

    .line 604
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "string"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_0
    if-nez p2, :cond_1

    .line 607
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 625
    :goto_0
    return-object v1

    .line 610
    :cond_1
    instance-of v1, p0, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_3

    move-object v0, p0

    .line 611
    check-cast v0, Ljava/nio/CharBuffer;

    .line 612
    .local v0, "buf":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    .line 615
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    .line 613
    invoke-static {v1, v2, p2, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer([CIILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    .line 619
    :cond_2
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 620
    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 621
    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    invoke-static {v0, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    .line 625
    .end local v0    # "buf":Ljava/nio/CharBuffer;
    :cond_3
    add-int v1, p1, p2

    invoke-static {p0, p1, v1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-static {v1, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 584
    if-nez p0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_0
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1

    .line 589
    check-cast p0, Ljava/nio/CharBuffer;

    .end local p0    # "string":Ljava/lang/CharSequence;
    invoke-static {p0, p1}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    .restart local p0    # "string":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public static copiedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 393
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 394
    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 403
    :goto_0
    return-object v3

    .line 396
    :cond_0
    new-array v0, v1, [B

    .line 397
    .local v0, "copy":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 399
    .local v2, "position":I
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 403
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v3

    .line 401
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 402
    throw v3
.end method

.method private static copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/CharBuffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 658
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static copiedBuffer([B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 364
    array-length v0, p0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 367
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public static copiedBuffer([BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 377
    if-nez p2, :cond_0

    .line 378
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 382
    :goto_0
    return-object v1

    .line 380
    :cond_0
    new-array v0, p2, [B

    .line 381
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0
.end method

.method public static copiedBuffer([CIILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 648
    if-nez p0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    if-nez p2, :cond_1

    .line 652
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 654
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0, p3}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public static copiedBuffer([CLjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 635
    if-nez p0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lio/netty/buffer/Unpooled;->copiedBuffer([CIILjava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs copiedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 10
    .param p0, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .prologue
    const/4 v7, 0x0

    .line 476
    array-length v8, p0

    packed-switch v8, :pswitch_data_0

    .line 484
    const/4 v6, 0x0

    .line 485
    .local v6, "order":Ljava/nio/ByteOrder;
    const/4 v4, 0x0

    .line 486
    .local v4, "length":I
    array-length v8, p0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 505
    if-nez v4, :cond_5

    .line 506
    sget-object v7, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 517
    .end local v4    # "length":I
    .end local v6    # "order":Ljava/nio/ByteOrder;
    :goto_1
    return-object v7

    .line 478
    :pswitch_0
    sget-object v7, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 480
    :pswitch_1
    aget-object v7, p0, v7

    invoke-static {v7}, Lio/netty/buffer/Unpooled;->copiedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    goto :goto_1

    .line 486
    .restart local v4    # "length":I
    .restart local v6    # "order":Ljava/nio/ByteOrder;
    :cond_0
    aget-object v0, p0, v7

    .line 487
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 488
    .local v1, "bLen":I
    if-gtz v1, :cond_2

    .line 486
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 491
    :cond_2
    const v9, 0x7fffffff

    sub-int/2addr v9, v4

    if-ge v9, v1, :cond_3

    .line 492
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 493
    const-string v8, "The total length of the specified buffers is too big."

    .line 492
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 495
    :cond_3
    add-int/2addr v4, v1

    .line 496
    if-eqz v6, :cond_4

    .line 497
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 498
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "inconsistent byte order"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 501
    :cond_4
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    goto :goto_2

    .line 509
    .end local v0    # "b":Lio/netty/buffer/ByteBuf;
    .end local v1    # "bLen":I
    :cond_5
    new-array v5, v4, [B

    .line 510
    .local v5, "mergedArray":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    array-length v7, p0

    if-lt v2, v7, :cond_6

    .line 517
    invoke-static {v5}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-virtual {v7, v6}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    goto :goto_1

    .line 511
    :cond_6
    aget-object v0, p0, v2

    .line 512
    .restart local v0    # "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    .line 513
    .restart local v1    # "bLen":I
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v7

    invoke-virtual {v0, v7, v5, v3, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 514
    add-int/2addr v3, v1

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs copiedBuffer([Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 11
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x0

    .line 531
    array-length v9, p0

    packed-switch v9, :pswitch_data_0

    .line 539
    const/4 v7, 0x0

    .line 540
    .local v7, "order":Ljava/nio/ByteOrder;
    const/4 v4, 0x0

    .line 541
    .local v4, "length":I
    array-length v9, p0

    :goto_0
    if-lt v8, v9, :cond_0

    .line 560
    if-nez v4, :cond_5

    .line 561
    sget-object v8, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 574
    .end local v4    # "length":I
    .end local v7    # "order":Ljava/nio/ByteOrder;
    :goto_1
    return-object v8

    .line 533
    :pswitch_0
    sget-object v8, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 535
    :pswitch_1
    aget-object v8, p0, v8

    invoke-static {v8}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    goto :goto_1

    .line 541
    .restart local v4    # "length":I
    .restart local v7    # "order":Ljava/nio/ByteOrder;
    :cond_0
    aget-object v0, p0, v8

    .line 542
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 543
    .local v1, "bLen":I
    if-gtz v1, :cond_2

    .line 541
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 546
    :cond_2
    const v10, 0x7fffffff

    sub-int/2addr v10, v4

    if-ge v10, v1, :cond_3

    .line 547
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 548
    const-string v9, "The total length of the specified buffers is too big."

    .line 547
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 550
    :cond_3
    add-int/2addr v4, v1

    .line 551
    if-eqz v7, :cond_4

    .line 552
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 553
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "inconsistent byte order"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 556
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    goto :goto_2

    .line 564
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "bLen":I
    :cond_5
    new-array v5, v4, [B

    .line 565
    .local v5, "mergedArray":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    array-length v8, p0

    if-lt v2, v8, :cond_6

    .line 574
    invoke-static {v5}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    goto :goto_1

    .line 566
    :cond_6
    aget-object v0, p0, v2

    .line 567
    .restart local v0    # "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 568
    .restart local v1    # "bLen":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 569
    .local v6, "oldPos":I
    invoke-virtual {v0, v5, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 570
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 571
    add-int/2addr v3, v1

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs copiedBuffer([[B)Lio/netty/buffer/ByteBuf;
    .locals 10
    .param p0, "arrays"    # [[B

    .prologue
    const/4 v6, 0x0

    .line 430
    array-length v5, p0

    packed-switch v5, :pswitch_data_0

    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, "length":I
    array-length v7, p0

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 451
    if-nez v3, :cond_3

    .line 452
    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 462
    .end local v3    # "length":I
    :goto_1
    return-object v5

    .line 432
    :pswitch_0
    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 434
    :pswitch_1
    aget-object v5, p0, v6

    array-length v5, v5

    if-nez v5, :cond_0

    .line 435
    sget-object v5, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 437
    :cond_0
    aget-object v5, p0, v6

    invoke-static {v5}, Lio/netty/buffer/Unpooled;->copiedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    goto :goto_1

    .line 443
    .restart local v3    # "length":I
    :cond_1
    aget-object v0, p0, v5

    .line 444
    .local v0, "a":[B
    const v8, 0x7fffffff

    sub-int/2addr v8, v3

    array-length v9, v0

    if-ge v8, v9, :cond_2

    .line 445
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 446
    const-string v6, "The total length of the specified arrays is too big."

    .line 445
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 448
    :cond_2
    array-length v8, v0

    add-int/2addr v3, v8

    .line 443
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "a":[B
    :cond_3
    new-array v4, v3, [B

    .line 456
    .local v4, "mergedArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    array-length v5, p0

    if-lt v1, v5, :cond_4

    .line 462
    invoke-static {v4}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    goto :goto_1

    .line 457
    :cond_4
    aget-object v0, p0, v1

    .line 458
    .restart local v0    # "a":[B
    array-length v5, v0

    invoke-static {v0, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    array-length v5, v0

    add-int/2addr v2, v5

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static copyBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 786
    const/4 v1, 0x1

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 787
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    .line 788
    return-object v0
.end method

.method public static varargs copyBoolean([Z)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [Z

    .prologue
    .line 795
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 796
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 802
    :cond_1
    return-object v0

    .line 798
    :cond_2
    array-length v2, p0

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 799
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, p0, v2

    .line 800
    .local v1, "v":Z
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static copyDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 832
    const/16 v1, 0x8

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 833
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0, p1}, Lio/netty/buffer/ByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    .line 834
    return-object v0
.end method

.method public static varargs copyDouble([D)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "values"    # [D

    .prologue
    .line 841
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_2

    .line 842
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 848
    :cond_1
    return-object v0

    .line 844
    :cond_2
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 845
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-wide v2, p0, v1

    .line 846
    .local v2, "v":D
    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    .line 845
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static copyFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 809
    const/4 v1, 0x4

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 810
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    .line 811
    return-object v0
.end method

.method public static varargs copyFloat([F)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [F

    .prologue
    .line 818
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 819
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 825
    :cond_1
    return-object v0

    .line 821
    :cond_2
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 822
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p0, v2

    .line 823
    .local v1, "v":F
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    .line 822
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static copyInt(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 680
    const/4 v1, 0x4

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 681
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 682
    return-object v0
.end method

.method public static varargs copyInt([I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [I

    .prologue
    .line 689
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 690
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 696
    :cond_1
    return-object v0

    .line 692
    :cond_2
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 693
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p0, v2

    .line 694
    .local v1, "v":I
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 693
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static copyLong(J)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 763
    const/16 v1, 0x8

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 764
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0, p1}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 765
    return-object v0
.end method

.method public static varargs copyLong([J)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "values"    # [J

    .prologue
    .line 772
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_2

    .line 773
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 779
    :cond_1
    return-object v0

    .line 775
    :cond_2
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 776
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-wide v2, p0, v1

    .line 777
    .local v2, "v":J
    invoke-virtual {v0, v2, v3}, Lio/netty/buffer/ByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static copyMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 740
    const/4 v1, 0x3

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 741
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 742
    return-object v0
.end method

.method public static varargs copyMedium([I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [I

    .prologue
    .line 749
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 750
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 756
    :cond_1
    return-object v0

    .line 752
    :cond_2
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 753
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p0, v2

    .line 754
    .local v1, "v":I
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 753
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static copyShort(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 703
    const/4 v1, 0x2

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 704
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 705
    return-object v0
.end method

.method public static varargs copyShort([I)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [I

    .prologue
    .line 726
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 727
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 733
    :cond_1
    return-object v0

    .line 729
    :cond_2
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 730
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p0, v2

    .line 731
    .local v1, "v":I
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs copyShort([S)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "values"    # [S

    .prologue
    .line 712
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_2

    .line 713
    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 719
    :cond_1
    return-object v0

    .line 715
    :cond_2
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 716
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-short v1, p0, v2

    .line 717
    .local v1, "v":I
    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static directBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static directBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I

    .prologue
    .line 127
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static directBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "initialCapacity"    # I
    .param p1, "maxCapacity"    # I

    .prologue
    .line 147
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 668
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 669
    .local v0, "endianness":Ljava/nio/ByteOrder;
    sget-object v1, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 670
    new-instance v1, Lio/netty/buffer/ReadOnlyByteBuf;

    invoke-direct {v1, p0}, Lio/netty/buffer/ReadOnlyByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 673
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lio/netty/buffer/ReadOnlyByteBuf;

    sget-object v2, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/buffer/ReadOnlyByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    sget-object v2, Lio/netty/buffer/Unpooled;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ReadOnlyByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0
.end method

.method public static unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 855
    new-instance v0, Lio/netty/buffer/UnreleasableByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnreleasableByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public static varargs wrappedBuffer(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "maxNumComponents"    # I
    .param p1, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .prologue
    const/4 v2, 0x0

    .line 292
    array-length v1, p1

    packed-switch v1, :pswitch_data_0

    .line 301
    array-length v3, p1

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_1

    .line 307
    :cond_0
    :pswitch_0
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    :goto_1
    return-object v1

    .line 296
    :pswitch_1
    aget-object v1, p1, v2

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    aget-object v1, p1, v2

    sget-object v2, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_1

    .line 301
    :cond_1
    aget-object v0, p1, v1

    .line 302
    .local v0, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    new-instance v1, Lio/netty/buffer/CompositeByteBuf;

    sget-object v3, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v1, v3, v2, p0, p1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;)V

    goto :goto_1

    .line 301
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs wrappedBuffer(I[Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p0, "maxNumComponents"    # I
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    .line 316
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_1

    .line 336
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 337
    new-instance v2, Lio/netty/buffer/CompositeByteBuf;

    sget-object v4, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v2, v4, v3, p0, v1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZILjava/lang/Iterable;)V

    .line 341
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :goto_1
    return-object v2

    .line 320
    :pswitch_0
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    aget-object v2, p1, v3

    sget-object v3, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    goto :goto_1

    .line 327
    .restart local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :cond_1
    aget-object v0, p1, v2

    .line 328
    .local v0, "b":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lez v5, :cond_2

    .line 332
    sget-object v5, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "b":Ljava/nio/ByteBuffer;
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :cond_3
    :pswitch_1
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs wrappedBuffer(I[[B)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p0, "maxNumComponents"    # I
    .param p1, "arrays"    # [[B

    .prologue
    const/4 v3, 0x0

    .line 258
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_1

    .line 278
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 279
    new-instance v2, Lio/netty/buffer/CompositeByteBuf;

    sget-object v4, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v2, v4, v3, p0, v1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZILjava/lang/Iterable;)V

    .line 283
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :goto_1
    return-object v2

    .line 262
    :pswitch_0
    aget-object v2, p1, v3

    array-length v2, v2

    if-eqz v2, :cond_3

    .line 263
    aget-object v2, p1, v3

    invoke-static {v2}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    goto :goto_1

    .line 269
    .restart local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :cond_1
    aget-object v0, p1, v2

    .line 270
    .local v0, "a":[B
    if-eqz v0, :cond_0

    .line 273
    array-length v5, v0

    if-lez v5, :cond_2

    .line 274
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "a":[B
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    :cond_3
    :pswitch_1
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static wrappedBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 218
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 207
    :goto_0
    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 192
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 189
    invoke-static {v0, v1, v2}, Lio/netty/buffer/Unpooled;->wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    new-instance v0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 198
    :cond_2
    new-instance v0, Lio/netty/buffer/ReadOnlyByteBufferBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 201
    :cond_3
    new-instance v0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    new-instance v0, Lio/netty/buffer/ReadOnlyByteBufferBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 207
    :cond_5
    new-instance v0, Lio/netty/buffer/UnpooledDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V

    goto :goto_0
.end method

.method public static wrappedBuffer([B)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 156
    array-length v0, p0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledHeapByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    array-length v2, p0

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BI)V

    goto :goto_0
.end method

.method public static wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    if-nez p1, :cond_1

    array-length v0, p0

    if-ne p2, v0, :cond_1

    .line 173
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs wrappedBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .prologue
    .line 240
    const/16 v0, 0x10

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 249
    const/16 v0, 0x10

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(I[Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs wrappedBuffer([[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "arrays"    # [[B

    .prologue
    .line 231
    const/16 v0, 0x10

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(I[[B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
