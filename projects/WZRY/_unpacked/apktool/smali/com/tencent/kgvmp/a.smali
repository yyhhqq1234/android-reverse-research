.class Lcom/tencent/kgvmp/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/kgvmp/PerformanceAdjuster;


# direct methods
.method constructor <init>(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    iput-object p2, p0, Lcom/tencent/kgvmp/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tencent/kgvmp/report/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Perf_init: not found beacon."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/tencent/kgvmp/report/j;->b()V

    iget-object v0, p0, Lcom/tencent/kgvmp/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    iget-object v1, p0, Lcom/tencent/kgvmp/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    invoke-static {v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a(Lcom/tencent/kgvmp/PerformanceAdjuster;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    iget-object v1, p0, Lcom/tencent/kgvmp/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->b(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    invoke-static {v0}, Lcom/tencent/kgvmp/PerformanceAdjuster;->b(Lcom/tencent/kgvmp/PerformanceAdjuster;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    iget-object v1, p0, Lcom/tencent/kgvmp/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->c(Lcom/tencent/kgvmp/PerformanceAdjuster;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v0, Lcom/tencent/kgvmp/c/d;

    invoke-direct {v0}, Lcom/tencent/kgvmp/c/d;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    sget-object v1, Lcom/tencent/kgvmp/report/f;->CONTEXT_IS_NULL:Lcom/tencent/kgvmp/report/f;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a(Lcom/tencent/kgvmp/PerformanceAdjuster;Lcom/tencent/kgvmp/report/f;)Lcom/tencent/kgvmp/report/f;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Perf_init: init exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/kgvmp/a;->b:Lcom/tencent/kgvmp/PerformanceAdjuster;

    sget-object v1, Lcom/tencent/kgvmp/report/f;->REALLY_INIT_EXCEPTION:Lcom/tencent/kgvmp/report/f;

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a(Lcom/tencent/kgvmp/PerformanceAdjuster;Lcom/tencent/kgvmp/report/f;)Lcom/tencent/kgvmp/report/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Lcom/tencent/kgvmp/c/d;

    invoke-direct {v0}, Lcom/tencent/kgvmp/c/d;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/tencent/kgvmp/c/d;

    invoke-direct {v1}, Lcom/tencent/kgvmp/c/d;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    throw v0
.end method
