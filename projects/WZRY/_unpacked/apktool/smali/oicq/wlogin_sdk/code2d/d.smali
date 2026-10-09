.class public Loicq/wlogin_sdk/code2d/d;
.super Loicq/wlogin_sdk/code2d/b;
.source "query_result.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Loicq/wlogin_sdk/code2d/b;-><init>()V

    .line 12
    const/16 v0, 0x12

    iput v0, p0, Loicq/wlogin_sdk/code2d/d;->_cmd:I

    .line 13
    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 13

    .prologue
    const/16 v4, -0x3f1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 39
    invoke-virtual {p0, p1, v6}, Loicq/wlogin_sdk/code2d/d;->get_response([BI)[B

    move-result-object v8

    .line 42
    if-eqz v8, :cond_0

    array-length v0, v8

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v4

    .line 108
    :goto_0
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    sget-object v1, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v8, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v1, Loicq/wlogin_sdk/code2d/c;->h:J

    .line 47
    const/4 v0, 0x6

    .line 48
    sget-object v1, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v8, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v0

    iput v0, v1, Loicq/wlogin_sdk/code2d/c;->b:I

    .line 49
    const/4 v0, 0x7

    .line 50
    sget-object v1, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v1, v1, Loicq/wlogin_sdk/code2d/c;->b:I

    if-eqz v1, :cond_2

    .line 51
    sget-object v0, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto :goto_0

    .line 53
    :cond_2
    sget-object v1, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v8, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v10

    iput-wide v10, v1, Loicq/wlogin_sdk/code2d/c;->a:J

    .line 54
    const/16 v0, 0xf

    .line 55
    sget-object v1, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    invoke-static {v8, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v0

    int-to-long v10, v0

    iput-wide v10, v1, Loicq/wlogin_sdk/code2d/c;->c:J

    .line 56
    const/16 v0, 0x13

    .line 62
    sget-object v1, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    .line 63
    invoke-static {v8, v0}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v9

    .line 64
    const/16 v7, 0x15

    move v5, v6

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    .line 66
    :goto_1
    if-ge v5, v9, :cond_3

    .line 67
    invoke-static {v8, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v3

    .line 68
    add-int/lit8 v7, v7, 0x2

    .line 70
    invoke-static {v8, v7}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v10

    .line 71
    add-int/lit8 v7, v7, 0x2

    .line 73
    sparse-switch v3, :sswitch_data_0

    .line 93
    add-int/lit8 v3, v10, 0x4

    new-array v3, v3, [B

    .line 94
    add-int/lit8 v11, v7, -0x4

    array-length v12, v3

    invoke-static {v8, v11, v3, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    sget-object v11, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget-object v11, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int v3, v7, v10

    .line 66
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v7, v3

    goto :goto_1

    .line 75
    :sswitch_0
    new-array v2, v10, [B

    .line 76
    invoke-static {v8, v7, v2, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    add-int v3, v7, v10

    .line 78
    goto :goto_2

    .line 81
    :sswitch_1
    new-array v0, v10, [B

    .line 82
    invoke-static {v8, v7, v0, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    add-int v3, v7, v10

    .line 84
    goto :goto_2

    .line 87
    :sswitch_2
    new-array v1, v10, [B

    .line 88
    invoke-static {v8, v7, v1, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    add-int v3, v7, v10

    .line 90
    goto :goto_2

    .line 102
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    move v0, v4

    .line 103
    goto/16 :goto_0

    .line 105
    :cond_5
    invoke-static {v2, v1}, Loicq/wlogin_sdk/request/oicq_request;->b([B[B)[B

    move-result-object v1

    sput-object v1, Loicq/wlogin_sdk/code2d/c;->q:[B

    .line 106
    sput-object v0, Loicq/wlogin_sdk/code2d/c;->r:[B

    .line 108
    sget-object v0, Loicq/wlogin_sdk/code2d/d;->_status:Loicq/wlogin_sdk/code2d/c;

    iget v0, v0, Loicq/wlogin_sdk/code2d/c;->b:I

    goto/16 :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public a(JJ[B[B)[B
    .locals 3

    .prologue
    .line 17
    array-length v0, p5

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    array-length v1, p6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 18
    new-array v0, v0, [B

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {v0, v1, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 23
    const/4 v1, 0x6

    .line 24
    invoke-virtual {p0, v0, p5, v1}, Loicq/wlogin_sdk/code2d/d;->fill_staff([B[BI)I

    move-result v1

    .line 25
    invoke-static {v0, v1, p1, p2}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 26
    add-int/lit8 v1, v1, 0x8

    .line 28
    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 34
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Loicq/wlogin_sdk/code2d/d;->get_request(JZ[B)[B

    move-result-object v0

    return-object v0
.end method
