.class Lcom/tencent/liteav/renderer/e$i;
.super Ljava/lang/Thread;
.source "TXCGLSurfaceViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/tencent/liteav/renderer/e$h;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/renderer/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/renderer/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/e$i;->q:Ljava/util/ArrayList;

    .line 724
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/e$i;->r:Z

    .line 232
    iput v2, p0, Lcom/tencent/liteav/renderer/e$i;->l:I

    .line 233
    iput v2, p0, Lcom/tencent/liteav/renderer/e$i;->m:I

    .line 234
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/e$i;->o:Z

    .line 235
    iput v1, p0, Lcom/tencent/liteav/renderer/e$i;->n:I

    .line 236
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e$i;->t:Ljava/lang/ref/WeakReference;

    .line 237
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/e$i;Z)Z
    .locals 0

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/e$i;->b:Z

    return p1
.end method

.method private i()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v1, Lcom/tencent/liteav/renderer/e$h;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/liteav/renderer/e$i;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/tencent/liteav/renderer/e$h;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    .line 270
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    .line 271
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    .line 273
    const/4 v1, 0x0

    .line 274
    const/4 v12, 0x0

    .line 275
    const/4 v3, 0x0

    .line 276
    const/4 v11, 0x0

    .line 277
    const/4 v10, 0x0

    .line 278
    const/4 v9, 0x0

    .line 279
    const/4 v8, 0x0

    .line 280
    const/4 v2, 0x0

    .line 281
    const/4 v7, 0x0

    .line 282
    const/4 v6, 0x0

    .line 283
    const/4 v5, 0x0

    .line 284
    const/4 v4, 0x0

    move-object v14, v1

    .line 287
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 289
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->a:Z

    if-eqz v1, :cond_0

    .line 290
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v2

    monitor-enter v2

    .line 529
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->j()V

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->k()V

    .line 531
    monitor-exit v2

    .line 290
    return-void

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 292
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->q:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object v4, v1

    .line 436
    :goto_2
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 438
    if-eqz v4, :cond_11

    .line 439
    :try_start_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 440
    const/4 v4, 0x0

    .line 441
    goto :goto_0

    .line 296
    :cond_1
    const/4 v1, 0x0

    .line 297
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/liteav/renderer/e$i;->d:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/liteav/renderer/e$i;->c:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_1a

    .line 298
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->c:Z

    .line 299
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/tencent/liteav/renderer/e$i;->c:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/tencent/liteav/renderer/e$i;->d:Z

    .line 300
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    move v13, v1

    .line 305
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->k:Z

    if-eqz v1, :cond_2

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->j()V

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->k()V

    .line 311
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->k:Z

    .line 312
    const/4 v7, 0x1

    .line 314
    :cond_2
    if-eqz v10, :cond_3

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->j()V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->k()V

    .line 317
    const/4 v10, 0x0

    .line 319
    :cond_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    if-eqz v1, :cond_4

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->j()V

    .line 325
    :cond_4
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    if-eqz v1, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/renderer/e;

    .line 327
    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 329
    :goto_4
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e$j;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 330
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->k()V

    .line 336
    :cond_6
    if-eqz v13, :cond_7

    .line 337
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e$j;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e$h;->g()V

    .line 344
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->e:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->g:Z

    if-nez v1, :cond_9

    .line 348
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    if-eqz v1, :cond_8

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->j()V

    .line 351
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->g:Z

    .line 352
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->f:Z

    .line 353
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 355
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->e:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->g:Z

    if-eqz v1, :cond_a

    .line 359
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->g:Z

    .line 360
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 362
    :cond_a
    if-eqz v2, :cond_b

    .line 366
    const/4 v8, 0x0

    .line 367
    const/4 v2, 0x0

    .line 368
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->p:Z

    .line 369
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 371
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->l()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 372
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    if-nez v1, :cond_c

    .line 373
    if-eqz v7, :cond_f

    .line 374
    const/4 v7, 0x0

    .line 389
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    if-nez v1, :cond_d

    .line 390
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    .line 391
    const/4 v3, 0x1

    .line 392
    const/4 v11, 0x1

    .line 393
    const/4 v9, 0x1

    .line 396
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    if-eqz v1, :cond_10

    .line 397
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->r:Z

    if-eqz v1, :cond_19

    .line 398
    const/4 v9, 0x1

    .line 399
    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/liteav/renderer/e$i;->l:I

    .line 400
    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/liteav/renderer/e$i;->m:I

    .line 401
    const/4 v8, 0x1

    .line 409
    const/4 v3, 0x1

    .line 411
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/tencent/liteav/renderer/e$i;->r:Z

    .line 413
    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/tencent/liteav/renderer/e$i;->o:Z

    .line 414
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    move v5, v1

    .line 415
    goto/16 :goto_2

    .line 328
    :cond_e
    invoke-static {v1}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/e;)Z

    move-result v1

    goto/16 :goto_4

    .line 375
    :cond_f
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/renderer/e$j;->b(Lcom/tencent/liteav/renderer/e$i;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-eqz v1, :cond_c

    .line 377
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e$h;->a()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 382
    const/4 v1, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    .line 383
    const/4 v12, 0x1

    .line 385
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_5

    .line 436
    :catchall_1
    move-exception v1

    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 528
    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v2

    monitor-enter v2

    .line 529
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->j()V

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e$i;->k()V

    .line 531
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v1

    .line 378
    :catch_0
    move-exception v1

    .line 379
    :try_start_a
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/renderer/e$j;->c(Lcom/tencent/liteav/renderer/e$i;)V

    .line 380
    throw v1

    .line 434
    :cond_10
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 444
    :cond_11
    if-eqz v3, :cond_12

    .line 448
    :try_start_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e$h;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 449
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 450
    const/4 v1, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->j:Z

    .line 451
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 452
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 461
    const/4 v1, 0x0

    move v3, v1

    .line 464
    :cond_12
    if-eqz v11, :cond_18

    .line 465
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e$h;->d()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 467
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/tencent/liteav/renderer/e$j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 468
    const/4 v11, 0x0

    move-object v13, v1

    .line 471
    :goto_7
    if-eqz v12, :cond_14

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/renderer/e;

    .line 476
    if-eqz v1, :cond_13

    .line 477
    invoke-static {v1}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    iget-object v12, v12, Lcom/tencent/liteav/renderer/e$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v13, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 479
    :cond_13
    const/4 v12, 0x0

    .line 482
    :cond_14
    if-eqz v9, :cond_16

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/renderer/e;

    .line 487
    if-eqz v1, :cond_15

    .line 488
    invoke-static {v1}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v1

    invoke-interface {v1, v13, v6, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 490
    :cond_15
    const/4 v9, 0x0

    .line 496
    :cond_16
    const/16 v14, 0x3000

    .line 498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/renderer/e;

    .line 499
    if-eqz v1, :cond_1c

    .line 500
    invoke-static {v1}, Lcom/tencent/liteav/renderer/e;->b(Lcom/tencent/liteav/renderer/e;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v14

    invoke-interface {v14, v13}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 501
    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/e;->b()I

    move-result v1

    .line 504
    :goto_8
    sparse-switch v1, :sswitch_data_0

    .line 514
    const-string v14, "GLThread"

    const-string v15, "eglSwapBuffers"

    invoke-static {v14, v15, v1}, Lcom/tencent/liteav/renderer/e$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 515
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v14

    monitor-enter v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 516
    const/4 v1, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->f:Z

    .line 517
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 518
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 522
    :goto_9
    :sswitch_0
    if-eqz v8, :cond_1b

    .line 523
    const/4 v1, 0x1

    :goto_a
    move v2, v1

    move-object v14, v13

    .line 525
    goto/16 :goto_0

    .line 452
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v1

    .line 454
    :cond_17
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v13

    monitor-enter v13
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 455
    const/4 v1, 0x1

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->j:Z

    .line 456
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e$i;->f:Z

    .line 457
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 458
    monitor-exit v13

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 511
    :sswitch_1
    const/4 v10, 0x1

    .line 512
    goto :goto_9

    .line 518
    :catchall_5
    move-exception v1

    :try_start_13
    monitor-exit v14
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 531
    :catchall_6
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v1

    :cond_18
    move-object v13, v14

    goto/16 :goto_7

    :cond_19
    move v1, v5

    goto/16 :goto_6

    :cond_1a
    move v13, v1

    goto/16 :goto_3

    :cond_1b
    move v1, v2

    goto :goto_a

    :cond_1c
    move v1, v14

    goto :goto_8

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private j()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    if-eqz v0, :cond_0

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    .line 537
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e$h;->f()V

    .line 539
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e$h;->g()V

    .line 543
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    .line 544
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/e;

    .line 545
    if-eqz v0, :cond_0

    .line 546
    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e;->h:Z

    .line 548
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/e$j;->c(Lcom/tencent/liteav/renderer/e$i;)V

    .line 550
    :cond_1
    return-void
.end method

.method private l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 555
    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/e$i;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/e$i;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/e$i;->f:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/tencent/liteav/renderer/e$i;->l:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/tencent/liteav/renderer/e$i;->m:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/e$i;->o:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/renderer/e$i;->n:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/e$h;->c()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 560
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    monitor-enter v1

    .line 564
    :try_start_0
    iput p1, p0, Lcom/tencent/liteav/renderer/e$i;->n:I

    .line 565
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 566
    monitor-exit v1

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 655
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    monitor-enter v1

    .line 656
    :try_start_0
    iput p1, p0, Lcom/tencent/liteav/renderer/e$i;->l:I

    .line 657
    iput p2, p0, Lcom/tencent/liteav/renderer/e$i;->m:I

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->r:Z

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->o:Z

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->p:Z

    .line 661
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 664
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->p:Z

    if-nez v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e$i;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 676
    return-void
.end method

.method public b()Lcom/tencent/liteav/renderer/e$h;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$i;->s:Lcom/tencent/liteav/renderer/e$h;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e$i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    monitor-enter v1

    .line 570
    :try_start_0
    iget v0, p0, Lcom/tencent/liteav/renderer/e$i;->n:I

    monitor-exit v1

    return v0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 580
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    monitor-enter v1

    .line 584
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->e:Z

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->j:Z

    .line 586
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 587
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 591
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 597
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 599
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    monitor-enter v1

    .line 603
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->e:Z

    .line 604
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 605
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 607
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 613
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 680
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    monitor-enter v1

    .line 681
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->a:Z

    .line 682
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 683
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 685
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 691
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e$i;->k:Z

    .line 694
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 695
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e$i;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/e$i;->setName(Ljava/lang/String;)V

    .line 245
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e$i;->i()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/e$j;->a(Lcom/tencent/liteav/renderer/e$i;)V

    .line 251
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 249
    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/e$j;->a(Lcom/tencent/liteav/renderer/e$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/tencent/liteav/renderer/e;->d()Lcom/tencent/liteav/renderer/e$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/renderer/e$j;->a(Lcom/tencent/liteav/renderer/e$i;)V

    throw v0
.end method
