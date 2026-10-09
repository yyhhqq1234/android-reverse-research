.class public Lcom/apm/insight/MonitorCrash;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/MonitorCrash$HeaderParams;,
        Lcom/apm/insight/MonitorCrash$Config;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MonitorCrash"

.field private static volatile sAppMonitorCrashInit:Z

.field static sDefaultApplogUrl:Ljava/lang/String;


# instance fields
.field public volatile isAppLogInit:Z

.field volatile mApmApplogConfig:Lcom/apm/applog/InitConfig;

.field public mConfig:Lcom/apm/insight/MonitorCrash$Config;

.field private mContext:Landroid/content/Context;

.field public mCustomData:Lcom/apm/insight/AttachUserData;

.field mCustomLongData:Lcom/apm/insight/AttachUserData;

.field private mIsApp:Z

.field mParams:Lcom/apm/insight/MonitorCrash$HeaderParams;

.field private mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/MonitorCrash;->mTagMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/MonitorCrash;->isAppLogInit:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/apm/insight/MonitorCrash;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object p1, p2, Lcom/apm/insight/MonitorCrash$Config;->h:Lcom/apm/insight/AttachUserData;

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash;->mCustomData:Lcom/apm/insight/AttachUserData;

    return-void
.end method

.method private constructor <init>(Lcom/apm/insight/MonitorCrash$Config;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/MonitorCrash;->mTagMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/MonitorCrash;->isAppLogInit:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/apm/insight/MonitorCrash;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance p1, Lcom/apm/insight/MonitorCrash$Config;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/apm/insight/MonitorCrash$Config;-><init>(Lcom/apm/insight/MonitorCrash$1;)V

    :cond_0
    iput-object p1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iput-object p3, p1, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iput-wide p4, p1, Lcom/apm/insight/MonitorCrash$Config;->d:J

    iget-object p1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iput-object p6, p1, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;

    invoke-static {p2, p0}, Lgbsdk/common/host/abfg;->a(Landroid/content/Context;Lcom/apm/insight/MonitorCrash;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/apm/insight/MonitorCrash;->initAppLog(Landroid/content/Context;Z)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/MonitorCrash;->mTagMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/MonitorCrash;->isAppLogInit:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/apm/insight/MonitorCrash;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance p1, Lcom/apm/insight/MonitorCrash$Config;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/apm/insight/MonitorCrash$Config;-><init>(Lcom/apm/insight/MonitorCrash$1;)V

    :cond_0
    iput-object p1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iput-object p2, p1, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iput-wide p3, p1, Lcom/apm/insight/MonitorCrash$Config;->d:J

    iget-object p1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iput-object p5, p1, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iput-object p6, p1, Lcom/apm/insight/MonitorCrash$Config;->f:[Ljava/lang/String;

    invoke-static {p0}, Lgbsdk/common/host/abfg;->a(Lcom/apm/insight/MonitorCrash;)V

    sget-object p1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/apm/insight/MonitorCrash;->initAppLog(Landroid/content/Context;Z)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/apm/insight/MonitorCrash;-><init>(Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static checkInit(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    if-eqz v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    if-eqz v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    invoke-virtual {p0}, Lcom/apm/insight/runtime/ConfigManager;->isDebugMode()Z

    move-result p0

    const-string v0, "Duplicate init App MonitorCrash with different aids."

    if-nez p0, :cond_0

    const-string p0, "MonitorCrash"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;)Lcom/apm/insight/MonitorCrash;
    .locals 8

    const-class v0, Lcom/apm/insight/MonitorCrash;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/apm/insight/MonitorCrash$Config;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MonitorCrash"

    const-string v2, "MonitorCrash init without token."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/apm/insight/MonitorCrash;

    invoke-direct {v1, p0, p1}, Lcom/apm/insight/MonitorCrash;-><init>(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/apm/insight/MonitorCrash;->mIsApp:Z

    iget-object v3, p1, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/PackageUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-wide v3, p1, Lcom/apm/insight/MonitorCrash$Config;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    :try_start_3
    invoke-static {p0}, Lcom/bytedance/apm/common/utility/PackageUtils;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    int-to-long v3, p0

    iput-wide v3, p1, Lcom/apm/insight/MonitorCrash$Config;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->c(Lcom/apm/insight/MonitorCrash$Config;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->c(Lcom/apm/insight/MonitorCrash$Config;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->c(Lcom/apm/insight/MonitorCrash$Config;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/apm/insight/MonitorCrash;->setReportUrlInner(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    :cond_3
    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->d(Lcom/apm/insight/MonitorCrash$Config;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/apm/insight/runtime/n;->b()V

    :cond_4
    iget-object p0, p1, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    if-eqz p0, :cond_5

    iget-object p0, v1, Lcom/apm/insight/MonitorCrash;->mTagMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->e(Lcom/apm/insight/MonitorCrash$Config;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Lcom/apm/insight/MonitorCrash;->start()V

    goto :goto_2

    :cond_6
    sput-object v1, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    :goto_2
    sput-boolean v2, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    :cond_7
    iget-object p0, p1, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/apm/insight/MonitorCrash;->checkInit(Ljava/lang/String;)V

    sget-object p0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    if-nez v0, :cond_1

    const-class v1, Lcom/apm/insight/MonitorCrash;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v5

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v0, Lcom/apm/insight/MonitorCrash;

    const/4 v10, 0x0

    move-object v9, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v13, p2

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v15}, Lcom/apm/insight/MonitorCrash;-><init>(Lcom/apm/insight/MonitorCrash$Config;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/apm/insight/MonitorCrash;->checkInit(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    return-object v0
.end method

.method private initAppLog(Landroid/content/Context;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v2, v2, Lcom/apm/insight/MonitorCrash$Config;->b:Ljava/lang/String;

    const-string v3, "empty"

    invoke-direct {v0, v1, v2, v3}, Lcom/apm/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    invoke-static {v0, v1}, Lcom/apm/insight/MonitorCrash$Config;->a(Lcom/apm/insight/MonitorCrash$Config;Lcom/apm/applog/InitConfig;)Lcom/apm/applog/InitConfig;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/apm/insight/MonitorCrash;->initAppLogAsync(Landroid/content/Context;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private initAppLogAsync(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {}, Lcom/apm/insight/runtime/q;->b()Lcom/apm/insight/runtime/v;

    move-result-object v0

    new-instance v1, Lcom/apm/insight/MonitorCrash$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/apm/insight/MonitorCrash$1;-><init>(Lcom/apm/insight/MonitorCrash;ZLandroid/content/Context;)V

    const-wide/16 p1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/apm/insight/runtime/v;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static declared-synchronized initSDK(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;)Lcom/apm/insight/MonitorCrash;
    .locals 4

    const-class v0, Lcom/apm/insight/MonitorCrash;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/apm/insight/MonitorCrash$Config;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MonitorCrash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MonitorCrash init without token."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    invoke-static {v1}, Lgbsdk/common/host/abfg;->A(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string p0, "MonitorCrash"

    const-string p1, "Duplicate init MonitorCrash with same aid."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v1, Lcom/apm/insight/MonitorCrash;

    invoke-direct {v1, p0, p1}, Lcom/apm/insight/MonitorCrash;-><init>(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/apm/insight/MonitorCrash;->mIsApp:Z

    sget-object p0, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->c(Lcom/apm/insight/MonitorCrash$Config;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->c(Lcom/apm/insight/MonitorCrash$Config;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->c(Lcom/apm/insight/MonitorCrash$Config;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/apm/insight/MonitorCrash;->setReportUrlInner(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    :cond_2
    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->d(Lcom/apm/insight/MonitorCrash$Config;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/apm/insight/runtime/n;->b()V

    :cond_3
    iget-object p0, p1, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/apm/insight/MonitorCrash;->mTagMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    invoke-static {p1}, Lcom/apm/insight/MonitorCrash$Config;->e(Lcom/apm/insight/MonitorCrash$Config;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lcom/apm/insight/MonitorCrash;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p5

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v5

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v1, Lcom/apm/insight/MonitorCrash;

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v14, v2

    move-object v9, v1

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move-object/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lcom/apm/insight/MonitorCrash;-><init>(Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    return-object v1
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p5

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v5

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v1, Lcom/apm/insight/MonitorCrash;

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v14, v2

    move-object v9, v1

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move-object/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lcom/apm/insight/MonitorCrash;-><init>(Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v0

    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Lcom/apm/insight/MonitorCrash$Config;->setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    return-object v1
.end method

.method public static varargs initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v2

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v0, Lcom/apm/insight/MonitorCrash;

    move-object v8, v0

    move-object v9, p1

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/apm/insight/MonitorCrash;-><init>(Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    return-object v0
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v2

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v0, Lcom/apm/insight/MonitorCrash;

    move-object v8, v0

    move-object v9, p1

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/apm/insight/MonitorCrash;-><init>(Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/apm/insight/MonitorCrash$Config;->setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    return-object v0
.end method

.method public static initSDKWithConfig(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p6

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v5

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v1, Lcom/apm/insight/MonitorCrash;

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v15, v2

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    invoke-direct/range {v9 .. v15}, Lcom/apm/insight/MonitorCrash;-><init>(Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Lcom/apm/insight/MonitorCrash$Config;->setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    return-object v1
.end method

.method public static varargs initSDKWithConfig(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v2

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v0, Lcom/apm/insight/MonitorCrash;

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/apm/insight/MonitorCrash;-><init>(Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    return-object v0
.end method

.method public static initSDKWithConfig(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v2

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v5

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v0, Lcom/apm/insight/MonitorCrash;

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lcom/apm/insight/MonitorCrash;-><init>(Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apm/insight/MonitorCrash;->config()Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/apm/insight/MonitorCrash$Config;->setPackageName([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/apm/insight/MonitorCrash$Config;->setSoList([Ljava/lang/String;)Lcom/apm/insight/MonitorCrash$Config;

    return-object v0
.end method

.method public static initWithConfig(Landroid/content/Context;Lcom/apm/insight/MonitorCrash$Config;Ljava/lang/String;JLjava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    if-nez v0, :cond_1

    const-class v1, Lcom/apm/insight/MonitorCrash;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v5

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v6

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    new-instance v0, Lcom/apm/insight/MonitorCrash;

    move-object v9, v0

    move-object/from16 v10, p1

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-wide/from16 v13, p3

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/apm/insight/MonitorCrash;-><init>(Lcom/apm/insight/MonitorCrash$Config;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/apm/insight/MonitorCrash;->sAppMonitorCrashInit:Z

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/apm/insight/MonitorCrash;->checkInit(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    return-object v0
.end method

.method public static reInitAppLog(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/apm/applog/AppLog;->getInstance(Ljava/lang/String;)Lcom/apm/applog/AppLog;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    if-eqz v0, :cond_1

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lgbsdk/common/host/abfg;->A(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    iget-boolean v1, p0, Lcom/apm/insight/MonitorCrash;->isAppLogInit:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lgbsdk/common/host/abge;->ap:Landroid/app/Application;

    iget-object v2, p0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    if-nez v2, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/apm/insight/MonitorCrash;->initAppLog(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/apm/insight/MonitorCrash;->initAppLogAsync(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_4
    :goto_1
    return-void
.end method

.method public static setDefaultReportUrlPrefix(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/apm/insight/MonitorCrash$Config;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setLaunchCrashUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/exception/dump_collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setLaunchCrashUrl2(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setJavaCrashUploadUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/native_bin_crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setNativeCrashUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/settings/get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setConfigUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/cloudcontrol/file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setAlogUploadUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/logcollect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setFileUploadUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/crash_portrait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setCrashPortraitUrl(Ljava/lang/String;)V

    sput-object p0, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setReportUrlInner(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 3

    invoke-static {}, Lcom/apm/insight/MonitorCrash$Config;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abif;->i(Ljava/lang/Object;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setLaunchCrashUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/exception/dump_collection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setLaunchCrashUrl2(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setJavaCrashUploadUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/native_bin_crash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setNativeCrashUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/settings/get"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setConfigUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/cloudcontrol/file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setAlogUploadUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/logcollect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setFileUploadUrl(Ljava/lang/String;)V

    sget-object v0, Lgbsdk/common/host/abge;->ed:Lcom/apm/insight/runtime/ConfigManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/monitor/collect/c/crash_portrait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/insight/runtime/ConfigManager;->setFileUploadUrl(Ljava/lang/String;)V

    sput-object p1, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    :cond_2
    return-object p0
.end method


# virtual methods
.method public addTags(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mTagMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public config()Lcom/apm/insight/MonitorCrash$Config;
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    return-object v0
.end method

.method public getPvTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mTagMap:Ljava/util/Map;

    return-object v0
.end method

.method public registerCrashCallback(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method

.method public registerOOMCallback(Lcom/apm/insight/IOOMCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/IOOMCallback;)V

    return-void
.end method

.method public reportCustomErr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apm/insight/MonitorCrash;->reportCustomErr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public reportCustomErr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "EnsureNotReachHere"

    :cond_0
    move-object v5, p2

    const/4 v3, 0x1

    const-string v6, "core_exception_monitor"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lgbsdk/common/host/abgb;->a(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportCustomErr([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p4, "EnsureNotReachHere"

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lgbsdk/common/host/abgb;->a([Ljava/lang/StackTraceElement;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setCustomDataCallback(Lcom/apm/insight/AttachUserData;)Lcom/apm/insight/MonitorCrash;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash;->mCustomData:Lcom/apm/insight/AttachUserData;

    return-object p0
.end method

.method public setReportUrl(Ljava/lang/String;)Lcom/apm/insight/MonitorCrash;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public start()V
    .locals 8

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v2

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isJavaCrashEnable()Z

    move-result v3

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isNativeCrashEnable()Z

    move-result v4

    invoke-static {}, Lcom/apm/insight/Npth;->getConfigManager()Lcom/apm/insight/runtime/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/ConfigManager;->isAnrEnable()Z

    move-result v5

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/apm/insight/runtime/p;->a(Landroid/content/Context;ZZZZJ)V

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    invoke-static {v0}, Lcom/apm/insight/MonitorCrash$Config;->f(Lcom/apm/insight/MonitorCrash$Config;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/apm/insight/MonitorCrash;->mIsApp:Z

    invoke-direct {p0, v0, v1}, Lcom/apm/insight/MonitorCrash;->initAppLog(Landroid/content/Context;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/apm/insight/MonitorCrash;->mIsApp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lgbsdk/common/host/abfg;->a(Landroid/content/Context;Lcom/apm/insight/MonitorCrash;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lgbsdk/common/host/abfg;->a(Lcom/apm/insight/MonitorCrash;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterCrashCallback(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/apm/insight/runtime/p;->b(Lcom/apm/insight/ICrashCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method

.method public unregisterOOMCallback(Lcom/apm/insight/IOOMCallback;Lcom/apm/insight/CrashType;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/apm/insight/runtime/p;->a(Lcom/apm/insight/IOOMCallback;Lcom/apm/insight/CrashType;)V

    return-void
.end method

.method public withOtherHeaders(Lcom/apm/insight/MonitorCrash$HeaderParams;)Lcom/apm/insight/MonitorCrash;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash;->mParams:Lcom/apm/insight/MonitorCrash$HeaderParams;

    return-object p0
.end method
