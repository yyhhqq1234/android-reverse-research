.class public Lcom/tencent/component/utils/clock/SimpleClock;
.super Lcom/tencent/component/utils/clock/Clock;
.source "SimpleClock.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation


# static fields
.field private static final CLOCK_MAX_COUNT:I = 0x20

.field private static final CLOCK_SERVICE_NAME:Ljava/lang/String; = "base.clock.service"

.field private static clockHandler:Landroid/os/Handler;

.field private static clockThread:Landroid/os/HandlerThread;

.field private static clocks:[Lcom/tencent/component/utils/clock/SimpleClock;


# instance fields
.field private volatile canceled:Z


# direct methods
.method protected constructor <init>(IJLcom/tencent/component/utils/clock/OnClockListener;)V
    .locals 0
    .param p1, "clockId"    # I
    .param p2, "interval"    # J
    .param p4, "listener"    # Lcom/tencent/component/utils/clock/OnClockListener;

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/component/utils/clock/Clock;-><init>(IJLcom/tencent/component/utils/clock/OnClockListener;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 27
    invoke-static {p0}, Lcom/tencent/component/utils/clock/SimpleClock;->handleClockMessage(I)V

    return-void
.end method

.method public static cancel(Lcom/tencent/component/utils/clock/SimpleClock;)V
    .locals 5
    .param p0, "clock"    # Lcom/tencent/component/utils/clock/SimpleClock;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 68
    if-nez p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/utils/clock/SimpleClock;->setCanceled()V

    .line 74
    invoke-virtual {p0}, Lcom/tencent/component/utils/clock/SimpleClock;->getClockId()I

    move-result v0

    .line 76
    .local v0, "clockId":I
    if-ltz v0, :cond_0

    sget-object v2, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 79
    const-class v3, Lcom/tencent/component/utils/clock/SimpleClock;

    monitor-enter v3

    .line 80
    :try_start_0
    sget-object v2, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    aget-object v1, v2, v0

    .line 82
    .local v1, "theClock":Lcom/tencent/component/utils/clock/SimpleClock;
    if-eqz v1, :cond_2

    if-ne v1, p0, :cond_2

    .line 83
    sget-object v2, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 84
    sget-object v2, Lcom/tencent/component/utils/clock/SimpleClock;->clockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "theClock":Lcom/tencent/component/utils/clock/SimpleClock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static handleClockMessage(I)V
    .locals 6
    .param p0, "clockId"    # I

    .prologue
    .line 117
    if-ltz p0, :cond_0

    sget-object v3, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    array-length v3, v3

    if-lt p0, v3, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v3, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    aget-object v0, v3, p0

    .line 123
    .local v0, "clock":Lcom/tencent/component/utils/clock/SimpleClock;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/tencent/component/utils/clock/SimpleClock;->getListener()Lcom/tencent/component/utils/clock/OnClockListener;

    move-result-object v1

    .line 126
    .local v1, "listener":Lcom/tencent/component/utils/clock/OnClockListener;
    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v1, v0}, Lcom/tencent/component/utils/clock/OnClockListener;->onClockArrived(Lcom/tencent/component/utils/clock/Clock;)Z

    move-result v2

    .line 129
    .local v2, "proceed":Z
    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v0}, Lcom/tencent/component/utils/clock/SimpleClock;->getInterval()J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/tencent/component/utils/clock/SimpleClock;->prepareNextInterval(IJ)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v0}, Lcom/tencent/component/utils/clock/SimpleClock;->cancel(Lcom/tencent/component/utils/clock/SimpleClock;)V

    goto :goto_0
.end method

.method private static initClockService()V
    .locals 3

    .prologue
    .line 90
    const-class v1, Lcom/tencent/component/utils/clock/SimpleClock;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    if-nez v0, :cond_0

    .line 92
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/tencent/component/utils/clock/SimpleClock;

    sput-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    .line 95
    :cond_0
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "base.clock.service"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    .line 99
    :cond_1
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    :cond_2
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Lcom/tencent/component/utils/clock/SimpleClock$1;

    sget-object v2, Lcom/tencent/component/utils/clock/SimpleClock;->clockThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/component/utils/clock/SimpleClock$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockHandler:Landroid/os/Handler;

    .line 113
    :cond_3
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static prepareNextInterval(IJ)V
    .locals 3
    .param p0, "clockId"    # I
    .param p1, "delay"    # J

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 140
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 141
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    sget-object v0, Lcom/tencent/component/utils/clock/SimpleClock;->clockHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static set(JJLcom/tencent/component/utils/clock/OnClockListener;)Lcom/tencent/component/utils/clock/SimpleClock;
    .locals 6
    .param p0, "interval"    # J
    .param p2, "delay"    # J
    .param p4, "listener"    # Lcom/tencent/component/utils/clock/OnClockListener;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 38
    const-class v4, Lcom/tencent/component/utils/clock/SimpleClock;

    monitor-enter v4

    .line 39
    :try_start_0
    invoke-static {}, Lcom/tencent/component/utils/clock/SimpleClock;->initClockService()V

    .line 41
    const/4 v2, -0x1

    .line 44
    .local v2, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 45
    sget-object v3, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    .line 46
    move v2, v1

    .line 52
    :cond_0
    if-gez v2, :cond_2

    .line 53
    const/4 v0, 0x0

    monitor-exit v4

    .line 62
    :goto_1
    return-object v0

    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_2
    new-instance v0, Lcom/tencent/component/utils/clock/SimpleClock;

    invoke-direct {v0, v2, p0, p1, p4}, Lcom/tencent/component/utils/clock/SimpleClock;-><init>(IJLcom/tencent/component/utils/clock/OnClockListener;)V

    .line 58
    .local v0, "clock":Lcom/tencent/component/utils/clock/SimpleClock;
    sget-object v3, Lcom/tencent/component/utils/clock/SimpleClock;->clocks:[Lcom/tencent/component/utils/clock/SimpleClock;

    aput-object v0, v3, v2

    .line 60
    invoke-static {v2, p2, p3}, Lcom/tencent/component/utils/clock/SimpleClock;->prepareNextInterval(IJ)V

    .line 62
    monitor-exit v4

    goto :goto_1

    .line 63
    .end local v0    # "clock":Lcom/tencent/component/utils/clock/SimpleClock;
    .end local v1    # "i":I
    .end local v2    # "id":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public cancel()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 155
    invoke-static {p0}, Lcom/tencent/component/utils/clock/SimpleClock;->cancel(Lcom/tencent/component/utils/clock/SimpleClock;)V

    .line 156
    return-void
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/component/utils/clock/SimpleClock;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCanceled()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/component/utils/clock/SimpleClock;->canceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
