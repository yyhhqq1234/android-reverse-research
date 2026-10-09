.class public Lcom/subao/common/e/an;
.super Ljava/lang/Object;
.source "SupportGame.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lcom/subao/common/j/l;

.field public final f:Z

.field public final g:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/subao/common/j/l;ZZLjava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/subao/common/j/l;",
            "ZZ",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/subao/common/e/b$a;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/subao/common/e/an;->a:I

    .line 48
    iput-object p2, p0, Lcom/subao/common/e/an;->b:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/subao/common/e/an;->c:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/subao/common/e/an;->d:I

    .line 51
    iput-object p5, p0, Lcom/subao/common/e/an;->e:Lcom/subao/common/j/l;

    .line 52
    iput-boolean p6, p0, Lcom/subao/common/e/an;->f:Z

    .line 53
    iput-boolean p7, p0, Lcom/subao/common/e/an;->k:Z

    .line 54
    iput-object p8, p0, Lcom/subao/common/e/an;->g:Ljava/lang/Iterable;

    .line 55
    iput-object p9, p0, Lcom/subao/common/e/an;->h:Ljava/lang/Iterable;

    .line 56
    iput-object p10, p0, Lcom/subao/common/e/an;->i:Ljava/lang/Iterable;

    .line 57
    iput-object p11, p0, Lcom/subao/common/e/an;->j:Ljava/lang/Iterable;

    .line 58
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/subao/common/e/an;->k:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    .line 79
    :cond_2
    instance-of v2, p1, Lcom/subao/common/e/an;

    if-eqz v2, :cond_0

    .line 80
    check-cast p1, Lcom/subao/common/e/an;

    .line 81
    iget v2, p0, Lcom/subao/common/e/an;->a:I

    iget v3, p1, Lcom/subao/common/e/an;->a:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/an;->e:Lcom/subao/common/j/l;

    iget-object v3, p1, Lcom/subao/common/e/an;->e:Lcom/subao/common/j/l;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/subao/common/e/an;->f:Z

    iget-boolean v3, p1, Lcom/subao/common/e/an;->f:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/subao/common/e/an;->k:Z

    iget-boolean v3, p1, Lcom/subao/common/e/an;->k:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/an;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/an;->b:Ljava/lang/String;

    .line 85
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/an;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/an;->c:Ljava/lang/String;

    .line 86
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/an;->g:Ljava/lang/Iterable;

    iget-object v3, p1, Lcom/subao/common/e/an;->g:Ljava/lang/Iterable;

    .line 87
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/an;->h:Ljava/lang/Iterable;

    iget-object v3, p1, Lcom/subao/common/e/an;->h:Ljava/lang/Iterable;

    .line 88
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/an;->i:Ljava/lang/Iterable;

    iget-object v3, p1, Lcom/subao/common/e/an;->i:Ljava/lang/Iterable;

    .line 89
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/e/an;->j:Ljava/lang/Iterable;

    iget-object v3, p1, Lcom/subao/common/e/an;->j:Ljava/lang/Iterable;

    .line 90
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[%s (uid=%d), protocol=%s, foreign=%b, fake=%b, white-ports=\'%s\', black-ports=\'%s\', white-ips=\'%s\', black-ips=\'%s\']"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/subao/common/e/an;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/subao/common/e/an;->a:I

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/subao/common/e/an;->e:Lcom/subao/common/j/l;

    iget-object v4, v4, Lcom/subao/common/j/l;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/subao/common/e/an;->f:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/subao/common/e/an;->k:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/subao/common/e/an;->g:Ljava/lang/Iterable;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/subao/common/e/an;->h:Ljava/lang/Iterable;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/subao/common/e/an;->i:Ljava/lang/Iterable;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/subao/common/e/an;->j:Ljava/lang/Iterable;

    aput-object v4, v2, v3

    .line 69
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
