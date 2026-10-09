.class Lcom/tencent/kgvmp/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/kgvmp/PerformanceAdjuster;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/tencent/kgvmp/PerformanceAdjuster;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/kgvmp/d;->a:Lcom/tencent/kgvmp/PerformanceAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/kgvmp/PerformanceAdjuster;Lcom/tencent/kgvmp/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/kgvmp/d;-><init>(Lcom/tencent/kgvmp/PerformanceAdjuster;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d;->b:Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/kgvmp/d;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MatchReportThread: startReportThread"

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/kgvmp/d;->b:Z

    :goto_0
    invoke-static {}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MatchReportThread: cycle."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-boolean v0, p0, Lcom/tencent/kgvmp/d;->b:Z

    if-eqz v0, :cond_1

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/kgvmp/d;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MatchReportThread: suspend success."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/kgvmp/d;->a:Lcom/tencent/kgvmp/PerformanceAdjuster;

    sget-object v1, Lcom/tencent/kgvmp/a/d;->FPS:Lcom/tencent/kgvmp/a/d;

    invoke-virtual {v1}, Lcom/tencent/kgvmp/a/d;->getKey()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/kgvmp/PerformanceAdjuster;->updateGameInfo(I[F)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/kgvmp/PerformanceAdjuster;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MatchReportThread run: exception."

    invoke-static {v0, v1}, Lcom/tencent/kgvmp/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/tencent/kgvmp/d;->b:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method
