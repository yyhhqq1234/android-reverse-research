.class Lcom/tencent/android/tpush/service/channel/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;


# direct methods
.method private constructor <init>(Lcom/tencent/android/tpush/service/channel/b;)V
    .locals 0

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/c;)V
    .locals 0

    .prologue
    .line 1398
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/channel/q;-><init>(Lcom/tencent/android/tpush/service/channel/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1402
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1403
    const-wide v4, 0x7fffffffffffffffL

    .line 1404
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    iget v2, v2, Lcom/tencent/android/tpush/service/a/a;->f:I

    int-to-long v2, v2

    .line 1406
    const/4 v6, 0x0

    .line 1408
    const-wide/16 v8, 0x3a98

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    const-wide/16 v2, 0x3a98

    move-wide v10, v2

    .line 1411
    :goto_0
    new-instance v7, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v2, 0x277b

    const-string v3, "TpnsMessage wait for response timeout!"

    invoke-direct {v7, v2, v3}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/a/a;

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->c(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1417
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    if-eqz v9, :cond_6

    .line 1419
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1421
    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/a/a;->f()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v14

    move v3, v6

    .line 1422
    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1423
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1425
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/s;

    .line 1426
    if-eqz v2, :cond_4

    .line 1427
    iget-wide v0, v2, Lcom/tencent/android/tpush/service/channel/s;->b:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    .line 1429
    const/4 v6, 0x3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v6, v15}, Lcom/tencent/android/tpush/service/channel/a;->a(ILjava/lang/Object;)V

    .line 1431
    const-wide/16 v18, 0x0

    cmp-long v6, v16, v18

    if-ltz v6, :cond_0

    .line 1433
    cmp-long v6, v16, v10

    if-lez v6, :cond_3

    .line 1434
    const/4 v3, 0x1

    .line 1435
    iget-object v6, v2, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    .line 1436
    if-eqz v6, :cond_1

    .line 1437
    iget-object v15, v2, Lcom/tencent/android/tpush/service/channel/s;->c:Lcom/qq/taf/jce/JceStruct;

    invoke-interface {v6, v15, v7, v14}, Lcom/tencent/android/tpush/service/channel/t;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 1441
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    .line 1443
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    move v2, v3

    :goto_3
    move v3, v2

    .line 1450
    goto :goto_2

    :cond_2
    move-wide v10, v2

    .line 1408
    goto/16 :goto_0

    .line 1444
    :cond_3
    sub-long v18, v10, v16

    cmp-long v2, v18, v4

    if-gez v2, :cond_5

    .line 1445
    sub-long v4, v10, v16

    move v2, v3

    goto :goto_3

    .line 1448
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    move v3, v6

    :cond_7
    move v6, v3

    .line 1452
    goto/16 :goto_1

    .line 1454
    :cond_8
    new-instance v7, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;

    const/16 v2, 0x277a

    const-string v3, "TpnsMessage wait for response timeout!"

    invoke-direct {v7, v2, v3}, Lcom/tencent/android/tpush/service/channel/exception/ChannelException;-><init>(ILjava/lang/String;)V

    .line 1457
    const/4 v3, 0x0

    .line 1458
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/tencent/android/tpush/service/channel/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-wide v8, v4

    .line 1460
    :cond_9
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1461
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/android/tpush/service/channel/s;

    .line 1462
    if-eqz v2, :cond_f

    .line 1463
    iget-wide v4, v2, Lcom/tencent/android/tpush/service/channel/s;->a:J

    sub-long v16, v12, v4

    .line 1465
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-ltz v4, :cond_9

    .line 1467
    cmp-long v4, v16, v10

    if-lez v4, :cond_e

    .line 1468
    const/4 v4, 0x1

    .line 1469
    iget-object v5, v2, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    .line 1470
    if-eqz v5, :cond_b

    .line 1472
    if-nez v3, :cond_a

    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-static {v3}, Lcom/tencent/android/tpush/service/channel/b;->b(Lcom/tencent/android/tpush/service/channel/b;)Lcom/tencent/android/tpush/service/channel/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/android/tpush/service/channel/a/a;->f()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v3

    .line 1479
    :goto_5
    const/4 v6, 0x3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v6, v0}, Lcom/tencent/android/tpush/service/channel/a;->a(ILjava/lang/Object;)V

    .line 1483
    :cond_a
    iget-object v6, v2, Lcom/tencent/android/tpush/service/channel/s;->c:Lcom/qq/taf/jce/JceStruct;

    invoke-interface {v5, v6, v7, v3}, Lcom/tencent/android/tpush/service/channel/t;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/exception/ChannelException;Lcom/tencent/android/tpush/service/channel/a;)V

    .line 1487
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/tencent/android/tpush/service/channel/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    :cond_b
    move-object v2, v3

    .line 1489
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    :goto_6
    move-object v3, v2

    move v6, v4

    .line 1496
    goto :goto_4

    .line 1477
    :cond_c
    new-instance v3, Lcom/tencent/android/tpush/service/channel/a;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/a;-><init>()V

    goto :goto_5

    .line 1497
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1501
    :catch_0
    move-exception v2

    .line 1502
    const-string v3, "TpnsChannel"

    const-string v4, "TimeoutRunnable.run"

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1504
    :cond_d
    :goto_7
    return-void

    .line 1490
    :cond_e
    sub-long v4, v10, v16

    cmp-long v2, v4, v8

    if-gez v2, :cond_10

    .line 1491
    sub-long v8, v10, v16

    move-object v2, v3

    move v4, v6

    goto :goto_6

    .line 1494
    :cond_f
    :try_start_3
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    :cond_10
    move-object v2, v3

    move v4, v6

    goto :goto_6

    .line 1497
    :cond_11
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1498
    if-eqz v6, :cond_d

    .line 1499
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/android/tpush/service/channel/q;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/b;->d()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7
.end method
