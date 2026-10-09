.class public Lcom/tencent/midas/comm/APBase64;
.super Ljava/lang/Object;
.source "APBase64.java"


# static fields
.field private static base64DecodeChars:[B

.field private static final base64EncodeChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    .line 16
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/midas/comm/APBase64;->base64DecodeChars:[B

    return-void

    .line 6
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    .line 16
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x3d

    const/4 v11, -0x1

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 62
    .local v5, "data":[B
    array-length v8, v5

    .line 63
    .local v8, "len":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 64
    .local v4, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 67
    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_1

    .line 71
    :goto_1
    sget-object v9, Lcom/tencent/midas/comm/APBase64;->base64DecodeChars:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget-byte v10, v5, v6

    aget-byte v0, v9, v10

    .line 72
    .local v0, "b1":I
    if-ge v7, v8, :cond_0

    if-eq v0, v11, :cond_d

    .line 73
    :cond_0
    if-ne v0, v11, :cond_2

    move v6, v7

    .line 112
    .end local v0    # "b1":I
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    :goto_3
    return-object v9

    .end local v6    # "i":I
    .restart local v0    # "b1":I
    .restart local v7    # "i":I
    :cond_2
    move v6, v7

    .line 79
    .end local v7    # "i":I
    .restart local v6    # "i":I
    sget-object v9, Lcom/tencent/midas/comm/APBase64;->base64DecodeChars:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v10, v5, v6

    aget-byte v1, v9, v10

    .line 80
    .local v1, "b2":I
    if-ge v7, v8, :cond_3

    if-eq v1, v11, :cond_2

    .line 81
    :cond_3
    if-ne v1, v11, :cond_4

    move v6, v7

    .line 82
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 84
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_4
    shl-int/lit8 v9, v0, 0x2

    and-int/lit8 v10, v1, 0x30

    ushr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_5
    move v6, v7

    .line 88
    .end local v7    # "i":I
    .restart local v6    # "i":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v2, v5, v6

    .line 89
    .local v2, "b3":I
    if-ne v2, v12, :cond_6

    .line 90
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    .line 92
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_6
    sget-object v9, Lcom/tencent/midas/comm/APBase64;->base64DecodeChars:[B

    aget-byte v2, v9, v2

    .line 93
    if-ge v7, v8, :cond_7

    if-eq v2, v11, :cond_5

    .line 94
    :cond_7
    if-ne v2, v11, :cond_8

    move v6, v7

    .line 95
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 97
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_8
    and-int/lit8 v9, v1, 0xf

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v10, v2, 0x3c

    ushr-int/lit8 v10, v10, 0x2

    or-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_9
    move v6, v7

    .line 101
    .end local v7    # "i":I
    .restart local v6    # "i":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .restart local v7    # "i":I
    aget-byte v3, v5, v6

    .line 102
    .local v3, "b4":I
    if-ne v3, v12, :cond_a

    .line 103
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    .line 105
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_a
    sget-object v9, Lcom/tencent/midas/comm/APBase64;->base64DecodeChars:[B

    aget-byte v3, v9, v3

    .line 106
    if-ge v7, v8, :cond_b

    if-eq v3, v11, :cond_9

    .line 107
    :cond_b
    if-ne v3, v11, :cond_c

    move v6, v7

    .line 108
    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 110
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_c
    and-int/lit8 v9, v2, 0x3

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v3

    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_d
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # [B

    .prologue
    .line 27
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v6, "sb":Ljava/lang/StringBuffer;
    array-length v5, p0

    .line 29
    .local v5, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .line 32
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 33
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p0, v4

    and-int/lit16 v0, v7, 0xff

    .line 34
    .local v0, "b1":I
    if-ne v3, v5, :cond_0

    .line 35
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    const-string v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .end local v0    # "b1":I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 40
    .restart local v0    # "b1":I
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v7, p0, v3

    and-int/lit16 v1, v7, 0xff

    .line 41
    .local v1, "b2":I
    if-ne v4, v5, :cond_1

    .line 42
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    .line 47
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 49
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v7, p0, v4

    and-int/lit16 v2, v7, 0xff

    .line 50
    .local v2, "b3":I
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    and-int/lit16 v9, v2, 0xc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    sget-object v7, Lcom/tencent/midas/comm/APBase64;->base64EncodeChars:[C

    and-int/lit8 v8, v2, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    .end local v0    # "b1":I
    .end local v1    # "b2":I
    .end local v2    # "b3":I
    :cond_2
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method
