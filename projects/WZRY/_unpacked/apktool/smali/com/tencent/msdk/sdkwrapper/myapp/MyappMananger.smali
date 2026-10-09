.class public Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;
.super Ljava/lang/Object;
.source "MyappMananger.java"


# static fields
.field private static final YYB_CHANNELID:Ljava/lang/String; = "992183"

.field private static instance:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;


# instance fields
.field private isinit:Z

.field private mITMSelfUpdateListener:Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

.field private mYYBDownloadListener:Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->isinit:Z

    .line 124
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$2;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$2;-><init>(Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;)V

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->mYYBDownloadListener:Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    .line 145
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$3;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$3;-><init>(Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;)V

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->mITMSelfUpdateListener:Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    .line 37
    invoke-direct {p0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->initMyapp()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->instance:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->instance:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    invoke-direct {v0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;-><init>()V

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->instance:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->instance:Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->initMyapp()V

    .line 44
    const-string v1, "init main Thread"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .local v0, "mainhandler":Landroid/os/Handler;
    new-instance v1, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$1;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger$1;-><init>(Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    const-string v1, "init not main Thread"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initMyapp()V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    .line 62
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 63
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    move-result-object v0

    const-string v2, "992183"

    iget-object v3, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->mITMSelfUpdateListener:Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    iget-object v4, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->mYYBDownloadListener:Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;Landroid/os/Bundle;)I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->isinit:Z

    .line 65
    const-string v0, "init success"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "context is null"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkNeedUpdate()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->isinit:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->checkSelfUpdate()V

    .line 77
    const-string v0, "checkNeedUpdate"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "myapp not init"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkYYBInstalled()I
    .locals 3

    .prologue
    .line 85
    const/4 v0, -0x1

    .line 86
    .local v0, "installed":I
    iget-boolean v1, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->isinit:Z

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->checkYYBInstallState()I

    move-result v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    const-string v1, "myapp not init"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->isinit:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->destroy()V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "myapp not init"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->isinit:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->onActivityResume()V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "myapp not init"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSaveUpdate(Z)V
    .locals 2
    .param p1, "isUseYYB"    # Z

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/tencent/msdk/sdkwrapper/myapp/MyappMananger;->isinit:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSelfUpdate(Z)I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUseYYB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "myapp not init"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method
