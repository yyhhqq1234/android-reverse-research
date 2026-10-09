.class public Loicq/wlogin_sdk/request/aa;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "request_transport.java"


# instance fields
.field public I:I

.field public J:I


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->I:I

    .line 14
    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    .line 17
    const/16 v0, 0x812

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->t:I

    .line 18
    iput v1, p0, Loicq/wlogin_sdk/request/aa;->u:I

    .line 19
    const-string/jumbo v0, "wtlogin.trans_emp"

    iput-object v0, p0, Loicq/wlogin_sdk/request/aa;->v:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    .line 21
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 13

    .prologue
    .line 273
    monitor-enter p0

    const/4 v2, 0x0

    .line 274
    :try_start_0
    sget v3, Loicq/wlogin_sdk/request/u;->w:I

    .line 278
    const/4 v3, 0x0

    move v11, v3

    .line 280
    :goto_0
    move-object/from16 v0, p3

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v6, v4

    .line 283
    if-nez v3, :cond_8

    .line 284
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object v4, v3

    .line 286
    :goto_1
    array-length v3, v4

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 287
    const/4 v5, 0x0

    invoke-static {v3, v5, v6, v7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 288
    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, v4

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    if-eqz p4, :cond_0

    .line 293
    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v0, p5

    invoke-static {v3, v4, v5, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v3

    .line 296
    :cond_0
    if-eqz v3, :cond_7

    array-length v4, v3

    if-lez v4, :cond_7

    .line 298
    sget-object v2, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p3

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v2, v4, :cond_2

    .line 299
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    array-length v2, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicket:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicket:[B

    array-length v2, v2

    if-nez v2, :cond_2

    .line 303
    :cond_1
    sget-object v2, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    .line 304
    sget-object v2, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    const v4, 0x24d3bf

    invoke-virtual {v2, v4}, Loicq/wlogin_sdk/report/report_t1;->attr_api(I)V

    .line 305
    const-string/jumbo v2, "using wt st encrypt body but no st key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    if-eqz p4, :cond_4

    const/4 v4, 0x1

    :goto_2
    move-object v2, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/aa;->a([BZ[BJJLoicq/wlogin_sdk/request/TransReqContext;)[B

    move-result-object v2

    .line 309
    move-object/from16 v0, p3

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {p0, p1, p2, v2, v3}, Loicq/wlogin_sdk/request/aa;->a(J[BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;)V

    .line 310
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p10

    invoke-virtual {p0, v2, v3, v0}, Loicq/wlogin_sdk/request/aa;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 311
    if-eqz v2, :cond_5

    .line 329
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request_transport rsp: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return v2

    .line 308
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 315
    :cond_5
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/request/TransReqContext;)I

    move-result v2

    .line 318
    if-nez v2, :cond_6

    if-eqz p4, :cond_6

    .line 319
    invoke-virtual/range {p3 .. p3}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    .line 320
    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v0, p5

    invoke-static {v3, v4, v5, v0}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_body([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :cond_6
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3

    .line 327
    :cond_7
    add-int/lit8 v3, v11, 0x1

    const/4 v4, 0x1

    if-ge v11, v4, :cond_3

    move v11, v3

    goto/16 :goto_0

    .line 273
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_8
    move-object v4, v3

    goto/16 :goto_1
.end method

.method public declared-synchronized a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 21

    .prologue
    .line 420
    monitor-enter p0

    const/16 v19, 0x0

    .line 421
    :try_start_0
    sget v20, Loicq/wlogin_sdk/request/u;->w:I

    .line 424
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v2, v2

    int-to-long v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/aa;->E:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Loicq/wlogin_sdk/request/aa;->E:I

    int-to-long v5, v2

    .line 425
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v8, "wtlogin_conn_trans"

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v2, 0x8

    new-array v14, v2, [B

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    sget-object v18, Loicq/wlogin_sdk/request/u;->A:[B

    move-object/from16 v2, p0

    move-wide/from16 v8, p7

    move-wide/from16 v10, p7

    move-object/from16 v12, p6

    .line 424
    invoke-virtual/range {v2 .. v18}, Loicq/wlogin_sdk/request/aa;->a(JJ[BJJ[B[B[BIJ[B)[B

    move-result-object v2

    .line 428
    move-object/from16 v0, p3

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v6, v4

    .line 433
    if-nez v3, :cond_1

    .line 434
    const/4 v2, 0x0

    new-array v4, v2, [B

    .line 459
    :goto_0
    if-eqz v4, :cond_4

    array-length v2, v4

    if-lez v2, :cond_4

    .line 460
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/aa;->a([B[BJJI)[B

    move-result-object v12

    .line 461
    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/aa;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/aa;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/aa;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/aa;->m:I

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/aa;->n:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/aa;->p:I

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move/from16 v10, v20

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(IIIJIIII[B)V

    .line 465
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/aa;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 466
    if-eqz v2, :cond_3

    .line 480
    :cond_0
    :goto_1
    monitor-exit p0

    return v2

    .line 437
    :cond_1
    if-nez p4, :cond_2

    .line 438
    :try_start_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x4

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 440
    const/4 v5, 0x0

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 441
    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    const/4 v5, 0x0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    array-length v6, v3

    invoke-static {v3, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 448
    :cond_2
    :try_start_2
    array-length v4, v2

    add-int/lit8 v4, v4, 0x4

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 450
    const/4 v5, 0x0

    invoke-static {v4, v5, v6, v7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 451
    const/4 v5, 0x0

    const/4 v6, 0x4

    array-length v7, v2

    invoke-static {v2, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    const/4 v5, 0x0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    array-length v6, v3

    invoke-static {v3, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    const/4 v2, 0x0

    array-length v3, v4

    move-object/from16 v0, p5

    invoke-static {v4, v2, v3, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v4

    goto/16 :goto_0

    .line 470
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/request/TransReqContext;)I

    move-result v2

    .line 472
    if-nez v2, :cond_0

    if-eqz p4, :cond_0

    .line 473
    invoke-virtual/range {p3 .. p3}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    .line 474
    const/4 v4, 0x0

    array-length v5, v3

    move-object/from16 v0, p5

    invoke-static {v3, v4, v5, v0}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_body([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    move/from16 v2, v19

    goto :goto_1
.end method

.method public declared-synchronized a(J[B[B[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 19

    .prologue
    .line 200
    monitor-enter p0

    const/4 v13, 0x0

    .line 201
    :try_start_0
    sget v14, Loicq/wlogin_sdk/request/u;->w:I

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sget-wide v4, Loicq/wlogin_sdk/request/u;->ac:J

    add-long v16, v2, v4

    .line 205
    sget-object v2, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->G:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, ""

    sget-object v6, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    .line 207
    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_ksid(Landroid/content/Context;)[B

    move-result-object v6

    .line 206
    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    sget-object v8, Loicq/wlogin_sdk/request/u;->E:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Loicq/wlogin_sdk/request/u;->Q:[B

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v9, Ljava/lang/String;

    sget-object v10, Loicq/wlogin_sdk/request/u;->I:[B

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    new-instance v10, Ljava/lang/String;

    sget-object v11, Loicq/wlogin_sdk/request/u;->H:[B

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 211
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_release_time()Ljava/lang/String;

    move-result-object v11

    const-string v12, "6.0.0.1971"

    .line 205
    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/report/report_t1;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    sget-object v2, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v2}, Loicq/wlogin_sdk/report/report_t1;->toJasonObj()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 220
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    move v2, v13

    .line 266
    :goto_1
    monitor-exit p0

    return v2

    .line 217
    :catch_0
    move-exception v2

    .line 218
    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [B

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->compress([B)[B

    move-result-object v2

    .line 226
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_3

    :cond_2
    move v2, v13

    .line 227
    goto :goto_1

    .line 231
    :cond_3
    array-length v3, v2

    add-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 232
    const/4 v4, 0x0

    move-wide/from16 v0, v16

    invoke-static {v3, v4, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 233
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 234
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 235
    const/4 v4, 0x6

    array-length v5, v2

    invoke-static {v3, v4, v5}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 236
    const/4 v4, 0x0

    const/16 v5, 0x8

    array-length v6, v2

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    const/4 v2, 0x0

    array-length v4, v3

    move-object/from16 v0, p5

    invoke-static {v3, v2, v4, v0}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v4

    .line 240
    if-eqz v4, :cond_4

    array-length v2, v4

    if-nez v2, :cond_5

    :cond_4
    move v2, v13

    .line 241
    goto :goto_1

    .line 245
    :cond_5
    sget-object v2, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/report/report_t;->delete_file(Landroid/content/Context;)V

    .line 248
    const-wide/16 v8, 0x55

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/aa;->a([B[BJJI)[B

    move-result-object v12

    .line 249
    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/aa;->i:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/aa;->t:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/aa;->j:I

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/aa;->m:I

    move-object/from16 v0, p0

    iget v9, v0, Loicq/wlogin_sdk/request/aa;->n:I

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/aa;->p:I

    move-object/from16 v2, p0

    move-wide/from16 v6, p1

    move v10, v14

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(IIIJIIII[B)V

    .line 253
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v2, v3, v1}, Loicq/wlogin_sdk/request/aa;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    .line 254
    if-eqz v2, :cond_6

    .line 261
    :goto_2
    if-eqz v2, :cond_7

    .line 262
    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    sget-object v4, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v3, v4}, Loicq/wlogin_sdk/report/report_t;->write_tofile(Loicq/wlogin_sdk/report/report_t1;Landroid/content/Context;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 200
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 258
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/aa;->b()I

    move-result v2

    goto :goto_2

    .line 264
    :cond_7
    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    invoke-virtual {v3}, Loicq/wlogin_sdk/report/report_t1;->clear_t2()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public a(Loicq/wlogin_sdk/request/TransReqContext;)I
    .locals 4

    .prologue
    .line 334
    .line 335
    iget v0, p0, Loicq/wlogin_sdk/request/aa;->c:I

    .line 337
    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 338
    const/16 v0, -0x3f1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Loicq/wlogin_sdk/request/aa;->g:I

    .line 342
    iget-object v0, p1, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v1, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v0, v1, :cond_4

    .line 343
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget v0, v0, Loicq/wlogin_sdk/request/u;->m:I

    if-nez v0, :cond_3

    .line 344
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->p:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    .line 345
    if-gez v0, :cond_2

    .line 346
    const-string/jumbo v0, "use ecdh decrypt_body failed"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    .line 350
    if-gez v0, :cond_2

    .line 351
    const-string/jumbo v1, "use kc decrypt_body failed"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    .line 367
    :cond_2
    :goto_1
    if-ltz v0, :cond_0

    .line 370
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    invoke-virtual {p0, v0, v1, v2, p1}, Loicq/wlogin_sdk/request/aa;->a([BIILoicq/wlogin_sdk/request/TransReqContext;)I

    move-result v0

    goto :goto_0

    .line 354
    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v3, v3, Loicq/wlogin_sdk/request/u;->c:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    if-gez v0, :cond_2

    .line 355
    const-string/jumbo v1, "use kc decrypt_body failed"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_4
    iget-object v0, p1, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v1, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v0, v1, :cond_5

    .line 358
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->h:[B

    iget v1, p0, Loicq/wlogin_sdk/request/aa;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Loicq/wlogin_sdk/request/aa;->g:I

    iget-object v3, p1, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    invoke-virtual {p0, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/aa;->a([BII[B)I

    move-result v0

    .line 359
    if-gez v0, :cond_2

    .line 360
    const-string/jumbo v1, "use session key decrypt_body failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown encryption method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/16 v0, -0x400

    goto :goto_1
.end method

.method public a([BIILoicq/wlogin_sdk/request/TransReqContext;)I
    .locals 5

    .prologue
    .line 376
    .line 377
    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    if-ge p3, v0, :cond_0

    .line 378
    const/16 v1, -0x3f1

    .line 412
    :goto_0
    return v1

    .line 380
    :cond_0
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/aa;->c([BI)I

    move-result v1

    .line 381
    const/4 v0, 0x0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 388
    :sswitch_0
    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    add-int/2addr v0, p2

    .line 389
    iget v2, p0, Loicq/wlogin_sdk/request/aa;->J:I

    sub-int v2, p3, v2

    new-array v2, v2, [B

    .line 390
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    invoke-virtual {p4, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_body([B)V

    goto :goto_0

    .line 395
    :sswitch_1
    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 396
    new-instance v2, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/bh;-><init>()V

    .line 398
    iget v3, p0, Loicq/wlogin_sdk/request/aa;->c:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, p1, v0, v3}, Loicq/wlogin_sdk/b/bh;->c([BII)I

    move-result v0

    .line 399
    if-lez v0, :cond_1

    .line 401
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    const/4 v3, 0x2

    iput v3, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 402
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2}, Loicq/wlogin_sdk/b/bh;->c()[B

    move-result-object v2

    iput-object v2, v0, Loicq/wlogin_sdk/request/u;->r:[B

    .line 404
    const-string v0, "request_transport get rollback sig"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    move v1, v0

    .line 407
    goto :goto_0

    .line 386
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb4 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iput-object p1, v0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    .line 42
    return-void
.end method

.method a(JJ[BJJ[B[B[BIJ[B)[B
    .locals 6

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    if-nez p10, :cond_0

    .line 488
    const/4 v3, 0x0

    new-array v0, v3, [B

    move-object/from16 p10, v0

    .line 489
    :cond_0
    array-length v3, p5

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p10

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p11

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p12

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p16

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 492
    array-length v4, v3

    int-to-long v4, v4

    add-long/2addr v4, p1

    invoke-static {v3, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 493
    const/4 v2, 0x4

    .line 494
    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    add-int/lit8 v4, v4, -0x4

    int-to-long v4, v4

    invoke-static {v3, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 495
    const/16 v2, 0x8

    .line 496
    invoke-static {v3, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 497
    const/16 v2, 0xc

    .line 498
    array-length v4, p5

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 499
    const/16 v2, 0x10

    .line 500
    const/4 v4, 0x0

    array-length v5, p5

    invoke-static {p5, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    array-length v2, p5

    add-int/lit8 v2, v2, 0x10

    .line 502
    invoke-static {v3, v2, p6, p7}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 503
    add-int/lit8 v2, v2, 0x4

    .line 504
    invoke-static {v3, v2, p8, p9}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 505
    add-int/lit8 v2, v2, 0x10

    .line 506
    move-object/from16 v0, p10

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 507
    add-int/lit8 v2, v2, 0x4

    .line 508
    const/4 v4, 0x0

    move-object/from16 v0, p10

    array-length v5, v0

    move-object/from16 v0, p10

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    move-object/from16 v0, p10

    array-length v4, v0

    add-int/2addr v2, v4

    .line 510
    move-object/from16 v0, p11

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 511
    add-int/lit8 v2, v2, 0x4

    .line 512
    const/4 v4, 0x0

    move-object/from16 v0, p11

    array-length v5, v0

    move-object/from16 v0, p11

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    move-object/from16 v0, p11

    array-length v4, v0

    add-int/2addr v2, v4

    .line 514
    move-object/from16 v0, p12

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 515
    add-int/lit8 v2, v2, 0x4

    .line 516
    const/4 v4, 0x0

    move-object/from16 v0, p12

    array-length v5, v0

    move-object/from16 v0, p12

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    move-object/from16 v0, p12

    array-length v4, v0

    add-int/2addr v2, v4

    .line 518
    move/from16 v0, p13

    invoke-static {v3, v2, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 520
    move-wide/from16 v0, p14

    invoke-static {v3, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 521
    add-int/lit8 v2, v2, 0x4

    .line 522
    move-object/from16 v0, p16

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v2, v4}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 523
    add-int/lit8 v2, v2, 0x4

    .line 524
    const/4 v4, 0x0

    move-object/from16 v0, p16

    array-length v5, v0

    move-object/from16 v0, p16

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    move-object/from16 v0, p16

    array-length v4, v0

    add-int/2addr v2, v4

    .line 526
    const-wide/16 v4, 0x4

    add-long/2addr v4, p1

    invoke-static {v3, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 527
    add-int/lit8 v2, v2, 0x4

    .line 529
    return-object v3
.end method

.method public a([BZ[BJJLoicq/wlogin_sdk/request/TransReqContext;)[B
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    .line 68
    if-nez p3, :cond_0

    .line 69
    new-array p3, v4, [B

    .line 72
    :cond_0
    if-ne v3, p2, :cond_2

    move v2, v3

    .line 78
    :goto_0
    new-array v5, v4, [B

    .line 79
    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v6, :cond_1

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v6, v6

    if-lez v6, :cond_1

    .line 80
    new-instance v5, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/bh;-><init>()V

    .line 81
    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v6

    .line 82
    array-length v5, v6

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 83
    invoke-static {v5, v4, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 84
    const/4 v7, 0x2

    array-length v8, v6

    invoke-static {v6, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    :cond_1
    array-length v6, p3

    add-int/lit8 v6, v6, 0xd

    add-int/lit8 v6, v6, 0x1

    array-length v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Loicq/wlogin_sdk/request/aa;->I:I

    .line 88
    array-length v6, p1

    iget v7, p0, Loicq/wlogin_sdk/request/aa;->I:I

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 90
    invoke-static {v6, v4, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 92
    array-length v2, p1

    invoke-static {v6, v3, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 93
    const/4 v2, 0x3

    .line 94
    invoke-static {v6, v2, p4, p5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 95
    const/4 v2, 0x7

    .line 96
    move-wide/from16 v0, p6

    invoke-static {v6, v2, v0, v1}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 97
    const/16 v2, 0xb

    .line 98
    array-length v3, p3

    invoke-static {v6, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 99
    const/16 v2, 0xd

    .line 100
    array-length v3, p3

    invoke-static {p3, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    array-length v2, p3

    add-int/lit8 v2, v2, 0xd

    .line 102
    array-length v3, v5

    invoke-static {v6, v2, v3}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    array-length v3, v5

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    array-length v3, v5

    add-int/2addr v2, v3

    .line 107
    array-length v3, p1

    invoke-static {p1, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v3, p1

    add-int/2addr v2, v3

    .line 110
    move-object/from16 v0, p8

    iget-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->requestEm:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p8

    iget-object v3, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicket:[B

    move-object/from16 v0, p8

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->wtSessionTicketKey:[B

    invoke-virtual {p0, v6, v2, v3, v4}, Loicq/wlogin_sdk/request/aa;->a([BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;[B[B)[B

    move-result-object v2

    return-object v2

    :cond_2
    move v2, v4

    .line 75
    goto :goto_0
.end method

.method public a([B[BJJI)[B
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 128
    .line 133
    if-nez p2, :cond_2

    .line 134
    new-array p2, v1, [B

    .line 135
    if-nez p7, :cond_1

    move v0, v1

    .line 146
    :goto_0
    new-array v5, v1, [B

    .line 147
    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v6, :cond_0

    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v6, v6

    if-lez v6, :cond_0

    .line 148
    new-instance v5, Loicq/wlogin_sdk/b/bh;

    invoke-direct {v5}, Loicq/wlogin_sdk/b/bh;-><init>()V

    .line 149
    iget-object v6, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v6, v6, Loicq/wlogin_sdk/request/u;->r:[B

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v6

    .line 150
    array-length v5, v6

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 151
    invoke-static {v5, v1, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 152
    array-length v7, v6

    invoke-static {v6, v1, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    move-object v4, v5

    .line 155
    array-length v5, p2

    add-int/lit8 v5, v5, 0xd

    add-int/lit8 v5, v5, 0x1

    array-length v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Loicq/wlogin_sdk/request/aa;->I:I

    .line 156
    array-length v5, p1

    iget v6, p0, Loicq/wlogin_sdk/request/aa;->I:I

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 158
    invoke-static {v5, v1, v0}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 160
    array-length v0, p1

    invoke-static {v5, v3, v0}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 162
    invoke-static {v5, v2, p3, p4}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 163
    const/4 v0, 0x7

    .line 164
    invoke-static {v5, v0, p5, p6}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    .line 165
    const/16 v0, 0xb

    .line 166
    array-length v2, p2

    invoke-static {v5, v0, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    .line 167
    const/16 v0, 0xd

    .line 168
    array-length v2, p2

    invoke-static {p2, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v0, p2

    add-int/lit8 v0, v0, 0xd

    .line 170
    array-length v2, v4

    invoke-static {v5, v0, v2}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    array-length v2, v4

    invoke-static {v4, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    array-length v2, v4

    add-int/2addr v0, v2

    .line 175
    array-length v2, p1

    invoke-static {p1, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v1, p1

    add-int/2addr v0, v1

    .line 178
    invoke-virtual {p0, v5}, Loicq/wlogin_sdk/request/aa;->a([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    .line 138
    goto :goto_0

    .line 140
    :cond_2
    if-nez p7, :cond_3

    move v0, v3

    .line 141
    goto :goto_0

    :cond_3
    move v0, v4

    .line 143
    goto :goto_0
.end method

.method public c(Z)I
    .locals 1

    .prologue
    const/16 v0, 0x1f90

    .line 26
    if-eqz p1, :cond_0

    .line 29
    :cond_0
    return v0
.end method

.method public d([BII)I
    .locals 4

    .prologue
    .line 183
    .line 184
    iget v0, p0, Loicq/wlogin_sdk/request/aa;->J:I

    if-ge p3, v0, :cond_0

    .line 185
    const/16 v0, -0x3f1

    .line 194
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-virtual {p0, p1, p2}, Loicq/wlogin_sdk/request/aa;->c([BI)I

    move-result v1

    .line 189
    const/4 v0, 0x0

    check-cast v0, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/aa;->a(Loicq/wlogin_sdk/tools/ErrMsg;)V

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 194
    goto :goto_0
.end method

.method public d()Ljava/net/Socket;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "_transport_sk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_transport_sk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/aa;->x:Loicq/wlogin_sdk/request/u;

    iget-object v0, v0, Loicq/wlogin_sdk/request/u;->ai:Ljava/net/Socket;

    return-object v0

    .line 36
    :cond_0
    const-string v0, "_transport_sk"

    const-string v1, "_transport_sk null"

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
