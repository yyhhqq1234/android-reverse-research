.class public Lcom/tencent/msdk/framework/task/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static volatile instance:Lcom/tencent/msdk/framework/task/TaskManager;


# instance fields
.field private period:I

.field private started:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->period:I

    .line 16
    iput-boolean v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->started:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->timer:Ljava/util/Timer;

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/framework/task/TaskManager;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/msdk/framework/task/TaskManager;->instance:Lcom/tencent/msdk/framework/task/TaskManager;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/tencent/msdk/framework/task/TaskManager;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/framework/task/TaskManager;->instance:Lcom/tencent/msdk/framework/task/TaskManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tencent/msdk/framework/task/TaskManager;

    invoke-direct {v0}, Lcom/tencent/msdk/framework/task/TaskManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/framework/task/TaskManager;->instance:Lcom/tencent/msdk/framework/task/TaskManager;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/tencent/msdk/framework/task/TaskManager;->instance:Lcom/tencent/msdk/framework/task/TaskManager;

    return-object v0

    .line 27
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
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register TaskManager, period is "

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

    .line 34
    invoke-static {}, Lcom/tencent/msdk/framework/task/TaskManager;->getInstance()Lcom/tencent/msdk/framework/task/TaskManager;

    move-result-object v0

    mul-int/lit16 v1, p0, 0x3e8

    iput v1, v0, Lcom/tencent/msdk/framework/task/TaskManager;->period:I

    .line 35
    invoke-static {}, Lcom/tencent/msdk/framework/task/TaskManager;->getInstance()Lcom/tencent/msdk/framework/task/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/task/TaskManager;->startTimer()V

    .line 36
    return-void
.end method

.method public static native runNativeTask()V
.end method


# virtual methods
.method public startTimer()V
    .locals 7

    .prologue
    .line 39
    iget v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->period:I

    if-nez v0, :cond_1

    .line 40
    const-string v0, "TaskManager has not be register."

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->started:Z

    if-nez v0, :cond_0

    .line 46
    const-string v0, "start TaskManager"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 48
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->timer:Ljava/util/Timer;

    .line 50
    iget-object v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/msdk/framework/task/TaskManager$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/framework/task/TaskManager$1;-><init>(Lcom/tencent/msdk/framework/task/TaskManager;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/tencent/msdk/framework/task/TaskManager;->period:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->started:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v6

    .line 59
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->started:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    const-string v0, "stop TaskManager"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->timer:Ljava/util/Timer;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/framework/task/TaskManager;->started:Z

    .line 70
    :cond_0
    return-void
.end method
