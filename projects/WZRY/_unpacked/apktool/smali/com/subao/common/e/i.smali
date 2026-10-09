.class public Lcom/subao/common/e/i;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/e/i",
            "<TK;TV;>.a;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    .line 36
    iput-wide p1, p0, Lcom/subao/common/e/i;->a:J

    .line 37
    return-void
.end method

.method private static a()J
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/i$a;

    iget-object v0, v0, Lcom/subao/common/e/i$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 105
    :goto_1
    return v0

    .line 100
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 52
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/subao/common/e/i;->b(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 53
    if-gez v2, :cond_0

    move-object v0, v1

    .line 61
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/i$a;

    .line 57
    invoke-static {}, Lcom/subao/common/e/i;->a()J

    move-result-wide v4

    invoke-static {v0}, Lcom/subao/common/e/i$a;->a(Lcom/subao/common/e/i$a;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 58
    iget-object v0, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, v0, Lcom/subao/common/e/i$a;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    monitor-enter p0

    if-nez p2, :cond_1

    .line 73
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subao/common/e/i;->b(Ljava/lang/Object;)I

    move-result v1

    .line 74
    if-gez v1, :cond_2

    .line 75
    if-eqz p2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_1
    new-instance v0, Lcom/subao/common/e/i$a;

    invoke-static {}, Lcom/subao/common/e/i;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/subao/common/e/i;->a:J

    add-long/2addr v4, v2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/e/i$a;-><init>(Lcom/subao/common/e/i;Ljava/lang/Object;Ljava/lang/Object;JLcom/subao/common/e/i$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_2
    if-nez p2, :cond_3

    .line 80
    :try_start_2
    iget-object v0, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/subao/common/e/i;->b:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
