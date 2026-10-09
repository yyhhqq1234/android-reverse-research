.class final Lcom/subao/common/b/b$3;
.super Lcom/subao/common/j/n;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;IILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/subao/common/b/c;


# direct methods
.method constructor <init>(Lcom/subao/common/i/d$b;IILjava/lang/String;Lcom/subao/common/b/c;)V
    .locals 0

    .prologue
    .line 442
    iput-object p4, p0, Lcom/subao/common/b/b$3;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/subao/common/b/b$3;->b:Lcom/subao/common/b/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/j/n;-><init>(Lcom/subao/common/i/d$b;II)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    const-string v0, "auth_get_user_status"

    return-object v0
.end method

.method protected a(I[B)V
    .locals 8

    .prologue
    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/subao/common/b/n;->a(Ljava/lang/String;)Lcom/subao/common/b/n;

    move-result-object v5

    .line 447
    if-eqz v5, :cond_0

    .line 448
    iget v4, v5, Lcom/subao/common/b/n;->b:I

    .line 449
    iget-object v3, v5, Lcom/subao/common/b/n;->a:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/subao/common/b/b$3;->a:Ljava/lang/String;

    iget-object v1, v5, Lcom/subao/common/b/n;->c:Ljava/lang/String;

    invoke-static {}, Lcom/subao/common/i/k;->g()Lcom/subao/common/i/b;

    move-result-object v2

    invoke-static {v0, v3, v4, v1, v2}, Lcom/subao/common/i/k;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/i/b;)V

    .line 451
    iget-object v0, p0, Lcom/subao/common/b/b$3;->b:Lcom/subao/common/b/c;

    iget v1, p0, Lcom/subao/common/b/b$3;->d:I

    iget v2, p0, Lcom/subao/common/b/b$3;->e:I

    iget-object v5, v5, Lcom/subao/common/b/n;->c:Ljava/lang/String;

    const/4 v6, 0x1

    move v7, p1

    invoke-interface/range {v0 .. v7}, Lcom/subao/common/b/c;->a(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 452
    invoke-virtual {p0}, Lcom/subao/common/b/b$3;->d()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/subao/common/b/b$3;->d(I[B)V

    goto :goto_0
.end method

.method protected b(I[B)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 460
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 461
    const-string v0, "SubaoAuth"

    const-string v1, "GetUserAccelStatus failed, clear cache."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/subao/common/b/b;->c()Lcom/subao/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/b/b$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/subao/common/b/a;->a(Ljava/lang/String;Lcom/subao/common/b/g;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/subao/common/b/b$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/subao/common/i/k;->b(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/subao/common/b/b$3;->b:Lcom/subao/common/b/c;

    iget v1, p0, Lcom/subao/common/b/b$3;->d:I

    iget v2, p0, Lcom/subao/common/b/b$3;->e:I

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v5, v3

    move v7, p1

    invoke-interface/range {v0 .. v7}, Lcom/subao/common/b/c;->a(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 466
    return-void
.end method
