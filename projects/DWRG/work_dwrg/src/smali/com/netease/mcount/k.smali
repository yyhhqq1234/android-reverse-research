.class public Lcom/netease/mcount/k;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 7

    const-class v3, Lcom/netease/mcount/k;

    monitor-enter v3

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/netease/mcount/r;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    new-instance v4, Lcom/netease/mcount/e;

    invoke-direct {v4, p0}, Lcom/netease/mcount/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/netease/mcount/e;->c()Lcom/netease/mcount/g;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/netease/mcount/g;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {v4}, Lcom/netease/mcount/e;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, v5, Lcom/netease/mcount/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_0

    :try_start_3
    iget-object v6, v5, Lcom/netease/mcount/g;->a:Ljava/util/ArrayList;

    add-int/lit8 v0, v2, 0x64

    if-ge v0, v1, :cond_4

    add-int/lit8 v0, v2, 0x64

    :goto_2
    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v6, Lcom/netease/mcount/o;

    invoke-direct {v6, p0}, Lcom/netease/mcount/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/netease/mcount/o;->a(Ljava/util/List;)V

    invoke-virtual {v4, v0}, Lcom/netease/mcount/e;->a(Ljava/util/List;)V
    :try_end_3
    .catch Lcom/netease/mcount/p; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    add-int/lit8 v0, v2, 0x64

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/netease/mcount/r;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/netease/mcount/r;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public static declared-synchronized a(Landroid/os/Handler;Landroid/content/Context;Z)V
    .locals 2

    const-class v1, Lcom/netease/mcount/k;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/netease/mcount/l;

    invoke-direct {v0, p1, p2}, Lcom/netease/mcount/l;-><init>(Landroid/content/Context;Z)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/netease/mcount/e;

    invoke-direct {v0, p0}, Lcom/netease/mcount/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/mcount/e;->b()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/netease/mcount/f;)Z
    .locals 2

    const-class v1, Lcom/netease/mcount/k;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/netease/mcount/e;

    invoke-direct {v0, p0}, Lcom/netease/mcount/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/netease/mcount/e;->a(Lcom/netease/mcount/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/netease/mcount/r;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
