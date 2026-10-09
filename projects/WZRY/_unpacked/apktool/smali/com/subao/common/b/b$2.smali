.class final Lcom/subao/common/b/b$2;
.super Lcom/subao/common/j/n;
.source "AuthExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subao/common/b/b;->a(Lcom/subao/common/b/b$c;ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/b/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/subao/common/i/d$b;IILcom/subao/common/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p4, p0, Lcom/subao/common/b/b$2;->a:Lcom/subao/common/b/c;

    iput-object p5, p0, Lcom/subao/common/b/b$2;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/subao/common/b/b$2;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/subao/common/j/n;-><init>(Lcom/subao/common/i/d$b;II)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    const-string v0, "auth_get_node_token"

    return-object v0
.end method

.method protected a(I[B)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 386
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/subao/common/b/m;->a(Ljava/lang/String;)Lcom/subao/common/b/m;

    move-result-object v4

    .line 387
    if-eqz v4, :cond_2

    .line 388
    const-string v0, "SubaoAuth"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "SubaoAuth"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string/jumbo v2, "token=%s, expire=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/subao/common/b/m;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    iget v7, v4, Lcom/subao/common/b/m;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v1, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v0, v4, Lcom/subao/common/b/m;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/subao/common/b/b$2;->a:Lcom/subao/common/b/c;

    iget v1, p0, Lcom/subao/common/b/b$2;->d:I

    iget-object v2, p0, Lcom/subao/common/b/b$2;->b:Ljava/lang/String;

    iget v4, v4, Lcom/subao/common/b/m;->b:I

    move v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/subao/common/b/c;->a(ILjava/lang/String;[BIZI)V

    .line 393
    invoke-virtual {p0}, Lcom/subao/common/b/b$2;->d()V

    .line 397
    :goto_1
    return-void

    .line 391
    :cond_1
    iget-object v0, v4, Lcom/subao/common/b/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_0

    .line 395
    :cond_2
    const/4 v0, -0x3

    invoke-virtual {p0, v0, v3}, Lcom/subao/common/b/b$2;->d(I[B)V

    goto :goto_1
.end method

.method protected b(I[B)V
    .locals 7

    .prologue
    .line 401
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 402
    const-string v0, "SubaoAuth"

    const-string v1, "GetToken failed, clear cache."

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/subao/common/b/b;->c()Lcom/subao/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/b/b$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/subao/common/b/a;->b(Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/subao/common/b/b$2;->a:Lcom/subao/common/b/c;

    iget v1, p0, Lcom/subao/common/b/b$2;->d:I

    iget-object v2, p0, Lcom/subao/common/b/b$2;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/subao/common/b/c;->a(ILjava/lang/String;[BIZI)V

    .line 406
    invoke-static {}, Lcom/subao/common/b/b;->d()V

    .line 407
    return-void
.end method
