.class final Lcom/subao/common/b/b$4;
.super Lcom/subao/common/j/n;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/b/b;->b(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/subao/common/b/c;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/subao/common/i/d$b;IILjava/lang/String;Lcom/subao/common/b/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 488
    iput-object p4, p0, Lcom/subao/common/b/b$4;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/subao/common/b/b$4;->b:Lcom/subao/common/b/c;

    iput-object p6, p0, Lcom/subao/common/b/b$4;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/j/n;-><init>(Lcom/subao/common/i/d$b;II)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    const-string v0, "auth_get_config"

    return-object v0
.end method

.method protected a(I[B)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x3

    .line 492
    if-nez p2, :cond_0

    .line 493
    const-string v0, "SubaoAuth"

    const-string v1, "Configs: (null)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0, v3, v5}, Lcom/subao/common/b/b$4;->d(I[B)V

    .line 511
    :goto_0
    return-void

    .line 497
    :cond_0
    const-string v0, "SubaoAuth"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    const-string v0, "SubaoAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_1
    invoke-static {p2}, Lcom/subao/common/b/b$b;->a([B)Lcom/subao/common/b/b$b;

    move-result-object v4

    .line 501
    if-eqz v4, :cond_3

    .line 502
    iget-object v0, v4, Lcom/subao/common/b/b$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/subao/common/b/o;->a(Ljava/lang/String;)Lcom/subao/common/b/o;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_2

    .line 504
    iget-object v1, p0, Lcom/subao/common/b/b$4;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/subao/common/b/b;->a(Ljava/lang/String;Lcom/subao/common/b/o;)V

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/subao/common/b/b$4;->b:Lcom/subao/common/b/c;

    iget v1, p0, Lcom/subao/common/b/b$4;->d:I

    iget-object v2, p0, Lcom/subao/common/b/b$4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/b/b$4;->a:Ljava/lang/String;

    const/4 v6, 0x1

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/subao/common/b/c;->a(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/b$b;IZ)V

    .line 507
    invoke-virtual {p0}, Lcom/subao/common/b/b$4;->d()V

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {p0, v3, v5}, Lcom/subao/common/b/b$4;->d(I[B)V

    goto :goto_0
.end method

.method protected b(I[B)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 515
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 516
    const-string v0, "SubaoAuth"

    const-string v1, "GetUserConfig failed, clear cache."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/subao/common/b/b;->c()Lcom/subao/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/b/b$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/subao/common/b/a;->a(Ljava/lang/String;Lcom/subao/common/b/g;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/subao/common/b/b$4;->b:Lcom/subao/common/b/c;

    iget v1, p0, Lcom/subao/common/b/b$4;->d:I

    iget-object v3, p0, Lcom/subao/common/b/b$4;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v4, v2

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/subao/common/b/c;->a(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/b$b;IZ)V

    .line 520
    return-void
.end method
