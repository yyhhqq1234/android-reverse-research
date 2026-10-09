.class public Loicq/wlogin_sdk/request/l;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "request_TGTGT.java"


# static fields
.field public static I:Z

.field public static J:[B

.field public static K:[B

.field public static L:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    sput-boolean v1, Loicq/wlogin_sdk/request/l;->I:Z

    .line 69
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/l;->J:[B

    .line 70
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/l;->K:[B

    .line 71
    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/request/l;->L:[B

    return-void
.end method

.method public constructor <init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 74
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/l;->t:I

    .line 75
    const/16 v0, 0x9

    iput v0, p0, Loicq/wlogin_sdk/request/l;->u:I

    .line 76
    const-string/jumbo v0, "wtlogin.login"

    iput-object v0, p0, Loicq/wlogin_sdk/request/l;->v:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    .line 78
    iget-object v0, p0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 79
    iput-object p2, p0, Loicq/wlogin_sdk/request/l;->a:Landroid/content/Context;

    .line 80
    return-void
.end method


# virtual methods
.method public a(JJJI[B[B[BIII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 37

    .prologue
    .line 284
    .line 285
    sget v9, Loicq/wlogin_sdk/request/u;->w:I

    .line 287
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    .line 288
    sget-object v5, Loicq/wlogin_sdk/request/u;->B:[B

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_rand_16byte([B)[B

    move-result-object v5

    iput-object v5, v4, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    .line 289
    iget-object v0, v4, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object/from16 v16, v0

    .line 290
    iget-object v4, v4, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 291
    if-nez v4, :cond_3

    .line 292
    new-instance v4, Loicq/wlogin_sdk/b/g;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/g;-><init>()V

    move-object/from16 v35, v4

    .line 295
    :goto_0
    const/4 v4, 0x0

    move/from16 v36, v4

    .line 297
    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 305
    invoke-virtual/range {v35 .. v35}, Loicq/wlogin_sdk/b/g;->c()[B

    move-result-object v31

    sget-object v32, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, p23

    iget-object v0, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v17, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move-object/from16 v22, p14

    move/from16 v23, p15

    move-wide/from16 v24, p16

    move/from16 v26, p18

    move/from16 v27, p19

    move/from16 v28, p20

    move/from16 v29, p21

    move-object/from16 v30, p22

    move-object/from16 v34, p23

    .line 297
    invoke-virtual/range {v4 .. v34}, Loicq/wlogin_sdk/request/l;->a(JJIJI[B[B[B[BI[B[BII[JIJIIII[B[B[BLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;)[B

    move-result-object v4

    .line 309
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2, v4, v5}, Loicq/wlogin_sdk/request/l;->a(J[BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p23

    invoke-virtual {v0, v4, v5, v1}, Loicq/wlogin_sdk/request/l;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    .line 312
    if-eqz v4, :cond_0

    .line 323
    :goto_2
    return v4

    .line 316
    :cond_0
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/l;->b()I

    move-result v5

    .line 317
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry num:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/16 v4, 0xb4

    if-eq v5, v4, :cond_1

    move v4, v5

    .line 319
    goto :goto_2

    .line 321
    :cond_1
    add-int/lit8 v4, v36, 0x1

    const/4 v6, 0x1

    move/from16 v0, v36

    if-lt v0, v6, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move/from16 v36, v4

    goto/16 :goto_1

    :cond_3
    move-object/from16 v35, v4

    goto/16 :goto_0
.end method

.method public a(JJJI[B[B[BII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 35

    .prologue
    .line 338
    .line 339
    sget v7, Loicq/wlogin_sdk/request/u;->w:I

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v2

    .line 341
    iget-object v2, v2, Loicq/wlogin_sdk/request/async_context;->_t104:Loicq/wlogin_sdk/b/g;

    .line 342
    if-nez v2, :cond_4

    .line 343
    new-instance v2, Loicq/wlogin_sdk/b/g;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/g;-><init>()V

    move-object/from16 v33, v2

    .line 346
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/l;->c([B)[B

    move-result-object v16

    .line 347
    if-nez v16, :cond_1

    .line 348
    const/16 v2, -0x3f6

    .line 381
    :cond_0
    :goto_1
    return v2

    .line 351
    :cond_1
    const/4 v2, 0x0

    move/from16 v34, v2

    .line 353
    :goto_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 361
    invoke-virtual/range {v33 .. v33}, Loicq/wlogin_sdk/b/g;->c()[B

    move-result-object v29

    sget-object v30, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, p22

    iget-object v0, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-object/from16 v20, p13

    move/from16 v21, p14

    move-wide/from16 v22, p15

    move/from16 v24, p17

    move/from16 v25, p18

    move/from16 v26, p19

    move/from16 v27, p20

    move-object/from16 v28, p21

    move-object/from16 v32, p22

    .line 353
    invoke-virtual/range {v2 .. v32}, Loicq/wlogin_sdk/request/l;->a(JJIJI[B[B[B[BI[B[BII[JIJIIII[B[B[BLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;)[B

    move-result-object v28

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/l;->i:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/l;->t:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/l;->j:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/l;->m:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/l;->n:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/l;->p:I

    move/from16 v27, v0

    move-object/from16 v18, p0

    move-wide/from16 v22, p5

    move/from16 v26, v7

    invoke-virtual/range {v18 .. v28}, Loicq/wlogin_sdk/request/l;->a(IIIJIIII[B)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v2, v2, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p22

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/l;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 370
    if-nez v2, :cond_0

    .line 374
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/l;->b()I

    move-result v3

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/16 v2, 0xb4

    if-eq v3, v2, :cond_2

    move v2, v3

    .line 377
    goto/16 :goto_1

    .line 379
    :cond_2
    add-int/lit8 v2, v34, 0x1

    const/4 v4, 0x1

    move/from16 v0, v34

    if-lt v0, v4, :cond_3

    move v2, v3

    goto/16 :goto_1

    :cond_3
    move/from16 v34, v2

    goto/16 :goto_2

    :cond_4
    move-object/from16 v33, v2

    goto/16 :goto_0
.end method

.method public a(JJIJI[B[B[B[BI[B[BII[JIJIIII[B[B[BLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;)[B
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIJI[B[B[B[BI[B[BII[JIJIIII[B[B[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Loicq/wlogin_sdk/request/WUserSigInfo;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 96
    const/16 v4, 0x1e

    new-array v0, v4, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    .line 101
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v26

    .line 102
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 103
    const/16 v23, 0x0

    .line 104
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/4 v4, 0x0

    move/from16 v24, v4

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    aget v5, v25, v24

    .line 105
    const/4 v4, 0x0

    .line 106
    sparse-switch v5, :sswitch_data_0

    .line 248
    :cond_0
    :goto_1
    if-eqz v4, :cond_4

    .line 249
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    array-length v4, v4

    add-int v4, v4, v23

    .line 104
    :goto_2
    add-int/lit8 v5, v24, 0x1

    move/from16 v24, v5

    move/from16 v23, v4

    goto :goto_0

    .line 108
    :sswitch_0
    new-instance v4, Loicq/wlogin_sdk/b/bs;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bs;-><init>()V

    move-wide/from16 v5, p1

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/bs;->a(JIJI)[B

    move-result-object v4

    goto :goto_1

    .line 111
    :sswitch_1
    new-instance v4, Loicq/wlogin_sdk/b/c;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/c;-><init>()V

    move-wide/from16 v0, p6

    move-object/from16 v2, p9

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/c;->a(J[B)[B

    move-result-object v4

    goto :goto_1

    .line 114
    :sswitch_2
    new-instance v4, Loicq/wlogin_sdk/b/i;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/i;-><init>()V

    .line 115
    if-eqz p14, :cond_1

    move-object/from16 v0, p14

    array-length v5, v0

    if-lez v5, :cond_1

    .line 116
    move-object/from16 v0, p14

    array-length v5, v0

    move-object/from16 v0, p14

    invoke-virtual {v4, v0, v5}, Loicq/wlogin_sdk/b/i;->b([BI)V

    .line 117
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/i;->b()[B

    move-result-object v4

    goto :goto_1

    .line 119
    :cond_1
    const/4 v14, 0x1

    .line 120
    move-object/from16 v0, v26

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    sget v20, Loicq/wlogin_sdk/request/u;->U:I

    sget-object v21, Loicq/wlogin_sdk/request/u;->A:[B

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-object/from16 v12, p10

    move-object/from16 v13, p9

    move-object/from16 v15, p11

    move-object/from16 v19, p12

    move/from16 v22, p13

    .line 120
    invoke-virtual/range {v4 .. v22}, Loicq/wlogin_sdk/b/i;->a(JJIJ[B[BI[BJ[B[BI[BI)[B

    move-result-object v4

    goto :goto_1

    .line 126
    :sswitch_3
    new-instance v4, Loicq/wlogin_sdk/b/u;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/u;-><init>()V

    move/from16 v0, p16

    move/from16 v1, p17

    move-object/from16 v2, p18

    invoke-virtual {v4, v0, v1, v2}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v4

    goto/16 :goto_1

    .line 129
    :sswitch_4
    new-instance v5, Loicq/wlogin_sdk/b/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/d;-><init>()V

    move-wide/from16 v6, p1

    move-wide/from16 v8, p20

    move/from16 v10, p5

    move/from16 v11, p19

    invoke-virtual/range {v5 .. v11}, Loicq/wlogin_sdk/b/d;->a(JJII)[B

    move-result-object v4

    goto/16 :goto_1

    .line 132
    :sswitch_5
    new-instance v4, Loicq/wlogin_sdk/b/j;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/j;-><init>()V

    move/from16 v0, p22

    move/from16 v1, p23

    move/from16 v2, p24

    move/from16 v3, p25

    invoke-virtual {v4, v0, v1, v2, v3}, Loicq/wlogin_sdk/b/j;->a(IIII)[B

    move-result-object v4

    goto/16 :goto_1

    .line 135
    :sswitch_6
    if-eqz p26, :cond_0

    move-object/from16 v0, p26

    array-length v5, v0

    if-eqz v5, :cond_0

    .line 136
    new-instance v4, Loicq/wlogin_sdk/b/k;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/k;-><init>()V

    move-object/from16 v0, p26

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/k;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 139
    :sswitch_7
    if-eqz p27, :cond_0

    move-object/from16 v0, p27

    array-length v5, v0

    if-eqz v5, :cond_0

    .line 140
    new-instance v4, Loicq/wlogin_sdk/b/g;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/g;-><init>()V

    move-object/from16 v0, p27

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/g;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 144
    :sswitch_8
    new-instance v4, Loicq/wlogin_sdk/b/am;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/am;-><init>()V

    move-object/from16 v0, p28

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/am;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 147
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    new-instance v4, Loicq/wlogin_sdk/b/r;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/r;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/r;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 151
    :sswitch_a
    new-instance v4, Loicq/wlogin_sdk/b/l;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/l;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->M:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/l;->a([B)[B

    move-result-object v12

    .line 152
    new-instance v4, Loicq/wlogin_sdk/b/ac;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ac;-><init>()V

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

    move-result-object v13

    .line 156
    new-instance v4, Loicq/wlogin_sdk/b/ag;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ag;-><init>()V

    sget v5, Loicq/wlogin_sdk/request/u;->T:I

    sget v6, Loicq/wlogin_sdk/request/u;->U:I

    sget v7, Loicq/wlogin_sdk/request/u;->V:I

    sget v8, Loicq/wlogin_sdk/request/u;->Y:I

    sget-object v9, Loicq/wlogin_sdk/request/u;->I:[B

    sget-object v10, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v11, Loicq/wlogin_sdk/request/u;->P:[B

    invoke-virtual/range {v4 .. v11}, Loicq/wlogin_sdk/b/ag;->a(IIII[B[B[B)[B

    move-result-object v7

    .line 160
    new-instance v4, Loicq/wlogin_sdk/b/bf;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bf;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->I:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/bf;->a([B)[B

    move-result-object v8

    .line 161
    new-instance v4, Loicq/wlogin_sdk/b/ao;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ao;-><init>()V

    .line 162
    move-object/from16 v0, v26

    iget-object v9, v0, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object v5, v12

    move-object v6, v13

    invoke-virtual/range {v4 .. v9}, Loicq/wlogin_sdk/b/ao;->a([B[B[B[B[B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 165
    :sswitch_b
    new-instance v4, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ap;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/ap;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 168
    :sswitch_c
    new-instance v4, Loicq/wlogin_sdk/b/ar;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ar;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->G:[B

    sget-object v6, Loicq/wlogin_sdk/request/u;->H:[B

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Loicq/wlogin_sdk/b/ar;->a(J[B[B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 171
    :sswitch_d
    move/from16 v0, p16

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_0

    .line 172
    new-instance v4, Loicq/wlogin_sdk/b/ba;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ba;-><init>()V

    sget v5, Loicq/wlogin_sdk/request/u;->x:I

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/ba;->a(I)[B

    move-result-object v4

    goto/16 :goto_1

    .line 175
    :sswitch_e
    if-eqz p15, :cond_0

    move-object/from16 v0, p15

    array-length v5, v0

    if-eqz v5, :cond_0

    .line 176
    new-instance v4, Loicq/wlogin_sdk/b/bd;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bd;-><init>()V

    move-object/from16 v0, p15

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/bd;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 179
    :sswitch_f
    new-instance v4, Loicq/wlogin_sdk/b/aw;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/aw;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget v5, v5, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/aw;->a(I)[B

    move-result-object v4

    goto/16 :goto_1

    .line 183
    :sswitch_10
    new-instance v4, Loicq/wlogin_sdk/b/al;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/al;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->C:[B

    sget v6, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v7, Loicq/wlogin_sdk/request/u;->F:[B

    invoke-virtual {v4, v5, v6, v7}, Loicq/wlogin_sdk/b/al;->b([BI[B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 187
    :sswitch_11
    new-instance v4, Loicq/wlogin_sdk/b/cr;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cr;-><init>()V

    const/4 v5, 0x0

    sget v6, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v4

    goto/16 :goto_1

    .line 190
    :sswitch_12
    if-eqz p29, :cond_0

    invoke-interface/range {p29 .. p29}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    new-instance v4, Loicq/wlogin_sdk/b/cq;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cq;-><init>()V

    move-object/from16 v0, p29

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/b/cq;->a(Ljava/util/List;)[B

    move-result-object v4

    goto/16 :goto_1

    .line 194
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 195
    new-instance v4, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bh;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    iget-object v5, v5, Loicq/wlogin_sdk/request/u;->r:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 198
    :sswitch_14
    const/4 v5, 0x3

    move/from16 v0, p13

    if-ne v0, v5, :cond_0

    .line 199
    new-instance v4, Loicq/wlogin_sdk/b/bw;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bw;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/bw;->a(I)[B

    move-result-object v4

    goto/16 :goto_1

    .line 203
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/l;->x:Loicq/wlogin_sdk/request/u;

    move-wide/from16 v0, p6

    move-wide/from16 v2, p1

    invoke-virtual {v5, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    .line 204
    if-eqz v6, :cond_0

    iget-object v5, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    if-eqz v5, :cond_0

    iget-object v5, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    if-eqz v5, :cond_0

    iget-object v5, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 206
    iget-object v5, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    if-eqz v5, :cond_0

    iget-object v5, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 208
    new-instance v4, Loicq/wlogin_sdk/b/cl;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cl;-><init>()V

    iget-object v5, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    sget-object v8, Loicq/wlogin_sdk/request/u;->A:[B

    iget-object v9, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    iget-object v14, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    move-wide/from16 v6, p6

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v4 .. v14}, Loicq/wlogin_sdk/b/cl;->a([BJ[B[BJJ[B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 212
    :sswitch_16
    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 213
    new-instance v4, Loicq/wlogin_sdk/b/by;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/by;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->N:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/by;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 216
    :sswitch_17
    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 217
    new-instance v4, Loicq/wlogin_sdk/b/bz;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bz;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->O:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/bz;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 220
    :sswitch_18
    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 221
    new-instance v4, Loicq/wlogin_sdk/b/cd;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cd;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->L:[B

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/cd;->a([B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 225
    :sswitch_19
    new-instance v4, Loicq/wlogin_sdk/b/ca;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ca;-><init>()V

    sget-boolean v5, Loicq/wlogin_sdk/request/l;->I:Z

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/b/ca;->a(Z)[B

    move-result-object v4

    goto/16 :goto_1

    .line 229
    :sswitch_1a
    sget-object v5, Loicq/wlogin_sdk/request/l;->J:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/l;->J:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 230
    new-instance v4, Loicq/wlogin_sdk/b/ci;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ci;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/l;->J:[B

    sget-object v6, Loicq/wlogin_sdk/request/l;->K:[B

    const-string v7, "qq"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    sget-object v8, Loicq/wlogin_sdk/request/l;->L:[B

    invoke-virtual {v4, v5, v6, v7, v8}, Loicq/wlogin_sdk/b/ci;->a([B[B[B[B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 233
    :sswitch_1b
    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    if-eqz v5, :cond_0

    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 234
    new-instance v4, Loicq/wlogin_sdk/b/cj;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cj;-><init>()V

    sget-object v5, Loicq/wlogin_sdk/request/u;->R:[B

    sget-object v6, Loicq/wlogin_sdk/request/u;->S:[B

    invoke-virtual {v4, v5, v6}, Loicq/wlogin_sdk/b/cj;->a([B[B)[B

    move-result-object v4

    goto/16 :goto_1

    .line 237
    :sswitch_1c
    new-instance v4, Loicq/wlogin_sdk/b/bk;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bk;-><init>()V

    const-wide/32 v6, 0x5852558f

    const-string v5, "6.0.0.1971"

    invoke-virtual {v4, v6, v7, v5}, Loicq/wlogin_sdk/b/bk;->a(JLjava/lang/String;)[B

    move-result-object v4

    goto/16 :goto_1

    .line 241
    :sswitch_1d
    new-instance v4, Loicq/wlogin_sdk/b/b;

    const/16 v5, 0x516

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 242
    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 243
    const/4 v6, 0x0

    sget v7, Loicq/wlogin_sdk/request/u;->af:I

    invoke-static {v5, v6, v7}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 244
    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Loicq/wlogin_sdk/b/b;->b([BI)V

    .line 245
    invoke-virtual {v4}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v4

    goto/16 :goto_1

    .line 263
    :cond_2
    move/from16 v0, v23

    new-array v7, v0, [B

    .line 264
    const/4 v6, 0x0

    .line 265
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 266
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    if-ge v5, v8, :cond_3

    .line 267
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 268
    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v4, v9, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    array-length v4, v4

    add-int/2addr v6, v4

    .line 266
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 272
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/l;->u:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v8}, Loicq/wlogin_sdk/request/l;->b([BII)[B

    move-result-object v4

    return-object v4

    :cond_4
    move/from16 v4, v23

    goto/16 :goto_2

    .line 96
    nop

    :array_0
    .array-data 4
        0x18
        0x1
        0x106
        0x116
        0x100
        0x107
        0x108
        0x104
        0x142
        0x112
        0x144
        0x145
        0x147
        0x166
        0x16a
        0x154
        0x141
        0x8
        0x511
        0x172
        0x185
        0x400
        0x187
        0x188
        0x194
        0x191
        0x201
        0x202
        0x177
        0x516
    .end array-data

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x8 -> :sswitch_11
        0x18 -> :sswitch_0
        0x100 -> :sswitch_4
        0x104 -> :sswitch_7
        0x106 -> :sswitch_2
        0x107 -> :sswitch_5
        0x108 -> :sswitch_6
        0x112 -> :sswitch_9
        0x116 -> :sswitch_3
        0x141 -> :sswitch_10
        0x142 -> :sswitch_8
        0x144 -> :sswitch_a
        0x145 -> :sswitch_b
        0x147 -> :sswitch_c
        0x154 -> :sswitch_f
        0x166 -> :sswitch_d
        0x16a -> :sswitch_e
        0x172 -> :sswitch_13
        0x177 -> :sswitch_1c
        0x185 -> :sswitch_14
        0x187 -> :sswitch_16
        0x188 -> :sswitch_17
        0x191 -> :sswitch_19
        0x194 -> :sswitch_18
        0x201 -> :sswitch_1a
        0x202 -> :sswitch_1b
        0x400 -> :sswitch_15
        0x511 -> :sswitch_12
        0x516 -> :sswitch_1d
    .end sparse-switch
.end method
