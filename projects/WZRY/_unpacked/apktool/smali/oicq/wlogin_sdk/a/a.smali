.class public Loicq/wlogin_sdk/a/a;
.super Loicq/wlogin_sdk/a/c;
.source "QuickRegCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Loicq/wlogin_sdk/a/c;-><init>()V

    .line 18
    const/16 v0, 0x10

    iput v0, p0, Loicq/wlogin_sdk/a/a;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public a(JIB[B[BB[BI[B[B[B[B)[B
    .locals 11

    .prologue
    .line 34
    const/16 v1, 0xa

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    array-length v7, v5

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_1

    .line 40
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 41
    aget v8, v5, v4

    packed-switch v8, :pswitch_data_0

    .line 103
    :goto_1
    :pswitch_0
    array-length v8, v1

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    array-length v8, v1

    add-int/2addr v2, v8

    .line 106
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v1, v2

    .line 39
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_0

    .line 43
    :pswitch_1
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/4 v8, 0x2

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 44
    invoke-virtual {v1, p3}, Loicq/wlogin_sdk/b/a;->a(I)V

    .line 45
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    .line 49
    :pswitch_2
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/4 v8, 0x3

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 50
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/b/a;->a(B)V

    .line 51
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    .line 55
    :pswitch_3
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 56
    move-object/from16 v0, p8

    array-length v8, v0

    move-object/from16 v0, p8

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    .line 57
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    .line 61
    :pswitch_4
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0xd

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 62
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/b/a;->a(I)V

    .line 63
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    .line 67
    :pswitch_5
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0xe

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 68
    move-object/from16 v0, p10

    array-length v8, v0

    move-object/from16 v0, p10

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    .line 69
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    .line 73
    :pswitch_6
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x12

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 74
    move-object/from16 v0, p11

    array-length v8, v0

    move-object/from16 v0, p11

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    .line 75
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto :goto_1

    .line 79
    :pswitch_7
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x13

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 80
    move-object/from16 v0, p12

    array-length v8, v0

    move-object/from16 v0, p12

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    .line 81
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    .line 85
    :pswitch_8
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x14

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 86
    move-object/from16 v0, p13

    array-length v8, v0

    move-object/from16 v0, p13

    invoke-virtual {v1, v0, v8}, Loicq/wlogin_sdk/b/a;->a([BI)V

    .line 87
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    .line 91
    :pswitch_9
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x17

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 92
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Loicq/wlogin_sdk/b/a;->a(B)V

    .line 93
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    .line 97
    :pswitch_a
    new-instance v1, Loicq/wlogin_sdk/b/a;

    const/16 v8, 0x18

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/b/a;-><init>(I)V

    .line 98
    sget-object v8, Loicq/wlogin_sdk/request/u;->J:[B

    sget-object v9, Loicq/wlogin_sdk/request/u;->J:[B

    array-length v9, v9

    invoke-virtual {v1, v8, v9}, Loicq/wlogin_sdk/b/a;->a([BI)V

    .line 99
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/a;->a()[B

    move-result-object v1

    goto/16 :goto_1

    .line 110
    :cond_1
    add-int/lit8 v1, v2, 0x1

    new-array v5, v1, [B

    .line 111
    const/4 v1, 0x0

    int-to-byte v2, v3

    invoke-static {v5, v1, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 112
    const/4 v4, 0x1

    .line 113
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_2

    .line 114
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 115
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v1, v1

    add-int/2addr v4, v1

    .line 113
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 119
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 122
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 123
    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 124
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 125
    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 126
    move-object/from16 v0, p5

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 127
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 128
    const/4 v3, 0x0

    array-length v4, v5

    move-object/from16 v0, p6

    invoke-static {v5, v3, v4, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v3

    .line 129
    if-nez v3, :cond_3

    .line 130
    const-string v1, "encrypt failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    .line 141
    :goto_3
    return-object v1

    .line 133
    :cond_3
    array-length v4, v3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 134
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 135
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 136
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 138
    invoke-virtual {p0, v3}, Loicq/wlogin_sdk/a/a;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 139
    :catch_0
    move-exception v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequest failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x0

    goto :goto_3

    .line 34
    :array_0
    .array-data 4
        0x2
        0x3
        0xa
        0xd
        0xe
        0x12
        0x13
        0x14
        0x17
        0x18
    .end array-data

    .line 41
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
