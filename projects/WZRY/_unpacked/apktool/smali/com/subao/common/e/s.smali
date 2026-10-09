.class public Lcom/subao/common/e/s;
.super Lcom/subao/common/e/u;
.source "HRCouponExchange.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/u$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    sget-object v0, Lcom/subao/common/j/a$b;->b:Lcom/subao/common/j/a$b;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/subao/common/e/u;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Lcom/subao/common/j/a$b;[B)V

    .line 38
    const-string v0, "https"

    iput-object v0, p0, Lcom/subao/common/e/s;->e:Ljava/lang/String;

    .line 42
    iget-object v0, p2, Lcom/subao/common/e/u$d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/subao/common/e/s;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    iget-object v0, v0, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p1, Lcom/subao/common/e/u$a;->c:Lcom/subao/common/e/al;

    iget-object v0, v0, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/subao/common/e/s;->e:Ljava/lang/String;

    .line 46
    :cond_0
    iput-object p3, p0, Lcom/subao/common/e/s;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static a(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/subao/common/e/u$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/subao/common/e/u$d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v0, Lcom/subao/common/e/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/subao/common/e/s;-><init>(Lcom/subao/common/e/u$a;Lcom/subao/common/e/u$d;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subao/common/e/s;->a(Ljava/util/concurrent/Executor;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x5

    return v0
.end method

.method protected a(Lcom/subao/common/e/u$b;)V
    .locals 3
    .param p1    # Lcom/subao/common/e/u$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HRCouponExchange code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/subao/common/e/u$b;->b:Lcom/subao/common/j/a$c;

    iget v2, v2, Lcom/subao/common/j/a$c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v0, "SubaoData"

    const-string v1, "HRCouponExchange result or response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "/api/v2/%s/users/%s/coupons/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/subao/common/e/s;->b:Lcom/subao/common/e/u$a;

    iget-object v3, v3, Lcom/subao/common/e/u$a;->a:Ljava/lang/String;

    .line 71
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/subao/common/e/s;->a:Ljava/lang/String;

    .line 72
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/subao/common/e/s;->d:Ljava/lang/String;

    .line 73
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/subao/common/e/s;->e:Ljava/lang/String;

    return-object v0
.end method
