.class public Loicq/wlogin_sdk/request/y;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "request_smslogin_verify.java"


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 13
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/y;->t:I

    .line 14
    const/16 v0, 0x12

    iput v0, p0, Loicq/wlogin_sdk/request/y;->u:I

    .line 15
    const-string/jumbo v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/y;->v:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Loicq/wlogin_sdk/request/y;->x:Loicq/wlogin_sdk/request/u;

    .line 17
    iget-object v0, p0, Loicq/wlogin_sdk/request/y;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    .prologue
    .line 73
    .line 74
    sget v12, Loicq/wlogin_sdk/request/u;->w:I

    .line 76
    const/4 v4, 0x0

    move v15, v4

    .line 78
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Loicq/wlogin_sdk/request/y;->a([BII[J)[B

    move-result-object v14

    .line 80
    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/y;->i:I

    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/y;->t:I

    move-object/from16 v0, p0

    iget v7, v0, Loicq/wlogin_sdk/request/y;->j:I

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/y;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v4, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/y;->m:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/y;->n:I

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/y;->p:I

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Loicq/wlogin_sdk/request/y;->a(IIIJIIII[B)V

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/y;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v5, v1}, Loicq/wlogin_sdk/request/y;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    .line 85
    if-eqz v4, :cond_0

    .line 96
    :goto_1
    return v4

    .line 89
    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/y;->b()I

    move-result v5

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry num:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ret:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/y;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v7, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v4, 0xb4

    if-eq v5, v4, :cond_1

    move v4, v5

    .line 92
    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v4, v15, 0x1

    const/4 v6, 0x1

    if-lt v15, v6, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v15, v4

    goto/16 :goto_0
.end method

.method public a([BII[J)[B
    .locals 11

    .prologue
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v0, 0x5

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    array-length v6, v4

    .line 27
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Loicq/wlogin_sdk/request/y;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v8, v9}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v7

    .line 30
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_1

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 32
    aget v8, v4, v3

    sparse-switch v8, :sswitch_data_0

    .line 51
    :goto_1
    array-length v8, v0

    const/4 v9, 0x4

    if-le v8, v9, :cond_0

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    array-length v8, v0

    add-int/2addr v1, v8

    .line 54
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    .line 30
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    .line 34
    :sswitch_0
    iget-object v0, v7, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/g;->b()[B

    move-result-object v0

    goto :goto_1

    .line 37
    :sswitch_1
    new-instance v0, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/cr;-><init>()V

    const/4 v8, 0x0

    sget v9, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v0

    goto :goto_1

    .line 40
    :sswitch_2
    new-instance v0, Loicq/wlogin_sdk/b/af;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/af;-><init>()V

    iget-object v8, v7, Loicq/wlogin_sdk/request/async_context;->_t126:Loicq/wlogin_sdk/b/ae;

    invoke-virtual {v8}, Loicq/wlogin_sdk/b/ae;->a()[B

    move-result-object v8

    invoke-virtual {v0, p1, v8}, Loicq/wlogin_sdk/b/af;->a([B[B)[B

    move-result-object v0

    goto :goto_1

    .line 43
    :sswitch_3
    new-instance v0, Loicq/wlogin_sdk/b/bv;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/bv;-><init>()V

    iget-wide v8, v7, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    iget-object v10, v7, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    invoke-virtual {v0, v8, v9, v10}, Loicq/wlogin_sdk/b/bv;->a(JLjava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 47
    :sswitch_4
    new-instance v0, Loicq/wlogin_sdk/b/u;

    invoke-direct {v0}, Loicq/wlogin_sdk/b/u;-><init>()V

    invoke-virtual {v0, p2, p3, p4}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v0

    goto :goto_1

    .line 59
    :cond_1
    new-array v4, v1, [B

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 62
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 63
    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v4, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    array-length v0, v0

    add-int/2addr v3, v0

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 67
    :cond_2
    iget v0, p0, Loicq/wlogin_sdk/request/y;->u:I

    invoke-virtual {p0, v4, v0, v2}, Loicq/wlogin_sdk/request/y;->b([BII)[B

    move-result-object v0

    return-object v0

    .line 24
    :array_0
    .array-data 4
        0x104
        0x8
        0x127
        0x184
        0x116
    .end array-data

    .line 32
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x104 -> :sswitch_0
        0x116 -> :sswitch_4
        0x127 -> :sswitch_2
        0x184 -> :sswitch_3
    .end sparse-switch
.end method
