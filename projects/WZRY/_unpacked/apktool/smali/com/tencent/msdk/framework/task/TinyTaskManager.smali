.class public Lcom/tencent/msdk/framework/task/TinyTaskManager;
.super Ljava/lang/Object;
.source "TinyTaskManager.java"


# static fields
.field private static volatile instance:Lcom/tencent/msdk/framework/task/TinyTaskManager;


# instance fields
.field private needTimer:Z

.field private period:I

.field private started:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->period:I

    .line 16
    iput-boolean v1, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->started:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->timer:Ljava/util/Timer;

    .line 18
    iput-boolean v1, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->needTimer:Z

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/framework/task/TinyTaskManager;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->instance:Lcom/tencent/msdk/framework/task/TinyTaskManager;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/tencent/msdk/framework/task/TinyTaskManager;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->instance:Lcom/tencent/msdk/framework/task/TinyTaskManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/tencent/msdk/framework/task/TinyTaskManager;

    invoke-direct {v0}, Lcom/tencent/msdk/framework/task/TinyTaskManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->instance:Lcom/tencent/msdk/framework/task/TinyTaskManager;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->instance:Lcom/tencent/msdk/framework/task/TinyTaskManager;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static registerTimer(I)V
    .locals 2
    .param p0, "period"    # I

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register TinyTaskManager, period is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "second"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->getInstance()Lcom/tencent/msdk/framework/task/TinyTaskManager;

    move-result-object v0

    mul-int/lit16 v1, p0, 0x3e8

    iput v1, v0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->period:I

    .line 36
    return-void
.end method

.method public static native runNativeTinyTask()V
.end method

.method private startTask()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->needTimer:Z

    .line 78
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->startTimer()V

    .line 79
    return-void
.end method

.method private stopTask()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->needTimer:Z

    .line 84
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/task/TinyTaskManager;->stopTimer()V

    .line 85
    return-void
.end method


# virtual methods
.method public startTimer()V
    .locals 7

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->needTimer:Z

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->period:I

    if-nez v0, :cond_2

    .line 43
    const-string v0, "TinyTaskManager has not be register."

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->started:Z

    if-nez v0, :cond_0

    .line 49
    const-string v0, "start TinyTaskManager"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 51
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->timer:Ljava/util/Timer;

    .line 53
    iget-object v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/msdk/framework/task/TinyTaskManager$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/framework/task/TinyTaskManager$1;-><init>(Lcom/tencent/msdk/framework/task/TinyTaskManager;)V

    iget v2, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->period:I

    int-to-long v2, v2

    iget v4, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->period:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->started:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v6

    .line 62
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->started:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 68
    const-string v0, "stop TinyTaskManager"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->timer:Ljava/util/Timer;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/framework/task/TinyTaskManager;->started:Z

    .line 73
    :cond_0
    return-void
.end method
