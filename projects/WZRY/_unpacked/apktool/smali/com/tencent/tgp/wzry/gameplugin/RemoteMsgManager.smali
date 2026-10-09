.class public Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
.super Ljava/lang/Object;
.source "RemoteMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;,
        Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;,
        Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;,
        Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    }
.end annotation


# static fields
.field private static final BIND_WAIT_TIME:J = 0x12cL

.field public static final MSG_ACTION:Ljava/lang/String; = "com.tencent.tgp.wzry.gameplugin.msg"

.field public static final QUERY_GAME_STATE:Ljava/lang/String; = "query_game_state"

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.tencent.tgp.wzry.gameplugin"

.field private static final TAG:Ljava/lang/String; = "MessageManger"

.field private static sInstance:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;


# instance fields
.field private mBindLock:Ljava/lang/Object;

.field private mBound:Z

.field private mClientPkg:Ljava/lang/String;

.field private mClientSupportVer:I

.field private mConfigMgr:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

.field private mConnection:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIRemoteService:Lcom/tencent/tgp/wzry/service/IRemoteService;

.field private mInited:Z

.field private mLock:Ljava/lang/Object;

.field private mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mModel:Ljava/lang/String;

.field private mMsgReceiver:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;

.field private mReceiverRegisted:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mConnection:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBindLock:Ljava/lang/Object;

    .line 119
    iput-object p1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;

    invoke-direct {v0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mMsgReceiver:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;

    .line 121
    new-instance v0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    invoke-direct {v0, p1}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mConfigMgr:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    .line 122
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mModel:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->initMethodMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mMethodMap:Ljava/util/HashMap;

    .line 125
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mConfigMgr:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    invoke-virtual {v0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getClientPkg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "com.tencent.gamehelper"

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mConfigMgr:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    invoke-virtual {v0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getClientVersion()I

    move-result v0

    iput v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientSupportVer:I

    .line 130
    const-string v0, "MessageManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->startEventDispatch()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Lcom/tencent/tgp/wzry/service/IRemoteService;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mIRemoteService:Lcom/tencent/tgp/wzry/service/IRemoteService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->ensureBind()V

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Lcom/tencent/tgp/wzry/service/IRemoteService;)Lcom/tencent/tgp/wzry/service/IRemoteService;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    .param p1, "x1"    # Lcom/tencent/tgp/wzry/service/IRemoteService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mIRemoteService:Lcom/tencent/tgp/wzry/service/IRemoteService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mConfigMgr:Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mMethodMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBound:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBindLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->sInstance:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mInited:Z

    return v0
.end method

.method static synthetic access$602(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mInited:Z

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->sdkInited()Z

    move-result v0

    return v0
.end method

.method private bindService(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.tencent.tgp.wzry.gameplugin"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v3, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mConnection:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 369
    .local v2, "suc":Z
    const-string v3, "MessageManger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binding to pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "suc":Z
    :goto_0
    iget-boolean v3, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBound:Z

    return v3

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "MessageManger"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ensureBind()V
    .locals 3

    .prologue
    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :try_start_1
    iget-boolean v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBound:Z

    if-eqz v1, :cond_0

    .line 350
    monitor-exit v2

    .line 359
    :goto_0
    return-void

    .line 352
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :try_start_2
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->bindService(Landroid/content/Context;)Z

    .line 354
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->registReceiver()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MessageManger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const-class v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->sInstance:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-direct {v0, p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->sInstance:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    .line 162
    sget-object v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->sInstance:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-direct {v0, p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->bindService(Landroid/content/Context;)Z

    .line 164
    :cond_0
    sget-object v0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->sInstance:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initMethodMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 449
    .local v1, "methodHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :try_start_0
    const-class v3, Lcom/tencent/tgp/wzry/service/IRemoteService;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 450
    .local v2, "methods":[Ljava/lang/reflect/Method;
    if-nez v2, :cond_1

    .line 458
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-object v1

    .line 453
    .restart local v2    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 454
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 456
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private produce(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)Z
    .locals 2
    .param p1, "gameEvent"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MethodCallTask;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized registReceiver()V
    .locals 4

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mReceiverRegisted:Z

    if-nez v1, :cond_0

    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tencent.tgp.wzry.gameplugin.msg"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mMsgReceiver:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mReceiverRegisted:Z

    .line 382
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v1, "MessageManger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registReceiver registedStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mReceiverRegisted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sdkInited()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v3, "MessageManger"

    const-string v4, "sdkInited start"

    invoke-static {v3, v4}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :try_start_0
    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    .line 176
    .local v1, "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    const-string v3, "sdkInited"

    iput-object v3, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    .line 177
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    .line 178
    invoke-direct {p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->produce(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)Z

    .line 179
    const-string v3, "MessageManger"

    const-string v4, "sdkInited end"

    invoke-static {v3, v4}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v2, 0x1

    .line 183
    .end local v1    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :goto_0
    return v2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "MessageManger"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startEventDispatch()V
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 444
    return-void
.end method

.method private declared-synchronized unRegistReceiver()V
    .locals 3

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mReceiverRegisted:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mMsgReceiver:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MsgReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mReceiverRegisted:Z

    .line 390
    :cond_0
    const-string v0, "MessageManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegistReceiver registedStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mReceiverRegisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public broadcastHeartbeat(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "state"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 286
    const-string v4, "MessageManger"

    const-string v5, "broadcastHeartbeat start"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_0
    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    .line 289
    .local v1, "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    const-string v4, "broadcastHeartbeat"

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    .line 290
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    .line 291
    invoke-direct {p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->produce(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)Z

    .line 292
    const-string v4, "MessageManger"

    const-string v5, "broadcastHeartbeat end"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :goto_0
    return v2

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MessageManger"

    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 296
    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBound:Z

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mConnection:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mBound:Z

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->unRegistReceiver()V

    .line 339
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 340
    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->sInstance:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "MessageManger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isPkgInstalled(Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 220
    .local v4, "start":J
    const/4 v1, 0x0

    .line 222
    .local v1, "installed":Z
    :try_start_0
    iget-object v6, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 224
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v7, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientSupportVer:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v6, v7, :cond_0

    move v1, v3

    .line 228
    :goto_0
    const-string v3, "MessageManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isinstall detect takes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    return v1

    .line 224
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "MessageManger"

    const-string v6, ""

    invoke-static {v3, v6, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    const-string v3, "MessageManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isinstall detect takes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    const-string v6, "MessageManger"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isinstall detect takes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public isPluginInstalled()Z
    .locals 10

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 140
    .local v2, "start":J
    const/4 v1, 0x0

    .line 142
    .local v1, "installed":Z
    :try_start_0
    iget-object v4, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->isPkgInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 146
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isinstall detect takes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    if-nez v1, :cond_0

    .line 149
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugin not installed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->mClientPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "MessageManger"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    const-string v4, "MessageManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isinstall detect takes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    const-string v5, "MessageManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isinstall detect takes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public notifyGameEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    const-string v4, "MessageManger"

    const-string v5, "notifyGameEvent start"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :try_start_0
    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    .line 317
    .local v1, "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    const-string v4, "notifyGameEvent"

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    .line 318
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    .line 319
    invoke-direct {p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->produce(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)Z

    .line 320
    const-string v4, "MessageManger"

    const-string v5, "notifyGameEvent end"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :goto_0
    return v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MessageManger"

    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 324
    goto :goto_0
.end method

.method public notifyGameStart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "playersInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 262
    const-string v4, "MessageManger"

    const-string v5, "notifyGameStart start"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_0
    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    .line 265
    .local v1, "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    const-string v4, "notifyGameStart"

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    .line 266
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    .line 267
    invoke-direct {p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->produce(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)Z

    .line 269
    const-string v4, "MessageManger"

    const-string v5, "notifyGameStart end"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :goto_0
    return v2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MessageManger"

    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 273
    goto :goto_0
.end method

.method public notifyGameState(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "state"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 241
    const-string v4, "MessageManger"

    const-string v5, "notifyGameState start"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :try_start_0
    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    .line 244
    .local v1, "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    const-string v4, "notifyGameState"

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    .line 245
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    .line 246
    invoke-direct {p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->produce(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)Z

    .line 247
    const-string v4, "MessageManger"

    const-string v5, "notifyGameState end"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :goto_0
    return v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MessageManger"

    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 251
    goto :goto_0
.end method

.method public requestPermission()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 192
    :try_start_0
    const-string v3, "MessageManger"

    const-string v4, "requestPermission start"

    invoke-static {v3, v4}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V

    .line 194
    .local v1, "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    const-string v3, "reqPermission"

    iput-object v3, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->name:Ljava/lang/String;

    .line 195
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;->args:[Ljava/lang/Object;

    .line 196
    invoke-direct {p0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->produce(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;)Z

    .line 197
    const-string v3, "MessageManger"

    const-string v4, "requestPermission end"

    invoke-static {v3, v4}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v2, 0x1

    .line 201
    .end local v1    # "event":Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$GameEvent;
    :goto_0
    return v2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MessageManger"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDebugLogFlag(Z)V
    .locals 0
    .param p1, "enableLog"    # Z

    .prologue
    .line 210
    invoke-static {p1}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->setLogFlag(Z)V

    .line 211
    return-void
.end method
