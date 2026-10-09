.class Lcom/tencent/mna/b/d/b$b;
.super Ljava/lang/Object;
.source "DiagnoseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lcom/tencent/mna/b/d/a;

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/tencent/mna/b/d/a;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput v1, p0, Lcom/tencent/mna/b/d/b$b;->c:I

    .line 566
    const-string v0, "-1"

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$b;->d:Ljava/lang/String;

    .line 567
    iput v1, p0, Lcom/tencent/mna/b/d/b$b;->e:I

    .line 572
    iput-object p1, p0, Lcom/tencent/mna/b/d/b$b;->a:Lcom/tencent/mna/b/d/a;

    .line 573
    iput p2, p0, Lcom/tencent/mna/b/d/b$b;->b:I

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$b;->g:Ljava/lang/StringBuilder;

    .line 575
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 580
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/base/a/c;->l()I

    move-result v1

    sget-object v3, Lcom/tencent/mna/b/d/d$a;->c:Lcom/tencent/mna/b/d/d$a;

    invoke-static {v1, v3}, Lcom/tencent/mna/b/d/d;->a(ILcom/tencent/mna/b/d/d$a;)Z

    move-result v1

    .line 582
    if-nez v1, :cond_0

    .line 583
    const-string v0, "diagnose, Export switch off"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 642
    :goto_0
    return-void

    .line 587
    :cond_0
    const/16 v1, 0x1f4

    invoke-static {v1}, Lcom/tencent/mna/base/jni/e;->b(I)I

    move-result v3

    .line 588
    iget-object v1, p0, Lcom/tencent/mna/b/d/b$b;->a:Lcom/tencent/mna/b/d/a;

    if-eqz v1, :cond_3

    .line 590
    iget-object v1, p0, Lcom/tencent/mna/b/d/b$b;->a:Lcom/tencent/mna/b/d/a;

    invoke-interface {v1, v3}, Lcom/tencent/mna/b/d/a;->a(I)I

    move-result v1

    const/4 v4, -0x2

    if-eq v1, v4, :cond_4

    .line 591
    :goto_1
    invoke-static {}, Lcom/tencent/mna/base/a/c;->j()I

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    .line 594
    const-string/jumbo v0, "www.qq.com"

    invoke-static {v0}, Lcom/tencent/mna/base/f/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$b;->d:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$b;->d:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/mna/base/f/o;->a(Ljava/lang/String;I)I

    move-result v0

    .line 596
    const/16 v1, 0xc8

    if-ge v0, v1, :cond_5

    :goto_2
    iput v0, p0, Lcom/tencent/mna/b/d/b$b;->f:I

    .line 597
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mna/b/d/b$b;->c:I

    .line 598
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mna/b/d/b$b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 600
    :cond_1
    const-string v0, "-3"

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$b;->d:Ljava/lang/String;

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$b;->g:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/b/d/b$b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mna/b/d/b$b;->e:I

    .line 638
    :cond_3
    :goto_3
    invoke-static {v3}, Lcom/tencent/mna/base/jni/e;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportSpeedTestTask run exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 590
    goto :goto_1

    .line 596
    :cond_5
    const/16 v0, 0xc8

    goto :goto_2

    .line 607
    :cond_6
    :try_start_1
    iget v0, p0, Lcom/tencent/mna/b/d/b$b;->b:I

    if-ne v0, v10, :cond_7

    .line 608
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 609
    invoke-static {}, Lcom/tencent/mna/base/a/c;->m()I

    move-result v1

    move v0, v2

    .line 610
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    int-to-long v8, v1

    cmp-long v2, v6, v8

    if-gez v2, :cond_9

    .line 611
    iget-object v2, p0, Lcom/tencent/mna/b/d/b$b;->a:Lcom/tencent/mna/b/d/a;

    invoke-interface {v2, v3}, Lcom/tencent/mna/b/d/a;->a(I)I

    move-result v2

    .line 612
    add-int/2addr v0, v2

    .line 613
    iget-object v6, p0, Lcom/tencent/mna/b/d/b$b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    iget v2, p0, Lcom/tencent/mna/b/d/b$b;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/mna/b/d/b$b;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    const-wide/16 v6, 0x32

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 617
    :catch_1
    move-exception v2

    goto :goto_4

    :cond_7
    move v1, v2

    move v0, v2

    .line 622
    :goto_5
    if-ge v1, v5, :cond_8

    .line 623
    :try_start_3
    iget-object v2, p0, Lcom/tencent/mna/b/d/b$b;->a:Lcom/tencent/mna/b/d/a;

    invoke-interface {v2, v3}, Lcom/tencent/mna/b/d/a;->a(I)I

    move-result v2

    .line 624
    add-int/2addr v0, v2

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 626
    :cond_8
    const/4 v1, 0x3

    iput v1, p0, Lcom/tencent/mna/b/d/b$b;->e:I

    .line 628
    :cond_9
    iget v1, p0, Lcom/tencent/mna/b/d/b$b;->e:I

    if-eqz v1, :cond_3

    .line 629
    iget v1, p0, Lcom/tencent/mna/b/d/b$b;->e:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mna/b/d/b$b;->f:I

    .line 631
    iget v0, p0, Lcom/tencent/mna/b/d/b$b;->b:I

    if-eq v0, v10, :cond_3

    .line 632
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$b;->g:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/mna/b/d/b$b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method
