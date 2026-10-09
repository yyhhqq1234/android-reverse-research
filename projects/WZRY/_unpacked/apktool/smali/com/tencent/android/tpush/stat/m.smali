.class final Lcom/tencent/android/tpush/stat/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;JJJ)V
    .locals 1

    .prologue
    .line 824
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/android/tpush/stat/m;->b:Landroid/content/Context;

    iput-wide p3, p0, Lcom/tencent/android/tpush/stat/m;->c:J

    iput-wide p5, p0, Lcom/tencent/android/tpush/stat/m;->d:J

    iput-wide p7, p0, Lcom/tencent/android/tpush/stat/m;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 830
    .line 831
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->h()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :try_start_1
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->h()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/m;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 833
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    if-eqz v0, :cond_5

    .line 835
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 836
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_0

    .line 837
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 839
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->j()Ljava/lang/String;

    move-result-object v2

    .line 840
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/tencent/android/tpush/stat/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 841
    const-string v2, "-"

    .line 844
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/stat/event/e;

    iget-object v1, p0, Lcom/tencent/android/tpush/stat/m;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/android/tpush/stat/m;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/android/tpush/stat/m;->b:Landroid/content/Context;

    iget-wide v6, p0, Lcom/tencent/android/tpush/stat/m;->c:J

    invoke-static {v4, v6, v7}, Lcom/tencent/android/tpush/stat/h;->b(Landroid/content/Context;J)I

    move-result v4

    iget-wide v6, p0, Lcom/tencent/android/tpush/stat/m;->c:J

    invoke-direct/range {v0 .. v7}, Lcom/tencent/android/tpush/stat/event/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;J)V

    .line 846
    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/m;->d:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    .line 847
    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/m;->d:J

    iput-wide v2, v0, Lcom/tencent/android/tpush/stat/event/e;->m:J

    .line 850
    :cond_2
    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/m;->e:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_3

    .line 851
    iget-wide v2, p0, Lcom/tencent/android/tpush/stat/m;->e:J

    iput-wide v2, v0, Lcom/tencent/android/tpush/stat/event/e;->m:J

    .line 853
    :cond_3
    iget-object v1, p0, Lcom/tencent/android/tpush/stat/m;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 854
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v1

    const-string v2, "Invalid invocation since previous onResume on diff page."

    invoke-virtual {v1, v2}, Lcom/tencent/android/tpush/stat/a/f;->c(Ljava/lang/Object;)V

    .line 856
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-static {v1}, Lcom/tencent/android/tpush/stat/h;->a(Ljava/util/List;)V

    .line 859
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/h;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 868
    :goto_0
    return-void

    .line 833
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/android/tpush/stat/a/f;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 861
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/tencent/android/tpush/stat/h;->f()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starttime for PageID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/stat/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found, lost onResume()?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/a/f;->f(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
