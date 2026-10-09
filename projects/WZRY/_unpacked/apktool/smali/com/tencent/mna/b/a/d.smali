.class public Lcom/tencent/mna/b/a/d;
.super Ljava/lang/Object;
.source "AccelerateTesterFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/b/a/d$a;,
        Lcom/tencent/mna/b/a/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:I

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private e:Lcom/tencent/mna/base/d/a;

.field private f:Lcom/tencent/mna/base/d/a;

.field private g:Lcom/tencent/mna/b/a/h;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/tencent/mna/b/a/d$a;


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0x30d40

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/b/a/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mna/b/a/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    iput v1, p0, Lcom/tencent/mna/b/a/d;->c:I

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 79
    if-lez p1, :cond_0

    :goto_0
    iput p1, p0, Lcom/tencent/mna/b/a/d;->m:I

    .line 80
    if-lez p4, :cond_1

    :goto_1
    iput p4, p0, Lcom/tencent/mna/b/a/d;->n:I

    .line 83
    :try_start_0
    iget v0, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    :goto_2
    invoke-static {p2}, Lcom/tencent/mna/base/f/f;->i(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/mna/b/a/d;->k:I

    .line 88
    iput p3, p0, Lcom/tencent/mna/b/a/d;->l:I

    .line 89
    iput-object v4, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    .line 90
    new-instance v2, Lcom/tencent/mna/base/d/a;

    iget v3, p0, Lcom/tencent/mna/b/a/d;->l:I

    invoke-direct {v2, v0, p2, v3}, Lcom/tencent/mna/base/d/a;-><init>(ILjava/lang/String;I)V

    iput-object v2, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    .line 91
    iput-boolean v1, p0, Lcom/tencent/mna/b/a/d;->h:Z

    .line 92
    iput v1, p0, Lcom/tencent/mna/b/a/d;->c:I

    .line 93
    new-instance v1, Lcom/tencent/mna/b/a/d$a;

    invoke-direct {v1, v4}, Lcom/tencent/mna/b/a/d$a;-><init>(Lcom/tencent/mna/b/a/d$1;)V

    iput-object v1, p0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccelerateTesterFacade() called with: fdTimeout = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], ipStr = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], port = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], speedTestTimeout = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], directFd = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mIp = [0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->k:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 96
    return-void

    .line 79
    :cond_0
    const/16 p1, 0x12c

    goto/16 :goto_0

    .line 80
    :cond_1
    const/16 p4, 0x1f4

    goto/16 :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facade get direct fd fail, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "directSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v0, -0x3

    .line 174
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 172
    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    iget v1, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-virtual {v0, v1}, Lcom/tencent/mna/base/d/a;->a(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/d$b;IIIII)I
    .locals 33

    .prologue
    .line 468
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v4

    if-nez v4, :cond_0

    .line 469
    const-string v4, "check all delay switch not open"

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 470
    const/16 v4, -0xa

    .line 684
    :goto_0
    return v4

    .line 473
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/mna/b/a/d;->c:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/tencent/mna/b/a/d;->c:I

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aP()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check all delay times limit, jumpCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/tencent/mna/b/a/d;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aP()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 475
    const/16 v4, -0xb

    goto :goto_0

    .line 478
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 479
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    :cond_2
    const/4 v4, 0x1

    .line 481
    :goto_1
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 482
    invoke-static {}, Lcom/tencent/mna/base/a/a;->x()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_e

    :cond_3
    const/4 v5, 0x1

    .line 484
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 485
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/b/a/d$b;->a()I

    move-result v26

    .line 489
    if-gtz p4, :cond_19

    if-eqz v5, :cond_19

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/b/a/d;->a()I

    move-result p4

    move/from16 v10, p4

    .line 493
    :goto_3
    if-gtz p3, :cond_4

    if-eqz v4, :cond_4

    .line 495
    const/16 p3, -0x1

    .line 498
    :cond_4
    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v27

    .line 500
    const/4 v6, -0x1

    .line 501
    invoke-static {}, Lcom/tencent/mna/base/a/a;->J()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 502
    const/4 v6, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v6}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;I)I

    move-result v6

    .line 505
    :cond_5
    const/16 v28, -0x1

    .line 508
    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/b/a/d$b;->c()Z

    move-result v20

    .line 509
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aQ()Z

    move-result v29

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/b/a/d;->d()I

    move-result v9

    .line 512
    const/4 v8, 0x0

    .line 513
    const-string v7, "-1"

    .line 514
    const/4 v11, -0x2

    if-ne v9, v11, :cond_7

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aO()I

    move-result v11

    if-eqz v11, :cond_7

    .line 516
    if-eqz v20, :cond_f

    .line 518
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget-object v7, v7, Lcom/tencent/mna/b/a/d$a;->i:Ljava/lang/String;

    .line 524
    :goto_4
    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/tencent/mna/base/f/o;->a(Ljava/lang/String;I)I

    move-result v9

    .line 525
    const/4 v8, 0x1

    .line 526
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_7

    .line 527
    :cond_6
    const-string v7, "-3"

    .line 531
    :cond_7
    const/16 v11, -0xa

    .line 532
    sget-object v12, Lcom/tencent/mna/b/a/d$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/b/a/d$b;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    move v4, v11

    .line 548
    :goto_5
    move-object/from16 v0, v27

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;I)I

    move-result v30

    .line 550
    const/4 v5, -0x1

    .line 551
    const/4 v14, -0x1

    .line 552
    const/4 v13, -0x1

    .line 553
    const/4 v12, -0x1

    .line 554
    const/4 v11, -0x1

    .line 555
    invoke-static/range {p5 .. p5}, Lcom/tencent/mna/base/f/l;->d(I)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 556
    if-eqz v20, :cond_12

    .line 558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget v15, v5, Lcom/tencent/mna/b/a/d$a;->a:I

    .line 559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget v14, v5, Lcom/tencent/mna/b/a/d$a;->b:I

    .line 560
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget v13, v5, Lcom/tencent/mna/b/a/d$a;->c:I

    .line 561
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget v12, v5, Lcom/tencent/mna/b/a/d$a;->d:I

    .line 562
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget v5, v5, Lcom/tencent/mna/b/a/d$a;->e:I

    move v11, v5

    .line 591
    :goto_6
    invoke-static/range {v27 .. v27}, Lcom/tencent/mna/base/f/r;->e(Landroid/content/Context;)I

    move-result v31

    .line 593
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    .line 594
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 595
    if-eqz v20, :cond_15

    .line 597
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget-wide v0, v5, Lcom/tencent/mna/b/a/d$a;->f:D

    move-wide/from16 v18, v0

    .line 598
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget-wide v0, v5, Lcom/tencent/mna/b/a/d$a;->g:D

    move-wide/from16 v16, v0

    .line 608
    :cond_8
    :goto_7
    move-object/from16 v0, v27

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/l;->b(Landroid/content/Context;I)I

    move-result v32

    .line 610
    const/16 v5, -0xa

    .line 611
    invoke-static {}, Lcom/tencent/mna/base/a/a;->l()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    invoke-static {}, Lcom/tencent/mna/base/a/a;->J()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 612
    const-string/jumbo v5, "www.qq.com"

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-static {v5, v0}, Lcom/tencent/mna/base/f/o;->b(Ljava/lang/String;I)I

    move-result v5

    move/from16 v23, v5

    .line 614
    :goto_8
    const v5, 0xffff

    .line 615
    if-eqz v20, :cond_16

    .line 617
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iget v5, v5, Lcom/tencent/mna/b/a/d$a;->h:I

    .line 626
    :cond_9
    :goto_9
    invoke-static/range {v27 .. v27}, Lcom/tencent/mna/base/f/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 627
    if-eqz v20, :cond_17

    .line 628
    const/16 v21, 0x5f

    const/16 v22, 0x2c

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v22, v20

    .line 631
    :goto_a
    const/16 v21, -0x1

    .line 632
    const/16 v20, -0x1

    .line 633
    if-eqz v29, :cond_a

    .line 634
    invoke-static/range {v27 .. v27}, Lcom/tencent/mna/base/f/i;->d(Landroid/content/Context;)Landroid/telephony/CellInfo;

    move-result-object v20

    .line 635
    invoke-static/range {v20 .. v20}, Lcom/tencent/mna/base/f/i;->a(Landroid/telephony/CellInfo;)I

    move-result v21

    .line 636
    invoke-static/range {v20 .. v20}, Lcom/tencent/mna/base/f/i;->b(Landroid/telephony/CellInfo;)I

    move-result v20

    .line 639
    :cond_a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 643
    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 644
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 645
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 646
    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 647
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 648
    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 649
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 650
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 651
    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 652
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 653
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v24, 0x5f

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 654
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x5f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 655
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x5f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 656
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5f

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 657
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 658
    move/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 659
    move/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 660
    move-wide/from16 v0, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 661
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 662
    move/from16 v0, v32

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 663
    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 664
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 665
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 666
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 667
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 668
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v11, 0x5f

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 669
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    if-eqz p1, :cond_b

    .line 672
    sget-object v8, Lcom/tencent/mna/base/c/a$a;->R:Lcom/tencent/mna/base/c/a$a;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    .line 675
    :cond_b
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aU()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 676
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mna/b/a/j;->a(Ljava/lang/String;)V

    .line 679
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[N]\u8df3\u53d8\u8bca\u65ad("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/tencent/mna/b/a/d;->c:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "): stage:["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/tencent/mna/b/a/d$b;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "], \u76f4\u8fde:["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "], \u8f6c\u53d1:["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "], \u8def\u7531:["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "], \u51fa\u53e3:["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "], \u91cd\u6d4b:["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "], \u4e0b\u4e00\u8df3:["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "], \u4fe1\u566a\u6bd4:["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], \u57fa\u7ad9ID:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], RSRP/RSRQ:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], pingIp:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 482
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 520
    :cond_f
    const-string/jumbo v7, "www.qq.com"

    invoke-static {v7}, Lcom/tencent/mna/base/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 522
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iput-object v7, v8, Lcom/tencent/mna/b/a/d$a;->i:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_0
    move v4, v10

    .line 535
    goto/16 :goto_5

    .line 537
    :pswitch_1
    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/b/a/d;->b()I

    move-result v4

    goto/16 :goto_5

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 541
    :pswitch_2
    if-eqz v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/mna/b/a/d;->a()I

    move-result v4

    goto/16 :goto_5

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 563
    :cond_12
    if-eqz v29, :cond_14

    .line 565
    invoke-static/range {v27 .. v27}, Lcom/tencent/mna/base/f/r;->b(Landroid/content/Context;)Lcom/tencent/mna/base/f/r$a;

    move-result-object v15

    .line 566
    if-eqz v15, :cond_13

    .line 567
    iget v5, v15, Lcom/tencent/mna/base/f/r$a;->a:I

    .line 570
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iput v5, v15, Lcom/tencent/mna/b/a/d$a;->a:I

    .line 572
    invoke-static/range {v27 .. v27}, Lcom/tencent/mna/base/f/r;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 573
    array-length v0, v15

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_14

    .line 575
    const/16 v16, 0x0

    :try_start_0
    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 576
    const/16 v16, 0x1

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 577
    const/16 v16, 0x2

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 578
    const/16 v16, 0x3

    aget-object v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 580
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iput v14, v15, Lcom/tencent/mna/b/a/d$a;->b:I

    .line 581
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iput v13, v15, Lcom/tencent/mna/b/a/d$a;->c:I

    .line 582
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iput v12, v15, Lcom/tencent/mna/b/a/d$a;->d:I

    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    iput v11, v15, Lcom/tencent/mna/b/a/d$a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v15, v5

    .line 586
    goto/16 :goto_6

    .line 584
    :catch_0
    move-exception v15

    .line 585
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "checkAllDelay wifiSignal parse exception:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    :cond_14
    move v15, v5

    goto/16 :goto_6

    .line 599
    :cond_15
    if-eqz v29, :cond_8

    .line 601
    invoke-static {}, Lcom/tencent/mna/base/f/g;->a()D

    move-result-wide v18

    .line 602
    invoke-static {}, Lcom/tencent/mna/base/f/g;->b()D

    move-result-wide v16

    .line 604
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/tencent/mna/b/a/d$a;->f:D

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/tencent/mna/b/a/d$a;->g:D

    goto/16 :goto_7

    .line 618
    :cond_16
    if-eqz v29, :cond_9

    .line 620
    invoke-static {}, Lcom/tencent/mna/base/f/i;->c()I

    move-result v5

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mna/b/a/d;->s:Lcom/tencent/mna/b/a/d$a;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/tencent/mna/b/a/d$a;->h:I

    goto/16 :goto_9

    :cond_17
    move-object/from16 v22, v20

    goto/16 :goto_a

    :cond_18
    move/from16 v23, v5

    goto/16 :goto_8

    :cond_19
    move/from16 v10, p4

    goto/16 :goto_3

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    invoke-virtual {v0, p1}, Lcom/tencent/mna/base/d/a;->b(I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    invoke-virtual {v0, p1}, Lcom/tencent/mna/base/d/a;->b(I)V

    .line 128
    :cond_1
    iget v0, p0, Lcom/tencent/mna/b/a/d;->i:I

    invoke-static {v0, p1}, Lcom/tencent/mna/base/jni/e;->b(II)I

    .line 129
    iget v0, p0, Lcom/tencent/mna/b/a/d;->j:I

    invoke-static {v0, p1}, Lcom/tencent/mna/base/jni/e;->b(II)I

    .line 130
    iget v0, p0, Lcom/tencent/mna/b/a/d;->o:I

    invoke-static {v0, p1}, Lcom/tencent/mna/base/jni/e;->b(II)I

    .line 131
    iget v0, p0, Lcom/tencent/mna/b/a/d;->p:I

    invoke-static {v0, p1}, Lcom/tencent/mna/base/jni/e;->b(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 135
    return-void

    .line 133
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/tencent/mna/b/a/h;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 102
    if-nez p1, :cond_0

    .line 103
    :try_start_0
    const-string v0, "AccelerateTesterFacade setSpeedTester failed, speedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 117
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/a/d;->i:I

    .line 108
    iget v0, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/a/d;->j:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_1
    :try_start_2
    iput-object p1, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccelerateTesterFacade setSpeedTester succeed: mForwardFd = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mEdgeFd = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facade get forward and edge fd fail, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public a(Lcom/tencent/mna/b/b/b;Z)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 140
    if-nez p1, :cond_0

    .line 141
    :try_start_0
    const-string v0, "AccelerateTesterFacade setMobileSpeedTest failed, networkBinding is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 160
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result v1

    .line 145
    iget v0, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/a/d;->o:I

    .line 146
    iget v0, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-static {v0}, Lcom/tencent/mna/base/jni/e;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/a/d;->p:I

    .line 147
    invoke-virtual {p1, v1}, Lcom/tencent/mna/b/b/b;->a(I)I

    .line 148
    iget v0, p0, Lcom/tencent/mna/b/a/d;->o:I

    invoke-virtual {p1, v0}, Lcom/tencent/mna/b/b/b;->a(I)I

    .line 149
    iget v0, p0, Lcom/tencent/mna/b/a/d;->p:I

    invoke-virtual {p1, v0}, Lcom/tencent/mna/b/b/b;->a(I)I

    .line 151
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mna/b/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/f;->i(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/tencent/mna/b/a/d;->q:I

    .line 152
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mna/b/b/b;->b()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/tencent/mna/b/a/d;->r:I

    .line 154
    new-instance v0, Lcom/tencent/mna/base/d/a;

    invoke-virtual {p1}, Lcom/tencent/mna/b/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mna/b/a/d;->r:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mna/base/d/a;-><init>(ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 151
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/tencent/mna/b/a/d;->k:I

    goto :goto_1

    .line 152
    :cond_2
    iget v0, p0, Lcom/tencent/mna/b/a/d;->l:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facade setMobileSpeedTest fail, exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public a(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 337
    iget-object v2, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    if-nez v2, :cond_0

    .line 340
    const-string/jumbo v1, "switchNetworkBinding failed, not setMobileSpeedTest"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 379
    :goto_0
    return v0

    .line 344
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v2, p0, Lcom/tencent/mna/b/a/d;->h:Z

    if-nez v2, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/tencent/mna/b/a/d;->h:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v0, v1

    .line 346
    goto :goto_0

    .line 349
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lcom/tencent/mna/b/a/d;->h:Z

    if-nez v2, :cond_4

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/tencent/mna/b/a/d;->h:Z

    .line 352
    iget-object v2, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    .line 353
    iget-object v3, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    iput-object v3, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    .line 354
    iput-object v2, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    .line 357
    iget v2, p0, Lcom/tencent/mna/b/a/d;->i:I

    .line 358
    iget v3, p0, Lcom/tencent/mna/b/a/d;->o:I

    iput v3, p0, Lcom/tencent/mna/b/a/d;->i:I

    .line 359
    iput v2, p0, Lcom/tencent/mna/b/a/d;->o:I

    .line 361
    iget v2, p0, Lcom/tencent/mna/b/a/d;->k:I

    .line 362
    iget v3, p0, Lcom/tencent/mna/b/a/d;->q:I

    iput v3, p0, Lcom/tencent/mna/b/a/d;->k:I

    .line 363
    iput v2, p0, Lcom/tencent/mna/b/a/d;->q:I

    .line 365
    iget v2, p0, Lcom/tencent/mna/b/a/d;->l:I

    .line 366
    iget v3, p0, Lcom/tencent/mna/b/a/d;->r:I

    iput v3, p0, Lcom/tencent/mna/b/a/d;->l:I

    .line 367
    iput v2, p0, Lcom/tencent/mna/b/a/d;->r:I

    .line 369
    iget v2, p0, Lcom/tencent/mna/b/a/d;->j:I

    .line 370
    iget v3, p0, Lcom/tencent/mna/b/a/d;->p:I

    iput v3, p0, Lcom/tencent/mna/b/a/d;->j:I

    .line 371
    iput v2, p0, Lcom/tencent/mna/b/a/d;->p:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    move v0, v1

    .line 373
    goto :goto_0

    :cond_4
    move v2, v0

    .line 349
    goto :goto_1

    .line 374
    :catch_0
    move-exception v1

    .line 375
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facade switchNetworkBinding exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public b()I
    .locals 6

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "speedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v0, -0x3

    .line 219
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 217
    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    iget v1, p0, Lcom/tencent/mna/b/a/d;->i:I

    iget v2, p0, Lcom/tencent/mna/b/a/d;->k:I

    iget v3, p0, Lcom/tencent/mna/b/a/d;->l:I

    iget-object v4, p0, Lcom/tencent/mna/b/a/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    iget v5, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mna/b/a/h;->a(IIIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public b(I)I
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    if-nez v0, :cond_0

    .line 185
    const-string v0, "directSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v0, -0x3

    .line 203
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 201
    :goto_0
    return v0

    .line 188
    :cond_0
    :try_start_1
    const-string v0, "A"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    const-string v1, "lastdelay"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "appid"

    sget-object v3, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    .line 193
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "openid"

    sget-object v3, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pvpid"

    sget-object v3, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    .line 195
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    iget v2, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mna/base/d/a;->a(ILjava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 201
    const/4 v0, -0x1

    .line 203
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public c(I)I
    .locals 7

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    if-nez v0, :cond_0

    .line 230
    const-string v0, "speedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    const/4 v0, -0x3

    .line 248
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 246
    :goto_0
    return v0

    .line 233
    :cond_0
    :try_start_1
    const-string v0, "A"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 236
    const-string v1, "lastdelay"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "appid"

    sget-object v3, Lcom/tencent/mna/a/b;->d:Ljava/lang/String;

    .line 237
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "openid"

    sget-object v3, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pvpid"

    sget-object v3, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    .line 240
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    iget v1, p0, Lcom/tencent/mna/b/a/d;->i:I

    iget v2, p0, Lcom/tencent/mna/b/a/d;->k:I

    iget v3, p0, Lcom/tencent/mna/b/a/d;->l:I

    iget-object v4, p0, Lcom/tencent/mna/b/a/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    iget v5, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mna/b/a/h;->a(IIIIILjava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 246
    const/4 v0, -0x1

    .line 248
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "speedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 260
    const-string v0, "0.0.0.0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 262
    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    invoke-interface {v0}, Lcom/tencent/mna/b/a/h;->a()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public d()I
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    if-nez v0, :cond_0

    .line 275
    const-string v0, "speedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    const/4 v0, -0x3

    .line 280
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 278
    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    iget v1, p0, Lcom/tencent/mna/b/a/d;->j:I

    iget-object v2, p0, Lcom/tencent/mna/b/a/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget v3, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mna/b/a/h;->a(III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 418
    if-lez p1, :cond_0

    :goto_0
    :try_start_0
    iput p1, p0, Lcom/tencent/mna/b/a/d;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 422
    return-void

    .line 418
    :cond_0
    const/16 p1, 0x1f4

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    if-nez v0, :cond_0

    .line 291
    const-string v0, "otherNetDirectSpeedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const/4 v0, -0x3

    .line 296
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 294
    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    iget v1, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-virtual {v0, v1}, Lcom/tencent/mna/base/d/a;->a(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public f()I
    .locals 6

    .prologue
    .line 304
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    if-nez v0, :cond_0

    .line 307
    const-string v0, "speedTester is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    const/4 v0, -0x3

    .line 312
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 310
    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    iget v1, p0, Lcom/tencent/mna/b/a/d;->o:I

    iget v2, p0, Lcom/tencent/mna/b/a/d;->k:I

    iget v3, p0, Lcom/tencent/mna/b/a/d;->l:I

    iget-object v4, p0, Lcom/tencent/mna/b/a/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    iget v5, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mna/b/a/h;->a(IIIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 693
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 696
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    invoke-virtual {v1}, Lcom/tencent/mna/base/d/a;->a()V

    .line 698
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mna/b/a/d;->e:Lcom/tencent/mna/base/d/a;

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    invoke-virtual {v1}, Lcom/tencent/mna/base/d/a;->a()V

    .line 703
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mna/b/a/d;->f:Lcom/tencent/mna/base/d/a;

    .line 705
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mna/b/a/d;->g:Lcom/tencent/mna/b/a/h;

    .line 708
    iget v1, p0, Lcom/tencent/mna/b/a/d;->i:I

    if-eqz v1, :cond_2

    .line 709
    iget v1, p0, Lcom/tencent/mna/b/a/d;->i:I

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 710
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->i:I

    .line 712
    :cond_2
    iget v1, p0, Lcom/tencent/mna/b/a/d;->j:I

    if-eqz v1, :cond_3

    .line 713
    iget v1, p0, Lcom/tencent/mna/b/a/d;->j:I

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 714
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->j:I

    .line 717
    :cond_3
    iget v1, p0, Lcom/tencent/mna/b/a/d;->o:I

    if-eqz v1, :cond_4

    .line 718
    iget v1, p0, Lcom/tencent/mna/b/a/d;->o:I

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 719
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->o:I

    .line 721
    :cond_4
    iget v1, p0, Lcom/tencent/mna/b/a/d;->p:I

    if-eqz v1, :cond_5

    .line 722
    iget v1, p0, Lcom/tencent/mna/b/a/d;->p:I

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->d(I)V

    .line 723
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->p:I

    .line 725
    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->k:I

    .line 726
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->l:I

    .line 727
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->q:I

    .line 728
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->r:I

    .line 729
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mna/b/a/d;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    const/4 v0, 0x1

    .line 734
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 736
    :goto_0
    return v0

    .line 731
    :catch_0
    move-exception v1

    .line 732
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facade release exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mna/b/a/d;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccelerateTesterFacade{mIsCurFdMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mna/b/a/d;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForwardFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEdgeFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mfdTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpeedTestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOtherNetForwardFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOtherNetEdgeFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOtherNetIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOtherNetPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mna/b/a/d;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
