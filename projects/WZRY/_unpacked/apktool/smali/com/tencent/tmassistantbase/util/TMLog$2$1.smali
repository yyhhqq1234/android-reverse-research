.class Lcom/tencent/tmassistantbase/util/TMLog$2$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantbase/util/TMLog$2;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantbase/util/TMLog$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tencent/tmassistantbase/util/TMLog$2$1;->a:Lcom/tencent/tmassistantbase/util/TMLog$2;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 459
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->isWriteLogToFile()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    :try_start_1
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    :goto_0
    :try_start_2
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x3a98

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 468
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sput v1, Lcom/tencent/tmassistantbase/util/TMLog;->myProcessId:I

    .line 469
    const-string v1, "TMLog"

    const-string v2, "TMLog init start "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Lcom/tencent/tmassistantbase/util/TMLog;->b()V

    .line 471
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->d:Ljava/lang/Thread;

    const-string v2, "logWriteThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 472
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->d:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 473
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 488
    :cond_0
    :goto_1
    return-void

    .line 464
    :catch_0
    move-exception v1

    .line 465
    const-string/jumbo v1, "unknow"

    sput-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 474
    :catch_1
    move-exception v1

    .line 475
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->isInitLogFileDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 476
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 478
    const-string v2, "TMLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TMLog init post retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times, interval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 480
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitHandler:Landroid/os/Handler;

    sget-object v3, Lcom/tencent/tmassistantbase/util/TMLog;->acutualInitRunnable:Ljava/lang/Runnable;

    sget-object v4, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    aget v4, v4, v1

    const v5, 0xea60

    mul-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 481
    add-int/lit8 v1, v1, 0x1

    .line 482
    sget-object v2, Lcom/tencent/tmassistantbase/util/TMLog;->INTERVAL_RETRY_INIT:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 485
    :goto_2
    sget-object v1, Lcom/tencent/tmassistantbase/util/TMLog;->retryInitTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2
.end method
