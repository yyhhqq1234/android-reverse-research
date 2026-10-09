.class public Loicq/wlogin_sdk/request/t;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "request_getuin.java"


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 27
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/t;->t:I

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/request/t;->u:I

    .line 29
    const-string/jumbo v0, "wtlogin.name2uin"

    iput-object v0, p0, Loicq/wlogin_sdk/request/t;->v:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Loicq/wlogin_sdk/request/t;->x:Loicq/wlogin_sdk/request/u;

    .line 31
    iget-object v0, p0, Loicq/wlogin_sdk/request/t;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 32
    return-void
.end method


# virtual methods
.method public a(JJII[BIIIIII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 21

    .prologue
    .line 124
    .line 125
    sget v8, Loicq/wlogin_sdk/request/u;->w:I

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/t;->x:Loicq/wlogin_sdk/request/u;

    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v2, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 128
    const/4 v2, 0x0

    .line 130
    :goto_0
    sget-object v18, Loicq/wlogin_sdk/request/u;->aa:[B

    sget-object v19, Loicq/wlogin_sdk/request/u;->A:[B

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    invoke-virtual/range {v3 .. v19}, Loicq/wlogin_sdk/request/t;->a(JJII[BIIIIII[J[B[B)[B

    move-result-object v20

    .line 136
    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/t;->i:I

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/t;->t:I

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/t;->j:I

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/t;->m:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/t;->n:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/t;->p:I

    move/from16 v19, v0

    move-object/from16 v10, p0

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v20}, Loicq/wlogin_sdk/request/t;->a(IIIJIIII[B)V

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/t;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v3, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 140
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p15

    invoke-virtual {v0, v5, v3, v1}, Loicq/wlogin_sdk/request/t;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    .line 141
    if-eqz v3, :cond_0

    move v2, v3

    .line 152
    :goto_1
    return v2

    .line 145
    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/t;->b()I

    move-result v4

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry num:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ret:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " uin: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/t;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v3, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/16 v3, 0xb4

    if-eq v4, v3, :cond_1

    move v2, v4

    .line 148
    goto :goto_1

    .line 150
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

.method public a(JJII[BIIIIII[J[B[B)[B
    .locals 23

    .prologue
    .line 43
    .line 44
    new-instance v5, Loicq/wlogin_sdk/b/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/d;-><init>()V

    .line 45
    new-instance v12, Loicq/wlogin_sdk/b/r;

    invoke-direct {v12}, Loicq/wlogin_sdk/b/r;-><init>()V

    .line 46
    new-instance v13, Loicq/wlogin_sdk/b/j;

    invoke-direct {v13}, Loicq/wlogin_sdk/b/j;-><init>()V

    .line 47
    new-instance v14, Loicq/wlogin_sdk/b/k;

    invoke-direct {v14}, Loicq/wlogin_sdk/b/k;-><init>()V

    .line 48
    new-instance v4, Loicq/wlogin_sdk/b/ac;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ac;-><init>()V

    .line 49
    new-instance v15, Loicq/wlogin_sdk/b/ag;

    invoke-direct {v15}, Loicq/wlogin_sdk/b/ag;-><init>()V

    .line 50
    new-instance v16, Loicq/wlogin_sdk/b/u;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/b/u;-><init>()V

    .line 51
    new-instance v17, Loicq/wlogin_sdk/b/aw;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/b/aw;-><init>()V

    .line 52
    new-instance v18, Loicq/wlogin_sdk/b/cr;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/b/cr;-><init>()V

    .line 53
    new-instance v19, Loicq/wlogin_sdk/b/b;

    const/16 v6, 0x11b

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 55
    new-instance v20, Loicq/wlogin_sdk/b/ca;

    invoke-direct/range {v20 .. v20}, Loicq/wlogin_sdk/b/ca;-><init>()V

    .line 57
    const/4 v6, 0x0

    new-array v6, v6, [B

    .line 58
    const/4 v6, 0x0

    new-array v6, v6, [B

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    .line 60
    invoke-virtual/range {v5 .. v11}, Loicq/wlogin_sdk/b/d;->a(JJII)[B

    move-result-object v21

    .line 61
    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Loicq/wlogin_sdk/b/r;->a([B)[B

    move-result-object v12

    .line 62
    move/from16 v0, p8

    move/from16 v1, p9

    move/from16 v2, p10

    move/from16 v3, p11

    invoke-virtual {v13, v0, v1, v2, v3}, Loicq/wlogin_sdk/b/j;->a(IIII)[B

    move-result-object v13

    .line 63
    move-object/from16 v0, p15

    invoke-virtual {v14, v0}, Loicq/wlogin_sdk/b/k;->a([B)[B

    move-result-object v14

    .line 64
    move-object/from16 v0, v16

    move/from16 v1, p12

    move/from16 v2, p13

    move-object/from16 v3, p14

    invoke-virtual {v0, v1, v2, v3}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v16

    .line 65
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/t;->x:Loicq/wlogin_sdk/request/u;

    iget v5, v5, Loicq/wlogin_sdk/request/u;->i:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/aw;->a(I)[B

    move-result-object v17

    .line 66
    const/4 v5, 0x0

    sget v6, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v7}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v18

    .line 67
    sget-boolean v5, Loicq/wlogin_sdk/request/l;->I:Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Loicq/wlogin_sdk/b/ca;->a(Z)[B

    move-result-object v20

    .line 68
    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput-byte v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Loicq/wlogin_sdk/b/b;->b([BI)V

    .line 69
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_type()[B

    move-result-object v5

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_version()[B

    move-result-object v6

    sget v7, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v8, Loicq/wlogin_sdk/request/u;->C:[B

    const/4 v9, 0x0

    new-array v9, v9, [B

    sget-object v10, Loicq/wlogin_sdk/request/u;->F:[B

    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/ac;->a([B[BI[B[B[B)[B

    move-result-object v22

    .line 71
    sget v5, Loicq/wlogin_sdk/request/u;->T:I

    sget v6, Loicq/wlogin_sdk/request/u;->U:I

    sget v7, Loicq/wlogin_sdk/request/u;->V:I

    sget v8, Loicq/wlogin_sdk/request/u;->Y:I

    sget-object v9, Loicq/wlogin_sdk/request/u;->I:[B

    sget-object v10, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v11, Loicq/wlogin_sdk/request/u;->P:[B

    move-object v4, v15

    invoke-virtual/range {v4 .. v11}, Loicq/wlogin_sdk/b/ag;->a(IIII[B[B[B)[B

    move-result-object v6

    .line 74
    move-object/from16 v0, v21

    array-length v4, v0

    array-length v5, v12

    add-int/2addr v4, v5

    array-length v5, v13

    add-int/2addr v4, v5

    array-length v5, v14

    add-int/2addr v4, v5

    move-object/from16 v0, v22

    array-length v5, v0

    add-int/2addr v4, v5

    array-length v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, v16

    array-length v5, v0

    add-int/2addr v4, v5

    move-object/from16 v0, v17

    array-length v5, v0

    add-int/2addr v4, v5

    move-object/from16 v0, v18

    array-length v5, v0

    add-int/2addr v4, v5

    move-object/from16 v0, v20

    array-length v5, v0

    add-int/2addr v4, v5

    .line 76
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    .line 77
    new-array v7, v4, [B

    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x0

    move-object/from16 v0, v21

    array-length v8, v0

    move-object/from16 v0, v21

    invoke-static {v0, v5, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    move-object/from16 v0, v21

    array-length v5, v0

    add-int/2addr v4, v5

    .line 81
    const/4 v5, 0x0

    array-length v8, v12

    invoke-static {v12, v5, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    array-length v5, v12

    add-int/2addr v4, v5

    .line 83
    const/4 v5, 0x0

    array-length v8, v13

    invoke-static {v13, v5, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length v5, v13

    add-int/2addr v4, v5

    .line 85
    const/4 v5, 0x0

    move-object/from16 v0, v17

    array-length v8, v0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    move-object/from16 v0, v17

    array-length v5, v0

    add-int/2addr v4, v5

    .line 87
    const/4 v5, 0x0

    move-object/from16 v0, v18

    array-length v8, v0

    move-object/from16 v0, v18

    invoke-static {v0, v5, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    move-object/from16 v0, v18

    array-length v5, v0

    add-int/2addr v4, v5

    .line 89
    const/4 v5, 0x5

    .line 91
    if-eqz p15, :cond_0

    move-object/from16 v0, p15

    array-length v8, v0

    if-lez v8, :cond_0

    .line 92
    const/4 v5, 0x0

    array-length v8, v14

    invoke-static {v14, v5, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length v5, v14

    add-int/2addr v4, v5

    .line 94
    const/4 v5, 0x6

    .line 97
    :cond_0
    const/4 v8, 0x0

    move-object/from16 v0, v22

    array-length v9, v0

    move-object/from16 v0, v22

    invoke-static {v0, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    move-object/from16 v0, v22

    array-length v8, v0

    add-int/2addr v4, v8

    .line 99
    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {v6, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    array-length v6, v6

    add-int/2addr v4, v6

    .line 101
    const/4 v6, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    move-object/from16 v0, v16

    array-length v6, v0

    add-int/2addr v4, v6

    .line 103
    add-int/lit8 v5, v5, 0x3

    .line 105
    const/4 v6, 0x0

    move-object/from16 v0, v20

    array-length v8, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    move-object/from16 v0, v20

    array-length v6, v0

    add-int/2addr v4, v6

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 109
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v6, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v4, v6

    .line 111
    add-int/lit8 v4, v5, 0x1

    .line 113
    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/t;->u:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5, v4}, Loicq/wlogin_sdk/request/t;->b([BII)[B

    move-result-object v4

    return-object v4
.end method
