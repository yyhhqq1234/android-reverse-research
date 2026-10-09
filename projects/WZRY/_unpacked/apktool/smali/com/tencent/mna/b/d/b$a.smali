.class Lcom/tencent/mna/b/d/b$a;
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
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/tencent/mna/base/d/b$a;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    invoke-static {}, Lcom/tencent/mna/base/a/c;->l()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/b/d/d$a;->d:Lcom/tencent/mna/b/d/d$a;

    invoke-static {v0, v1}, Lcom/tencent/mna/b/d/d;->a(ILcom/tencent/mna/b/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mna/b/d/b$a;->a:Z

    .line 512
    return-void
.end method


# virtual methods
.method a()Lcom/tencent/mna/base/d/b$a;
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/tencent/mna/b/d/b$a;->a:Z

    if-eqz v0, :cond_0

    .line 537
    invoke-static {}, Lcom/tencent/mna/base/d/b;->c()Lcom/tencent/mna/base/d/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mna/b/d/b$a;->b:Lcom/tencent/mna/base/d/b$a;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/b/d/b$a;->b:Lcom/tencent/mna/base/d/b$a;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/tencent/mna/b/d/b$a;->a:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-static {}, Lcom/tencent/mna/base/d/b;->a()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/d/b$a;->c:I

    .line 546
    :cond_0
    iget v0, p0, Lcom/tencent/mna/b/d/b$a;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/tencent/mna/b/d/b$a;->a:Z

    if-eqz v0, :cond_0

    .line 551
    invoke-static {}, Lcom/tencent/mna/base/d/b;->b()I

    move-result v0

    iput v0, p0, Lcom/tencent/mna/b/d/b$a;->d:I

    .line 553
    :cond_0
    iget v0, p0, Lcom/tencent/mna/b/d/b$a;->d:I

    return v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 517
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/mna/b/d/b$a;->a:Z

    if-nez v0, :cond_0

    .line 518
    const-string v0, "diagnose, Direct switch off"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-static {}, Lcom/tencent/mna/base/a/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mna/base/a/c;->p()I

    move-result v1

    .line 524
    invoke-static {}, Lcom/tencent/mna/base/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mna/base/a/c;->b()I

    move-result v3

    .line 525
    invoke-static {}, Lcom/tencent/mna/base/a/c;->r()I

    move-result v4

    invoke-static {}, Lcom/tencent/mna/base/a/c;->s()I

    move-result v5

    .line 526
    invoke-static {}, Lcom/tencent/mna/base/a/c;->t()I

    move-result v6

    invoke-static {}, Lcom/tencent/mna/base/a/c;->u()I

    move-result v7

    invoke-static {}, Lcom/tencent/mna/base/a/c;->v()I

    move-result v8

    int-to-float v8, v8

    .line 527
    invoke-static {}, Lcom/tencent/mna/base/a/c;->w()I

    move-result v9

    invoke-static {}, Lcom/tencent/mna/base/a/c;->q()I

    move-result v10

    invoke-static {}, Lcom/tencent/mna/base/a/c;->e()I

    move-result v11

    .line 528
    invoke-static {}, Lcom/tencent/mna/base/a/c;->f()I

    move-result v12

    invoke-static {}, Lcom/tencent/mna/base/a/c;->g()I

    move-result v13

    .line 523
    invoke-static/range {v0 .. v13}, Lcom/tencent/mna/base/d/b;->a(Ljava/lang/String;ILjava/lang/String;IIIIIFIIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectSpeedTestTask run exception:"

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
.end method
