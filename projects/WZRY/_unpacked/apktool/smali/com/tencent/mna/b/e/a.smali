.class public Lcom/tencent/mna/b/e/a;
.super Ljava/lang/Object;
.source "NetworkQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/b/e/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;ZZZLcom/tencent/mna/b/a/d;)Lcom/tencent/mna/b/e/a$a;
    .locals 6

    .prologue
    .line 21
    new-instance v1, Lcom/tencent/mna/b/e/a$a;

    invoke-direct {v1}, Lcom/tencent/mna/b/e/a$a;-><init>()V

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/tencent/mna/base/f/l;->a(Landroid/content/Context;)I

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/tencent/mna/b/e/a$a;->a(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/mna/b/e/a$a;->b:I

    .line 27
    invoke-static {p0}, Lcom/tencent/mna/base/f/i;->b(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lcom/tencent/mna/b/e/a$a;->r:I

    .line 29
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 30
    invoke-virtual {p4}, Lcom/tencent/mna/b/a/d;->d()I

    move-result v2

    iput v2, v1, Lcom/tencent/mna/b/e/a$a;->p:I

    .line 31
    invoke-virtual {p4}, Lcom/tencent/mna/b/a/d;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mna/b/e/a$a;->q:Ljava/lang/String;

    .line 34
    :cond_0
    if-eqz p1, :cond_2

    .line 35
    invoke-static {}, Lcom/tencent/mna/base/f/j;->c()Lcom/tencent/mna/base/f/j$c;

    move-result-object v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->c:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->l:I

    .line 38
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->d:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->m:I

    .line 39
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$c;->e:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->n:I

    .line 40
    iget-wide v2, v2, Lcom/tencent/mna/base/f/j$c;->f:J

    long-to-int v2, v2

    iput v2, v1, Lcom/tencent/mna/b/e/a$a;->o:I

    .line 43
    :cond_1
    invoke-static {}, Lcom/tencent/mna/base/f/j;->b()Lcom/tencent/mna/base/f/j$a;

    move-result-object v2

    .line 45
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->d(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->h:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->f:I

    .line 48
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->d:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->g:I

    .line 50
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->j:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->h:I

    .line 51
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->f:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->i:I

    .line 52
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->i:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->j:I

    .line 53
    iget-wide v2, v2, Lcom/tencent/mna/base/f/j$a;->e:J

    long-to-int v2, v2

    iput v2, v1, Lcom/tencent/mna/b/e/a$a;->k:I

    .line 76
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->d(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    invoke-static {p0}, Lcom/tencent/mna/base/f/r;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mna/b/e/a$a;->a:Ljava/lang/String;

    .line 79
    invoke-static {p0}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Lcom/tencent/mna/b/e/a$a;->c:I

    .line 80
    if-eqz p2, :cond_3

    .line 81
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Lcom/tencent/mna/b/e/a$a;->d:I

    .line 83
    :cond_3
    invoke-static {}, Lcom/tencent/mna/base/f/r;->a()I

    move-result v0

    iput v0, v1, Lcom/tencent/mna/b/e/a$a;->e:I

    .line 90
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/tencent/mna/b/e/a;->a(Lcom/tencent/mna/b/e/a$a;)V

    .line 95
    :goto_2
    return-object v1

    .line 54
    :cond_5
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->c(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 56
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->p:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->f:I

    .line 57
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->l:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->g:I

    .line 59
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->r:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->h:I

    .line 60
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->n:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->i:I

    .line 61
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->q:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->j:I

    .line 62
    iget-wide v2, v2, Lcom/tencent/mna/base/f/j$a;->m:J

    long-to-int v2, v2

    iput v2, v1, Lcom/tencent/mna/b/e/a$a;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkQueryInfo exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_6
    :try_start_1
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->e(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->x:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->f:I

    .line 66
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->t:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->g:I

    .line 68
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->z:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->h:I

    .line 69
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->v:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->i:I

    .line 70
    iget-wide v4, v2, Lcom/tencent/mna/base/f/j$a;->y:J

    long-to-int v3, v4

    iput v3, v1, Lcom/tencent/mna/b/e/a$a;->j:I

    .line 71
    iget-wide v2, v2, Lcom/tencent/mna/base/f/j$a;->u:J

    long-to-int v2, v2

    iput v2, v1, Lcom/tencent/mna/b/e/a$a;->k:I

    goto/16 :goto_0

    .line 84
    :cond_7
    invoke-static {v0}, Lcom/tencent/mna/base/f/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-static {p0}, Lcom/tencent/mna/base/f/i;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mna/b/e/a$a;->a:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/tencent/mna/base/f/i;->a()I

    move-result v0

    iput v0, v1, Lcom/tencent/mna/b/e/a$a;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(Lcom/tencent/mna/b/e/a$a;)V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/tencent/mna/b/e/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/mna/b/e/a$1;-><init>(Lcom/tencent/mna/b/e/a$a;)V

    invoke-static {v0}, Lcom/tencent/mna/a;->a(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method
