.class public Loicq/wlogin_sdk/b/i;
.super Loicq/wlogin_sdk/b/b;
.source "tlv_t106.java"


# instance fields
.field a:I

.field i:I

.field j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    .line 11
    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/b/i;->a:I

    .line 12
    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/b/i;->i:I

    .line 13
    const/16 v0, 0x62

    iput v0, p0, Loicq/wlogin_sdk/b/i;->j:I

    .line 17
    const/16 v0, 0x106

    iput v0, p0, Loicq/wlogin_sdk/b/i;->h:I

    .line 18
    return-void
.end method


# virtual methods
.method public a(JJIJ[B[BI[BJ[B[BI[BI)[B
    .locals 8

    .prologue
    .line 25
    if-nez p8, :cond_0

    .line 26
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p8, v0

    .line 28
    :cond_0
    if-nez p9, :cond_1

    .line 29
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p9, v0

    .line 31
    :cond_1
    if-nez p11, :cond_2

    .line 32
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p11, v0

    .line 34
    :cond_2
    if-nez p15, :cond_3

    .line 35
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p15, v0

    .line 37
    :cond_3
    if-nez p17, :cond_4

    .line 38
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p17, v0

    .line 40
    :cond_4
    if-nez p14, :cond_5

    .line 41
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 p14, v0

    .line 43
    :cond_5
    iget v2, p0, Loicq/wlogin_sdk/b/i;->j:I

    move-object/from16 v0, p14

    array-length v3, v0

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Loicq/wlogin_sdk/b/i;->j:I

    .line 45
    const/4 v2, 0x0

    .line 46
    iget v3, p0, Loicq/wlogin_sdk/b/i;->j:I

    new-array v4, v3, [B

    .line 48
    iget v3, p0, Loicq/wlogin_sdk/b/i;->a:I

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 49
    const/4 v2, 0x2

    .line 50
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v3

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 51
    const/4 v2, 0x6

    .line 52
    iget v3, p0, Loicq/wlogin_sdk/b/i;->i:I

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 53
    const/16 v2, 0xa

    .line 54
    long-to-int v3, p1

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 55
    const/16 v2, 0xe

    .line 56
    invoke-static {v4, v2, p5}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 57
    const/16 v5, 0x12

    .line 58
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_6

    move-wide/from16 v2, p12

    :goto_0
    invoke-static {v4, v5, v2, v3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 59
    const/16 v2, 0x1a

    .line 60
    const/4 v3, 0x0

    move-object/from16 v0, p8

    array-length v5, v0

    move-object/from16 v0, p8

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    move-object/from16 v0, p8

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1a

    .line 62
    const/4 v3, 0x0

    move-object/from16 v0, p9

    array-length v5, v0

    move-object/from16 v0, p9

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    move-object/from16 v0, p9

    array-length v3, v0

    add-int/2addr v2, v3

    .line 64
    move/from16 v0, p10

    invoke-static {v4, v2, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    const/4 v3, 0x0

    move-object/from16 v0, p11

    array-length v5, v0

    move-object/from16 v0, p11

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    move-object/from16 v0, p11

    array-length v3, v0

    add-int/2addr v2, v3

    .line 68
    const/4 v3, 0x0

    move-object/from16 v0, p15

    array-length v5, v0

    move-object/from16 v0, p15

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    move-object/from16 v0, p15

    array-length v3, v0

    add-int/2addr v2, v3

    .line 71
    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 72
    add-int/lit8 v2, v2, 0x4

    .line 73
    move/from16 v0, p16

    invoke-static {v4, v2, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    move-object/from16 v0, p17

    array-length v3, v0

    if-nez v3, :cond_7

    .line 76
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 77
    const/4 v5, 0x0

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 78
    const/4 v5, 0x4

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 79
    const/16 v5, 0x8

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 80
    const/16 v5, 0xc

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_rand_32()I

    move-result v6

    invoke-static {v3, v5, v6}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 81
    array-length v3, v3

    add-int/2addr v2, v3

    .line 88
    :goto_1
    invoke-static {v4, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 89
    add-int/lit8 v2, v2, 0x4

    .line 90
    move/from16 v0, p18

    invoke-static {v4, v2, v0}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 91
    add-int/lit8 v2, v2, 0x4

    .line 93
    move-object/from16 v0, p14

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 94
    add-int/lit8 v2, v2, 0x2

    .line 95
    const/4 v3, 0x0

    move-object/from16 v0, p14

    array-length v5, v0

    move-object/from16 v0, p14

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 99
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p11

    array-length v6, v0

    move-object/from16 v0, p11

    invoke-static {v0, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    const-wide/16 v6, 0x0

    cmp-long v3, p12, v6

    if-nez v3, :cond_8

    .line 101
    const/16 v3, 0x10

    invoke-static {v2, v3, p6, p7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 105
    :goto_2
    invoke-static {v2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v2

    .line 106
    const/4 v3, 0x0

    array-length v5, v4

    invoke-static {v4, v3, v5, v2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v2

    .line 107
    array-length v3, v2

    iput v3, p0, Loicq/wlogin_sdk/b/i;->j:I

    .line 111
    iget v3, p0, Loicq/wlogin_sdk/b/i;->h:I

    invoke-virtual {p0, v3}, Loicq/wlogin_sdk/b/i;->b(I)V

    .line 112
    iget v3, p0, Loicq/wlogin_sdk/b/i;->j:I

    invoke-virtual {p0, v2, v3}, Loicq/wlogin_sdk/b/i;->c([BI)V

    .line 113
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/i;->e()V

    .line 115
    invoke-virtual {p0}, Loicq/wlogin_sdk/b/i;->b()[B

    move-result-object v2

    return-object v2

    :cond_6
    move-wide v2, p6

    .line 58
    goto/16 :goto_0

    .line 83
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p17

    array-length v5, v0

    move-object/from16 v0, p17

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    move-object/from16 v0, p17

    array-length v3, v0

    add-int/2addr v2, v3

    goto :goto_1

    .line 103
    :cond_8
    const/16 v3, 0x10

    move-wide/from16 v0, p12

    invoke-static {v2, v3, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    goto :goto_2
.end method
