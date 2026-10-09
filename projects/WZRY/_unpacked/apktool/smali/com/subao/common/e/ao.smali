.class public Lcom/subao/common/e/ao;
.super Ljava/lang/Object;
.source "SupportGameList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/ao$b;,
        Lcom/subao/common/e/ao$c;,
        Lcom/subao/common/e/ao$d;,
        Lcom/subao/common/e/ao$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/subao/common/e/an;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/an;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/subao/common/e/ao;->a:Ljava/util/List;

    .line 29
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Lcom/subao/common/e/ao;
    .locals 15
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/w$a;",
            ">;)",
            "Lcom/subao/common/e/ao;"
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const-string v0, "SubaoData"

    const-string v1, "List<AccelGame> is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 47
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_2
    const-string v0, "SubaoData"

    const-string v1, "List<InstalledApp.Info> is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_3
    new-instance v12, Lcom/subao/common/e/c;

    invoke-direct {v12, p0}, Lcom/subao/common/e/c;-><init>(Ljava/util/List;)V

    .line 53
    new-instance v13, Ljava/util/ArrayList;

    const/16 v0, 0x10

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/subao/common/e/w$a;

    .line 55
    invoke-virtual {v1}, Lcom/subao/common/e/w$a;->c()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v1}, Lcom/subao/common/e/w$a;->a()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v12, v2, v3}, Lcom/subao/common/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/subao/common/e/b;

    move-result-object v11

    .line 58
    if-eqz v11, :cond_4

    .line 59
    new-instance v0, Lcom/subao/common/e/an;

    .line 60
    invoke-virtual {v1}, Lcom/subao/common/e/w$a;->b()I

    move-result v1

    .line 61
    invoke-virtual {v11}, Lcom/subao/common/e/b;->e()I

    move-result v4

    .line 62
    invoke-virtual {v11}, Lcom/subao/common/e/b;->d()Lcom/subao/common/j/l;

    move-result-object v5

    .line 63
    invoke-virtual {v11}, Lcom/subao/common/e/b;->a()Z

    move-result v6

    .line 64
    invoke-virtual {v11}, Lcom/subao/common/e/b;->c()Z

    move-result v7

    .line 65
    invoke-virtual {v11}, Lcom/subao/common/e/b;->f()Ljava/lang/Iterable;

    move-result-object v8

    .line 66
    invoke-virtual {v11}, Lcom/subao/common/e/b;->g()Ljava/lang/Iterable;

    move-result-object v9

    .line 67
    invoke-virtual {v11}, Lcom/subao/common/e/b;->i()Ljava/lang/Iterable;

    move-result-object v10

    .line 68
    invoke-virtual {v11}, Lcom/subao/common/e/b;->h()Ljava/lang/Iterable;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/subao/common/e/an;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/subao/common/j/l;ZZLjava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 70
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    const-string v0, "SubaoData"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "SupportGameList.build(%d, %d) return empty"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 77
    :cond_6
    new-instance v0, Lcom/subao/common/e/ao;

    invoke-direct {v0, v13}, Lcom/subao/common/e/ao;-><init>(Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/subao/common/e/ao;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subao/common/e/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/subao/common/e/ao$a;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/subao/common/e/ao$a",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/subao/common/e/ao;->a()I

    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    iget-object v0, p0, Lcom/subao/common/e/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/an;

    .line 119
    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/subao/common/e/an;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    :cond_2
    invoke-interface {p1, v0}, Lcom/subao/common/e/ao$a;->a(Lcom/subao/common/e/an;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 123
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/subao/common/e/an;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v2, Lcom/subao/common/e/ao$d;

    iget-object v0, p0, Lcom/subao/common/e/ao;->a:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/subao/common/e/ao$d;-><init>(Ljava/util/Iterator;Lcom/subao/common/e/ao$1;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/subao/common/e/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
