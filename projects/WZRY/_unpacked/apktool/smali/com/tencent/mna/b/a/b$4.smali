.class final Lcom/tencent/mna/b/a/b$4;
.super Ljava/lang/Object;
.source "AccelerateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b/a/b;->a(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/tencent/mna/b/a/b$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 436
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/a/a;->j()I

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const-string v0, "endSpeed is shut down: mna eq 0"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-static {}, Lcom/tencent/mna/b/a/j;->a()V

    .line 446
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b/a/b;->n()V

    .line 448
    invoke-static {}, Lcom/tencent/mna/b/a/b;->r()V

    .line 450
    invoke-static {}, Lcom/tencent/mna/b/a/b;->s()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 452
    sget-object v0, Lcom/tencent/mna/base/c/c;->d:Lcom/tencent/mna/base/c/c;

    invoke-static {v0}, Lcom/tencent/mna/base/c/f;->a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "pvpid"

    sget-object v2, Lcom/tencent/mna/a/b;->a:Ljava/lang/String;

    .line 453
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string v1, "openid"

    sget-object v2, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    .line 454
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    const-string/jumbo v1, "tasknormal"

    .line 456
    invoke-static {}, Lcom/tencent/mna/b/a/b;->t()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mna/base/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/base/c/d;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Lcom/tencent/mna/base/c/d;->g()V

    .line 459
    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/b/a/b;->s()Lcom/tencent/mna/b/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mna/b/a/f;->f()Lcom/tencent/mna/b/a/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/b/a/c/a;)V

    .line 461
    invoke-static {}, Lcom/tencent/mna/b/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    const-string v0, "endSpeed unhookByType failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 465
    :cond_2
    invoke-static {}, Lcom/tencent/mna/b/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    const-string v0, "endSpeed unhookClose failed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->c(Ljava/lang/String;)V

    .line 469
    :cond_3
    invoke-static {}, Lcom/tencent/mna/b/a/b;->s()Lcom/tencent/mna/b/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mna/b/a/f;->a()I

    .line 471
    invoke-static {}, Lcom/tencent/mna/b/a/g;->b()I

    move-result v0

    .line 472
    invoke-static {}, Lcom/tencent/mna/b/a/b;->o()Lcom/tencent/mna/base/c/a;

    move-result-object v1

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->N:Lcom/tencent/mna/base/c/a$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/base/c/a;Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/tencent/mna/b/a/g;->a()V

    .line 476
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/b/a/f;)Lcom/tencent/mna/b/a/f;

    .line 477
    const-string v0, "MNAEndSpeed succeed"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 483
    :goto_1
    invoke-static {}, Lcom/tencent/mna/b/a/b;->p()Lcom/tencent/mna/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 484
    invoke-static {}, Lcom/tencent/mna/b/a/b;->p()Lcom/tencent/mna/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mna/b/a/d;->g()Z

    .line 485
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/b/a/d;)Lcom/tencent/mna/b/a/d;

    .line 488
    :cond_4
    invoke-static {}, Lcom/tencent/mna/b/a/b;->u()Lcom/tencent/mna/b/b/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 489
    invoke-static {}, Lcom/tencent/mna/b/a/b;->u()Lcom/tencent/mna/b/b/b;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mna/b/b/b;->b(Landroid/content/Context;)V

    .line 490
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mna/b/a/b;->a(Lcom/tencent/mna/b/b/b;)Lcom/tencent/mna/b/b/b;

    .line 493
    :cond_5
    sget-boolean v0, Lcom/tencent/mna/a/b;->i:Z

    if-eqz v0, :cond_6

    .line 494
    invoke-static {}, Lcom/tencent/mna/b/e/b;->a()V

    .line 497
    :cond_6
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aU()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aV()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 498
    :cond_7
    invoke-static {}, Lcom/tencent/mna/b/a/j;->b()V

    .line 501
    :cond_8
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mna/b/a/b$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/b;->a(ZLjava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/tencent/mna/b/a/b;->v()V

    .line 505
    const-string v0, "[N]\u7ed3\u675f\u52a0\u901f\u6210\u529f"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    const-string v1, "MNAEndSpeed fail"

    invoke-static {v1}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endSpeed throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    :cond_9
    :try_start_1
    const-string v0, "MNAEndSpeed fail"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->b(Ljava/lang/String;)V

    .line 480
    const-string v0, "endSpeed release accelerator failed, accelerator is null"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
