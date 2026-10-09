.class public Lcom/tencent/mna/b/e/c;
.super Ljava/lang/Object;
.source "RouterQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/b/e/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;IIDLjava/lang/String;)Lcom/tencent/mna/b/e/c$a;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 12
    new-instance v3, Lcom/tencent/mna/b/e/c$a;

    invoke-direct {v3}, Lcom/tencent/mna/b/e/c$a;-><init>()V

    .line 14
    :try_start_0
    iput-object p1, v3, Lcom/tencent/mna/b/e/c$a;->a:Ljava/lang/String;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/tencent/mna/base/f/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move v1, v2

    move v0, v2

    .line 18
    :goto_0
    if-ge v1, p2, :cond_2

    .line 19
    const/4 v2, 0x1

    invoke-static {v5, v2}, Lcom/tencent/mna/base/f/o;->a(Ljava/lang/String;I)I

    move-result v2

    .line 20
    if-le v2, p3, :cond_0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_1

    .line 25
    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mna/b/e/c$a;->d:Ljava/lang/String;

    .line 31
    :cond_3
    invoke-static {p0}, Lcom/tencent/mna/base/f/r;->a(Landroid/content/Context;)I

    move-result v2

    .line 32
    if-lez p2, :cond_5

    int-to-double v0, v0

    int-to-double v4, p2

    div-double/2addr v0, v4

    .line 33
    :goto_1
    const-string v4, "#"

    invoke-virtual {p6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 34
    if-eqz v4, :cond_4

    array-length v5, v4

    if-lt v5, v7, :cond_4

    if-lez v2, :cond_4

    .line 35
    iput v2, v3, Lcom/tencent/mna/b/e/c$a;->e:I

    .line 36
    if-lez v2, :cond_6

    if-gt v2, v6, :cond_6

    .line 37
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput-object v0, v3, Lcom/tencent/mna/b/e/c$a;->c:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput v0, v3, Lcom/tencent/mna/b/e/c$a;->b:I

    .line 50
    :cond_4
    :goto_2
    return-object v3

    .line 32
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 39
    :cond_6
    if-ne v2, v7, :cond_7

    cmpl-double v5, v0, p4

    if-lez v5, :cond_7

    .line 40
    const/4 v0, 0x1

    aget-object v0, v4, v0

    iput-object v0, v3, Lcom/tencent/mna/b/e/c$a;->c:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput v0, v3, Lcom/tencent/mna/b/e/c$a;->b:I

    goto :goto_2

    .line 47
    :catch_0
    move-exception v0

    goto :goto_2

    .line 42
    :cond_7
    const/4 v5, 0x4

    if-ne v2, v5, :cond_4

    cmpl-double v0, v0, p4

    if-lez v0, :cond_4

    .line 43
    const/4 v0, 0x2

    aget-object v0, v4, v0

    iput-object v0, v3, Lcom/tencent/mna/b/e/c$a;->c:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput v0, v3, Lcom/tencent/mna/b/e/c$a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
