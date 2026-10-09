.class public Lcom/tencent/qqgamemi/mgc/core/MGCContext;
.super Ljava/lang/Object;
.source "MGCContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MGCContext"

.field private static sTnstance:Lcom/tencent/qqgamemi/mgc/core/MGCContext;


# instance fields
.field private mConnectionManager:Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

.field private mContext:Landroid/content/Context;

.field private mDebugConfig:Lcom/tencent/qqgamemi/mgc/core/DebugConfig;

.field private mInitializeStepTable:Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;

.field private volatile sIsInit:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sIsInit:Ljava/lang/Boolean;

    .line 31
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/tencent/qqgamemi/mgc/core/MGCContext;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    invoke-direct {v0, p0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sTnstance:Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    .line 27
    sget-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sTnstance:Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    return-object v0
.end method

.method private createInstances()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mConnectionManager:Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    .line 73
    new-instance v0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;

    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mDebugConfig:Lcom/tencent/qqgamemi/mgc/core/DebugConfig;

    .line 74
    return-void
.end method

.method private ensureInit()V
    .locals 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sIsInit:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_0
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sIsInit:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 55
    const-string v2, "MGCContext"

    const-string v3, "haven\'t init in the application onCreate"

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/component/utils/ProcessUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    const-string v2, "MGCContext"

    const-string/jumbo v3, "\u5f53\u524d\u8fdb\u7a0b\u4e0d\u662f\u4e3b\u8fdb\u7a0b"

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 62
    .local v1, "properties":Ljava/util/Properties;
    iget-object v2, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/component/utils/ProcessUtils;->myProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "processName":Ljava/lang/String;
    const-string v2, "processName"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->init()V

    .line 67
    .end local v0    # "processName":Ljava/lang/String;
    .end local v1    # "properties":Ljava/util/Properties;
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getConnectionManager()Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sTnstance:Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->ensureInit()V

    .line 87
    sget-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sTnstance:Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    iget-object v0, v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mConnectionManager:Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    return-object v0
.end method

.method public static getDebugConfig()Lcom/tencent/qqgamemi/mgc/core/DebugConfig;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sTnstance:Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->ensureInit()V

    .line 93
    sget-object v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sTnstance:Lcom/tencent/qqgamemi/mgc/core/MGCContext;

    iget-object v0, v0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mDebugConfig:Lcom/tencent/qqgamemi/mgc/core/DebugConfig;

    return-object v0
.end method

.method private initStage1()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mInitializeStepTable:Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;

    .line 78
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mInitializeStepTable:Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;

    new-instance v1, Lcom/tencent/qqgamemi/mgc/core/InitialDetail$ConnectManagerInit;

    invoke-direct {v1}, Lcom/tencent/qqgamemi/mgc/core/InitialDetail$ConnectManagerInit;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mConnectionManager:Lcom/tencent/qqgamemi/mgc/connection/ConnectionManager;

    invoke-virtual {v1, v2}, Lcom/tencent/qqgamemi/mgc/core/InitialDetail$ConnectManagerInit;->setObject(Ljava/lang/Object;)Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->addStep(Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable$IntializeStep;)V

    .line 79
    return-void
.end method

.method private runInit()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mInitializeStepTable:Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;

    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/mgc/step/InitializeStepTable;->runAll(Landroid/content/Context;)V

    .line 83
    return-void
.end method


# virtual methods
.method init()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->createInstances()V

    .line 37
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->initStage1()V

    .line 39
    monitor-enter p0

    .line 40
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->sIsInit:Ljava/lang/Boolean;

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/core/MGCContext;->runInit()V

    .line 44
    return-void

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
