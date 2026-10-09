.class public Loicq/wlogin_sdk/a/h;
.super Loicq/wlogin_sdk/a/c;
.source "reg_request_submit_mobile.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Loicq/wlogin_sdk/a/c;-><init>()V

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Loicq/wlogin_sdk/a/h;->b:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Loicq/wlogin_sdk/a/h;->e:I

    .line 35
    return-void
.end method


# virtual methods
.method public a([B[B[BIIIJJ[B[B[B[BJ[B[B[B)[B
    .locals 9

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 42
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 43
    if-nez p14, :cond_0

    .line 44
    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p14, v0

    .line 46
    :cond_0
    if-nez p19, :cond_1

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p19, v0

    .line 48
    :cond_1
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    array-length v5, p2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    array-length v5, p3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p12

    array-length v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p13

    array-length v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p14

    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, p17

    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p18

    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p19

    array-length v5, v0

    add-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Loicq/wlogin_sdk/a/h;->d:I

    .line 52
    iget v4, p0, Loicq/wlogin_sdk/a/h;->d:I

    new-array v4, v4, [B

    .line 54
    array-length v5, p1

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 55
    const/4 v2, 0x1

    .line 56
    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {p1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 58
    iget v5, p0, Loicq/wlogin_sdk/a/h;->c:I

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v6, v4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 64
    array-length v3, p2

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    const/4 v3, 0x0

    array-length v5, p2

    invoke-static {p2, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v3, p2

    add-int/2addr v2, v3

    .line 68
    array-length v3, p3

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 70
    const/4 v3, 0x0

    array-length v5, p3

    invoke-static {p3, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    array-length v3, p3

    add-int/2addr v2, v3

    .line 72
    invoke-static {v4, v2, p4}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    invoke-static {v4, v2, p5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    invoke-static {v4, v2, p6}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    move-wide/from16 v0, p7

    invoke-static {v4, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 79
    add-int/lit8 v2, v2, 0x4

    .line 80
    if-eqz p11, :cond_3

    move-object/from16 v0, p11

    array-length v3, v0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    .line 81
    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p11

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    :goto_0
    add-int/lit8 v2, v2, 0x4

    .line 85
    move-object/from16 v0, p12

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    const/4 v3, 0x0

    move-object/from16 v0, p12

    array-length v5, v0

    move-object/from16 v0, p12

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    move-object/from16 v0, p12

    array-length v3, v0

    add-int/2addr v2, v3

    .line 89
    move-object/from16 v0, p13

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    const/4 v3, 0x0

    move-object/from16 v0, p13

    array-length v5, v0

    move-object/from16 v0, p13

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    move-object/from16 v0, p13

    array-length v3, v0

    add-int/2addr v2, v3

    .line 94
    const/4 v3, 0x7

    .line 96
    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 99
    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    move-object/from16 v0, p14

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    const/4 v3, 0x0

    move-object/from16 v0, p14

    array-length v5, v0

    move-object/from16 v0, p14

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    move-object/from16 v0, p14

    array-length v3, v0

    add-int/2addr v2, v3

    .line 106
    const/4 v3, 0x2

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 108
    const/16 v3, 0x8

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 110
    move-wide/from16 v0, p15

    invoke-static {v4, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    .line 111
    add-int/lit8 v2, v2, 0x8

    .line 113
    const/4 v3, 0x3

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    move-object/from16 v0, p17

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    const/4 v3, 0x0

    move-object/from16 v0, p17

    array-length v5, v0

    move-object/from16 v0, p17

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    move-object/from16 v0, p17

    array-length v3, v0

    add-int/2addr v2, v3

    .line 120
    const/4 v3, 0x4

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    move-object/from16 v0, p18

    array-length v3, v0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, p18

    array-length v5, v0

    move-object/from16 v0, p18

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    move-object/from16 v0, p18

    array-length v3, v0

    add-int/2addr v2, v3

    .line 127
    const/16 v3, 0xd

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    const/4 v3, 0x4

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    move-wide/from16 v0, p9

    invoke-static {v4, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 132
    add-int/lit8 v2, v2, 0x4

    .line 135
    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x6

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 136
    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p19

    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    invoke-static {v4, v3, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 137
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p19

    array-length v2, v0

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 138
    move-object/from16 v0, p19

    array-length v2, v0

    invoke-static {v4, v3, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 139
    add-int/lit8 v2, v3, 0x2

    .line 140
    const/4 v3, 0x0

    move-object/from16 v0, p19

    array-length v5, v0

    move-object/from16 v0, p19

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move-object/from16 v0, p19

    array-length v3, v0

    add-int/2addr v2, v3

    .line 145
    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x7

    invoke-static {v4, v2, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 146
    add-int/lit8 v5, v3, 0x1

    const/4 v2, 0x4

    invoke-static {v4, v3, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 148
    const/4 v2, 0x1

    .line 149
    const/4 v3, 0x1

    sget-boolean v6, Loicq/wlogin_sdk/request/u;->ag:Z

    if-ne v3, v6, :cond_2

    .line 150
    const/4 v2, 0x3

    .line 152
    :cond_2
    invoke-static {v4, v5, v2}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 153
    add-int/lit8 v2, v5, 0x4

    .line 155
    invoke-virtual {p0, v4}, Loicq/wlogin_sdk/a/h;->a([B)[B

    move-result-object v2

    return-object v2

    .line 83
    :cond_3
    const/4 v3, 0x0

    invoke-static {v4, v2, v3}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    goto/16 :goto_0

    .line 137
    :cond_4
    const/4 v2, 0x2

    goto :goto_1
.end method
