.class Lcom/tencent/android/tpush/horse/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/horse/g;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/horse/g;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "XGHorse"

    const-string v1, "Action ->  createOptimalSocketChannel run"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/horse/q;->i()Lcom/tencent/android/tpush/horse/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/q;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/android/tpush/horse/f;->i()Lcom/tencent/android/tpush/horse/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/f;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 102
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getOptStrategyList(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/android/tpush/horse/data/OptStrategyList;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;->e()Lcom/tencent/android/tpush/horse/data/StrategyItem;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v3

    if-eq v3, v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/data/OptStrategyList;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/android/tpush/horse/e;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :goto_0
    return-void

    .line 121
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;J)J

    .line 122
    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->d()I

    move-result v0

    if-nez v0, :cond_5

    .line 123
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_3

    .line 124
    const-string v0, "XGHorse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using the optStrategyItem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;Z)Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->a(I)V

    .line 129
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lcom/tencent/android/tpush/horse/q;->i()Lcom/tencent/android/tpush/horse/q;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v3}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/horse/q;->a(Lcom/tencent/android/tpush/horse/b;)V

    .line 131
    invoke-static {}, Lcom/tencent/android/tpush/horse/q;->i()Lcom/tencent/android/tpush/horse/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/android/tpush/horse/q;->a(Ljava/util/List;)V

    .line 132
    invoke-static {}, Lcom/tencent/android/tpush/horse/q;->i()Lcom/tencent/android/tpush/horse/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/q;->g()V
    :try_end_3
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :cond_4
    :goto_1
    :try_start_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 135
    :cond_5
    :try_start_5
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_6

    .line 136
    const-string v0, "XGHorse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using Http chanel http:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/android/tpush/horse/data/StrategyItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_6
    new-instance v0, Lcom/tencent/android/tpush/horse/n;

    invoke-direct {v0}, Lcom/tencent/android/tpush/horse/n;-><init>()V

    .line 141
    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/horse/n;->a(Lcom/tencent/android/tpush/horse/data/StrategyItem;)V

    .line 142
    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/n;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v3}, Lcom/tencent/android/tpush/horse/g;->b(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/k;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v3}, Lcom/tencent/android/tpush/horse/g;->b(Lcom/tencent/android/tpush/horse/g;)Lcom/tencent/android/tpush/horse/k;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/n;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/tencent/android/tpush/horse/k;->a(Ljava/nio/channels/SocketChannel;Lcom/tencent/android/tpush/horse/data/StrategyItem;)V
    :try_end_5
    .catch Lcom/tencent/android/tpush/service/channel/exception/NullReturnException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/tencent/android/tpush/service/channel/exception/HorseIgnoreException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    :try_start_6
    monitor-exit p0

    goto/16 :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string v2, "XGHorse"

    const-string v3, "createOptimalSocketChannel error"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/horse/g;->a(Lcom/tencent/android/tpush/horse/g;Ljava/lang/String;)V

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    const-string v1, "XGHorse"

    const-string v2, "createOptimalSocketChannel error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/g;->b()V

    goto :goto_1

    .line 159
    :catch_2
    move-exception v0

    .line 160
    const-string v1, "XGHorse"

    const-string v2, "createOptimalSocketChannel error"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/android/tpush/horse/h;->a:Lcom/tencent/android/tpush/horse/g;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/horse/g;->b()V

    goto :goto_1

    .line 166
    :cond_7
    const-string v0, "XGHorse"

    const-string v1, ">> horse task running"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method
