.class final Lcom/applovin/impl/ga$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/ga$b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/qo;

.field private final b:Z

.field private final c:Z

.field private final d:Landroid/util/SparseArray;

.field private final e:Landroid/util/SparseArray;

.field private final f:Lcom/applovin/impl/bh;

.field private g:[B

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:J

.field private m:Lcom/applovin/impl/ga$b$a;

.field private n:Lcom/applovin/impl/ga$b$a;

.field private o:Z

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/qo;ZZ)V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/applovin/impl/ga$b;->a:Lcom/applovin/impl/qo;

    .line 293
    iput-boolean p2, p0, Lcom/applovin/impl/ga$b;->b:Z

    .line 294
    iput-boolean p3, p0, Lcom/applovin/impl/ga$b;->c:Z

    .line 295
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/ga$b;->d:Landroid/util/SparseArray;

    .line 296
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/ga$b;->e:Landroid/util/SparseArray;

    .line 297
    new-instance p1, Lcom/applovin/impl/ga$b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/applovin/impl/ga$b$a;-><init>(Lcom/applovin/impl/ga$a;)V

    iput-object p1, p0, Lcom/applovin/impl/ga$b;->m:Lcom/applovin/impl/ga$b$a;

    .line 298
    new-instance p1, Lcom/applovin/impl/ga$b$a;

    invoke-direct {p1, p2}, Lcom/applovin/impl/ga$b$a;-><init>(Lcom/applovin/impl/ga$a;)V

    iput-object p1, p0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 299
    iput-object p1, p0, Lcom/applovin/impl/ga$b;->g:[B

    .line 300
    new-instance p2, Lcom/applovin/impl/bh;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/applovin/impl/bh;-><init>([BII)V

    iput-object p2, p0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    .line 301
    invoke-virtual {p0}, Lcom/applovin/impl/ga$b;->b()V

    return-void
.end method

.method private a(I)V
    .locals 8

    .line 1760
    iget-wide v1, p0, Lcom/applovin/impl/ga$b;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    .line 1763
    :cond_0
    iget-boolean v3, p0, Lcom/applovin/impl/ga$b;->r:Z

    .line 1764
    iget-wide v4, p0, Lcom/applovin/impl/ga$b;->j:J

    iget-wide v6, p0, Lcom/applovin/impl/ga$b;->p:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 1765
    iget-object v0, p0, Lcom/applovin/impl/ga$b;->a:Lcom/applovin/impl/qo;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/applovin/impl/qo;->a(JIIILcom/applovin/impl/qo$a;)V

    return-void
.end method


# virtual methods
.method public a(JIJ)V
    .locals 0

    .line 2710
    iput p3, p0, Lcom/applovin/impl/ga$b;->i:I

    .line 2711
    iput-wide p4, p0, Lcom/applovin/impl/ga$b;->l:J

    .line 2712
    iput-wide p1, p0, Lcom/applovin/impl/ga$b;->j:J

    .line 2713
    iget-boolean p1, p0, Lcom/applovin/impl/ga$b;->b:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/applovin/impl/ga$b;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 2719
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/ga$b;->m:Lcom/applovin/impl/ga$b$a;

    .line 2720
    iget-object p3, p0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    iput-object p3, p0, Lcom/applovin/impl/ga$b;->m:Lcom/applovin/impl/ga$b$a;

    .line 2721
    iput-object p1, p0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    .line 2722
    invoke-virtual {p1}, Lcom/applovin/impl/ga$b$a;->a()V

    const/4 p1, 0x0

    .line 2723
    iput p1, p0, Lcom/applovin/impl/ga$b;->h:I

    .line 2724
    iput-boolean p2, p0, Lcom/applovin/impl/ga$b;->k:Z

    :cond_2
    return-void
.end method

.method public a(Lcom/applovin/impl/yf$a;)V
    .locals 2

    .line 2078
    iget-object v0, p0, Lcom/applovin/impl/ga$b;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/applovin/impl/yf$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/yf$b;)V
    .locals 2

    .line 2387
    iget-object v0, p0, Lcom/applovin/impl/ga$b;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/applovin/impl/yf$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a([BII)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 349
    iget-boolean v2, v0, Lcom/applovin/impl/ga$b;->k:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 353
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->g:[B

    array-length v4, v3

    iget v5, v0, Lcom/applovin/impl/ga$b;->h:I

    add-int/2addr v5, v2

    const/4 v6, 0x2

    if-ge v4, v5, :cond_1

    mul-int/lit8 v5, v5, 0x2

    .line 354
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/impl/ga$b;->g:[B

    .line 356
    :cond_1
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->g:[B

    iget v4, v0, Lcom/applovin/impl/ga$b;->h:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget v1, v0, Lcom/applovin/impl/ga$b;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/applovin/impl/ga$b;->h:I

    .line 359
    iget-object v2, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    iget-object v3, v0, Lcom/applovin/impl/ga$b;->g:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/bh;->a([BII)V

    .line 360
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/applovin/impl/bh;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 363
    :cond_2
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->g()V

    .line 364
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1, v6}, Lcom/applovin/impl/bh;->b(I)I

    move-result v9

    .line 365
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/applovin/impl/bh;->d(I)V

    .line 369
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->b()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 372
    :cond_3
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->f()I

    .line 373
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->b()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 376
    :cond_4
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->f()I

    move-result v10

    .line 377
    iget-boolean v1, v0, Lcom/applovin/impl/ga$b;->c:Z

    if-nez v1, :cond_5

    .line 379
    iput-boolean v4, v0, Lcom/applovin/impl/ga$b;->k:Z

    .line 380
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    invoke-virtual {v1, v10}, Lcom/applovin/impl/ga$b$a;->a(I)V

    return-void

    .line 383
    :cond_5
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->b()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 386
    :cond_6
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->f()I

    move-result v12

    .line 387
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 389
    iput-boolean v4, v0, Lcom/applovin/impl/ga$b;->k:Z

    return-void

    .line 392
    :cond_7
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/yf$a;

    .line 393
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->d:Landroid/util/SparseArray;

    iget v5, v1, Lcom/applovin/impl/yf$a;->b:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/applovin/impl/yf$b;

    .line 394
    iget-boolean v3, v8, Lcom/applovin/impl/yf$b;->h:Z

    if-eqz v3, :cond_9

    .line 395
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v3, v6}, Lcom/applovin/impl/bh;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 398
    :cond_8
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v3, v6}, Lcom/applovin/impl/bh;->d(I)V

    .line 400
    :cond_9
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    iget v5, v8, Lcom/applovin/impl/yf$b;->j:I

    invoke-virtual {v3, v5}, Lcom/applovin/impl/bh;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 406
    :cond_a
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    iget v5, v8, Lcom/applovin/impl/yf$b;->j:I

    invoke-virtual {v3, v5}, Lcom/applovin/impl/bh;->b(I)I

    move-result v11

    .line 407
    iget-boolean v3, v8, Lcom/applovin/impl/yf$b;->i:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 408
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v3, v5}, Lcom/applovin/impl/bh;->a(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 411
    :cond_b
    iget-object v3, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v3}, Lcom/applovin/impl/bh;->c()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 413
    iget-object v6, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v6, v5}, Lcom/applovin/impl/bh;->a(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 416
    :cond_c
    iget-object v6, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v6}, Lcom/applovin/impl/bh;->c()Z

    move-result v6

    move v13, v3

    move v15, v6

    const/4 v14, 0x1

    goto :goto_1

    :cond_d
    move v13, v3

    goto :goto_0

    :cond_e
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 420
    :goto_1
    iget v3, v0, Lcom/applovin/impl/ga$b;->i:I

    if-ne v3, v2, :cond_f

    const/16 v16, 0x1

    goto :goto_2

    :cond_f
    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_11

    .line 423
    iget-object v2, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v2}, Lcom/applovin/impl/bh;->b()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 426
    :cond_10
    iget-object v2, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v2}, Lcom/applovin/impl/bh;->f()I

    move-result v2

    move/from16 v17, v2

    goto :goto_3

    :cond_11
    const/16 v17, 0x0

    .line 432
    :goto_3
    iget v2, v8, Lcom/applovin/impl/yf$b;->k:I

    if-nez v2, :cond_15

    .line 433
    iget-object v2, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    iget v3, v8, Lcom/applovin/impl/yf$b;->l:I

    invoke-virtual {v2, v3}, Lcom/applovin/impl/bh;->a(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 436
    :cond_12
    iget-object v2, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    iget v3, v8, Lcom/applovin/impl/yf$b;->l:I

    invoke-virtual {v2, v3}, Lcom/applovin/impl/bh;->b(I)I

    move-result v2

    .line 437
    iget-boolean v1, v1, Lcom/applovin/impl/yf$a;->c:Z

    if-eqz v1, :cond_14

    if-nez v13, :cond_14

    .line 438
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->b()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 441
    :cond_13
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->e()I

    move-result v1

    move/from16 v19, v1

    move/from16 v18, v2

    goto :goto_5

    :cond_14
    move/from16 v18, v2

    goto :goto_4

    :cond_15
    if-ne v2, v5, :cond_19

    .line 443
    iget-boolean v2, v8, Lcom/applovin/impl/yf$b;->m:Z

    if-nez v2, :cond_19

    .line 444
    iget-object v2, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v2}, Lcom/applovin/impl/bh;->b()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 447
    :cond_16
    iget-object v2, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v2}, Lcom/applovin/impl/bh;->e()I

    move-result v2

    .line 448
    iget-boolean v1, v1, Lcom/applovin/impl/yf$a;->c:Z

    if-eqz v1, :cond_18

    if-nez v13, :cond_18

    .line 449
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->b()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 452
    :cond_17
    iget-object v1, v0, Lcom/applovin/impl/ga$b;->f:Lcom/applovin/impl/bh;

    invoke-virtual {v1}, Lcom/applovin/impl/bh;->e()I

    move-result v1

    move/from16 v21, v1

    move/from16 v20, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_7

    :cond_18
    move/from16 v20, v2

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_6

    :cond_19
    const/16 v18, 0x0

    :goto_4
    const/16 v19, 0x0

    :goto_5
    const/16 v20, 0x0

    :goto_6
    const/16 v21, 0x0

    .line 455
    :goto_7
    iget-object v7, v0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    invoke-virtual/range {v7 .. v21}, Lcom/applovin/impl/ga$b$a;->a(Lcom/applovin/impl/yf$b;IIIIZZZZIIIII)V

    .line 470
    iput-boolean v4, v0, Lcom/applovin/impl/ga$b;->k:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1264
    iget-boolean v0, p0, Lcom/applovin/impl/ga$b;->c:Z

    return v0
.end method

.method public a(JIZZ)Z
    .locals 4

    .line 945
    iget v0, p0, Lcom/applovin/impl/ga$b;->i:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/ga$b;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    iget-object v1, p0, Lcom/applovin/impl/ga$b;->m:Lcom/applovin/impl/ga$b$a;

    .line 946
    invoke-static {v0, v1}, Lcom/applovin/impl/ga$b$a;->a(Lcom/applovin/impl/ga$b$a;Lcom/applovin/impl/ga$b$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    .line 948
    iget-boolean p4, p0, Lcom/applovin/impl/ga$b;->o:Z

    if-eqz p4, :cond_1

    .line 949
    iget-wide v0, p0, Lcom/applovin/impl/ga$b;->j:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 950
    invoke-direct {p0, p3}, Lcom/applovin/impl/ga$b;->a(I)V

    .line 952
    :cond_1
    iget-wide p1, p0, Lcom/applovin/impl/ga$b;->j:J

    iput-wide p1, p0, Lcom/applovin/impl/ga$b;->p:J

    .line 953
    iget-wide p1, p0, Lcom/applovin/impl/ga$b;->l:J

    iput-wide p1, p0, Lcom/applovin/impl/ga$b;->q:J

    .line 954
    iput-boolean v2, p0, Lcom/applovin/impl/ga$b;->r:Z

    .line 955
    iput-boolean v3, p0, Lcom/applovin/impl/ga$b;->o:Z

    .line 958
    :cond_2
    iget-boolean p1, p0, Lcom/applovin/impl/ga$b;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    invoke-virtual {p1}, Lcom/applovin/impl/ga$b$a;->b()Z

    move-result p5

    .line 959
    :cond_3
    iget-boolean p1, p0, Lcom/applovin/impl/ga$b;->r:Z

    iget p2, p0, Lcom/applovin/impl/ga$b;->i:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    if-eqz p5, :cond_5

    if-ne p2, v3, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    or-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/applovin/impl/ga$b;->r:Z

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcom/applovin/impl/ga$b;->k:Z

    .line 318
    iput-boolean v0, p0, Lcom/applovin/impl/ga$b;->o:Z

    .line 319
    iget-object v0, p0, Lcom/applovin/impl/ga$b;->n:Lcom/applovin/impl/ga$b$a;

    invoke-virtual {v0}, Lcom/applovin/impl/ga$b$a;->a()V

    return-void
.end method
