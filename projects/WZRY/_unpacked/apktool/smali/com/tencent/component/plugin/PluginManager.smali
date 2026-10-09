.class public Lcom/tencent/component/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginManager$Code;,
        Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;,
        Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;,
        Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;,
        Lcom/tencent/component/plugin/PluginManager$PluginMonitor;,
        Lcom/tencent/component/plugin/PluginManager$PluginListener;,
        Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;,
        Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    }
.end annotation


# static fields
.field private static final ACTION_PREFIX:Ljava/lang/String; = "plugin_manager"

.field public static final FLAG_ENABLE:I = 0x2

.field public static final FLAG_REGISTER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PluginManager"

.field private static sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mInitialed:Z

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/tencent/component/plugin/PluginManager$PluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitor:Lcom/tencent/component/plugin/PluginManager$PluginMonitor;

.field private final mPlatformId:Ljava/lang/String;

.field private volatile mPlatformInitialFinish:Z

.field private final mPluginRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginManager$PluginRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

.field private mPluginThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;

.field private mService:Lcom/tencent/component/plugin/IPluginManager;

.field private volatile mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceLock:Ljava/lang/Object;

.field private mUIHandler:Landroid/os/Handler;

.field private final mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1557
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/PluginManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginPlatformConfig"    # Lcom/tencent/component/plugin/PluginPlatformConfig;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;

    .line 1174
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$22;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/PluginManager$22;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 80
    iget-object v0, p2, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mUIHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool;

    const-string v1, "plugin-thread-pool"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/component/utils/thread/ThreadPool;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;

    .line 83
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->bindService()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->notifyBootComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$102(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/IPluginManager;)Lcom/tencent/component/plugin/IPluginManager;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Lcom/tencent/component/plugin/IPluginManager;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager;->mService:Lcom/tencent/component/plugin/IPluginManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->launchAutoStartPlugins(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/tencent/component/plugin/PluginManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformInitialFinish:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->notifyPlatformInitialFinish()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->removePluginRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tencent/component/plugin/PluginManager;Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->getInstallPendingDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tencent/component/plugin/PluginManager;->startPluginInner(Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->notifyPlatformInitialStart()V

    return-void
.end method

.method static synthetic access$1900(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->onHelloFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/component/plugin/PluginManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginManager;->mInitialed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager;->notifyPluginInstalled(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$202(Lcom/tencent/component/plugin/PluginManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/tencent/component/plugin/PluginManager;->mInitialed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->notifyPluginUninstalled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/tencent/component/plugin/PluginManager;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/component/plugin/PluginManager;->notifyPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager;->notifyPluginChanged(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->stopService()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->sayHello()V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/server/PluginServerBroadcast;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/component/plugin/PluginManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->launchAllCorePlugins(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/PluginManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->launchSurviveDetector(Ljava/util/List;)V

    return-void
.end method

.method private async(Lcom/tencent/component/plugin/PluginManager$Code;)V
    .locals 1
    .param p1, "code"    # Lcom/tencent/component/plugin/PluginManager$Code;

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/thread/ThreadPool;->submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;)Lcom/tencent/component/utils/thread/Future;

    .line 1584
    return-void
.end method

.method private bindService()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 88
    const-class v1, Lcom/tencent/component/plugin/PluginManager;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/PluginManager$1;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 112
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    const-string v0, "PluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to bind service (platformId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/component/plugin/server/PluginService;->bindPluginService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 116
    return-void

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    .locals 4

    .prologue
    .line 1285
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 1286
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 1287
    .local v1, "listeners":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :goto_0
    if-eqz v1, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listeners":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    check-cast v1, [Lcom/tencent/component/plugin/PluginManager$PluginListener;

    .line 1290
    .restart local v1    # "listeners":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_0
    move-object v0, v1

    .line 1291
    .local v0, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    monitor-exit v3

    .line 1292
    return-object v0

    .line 1286
    .end local v0    # "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    .end local v1    # "listeners":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_1
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v1, v2, [Lcom/tencent/component/plugin/PluginManager$PluginListener;

    goto :goto_0

    .line 1291
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private generatePlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;
    .locals 6
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v2, 0x0

    .line 1126
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1146
    :goto_0
    return-object v2

    .line 1129
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/component/plugin/PluginInfo;->isInternal()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1131
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/tencent/component/plugin/Plugin;->instantiate(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to generate plugin for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1136
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v3, p1, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginFileLock;->readLock(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 1137
    .local v1, "fileLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1139
    :try_start_1
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/tencent/component/plugin/Plugin;->instantiate(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1143
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1140
    :catch_1
    move-exception v0

    .line 1141
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to generate plugin for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1143
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method private generateResources(Lcom/tencent/component/plugin/PluginInfo;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 1455
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1456
    const/4 v2, 0x0

    .line 1468
    :goto_0
    return-object v2

    .line 1458
    :cond_0
    iget-object v1, p1, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 1459
    .local v1, "pluginPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/tencent/component/plugin/PluginInfo;->isInternal()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1460
    iget-object v2, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginFileLock;->readLock(Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 1461
    .local v0, "fileLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1463
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/tencent/component/utils/ApkUtil;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1465
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 1468
    .end local v0    # "fileLock":Ljava/util/concurrent/locks/Lock;
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginManager;->getGlobalResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBasePlatformVersion()I
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1446
    const/16 v0, 0x258

    return v0
.end method

.method public static getBasePlatformVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1451
    const-string v0, "1.7.0.0"

    return-object v0
.end method

.method private getInstallPendingDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugins_pending_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;)Lcom/tencent/component/plugin/PluginManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platformConfig"    # Lcom/tencent/component/plugin/PluginPlatformConfig;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1568
    iget-object v1, p1, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    .line 1569
    .local v1, "platformId":Ljava/lang/String;
    sget-object v4, Lcom/tencent/component/plugin/PluginManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginManager;

    .line 1570
    .local v2, "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    if-nez v2, :cond_1

    .line 1571
    const-class v5, Lcom/tencent/component/plugin/PluginManager;

    monitor-enter v5

    .line 1572
    :try_start_0
    sget-object v4, Lcom/tencent/component/plugin/PluginManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/tencent/component/plugin/PluginManager;

    move-object v2, v0

    .line 1573
    if-nez v2, :cond_0

    .line 1574
    new-instance v3, Lcom/tencent/component/plugin/PluginManager;

    invoke-direct {v3, p0, p1}, Lcom/tencent/component/plugin/PluginManager;-><init>(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    .end local v2    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    .local v3, "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    :try_start_1
    sget-object v4, Lcom/tencent/component/plugin/PluginManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 1577
    .end local v3    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    .restart local v2    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    :cond_0
    :try_start_2
    monitor-exit v5

    .line 1579
    :cond_1
    return-object v2

    .line 1577
    :catchall_0
    move-exception v4

    :goto_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    .restart local v3    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    .restart local v2    # "pluginManager":Lcom/tencent/component/plugin/PluginManager;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platformId"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1561
    new-instance v0, Lcom/tencent/component/plugin/PluginPlatformConfig;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginPlatformConfig;-><init>()V

    .line 1562
    .local v0, "pluginPlatformConfig":Lcom/tencent/component/plugin/PluginPlatformConfig;
    iput-object p1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    .line 1563
    invoke-static {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v1

    return-object v1
.end method

.method private getPluginRecord(Ljava/lang/String;Z)Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "autoCreate"    # Z

    .prologue
    .line 1473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    const/4 v0, 0x0

    .line 1482
    :goto_0
    return-object v0

    .line 1476
    :cond_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v2

    .line 1477
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    .line 1478
    .local v0, "record":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1479
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    .end local v0    # "record":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginManager$PluginRecord;-><init>()V

    .line 1480
    .restart local v0    # "record":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1482
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 1483
    .end local v0    # "record":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getService()Lcom/tencent/component/plugin/IPluginManager;
    .locals 6

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "count":I
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mService:Lcom/tencent/component/plugin/IPluginManager;

    if-eqz v2, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->bindService()V

    .line 137
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 157
    .end local v0    # "count":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mService:Lcom/tencent/component/plugin/IPluginManager;

    return-object v2

    .line 143
    .restart local v0    # "count":I
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :try_start_1
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceLock:Ljava/lang/Object;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_2
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startService(Reason.Restart) exception  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1387
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceManagerAlive()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mService:Lcom/tencent/component/plugin/IPluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mService:Lcom/tencent/component/plugin/IPluginManager;

    invoke-interface {v0}, Lcom/tencent/component/plugin/IPluginManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mService:Lcom/tencent/component/plugin/IPluginManager;

    invoke-interface {v0}, Lcom/tencent/component/plugin/IPluginManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchAllCorePlugins(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz p1, :cond_3

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "corePluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/component/plugin/PluginInfo;

    .line 231
    .local v3, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    iget-boolean v5, v3, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v5, :cond_0

    .line 232
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    .end local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 236
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 237
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/component/plugin/PluginInfo;

    .line 238
    .restart local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start launch core plugin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v5, Lcom/tencent/component/plugin/PluginManager$4;

    invoke-direct {v5, p0, v3, v2}, Lcom/tencent/component/plugin/PluginManager$4;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v5}, Lcom/tencent/component/plugin/PluginManager;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 258
    .end local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_2
    :try_start_0
    const-string v4, "PluginManager"

    const-string v5, "start to wait launch core plugin result."

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 260
    const-string v4, "PluginManager"

    const-string v5, "finish to wait launch core plugin."

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "corePluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_3
    :goto_2
    return-void

    .line 261
    .restart local v0    # "corePluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "PluginManager"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private launchAutoStartPlugins(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz p1, :cond_1

    .line 366
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/PluginInfo;

    .line 367
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    iget-boolean v2, v2, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->autoLoad:Z

    if-eqz v2, :cond_0

    .line 368
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/tencent/component/plugin/PluginManager;->startPluginInner(Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    .end local v0    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    return-void
.end method

.method private launchSurviveDetector(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz p1, :cond_3

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "filteredPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v3, "otherPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/component/plugin/PluginInfo;

    .line 273
    .local v4, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/tencent/component/plugin/PluginInfo;->surviveDetector:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 274
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    .end local v4    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    invoke-direct {p0, v3}, Lcom/tencent/component/plugin/PluginManager;->notifyStartCheckPluginSurvive(Ljava/util/List;)V

    .line 282
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 283
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 284
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/component/plugin/PluginInfo;

    .line 285
    .restart local v4    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    new-instance v6, Lcom/tencent/component/plugin/PluginManager$5;

    invoke-direct {v6, p0, v4, v2}, Lcom/tencent/component/plugin/PluginManager$5;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, v6}, Lcom/tencent/component/plugin/PluginManager;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 319
    .end local v4    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_2
    :try_start_0
    const-string v5, "PluginManager"

    const-string v6, "start to wait check plugin survive result."

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 321
    const-string v5, "PluginManager"

    const-string v6, "finish to wait check plugin survive."

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1    # "filteredPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "otherPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_3
    :goto_2
    return-void

    .line 322
    .restart local v1    # "filteredPluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v3    # "otherPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "PluginManager"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private notifyBootComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz p1, :cond_1

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/PluginInfo;

    .line 332
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->notifyBootCompleteInner(Lcom/tencent/component/plugin/PluginInfo;)V

    goto :goto_0

    .line 337
    .end local v0    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    return-void
.end method

.method private notifyBootCompleteInner(Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 2
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 340
    if-nez p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    .line 343
    .local v0, "bootCompleteClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    new-instance v1, Lcom/tencent/component/plugin/PluginManager$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/component/plugin/PluginManager$6;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;)V

    invoke-direct {p0, v1}, Lcom/tencent/component/plugin/PluginManager;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private notifyPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1297
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;

    move-result-object v2

    .line 1298
    .local v2, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-eqz v2, :cond_1

    .line 1299
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 1300
    .local v1, "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-nez v1, :cond_0

    .line 1299
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1303
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/tencent/component/plugin/PluginManager$PluginListener;->onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "PluginManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1309
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_1
    return-void
.end method

.method private notifyPlatformInitialFinish()V
    .locals 4

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;

    move-result-object v1

    .line 1273
    .local v1, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-eqz v1, :cond_1

    .line 1274
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1275
    .local v0, "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-nez v0, :cond_0

    .line 1274
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1277
    :cond_0
    invoke-interface {v0}, Lcom/tencent/component/plugin/PluginManager$PluginListener;->onPlatformInitialFinish()V

    goto :goto_1

    .line 1280
    .end local v0    # "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_1
    return-void
.end method

.method private notifyPlatformInitialStart()V
    .locals 4

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;

    move-result-object v1

    .line 1251
    .local v1, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-eqz v1, :cond_1

    .line 1252
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1253
    .local v0, "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-nez v0, :cond_0

    .line 1252
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1255
    :cond_0
    invoke-interface {v0}, Lcom/tencent/component/plugin/PluginManager$PluginListener;->onPlatformInitialStart()V

    goto :goto_1

    .line 1258
    .end local v0    # "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_1
    return-void
.end method

.method private notifyPluginChanged(Ljava/lang/String;II)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "changeFlags"    # I
    .param p3, "statusFlags"    # I

    .prologue
    .line 1313
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mMonitor:Lcom/tencent/component/plugin/PluginManager$PluginMonitor;

    .line 1314
    .local v3, "monitor":Lcom/tencent/component/plugin/PluginManager$PluginMonitor;
    if-eqz v3, :cond_0

    .line 1315
    invoke-interface {v3, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager$PluginMonitor;->onPluginChanged(Ljava/lang/String;II)V

    .line 1318
    :cond_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;

    move-result-object v2

    .line 1319
    .local v2, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-eqz v2, :cond_2

    .line 1320
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 1321
    .local v1, "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-nez v1, :cond_1

    .line 1320
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1324
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager$PluginListener;->onPluginChanged(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "PluginManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1330
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_2
    return-void
.end method

.method private notifyPluginInstalled(Ljava/lang/String;II)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "oldVersion"    # I
    .param p3, "version"    # I

    .prologue
    .line 1334
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mMonitor:Lcom/tencent/component/plugin/PluginManager$PluginMonitor;

    .line 1335
    .local v3, "monitor":Lcom/tencent/component/plugin/PluginManager$PluginMonitor;
    if-eqz v3, :cond_0

    .line 1336
    invoke-interface {v3, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager$PluginMonitor;->onPluginInstalled(Ljava/lang/String;II)V

    .line 1339
    :cond_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;

    move-result-object v2

    .line 1340
    .local v2, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-eqz v2, :cond_2

    .line 1341
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 1342
    .local v1, "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-nez v1, :cond_1

    .line 1341
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1345
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager$PluginListener;->onPluginInstalled(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "PluginManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1351
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_2
    return-void
.end method

.method private notifyPluginUninstalled(Ljava/lang/String;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1355
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mMonitor:Lcom/tencent/component/plugin/PluginManager$PluginMonitor;

    .line 1356
    .local v3, "monitor":Lcom/tencent/component/plugin/PluginManager$PluginMonitor;
    if-eqz v3, :cond_0

    .line 1357
    invoke-interface {v3, p1}, Lcom/tencent/component/plugin/PluginManager$PluginMonitor;->onPluginUninstall(Ljava/lang/String;)V

    .line 1360
    :cond_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;

    move-result-object v2

    .line 1361
    .local v2, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-eqz v2, :cond_2

    .line 1362
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 1363
    .local v1, "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-nez v1, :cond_1

    .line 1362
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1366
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Lcom/tencent/component/plugin/PluginManager$PluginListener;->onPluginUninstall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1367
    :catch_0
    move-exception v0

    .line 1368
    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "PluginManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1372
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_2
    return-void
.end method

.method private notifyStartCheckPluginSurvive(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->collectionPluginListeners()[Lcom/tencent/component/plugin/PluginManager$PluginListener;

    move-result-object v1

    .line 1262
    .local v1, "listenerArray":[Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-eqz v1, :cond_1

    .line 1263
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1264
    .local v0, "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    if-nez v0, :cond_0

    .line 1263
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    :cond_0
    invoke-interface {v0, p1}, Lcom/tencent/component/plugin/PluginManager$PluginListener;->onStartCheckPluginSurvive(Ljava/util/List;)V

    goto :goto_1

    .line 1269
    .end local v0    # "listener":Lcom/tencent/component/plugin/PluginManager$PluginListener;
    :cond_1
    return-void
.end method

.method private onHelloFinish()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$3;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/PluginManager$3;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 225
    return-void
.end method

.method private removePluginRecord(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1110
    const/4 v2, 0x0

    .line 1111
    .local v2, "pluginRecord":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v4

    .line 1112
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    move-object v2, v0

    .line 1113
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v3, :cond_1

    .line 1115
    iget-object v3, v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v3}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v1

    .line 1116
    .local v1, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove pluginrecord :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    if-eqz v1, :cond_0

    .line 1118
    invoke-static {v1}, Lcom/tencent/component/plugin/PluginClassLoader;->removeClassLoader(Lcom/tencent/component/plugin/PluginInfo;)V

    .line 1123
    .end local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    :goto_0
    return-void

    .line 1113
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1121
    :cond_1
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "there\'s no pluginrecord :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to remove"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1602
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1610
    :goto_0
    return-void

    .line 1605
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PluginManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sayHello()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/PluginManager$2;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 189
    return-void
.end method

.method private startPluginInner(Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V
    .locals 2
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p2, "args"    # Landroid/content/Intent;

    .prologue
    .line 1039
    if-eqz p1, :cond_0

    .line 1040
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/component/plugin/PluginManager$20;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    const-string v0, "PluginManager"

    const-string v1, "fail to start plugin (pluginInfo is null)"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 120
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/component/plugin/server/PluginService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 121
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mService:Lcom/tencent/component/plugin/IPluginManager;

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addPendingInstallPlugin(Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginLocation"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 471
    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/component/plugin/PluginManager;->addPendingInstallPlugin(Ljava/lang/String;ZLjava/lang/String;)V

    .line 472
    return-void
.end method

.method public addPendingInstallPlugin(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "pluginLocation"    # Ljava/lang/String;
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager$9;-><init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 489
    :cond_0
    return-void
.end method

.method public addPluginListener(Lcom/tencent/component/plugin/PluginManager$PluginListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tencent/component/plugin/PluginManager$PluginListener;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1153
    if-nez p1, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1155
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 1156
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1157
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disablePlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 458
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$8;

    invoke-direct {v0, p0, p1}, Lcom/tencent/component/plugin/PluginManager$8;-><init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 468
    return-void
.end method

.method public enablePlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$7;

    invoke-direct {v0, p0, p1}, Lcom/tencent/component/plugin/PluginManager$7;-><init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 449
    return-void
.end method

.method public getActiviedPlugins()Ljava/util/List;
    .locals 6
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/Plugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v1, "pluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/Plugin;>;"
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v4

    .line 701
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 702
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$PluginRecord;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    .line 703
    .local v2, "pluginRecord":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v5, :cond_0

    .line 704
    iget-object v5, v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$PluginRecord;>;"
    .end local v2    # "pluginRecord":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    return-object v1
.end method

.method public getCorePluginVersionCode(Ljava/lang/String;)I
    .locals 5
    .param p1, "pluginId"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 713
    const/4 v2, 0x0

    .line 714
    .local v2, "versionCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 715
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v4

    .line 716
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    .line 717
    .local v1, "pluginRecord":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v3, :cond_0

    .line 718
    iget-object v3, v1, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v3}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    .line 719
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v0, :cond_0

    .line 720
    iget v2, v0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    .line 723
    .end local v0    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    monitor-exit v4

    .line 725
    .end local v1    # "pluginRecord":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    :cond_1
    return v2

    .line 723
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCorePluginVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pluginId"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 729
    const-string v2, ""

    .line 730
    .local v2, "versionName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 731
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v4

    .line 732
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    .line 733
    .local v1, "pluginRecord":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v3, :cond_0

    .line 734
    iget-object v3, v1, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v3}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    .line 735
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v0, :cond_0

    .line 736
    iget-object v2, v0, Lcom/tencent/component/plugin/PluginInfo;->versionName:Ljava/lang/String;

    .line 739
    .end local v0    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    monitor-exit v4

    .line 741
    .end local v1    # "pluginRecord":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    :cond_1
    return-object v2

    .line 739
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getGlobalResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlatformVersion()I
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget v0, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformVersion:I

    return v0
.end method

.method public getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;
    .locals 1
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1059
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;
    .locals 9
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p2, "initPlugin"    # Z
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1064
    if-nez p1, :cond_1

    .line 1065
    const/4 v2, 0x0

    .line 1101
    :cond_0
    :goto_0
    return-object v2

    .line 1067
    :cond_1
    iget-object v6, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/tencent/component/plugin/PluginManager;->getPluginRecord(Ljava/lang/String;Z)Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    move-result-object v3

    .line 1068
    .local v3, "record":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    iget-object v2, v3, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    .line 1069
    .local v2, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-nez v2, :cond_0

    .line 1073
    const/4 v0, 0x0

    .line 1075
    .local v0, "create":Z
    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager;->mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;

    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 1077
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1078
    iget-object v6, v3, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    if-nez v6, :cond_3

    if-eqz p2, :cond_3

    .line 1079
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->generatePlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v6

    iput-object v6, v3, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    .line 1080
    iget-object v6, v3, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v6, :cond_2

    .line 1081
    iget-object v6, v3, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    iget-object v7, p0, Lcom/tencent/component/plugin/PluginManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-static {v8, p0}, Lcom/tencent/component/plugin/PluginHelper;->getInstance(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/PluginHelper;

    move-result-object v8

    invoke-virtual {v6, v7, p0, v8, p1}, Lcom/tencent/component/plugin/Plugin;->attach(Landroid/content/Context;Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginHelper;Lcom/tencent/component/plugin/PluginInfo;)V

    .line 1083
    :cond_2
    iget-object v6, v3, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;

    if-eqz v6, :cond_4

    move v0, v5

    .line 1085
    :cond_3
    :goto_1
    iget-object v2, v3, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->plugin:Lcom/tencent/component/plugin/Plugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1090
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 1091
    move-object v4, v2

    .line 1092
    .local v4, "tempPlugin":Lcom/tencent/component/plugin/Plugin;
    new-instance v5, Lcom/tencent/component/plugin/PluginManager$21;

    invoke-direct {v5, p0, v4}, Lcom/tencent/component/plugin/PluginManager$21;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/Plugin;)V

    invoke-direct {p0, v5}, Lcom/tencent/component/plugin/PluginManager;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1083
    .end local v4    # "tempPlugin":Lcom/tencent/component/plugin/Plugin;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1087
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public getPluginHelper()Lcom/tencent/component/plugin/PluginHelper;
    .locals 1
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/component/plugin/PluginHelper;->getInstance(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/PluginHelper;

    move-result-object v0

    return-object v0
.end method

.method public getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "getPluginInfoCallback"    # Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 626
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/component/plugin/PluginManager$14;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 638
    :cond_0
    return-void
.end method

.method getPluginInfoSync(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 648
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 650
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/tencent/component/plugin/IPluginManager;->getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 655
    :goto_0
    return-object v2

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PluginManager"

    const-string v3, "getPluginInfo"

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 655
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPluginList(Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/plugin/PluginManager;->getPluginList(Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;Z)V

    .line 660
    return-void
.end method

.method public getPluginList(Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;
    .param p2, "execludeCorePlugin"    # Z
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 669
    if-eqz p1, :cond_0

    .line 670
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$15;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/component/plugin/PluginManager$15;-><init>(Lcom/tencent/component/plugin/PluginManager;ZLcom/tencent/component/plugin/PluginManager$GetPluginListCallback;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 692
    :cond_0
    return-void
.end method

.method public getPluginPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;
    .locals 1
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    return-object v0
.end method

.method getPluginResources(Lcom/tencent/component/plugin/PluginInfo;)Landroid/content/res/Resources;
    .locals 7
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v5, 0x0

    .line 1398
    if-nez p1, :cond_1

    move-object v3, v5

    .line 1423
    :cond_0
    :goto_0
    return-object v3

    .line 1402
    :cond_1
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/tencent/component/plugin/PluginManager;->getPluginRecord(Ljava/lang/String;Z)Lcom/tencent/component/plugin/PluginManager$PluginRecord;

    move-result-object v2

    .line 1403
    .local v2, "record":Lcom/tencent/component/plugin/PluginManager$PluginRecord;
    if-nez v2, :cond_3

    move-object v0, v5

    .line 1404
    .local v0, "entry":Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;
    :goto_1
    if-nez v0, :cond_4

    move-object v3, v5

    .line 1405
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_2
    if-nez v3, :cond_0

    .line 1406
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager;->mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;

    iget-object v6, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 1407
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1409
    if-nez v2, :cond_5

    move-object v0, v5

    .line 1410
    :goto_3
    if-nez v0, :cond_6

    move-object v3, v5

    .line 1411
    :goto_4
    if-nez v3, :cond_2

    .line 1412
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->generateResources(Lcom/tencent/component/plugin/PluginInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1413
    if-eqz v3, :cond_2

    .line 1414
    if-eqz v2, :cond_2

    .line 1415
    new-instance v4, Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;

    invoke-direct {v4, v3}, Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;-><init>(Landroid/content/res/Resources;)V

    iput-object v4, v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->resources:Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1403
    .end local v0    # "entry":Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_3
    iget-object v0, v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->resources:Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;

    goto :goto_1

    .line 1404
    .restart local v0    # "entry":Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object v3, v4

    goto :goto_2

    .line 1409
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :cond_5
    :try_start_1
    iget-object v0, v2, Lcom/tencent/component/plugin/PluginManager$PluginRecord;->resources:Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;

    goto :goto_3

    .line 1410
    :cond_6
    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_4

    .line 1420
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method handlePluginUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 1376
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 1378
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/tencent/component/plugin/IPluginManager;->handlePluginUri(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1383
    :goto_0
    return-object v2

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PluginManager"

    const-string v3, "handlePluginUri"

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1383
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 167
    return-void
.end method

.method public install(Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V
    .locals 1
    .param p1, "pluginLocation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/tencent/component/plugin/InstallPluginListener;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/component/plugin/PluginManager$10;-><init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 529
    return-void
.end method

.method public isPlatformInitialFinish()Z
    .locals 1
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformInitialFinish:Z

    return v0
.end method

.method isPluginRegistered(Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 422
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 424
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/tencent/component/plugin/IPluginManager;->isPluginRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 429
    :goto_0
    return v2

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PluginManager"

    const-string v3, "isPluginRegistered"

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 593
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$13;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/component/plugin/PluginManager$13;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 605
    :cond_0
    return-void
.end method

.method loadPluginInfoSync(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 609
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 611
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/tencent/component/plugin/IPluginManager;->loadPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 616
    :goto_0
    return-object v2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PluginManager"

    const-string v3, "getPluginInfo"

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 616
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method markPluginSurviveable(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "surviveable"    # Z

    .prologue
    .line 392
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 396
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/tencent/component/plugin/IPluginManager;->markPluginSurviveable(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PluginManager"

    const-string v3, "markPluginSurviveable"

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public moveAllPluginToBack()V
    .locals 9
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v4

    .line 1016
    .local v4, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v4, :cond_2

    .line 1018
    :try_start_0
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/tencent/component/plugin/IPluginManager;->getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1019
    .local v3, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz v3, :cond_0

    .line 1020
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginInfo;

    .line 1021
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v1

    .line 1022
    .local v1, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v1, :cond_1

    .line 1023
    invoke-virtual {v1}, Lcom/tencent/component/plugin/Plugin;->enterBackground()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1029
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PluginManager"

    const-string v6, "fail to move all plugin to background (remote exception)"

    invoke-static {v5, v6, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_0
    :goto_1
    return-void

    .line 1025
    .restart local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .restart local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    .restart local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_1
    :try_start_1
    const-string v6, "PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to move plugin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to background(no record)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1033
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_2
    const-string v5, "PluginManager"

    const-string v6, "cannot get remote service, move all plugin to background failed!"

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public movePluginToBack(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 989
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v3

    .line 991
    .local v3, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v3, :cond_2

    .line 993
    :try_start_0
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Lcom/tencent/component/plugin/IPluginManager;->getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v2

    .line 994
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v1

    .line 995
    .local v1, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v1, :cond_1

    .line 996
    invoke-virtual {v1}, Lcom/tencent/component/plugin/Plugin;->enterBackground()V

    .line 1007
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_0
    :goto_0
    return-void

    .line 998
    .restart local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .restart local v3    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_1
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to move plugin to background :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (no record)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1000
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to move plugin to background:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(remote exception)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1004
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get remote service, fail to move plugin to background:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public readDataFromPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/Object;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "callback"    # Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 898
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v15

    .line 900
    .local v15, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v15, :cond_3

    .line 902
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v15, v4, v0}, Lcom/tencent/component/plugin/IPluginManager;->getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v14

    .line 903
    .local v14, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v12

    .line 904
    .local v12, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v12, :cond_1

    .line 905
    invoke-virtual {v12}, Lcom/tencent/component/plugin/Plugin;->getPluginCommander()Lcom/tencent/component/plugin/PluginCommander;

    move-result-object v13

    .line 906
    .local v13, "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    if-eqz v13, :cond_0

    .line 907
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/tencent/component/plugin/PluginCommander;->read(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;

    move-result-object p4

    .line 955
    .end local v12    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v13    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    .end local v14    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v15    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    .end local p4    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-object p4

    .line 909
    .restart local v12    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v13    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    .restart local v14    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .restart local v15    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    .restart local p4    # "defaultValue":Ljava/lang/Object;
    :cond_0
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get data from plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pluginDAO is null)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 946
    .end local v12    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v13    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    .end local v14    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :catch_0
    move-exception v11

    .line 947
    .local v11, "e":Landroid/os/RemoteException;
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get data from plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(remote exception)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 912
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v12    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v14    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    if-eqz p5, :cond_2

    .line 913
    :try_start_1
    new-instance v4, Lcom/tencent/component/plugin/PluginManager$19;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/tencent/component/plugin/PluginManager$19;-><init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/tencent/component/plugin/PluginManager;->loadPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;)V

    goto :goto_0

    .line 943
    :cond_2
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get data from plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (plugin is null)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 950
    .end local v12    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v14    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_3
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get remote service, get data from plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 953
    .end local v15    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_4
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromPlugin failed [illegal params --> id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " |cmd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " |args:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method registerPlugin(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v2

    .line 380
    :cond_1
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 381
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 383
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v1, v3, p1, p2}, Lcom/tencent/component/plugin/IPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PluginManager"

    const-string v4, "registerPlugin"

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removePluginListener(Lcom/tencent/component/plugin/PluginManager$PluginListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tencent/component/plugin/PluginManager$PluginListener;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 1161
    if-nez p1, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 1164
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1165
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPluginHandler(Lcom/tencent/component/plugin/PluginManageHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/tencent/component/plugin/PluginManageHandler;

    .prologue
    .line 745
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$16;

    invoke-direct {v0, p0, p1}, Lcom/tencent/component/plugin/PluginManager$16;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginManageHandler;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    .line 755
    return-void
.end method

.method public setPluginMonitor(Lcom/tencent/component/plugin/PluginManager$PluginMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lcom/tencent/component/plugin/PluginManager$PluginMonitor;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager;->mMonitor:Lcom/tencent/component/plugin/PluginManager$PluginMonitor;

    .line 1172
    return-void
.end method

.method public startPlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/plugin/PluginManager;->startPlugin(Ljava/lang/String;Landroid/content/Intent;)V

    .line 821
    return-void
.end method

.method public startPlugin(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/content/Intent;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 831
    new-instance v0, Lcom/tencent/component/plugin/PluginManager$17;

    invoke-direct {v0, p0, p2}, Lcom/tencent/component/plugin/PluginManager$17;-><init>(Lcom/tencent/component/plugin/PluginManager;Landroid/content/Intent;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/plugin/PluginManager;->loadPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;)V

    .line 840
    return-void
.end method

.method public stopAllPlugin()V
    .locals 9
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v4

    .line 791
    .local v4, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v4, :cond_2

    .line 793
    :try_start_0
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/tencent/component/plugin/IPluginManager;->getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 794
    .local v3, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz v3, :cond_0

    .line 795
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginInfo;

    .line 796
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v1

    .line 797
    .local v1, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {v1}, Lcom/tencent/component/plugin/Plugin;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PluginManager"

    const-string v6, "fail to stop all plugin (remote exception)"

    invoke-static {v5, v6, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 811
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_0
    :goto_1
    return-void

    .line 800
    .restart local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .restart local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    .restart local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_1
    :try_start_1
    const-string v6, "PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to stop plugin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (no record)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 808
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_2
    const-string v5, "PluginManager"

    const-string v6, "cannot get remote service, stop all plugin failed!"

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopPlugin(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v3

    .line 766
    .local v3, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v3, :cond_2

    .line 768
    :try_start_0
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Lcom/tencent/component/plugin/IPluginManager;->getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v2

    .line 769
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v1

    .line 770
    .local v1, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v1, :cond_1

    .line 771
    invoke-virtual {v1}, Lcom/tencent/component/plugin/Plugin;->stop()V

    .line 782
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_0
    :goto_0
    return-void

    .line 773
    .restart local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .restart local v3    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_1
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to stop plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (no record)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to stop plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(remote exception)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 779
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v4, "PluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get remote service, stop plugin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public transparentLifeCycle(ILjava/lang/Object;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 961
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v4

    .line 962
    .local v4, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v4, :cond_2

    .line 964
    :try_start_0
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/tencent/component/plugin/IPluginManager;->getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 965
    .local v3, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz v3, :cond_0

    .line 966
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginInfo;

    .line 967
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v1

    .line 968
    .local v1, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v1, :cond_1

    .line 969
    invoke-virtual {v1, p1, p2}, Lcom/tencent/component/plugin/Plugin;->onBusinessLifeCycle(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 975
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PluginManager"

    const-string v6, "fail to transparent lifecycle (remote exception)"

    invoke-static {v5, v6, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 982
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_0
    :goto_1
    return-void

    .line 971
    .restart local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .restart local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    .restart local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_1
    :try_start_1
    const-string v6, "PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to transparent lifecycle :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (no record)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 979
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v3    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_2
    const-string v5, "PluginManager"

    const-string v6, "cannot get remote service, fail to transparent lifecycle "

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public uninstall(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V
    .locals 3
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p2, "listener"    # Lcom/tencent/component/plugin/UninstallPluginListener;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 536
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    :cond_0
    if-eqz p2, :cond_1

    .line 539
    :try_start_0
    const-string v1, "pluginInfo/pluginId is empty"

    invoke-interface {p2, v1}, Lcom/tencent/component/plugin/UninstallPluginListener;->onUninstallFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PluginManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Lcom/tencent/component/plugin/PluginManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/component/plugin/PluginManager$11;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V

    invoke-direct {p0, v1}, Lcom/tencent/component/plugin/PluginManager;->async(Lcom/tencent/component/plugin/PluginManager$Code;)V

    goto :goto_0
.end method

.method public uninstall(Ljava/lang/String;Lcom/tencent/component/plugin/UninstallPluginListener;)V
    .locals 3
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/tencent/component/plugin/UninstallPluginListener;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 566
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    if-eqz p2, :cond_0

    .line 569
    :try_start_0
    const-string v1, "pluginId is empty"

    invoke-interface {p2, v1}, Lcom/tencent/component/plugin/UninstallPluginListener;->onUninstallFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PluginManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 576
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Lcom/tencent/component/plugin/PluginManager$12;

    invoke-direct {v1, p0, p2}, Lcom/tencent/component/plugin/PluginManager$12;-><init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/UninstallPluginListener;)V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/component/plugin/PluginManager;->getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V

    goto :goto_0
.end method

.method unregisterPlugin(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v2

    .line 409
    :cond_1
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v1

    .line 410
    .local v1, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v1, :cond_0

    .line 412
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Lcom/tencent/component/plugin/IPluginManager;->unregisterPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PluginManager"

    const-string/jumbo v4, "unregisterPlugin"

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeCommandToPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/Object;
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->isServiceManagerAlive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 845
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginManager;->getService()Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v4

    .line 846
    .local v4, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v4, :cond_2

    .line 848
    :try_start_0
    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager;->mPlatformId:Ljava/lang/String;

    invoke-interface {v4, v5, p1}, Lcom/tencent/component/plugin/IPluginManager;->getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v3

    .line 849
    .local v3, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v1

    .line 850
    .local v1, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v1, :cond_1

    .line 851
    invoke-virtual {v1}, Lcom/tencent/component/plugin/Plugin;->getPluginCommander()Lcom/tencent/component/plugin/PluginCommander;

    move-result-object v2

    .line 852
    .local v2, "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    if-eqz v2, :cond_0

    .line 853
    invoke-virtual {v2, p2, p3}, Lcom/tencent/component/plugin/PluginCommander;->write(Ljava/lang/String;Ljava/lang/Object;)V

    .line 895
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    .end local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .end local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :goto_0
    return-void

    .line 855
    .restart local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v2    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    .restart local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    .restart local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_0
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to write data to plugin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pluginDAO is null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 885
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v2    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    .end local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to write data to plugin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(remote exception)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 858
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    :try_start_1
    new-instance v5, Lcom/tencent/component/plugin/PluginManager$18;

    invoke-direct {v5, p0, p2, p3}, Lcom/tencent/component/plugin/PluginManager$18;-><init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v5}, Lcom/tencent/component/plugin/PluginManager;->loadPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$LoadPluginInfoCallback;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 889
    .end local v1    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v3    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_2
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot get remote service, write data to plugin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 893
    .end local v4    # "pm":Lcom/tencent/component/plugin/IPluginManager;
    :cond_3
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeCommandToPlugin failed [illegal params --> id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " |cmd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " |args:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
