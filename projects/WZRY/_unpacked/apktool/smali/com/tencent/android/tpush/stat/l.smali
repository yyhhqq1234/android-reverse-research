.class final Lcom/tencent/android/tpush/stat/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 776
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/android/tpush/stat/l;->b:Landroid/content/Context;

    iput-wide p3, p0, Lcom/tencent/android/tpush/stat/l;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 780
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->h()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->g()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 782
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of page events exceeds the maximum value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/android/tpush/stat/c;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->e(Ljava/lang/Object;)V

    .line 784
    monitor-exit v1

    .line 798
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 787
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate PageID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onResume() repeated?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/stat/a/f;->f(Ljava/lang/Object;)V

    .line 789
    monitor-exit v1

    goto :goto_0

    .line 792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 791
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->h()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 793
    :try_start_4
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/l;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/l;->c:J

    invoke-static {v0, v2, v3}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;J)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
