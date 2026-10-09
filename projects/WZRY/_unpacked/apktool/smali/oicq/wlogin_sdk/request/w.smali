.class public Loicq/wlogin_sdk/request/w;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "request_smslogin_check.java"


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 19
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/w;->t:I

    .line 20
    const/16 v0, 0x11

    iput v0, p0, Loicq/wlogin_sdk/request/w;->u:I

    .line 21
    const-string/jumbo v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/w;->v:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Loicq/wlogin_sdk/request/w;->x:Loicq/wlogin_sdk/request/u;

    .line 23
    iget-object v0, p0, Loicq/wlogin_sdk/request/w;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 24
    return-void
.end method


# virtual methods
.method public a(JJI[BLjava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 21

    .prologue
    .line 98
    .line 99
    sget v9, Loicq/wlogin_sdk/request/u;->w:I

    .line 101
    const/4 v2, 0x0

    .line 105
    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p10

    .line 103
    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/w;->a(JJII[B[BII[J)[B

    move-result-object v20

    .line 109
    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/w;->i:I

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/w;->t:I

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/w;->j:I

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/w;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v14, v3, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/w;->m:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/w;->n:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/w;->p:I

    move/from16 v19, v0

    move-object/from16 v10, p0

    move/from16 v18, v9

    invoke-virtual/range {v10 .. v20}, Loicq/wlogin_sdk/request/w;->a(IIIJIIII[B)V

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/w;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v3, v4, v1}, Loicq/wlogin_sdk/request/w;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    .line 114
    if-eqz v3, :cond_0

    move v2, v3

    .line 125
    :goto_1
    return v2

    .line 118
    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/w;->b()I

    move-result v4

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry num:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/w;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v6, v6, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v3, 0xb4

    if-eq v4, v3, :cond_1

    move v2, v4

    .line 121
    goto :goto_1

    .line 123
    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/4 v5, 0x1

    if-lt v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    goto/16 :goto_0
.end method

.method public a(JJII[B[BII[J)[B
    .locals 19

    .prologue
    .line 32
    const/4 v13, 0x0

    .line 33
    const/16 v4, 0x9

    new-array v15, v4, [I

    fill-array-data v15, :array_0

    .line 34
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 35
    array-length v0, v15

    move/from16 v17, v0

    .line 36
    const/4 v12, 0x0

    .line 38
    const/4 v4, 0x0

    move v14, v4

    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    .line 39
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 40
    aget v5, v15, v14

    sparse-switch v5, :sswitch_data_0

    .line 73
    :cond_0
    :goto_1
    array-length v5, v4

    const/4 v6, 0x4

    if-le v5, v6, :cond_3

    .line 74
    add-int/lit8 v6, v13, 0x1

    .line 75
    array-length v5, v4

    add-int/2addr v5, v12

    .line 76
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 38
    :goto_2
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    move v12, v4

    move v13, v6

    goto :goto_0

    .line 42
    :sswitch_0
    new-instance v5, Loicq/wlogin_sdk/b/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/d;-><init>()V

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p5

    invoke-virtual/range {v5 .. v11}, Loicq/wlogin_sdk/b/d;->a(JJII)[B

    move-result-object v4

    goto :goto_1

    .line 46
    :sswitch_1
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    array-length v5, v0

    if-lez v5, :cond_0

    .line 47
    new-instance v4, Loicq/wlogin_sdk/b/k;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/k;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/k;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 50
    :sswitch_2
    sget-object v5, Loicq/wlogin_sdk/request/u;->M:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->M:[B

    array-length v5, v5

    if-lez v5, :cond_0

    .line 51
    new-instance v4, Loicq/wlogin_sdk/b/l;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/l;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->M:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/l;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 54
    :sswitch_3
    new-instance v4, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cr;-><init>()V

    const/4 v5, 0x0

    sget v6, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v4

    goto :goto_1

    .line 57
    :sswitch_4
    new-instance v4, Loicq/wlogin_sdk/b/am;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/am;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->E:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/am;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 60
    :sswitch_5
    new-instance v4, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ap;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/ap;->a([B)[B

    move-result-object v4

    goto :goto_1

    .line 63
    :sswitch_6
    new-instance v4, Loicq/wlogin_sdk/b/aw;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/aw;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/w;->x:Loicq/wlogin_sdk/request/u;

    iget v5, v5, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/aw;->a(I)[B

    move-result-object v4

    goto/16 :goto_1

    .line 66
    :sswitch_7
    new-instance v4, Loicq/wlogin_sdk/b/r;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/r;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/r;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 69
    :sswitch_8
    new-instance v4, Loicq/wlogin_sdk/b/u;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/u;-><init>()V

    move/from16 v0, p9

    move/from16 v1, p10

    move-object/from16 v2, p11

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v4

    goto/16 :goto_1

    .line 81
    :cond_1
    new-array v7, v12, [B

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v13, :cond_2

    .line 84
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 85
    const/4 v8, 0x0

    array-length v9, v4

    invoke-static {v4, v8, v7, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    array-length v4, v4

    add-int/2addr v6, v4

    .line 83
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 89
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/w;->u:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v13}, Loicq/wlogin_sdk/request/w;->b([BII)[B

    move-result-object v4

    return-object v4

    :cond_3
    move v4, v12

    move v6, v13

    goto/16 :goto_2

    .line 33
    nop

    :array_0
    .array-data 4
        0x100
        0x108
        0x109
        0x8
        0x142
        0x145
        0x154
        0x112
        0x116
    .end array-data

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x100 -> :sswitch_0
        0x108 -> :sswitch_1
        0x109 -> :sswitch_2
        0x112 -> :sswitch_7
        0x116 -> :sswitch_8
        0x142 -> :sswitch_4
        0x145 -> :sswitch_5
        0x154 -> :sswitch_6
    .end sparse-switch
.end method
