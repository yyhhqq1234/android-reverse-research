.class public Loicq/wlogin_sdk/code2d/e;
.super Loicq/wlogin_sdk/code2d/b;
.source "verify_code.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Loicq/wlogin_sdk/code2d/b;-><init>()V

    .line 10
    const/16 v0, 0x13

    iput v0, p0, Loicq/wlogin_sdk/code2d/e;->_cmd:I

    .line 11
    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0, p1, v2}, Loicq/wlogin_sdk/code2d/e;->get_response([BI)[B

    move-result-object v5

    .line 118
    if-eqz v5, :cond_0

    array-length v0, v5

    if-ge v0, v4, :cond_1

    .line 119
    :cond_0
    const/16 v0, -0x3f1

    .line 167
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x2

    .line 122
    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v6

    iput-wide v6, v3, Loicq/wlogin_sdk/code2d/c;->a:J

    .line 123
    const/16 v0, 0xa

    .line 124
    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v3, Loicq/wlogin_sdk/code2d/c;->b:I

    .line 126
    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    if-eqz v0, :cond_2

    .line 128
    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    .line 130
    sget-object v1, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v3, v0, [B

    iput-object v3, v1, Loicq/wlogin_sdk/code2d/c;->f:[B

    .line 131
    sget-object v1, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v1, v1, Loicq/wlogin_sdk/code2d/c;->f:[B

    invoke-static {v5, v10, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/lit8 v0, v0, 0xd

    .line 133
    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto :goto_0

    .line 135
    :cond_2
    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    iput-wide v6, v0, Loicq/wlogin_sdk/code2d/c;->c:J

    .line 136
    const/16 v0, 0xf

    .line 137
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    .line 138
    const/16 v3, 0x11

    .line 139
    sget-object v4, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v6, v0, [B

    iput-object v6, v4, Loicq/wlogin_sdk/code2d/c;->d:[B

    .line 140
    sget-object v4, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v4, v4, Loicq/wlogin_sdk/code2d/c;->d:[B

    invoke-static {v5, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    add-int/lit8 v0, v0, 0x11

    .line 145
    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v6

    .line 146
    add-int/lit8 v0, v0, 0x2

    .line 147
    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v4, v2, [B

    iput-object v4, v3, Loicq/wlogin_sdk/code2d/c;->g:[B

    .line 148
    sget-object v3, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    move v3, v2

    move v4, v0

    .line 149
    :goto_1
    if-ge v3, v6, :cond_6

    .line 150
    invoke-static {v5, v4}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v0

    .line 151
    add-int/lit8 v7, v4, 0x2

    invoke-static {v5, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    .line 152
    if-ne v0, v10, :cond_3

    .line 154
    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    new-array v8, v7, [B

    iput-object v8, v0, Loicq/wlogin_sdk/code2d/c;->g:[B

    .line 155
    add-int/lit8 v0, v4, 0x4

    sget-object v8, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v8, v8, Loicq/wlogin_sdk/code2d/c;->g:[B

    invoke-static {v5, v0, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :goto_2
    add-int/lit8 v0, v7, 0x4

    add-int/2addr v4, v0

    .line 149
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 156
    :cond_3
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_5

    .line 157
    add-int/lit8 v0, v4, 0x4

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Loicq/wlogin_sdk/code2d/c;->s:Z

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 160
    :cond_5
    add-int/lit8 v0, v7, 0x4

    new-array v0, v0, [B

    .line 161
    add-int/lit8 v8, v7, 0x4

    invoke-static {v5, v4, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    sget-object v8, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v8, v8, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
    :cond_6
    sget-object v0, Loicq/wlogin_sdk/code2d/e;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto/16 :goto_0
.end method

.method public a(JJZ[B[I[B[B[BI[B)[B
    .locals 5

    .prologue
    .line 15
    if-nez p6, :cond_0

    .line 16
    const/4 v1, 0x0

    new-array p6, v1, [B

    .line 18
    :cond_0
    if-nez p7, :cond_1

    .line 19
    const/4 v1, 0x0

    new-array p7, v1, [I

    .line 21
    :cond_1
    if-nez p8, :cond_2

    .line 22
    const/4 v1, 0x0

    new-array p8, v1, [B

    .line 24
    :cond_2
    if-nez p9, :cond_3

    .line 25
    const/4 v1, 0x0

    new-array p9, v1, [B

    .line 27
    :cond_3
    if-nez p10, :cond_4

    .line 28
    const/4 v1, 0x0

    new-array p10, v1, [B

    .line 30
    :cond_4
    if-nez p12, :cond_5

    .line 31
    const/4 v1, 0x0

    new-array v0, v1, [B

    move-object/from16 p12, v0

    .line 35
    :cond_5
    if-eqz p12, :cond_6

    move-object/from16 v0, p12

    array-length v1, v0

    if-lez v1, :cond_6

    .line 36
    array-length v1, p6

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x2

    array-length v2, p8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    array-length v2, p7

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    array-length v2, p10

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p12

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 46
    :goto_0
    const/4 v2, 0x2

    .line 47
    invoke-static {v1, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 48
    const/4 v2, 0x6

    .line 49
    invoke-static {v1, v2, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 50
    const/16 v2, 0xe

    .line 51
    array-length v3, p6

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 52
    const/16 v2, 0x10

    .line 53
    const/4 v3, 0x0

    array-length v4, p6

    invoke-static {p6, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length v2, p6

    add-int/lit8 v2, v2, 0x10

    .line 56
    array-length v3, p8

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 57
    add-int/lit8 v2, v2, 0x2

    .line 58
    const/4 v3, 0x0

    array-length v4, p8

    invoke-static {p8, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    array-length v3, p8

    add-int/2addr v2, v3

    .line 61
    if-eqz p9, :cond_7

    array-length v3, p9

    const/16 v4, 0x10

    if-ne v3, v4, :cond_7

    .line 62
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {p9, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    add-int/lit8 v2, v2, 0x10

    .line 68
    :goto_1
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 71
    move/from16 v0, p11

    invoke-static {v1, v2, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 72
    add-int/lit8 v2, v2, 0x2

    .line 75
    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 78
    array-length v3, p7

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 79
    add-int/lit8 v3, v2, 0x2

    .line 80
    const/4 v2, 0x0

    :goto_2
    array-length v4, p7

    if-ge v2, v4, :cond_8

    .line 81
    aget v4, p7, v2

    invoke-static {v1, v3, v4}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 82
    add-int/lit8 v3, v3, 0x2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 40
    :cond_6
    array-length v1, p6

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x2

    array-length v2, p8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    array-length v2, p7

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    array-length v2, p10

    add-int/2addr v1, v2

    new-array v1, v1, [B

    goto :goto_0

    .line 65
    :cond_7
    add-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 86
    :cond_8
    const/4 v2, 0x1

    .line 87
    if-eqz p12, :cond_9

    move-object/from16 v0, p12

    array-length v4, v0

    if-lez v4, :cond_9

    .line 88
    const/4 v2, 0x2

    .line 90
    :cond_9
    invoke-static {v1, v3, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 91
    add-int/lit8 v2, v3, 0x2

    .line 93
    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 94
    add-int/lit8 v2, v2, 0x2

    .line 95
    array-length v3, p10

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 96
    add-int/lit8 v2, v2, 0x2

    .line 97
    const/4 v3, 0x0

    array-length v4, p10

    invoke-static {p10, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length v3, p10

    add-int/2addr v2, v3

    .line 100
    if-eqz p12, :cond_a

    move-object/from16 v0, p12

    array-length v3, v0

    if-lez v3, :cond_a

    .line 102
    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 103
    add-int/lit8 v2, v2, 0x2

    .line 104
    move-object/from16 v0, p12

    array-length v3, v0

    invoke-static {v1, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 105
    add-int/lit8 v2, v2, 0x2

    .line 106
    const/4 v3, 0x0

    move-object/from16 v0, p12

    array-length v4, v0

    move-object/from16 v0, p12

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    move-object/from16 v0, p12

    array-length v3, v0

    add-int/2addr v2, v3

    .line 110
    :cond_a
    invoke-virtual {p0, p1, p2, p5, v1}, Loicq/wlogin_sdk/code2d/e;->get_request(JZ[B)[B

    move-result-object v1

    return-object v1
.end method
