.class public Lcom/tencent/hawk/bridge/QccHandler;
.super Ljava/lang/Object;
.source "QccHandler.java"


# static fields
.field private static QUALITY_CACHE_FILE:Ljava/lang/String;

.field private static QUALITY_CACHE_QUALITY:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

.field private mFileCachedQualityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

.field private mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

.field private mSessionCachedQualityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    const-string v0, "apm_qcc_cache_control"

    sput-object v0, Lcom/tencent/hawk/bridge/QccHandler;->QUALITY_CACHE_FILE:Ljava/lang/String;

    .line 372
    const-string v0, "quality"

    sput-object v0, Lcom/tencent/hawk/bridge/QccHandler;->QUALITY_CACHE_QUALITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccHandler;->mAppId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    .line 26
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    .line 30
    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    .line 33
    iput-object p1, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/tencent/hawk/bridge/QccHandler;->mAppId:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/hawk/bridge/QccHandler;->mFileCachedQualityMap:Ljava/util/Map;

    .line 38
    return-void
.end method

.method private declared-synchronized checkQccEnable()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 366
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 358
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 359
    .local v2, "randSelector":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    rem-int/lit8 v5, v5, 0x64

    add-int/lit8 v1, v5, -0x1

    .line 360
    .local v1, "rand":I
    iget-object v5, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v6, "APMCfg"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 361
    .local v3, "settings":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_2

    .line 362
    const-string v5, "qcc_gray"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 363
    .local v0, "qccblock":I
    rsub-int/lit8 v5, v0, 0x64

    if-gt v1, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "qccblock":I
    :cond_2
    const-string v5, "apm cfg shared prefs is null"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    .end local v1    # "rand":I
    .end local v2    # "randSelector":Ljava/util/Random;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static isEmulator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "vendor"    # Ljava/lang/String;
    .param p1, "renderer"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 409
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 416
    :cond_1
    :goto_0
    return v0

    .line 413
    :cond_2
    const-string v2, "NA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 414
    goto :goto_0

    .line 415
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vender : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " renderer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 416
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkNative;->checkEmulator(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gt v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private readQualityCache()V
    .locals 8

    .prologue
    .line 393
    iget-object v4, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 406
    :cond_0
    return-void

    .line 395
    :cond_1
    iget-object v4, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/tencent/hawk/bridge/QccHandler;->QUALITY_CACHE_FILE:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 397
    .local v3, "settings":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 398
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 399
    .local v0, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v0, :cond_0

    .line 401
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 402
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 403
    .local v2, "quality":I
    iget-object v6, p0, Lcom/tencent/hawk/bridge/QccHandler;->mFileCachedQualityMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private writeQualityCache(Ljava/lang/String;I)V
    .locals 5
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 375
    iget-object v2, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    if-eqz p1, :cond_0

    .line 379
    iget-object v2, p0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/tencent/hawk/bridge/QccHandler;->QUALITY_CACHE_FILE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 380
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 381
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    const-string/jumbo v2, "writeQualityCache"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string/jumbo v2, "writeQualityCache error"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkDCLSByQcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "configureName"    # Ljava/lang/String;
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "renderer"    # Ljava/lang/String;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    if-eqz v13, :cond_2

    .line 43
    const/4 v10, 0x0

    .line 44
    .local v10, "quality":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 45
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 46
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "find cached quality "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 51
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Qcc judge value cached: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v10

    .line 345
    .end local v10    # "quality":I
    :cond_0
    :goto_1
    monitor-exit p0

    return v4

    .line 48
    .restart local v10    # "quality":I
    :cond_1
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "does not find matched config "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 49
    const/16 v13, 0x3f3

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v10    # "quality":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 55
    :cond_2
    :try_start_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    .line 57
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    if-ge v13, v14, :cond_3

    .line 58
    const-string v13, "SDK_INT less than 11, return 0"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 59
    const/16 v13, 0x3ea

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 60
    const/4 v4, 0x0

    goto :goto_1

    .line 63
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mAppId:Ljava/lang/String;

    if-nez v13, :cond_4

    .line 64
    const-string v13, "AppId not set "

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 65
    const/16 v13, 0x3eb

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 66
    const/4 v4, 0x0

    goto :goto_1

    .line 69
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    if-nez v13, :cond_5

    .line 70
    const-string v13, "Context not set "

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 71
    const/16 v13, 0x3ec

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 72
    const/4 v4, 0x0

    goto :goto_1

    .line 75
    :cond_5
    const/4 v4, 0x0

    .line 81
    .local v4, "fileCachedQuality":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mAppId:Ljava/lang/String;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_6

    .line 82
    new-instance v13, Lcom/tencent/hawk/bridge/QCCFetcher;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/hawk/bridge/QccHandler;->mAppId:Ljava/lang/String;

    const-string v16, "apm_qcc_preonce_cache"

    .line 83
    const-string v17, "apm_qcc_preonce"

    invoke-direct/range {v13 .. v17}, Lcom/tencent/hawk/bridge/QCCFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc_preonce"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 87
    .local v3, "file":Ljava/io/File;
    invoke-direct/range {p0 .. p0}, Lcom/tencent/hawk/bridge/QccHandler;->checkQccEnable()Z

    move-result v7

    .line 88
    .local v7, "isQccEnabled":Z
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "qcc enabled status: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 89
    if-eqz v7, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/QCCFetcher;->setQccFileReady()V

    .line 94
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "isQccEnabled":Z
    :cond_6
    const-string v13, "Begin to check device class"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    if-nez v13, :cond_13

    .line 96
    new-instance v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-direct {v13}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->manu:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->manu:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    const-string v14, "na"

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->manu:Ljava/lang/String;

    .line 100
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->model:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->model:Ljava/lang/String;

    if-nez v13, :cond_8

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    const-string v14, "na"

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->model:Ljava/lang/String;

    .line 104
    :cond_8
    if-eqz p2, :cond_9

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    .line 108
    :cond_9
    if-eqz p3, :cond_a

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    .line 112
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    if-nez v13, :cond_d

    .line 113
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler;->readGpuInfoByCache(Landroid/content/Context;)Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    move-result-object v5

    .line 114
    .local v5, "gpuInfo":Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    invoke-virtual {v5}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->isValid()Z

    move-result v13

    if-nez v13, :cond_c

    .line 115
    invoke-static {}, Lcom/tencent/hawk/bridge/GpuInfoHandler;->getGpuInfoByGLES()Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->isValid()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/tencent/hawk/bridge/GpuInfoHandler;->writeGpuInfoInCache(Landroid/content/Context;Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;)V

    .line 121
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-virtual {v5}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-virtual {v5}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    .line 125
    .end local v5    # "gpuInfo":Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    if-nez v13, :cond_e

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    const-string v14, "na"

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    .line 128
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    if-nez v13, :cond_f

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    const-string v14, "na"

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    .line 131
    :cond_f
    const-string v13, "Vendor: %s, Render: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuVendor:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->gpuRenderer:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->getPlatformInfo()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    const-string v14, "NA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getHardwareInfo()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    .line 139
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    if-nez v13, :cond_11

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    const-string v14, "na"

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    .line 142
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget-object v14, v14, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->socPlat:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getMemory()I

    move-result v14

    add-int/lit16 v14, v14, 0x3ff

    div-int/lit16 v14, v14, 0x400

    mul-int/lit16 v14, v14, 0x400

    iput v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->ram:I

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getCpuCoreNum()I

    move-result v14

    iput v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuCore:I

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuCore:I

    invoke-static {v13}, Lcom/tencent/hawk/bridge/DevPacket;->getCpuFreq(I)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v1

    .line 147
    .local v1, "cpuFreqPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mAppId:Ljava/lang/String;

    const-string v14, "APM_NBORN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-virtual {v1}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/high16 v15, 0x447a0000    # 1000.0f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    iput v13, v14, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuFreq:I

    .line 153
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    iget v13, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuFreq:I

    const/16 v14, 0x64

    if-ge v13, v14, :cond_12

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    const/16 v14, 0xbb8

    iput v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuFreq:I

    .line 156
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/tencent/hawk/bridge/DevPacket;->getMaxPixelsInDpy(Landroid/content/Context;)I

    move-result v14

    iput v14, v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->resolution:I

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 160
    .end local v1    # "cpuFreqPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_13
    const/4 v6, 0x0

    .line 162
    .local v6, "ifstream":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/QCCFetcher;->checkQccFileReady()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc_preonce"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/FileUtil;->checkFileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 164
    const-string v13, "local tmp once file exists"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc_preonce"

    const-string v15, "apm_qcc_finally"

    invoke-static {v13, v14, v15}, Lcom/tencent/hawk/bridge/FileUtil;->cpFileWithCtx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc_preonce"

    const-string v15, "apm_qcc"

    invoke-static {v13, v14, v15}, Lcom/tencent/hawk/bridge/FileUtil;->cpFileWithCtx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc_preonce"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 170
    .local v12, "srcFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v13

    if-nez v13, :cond_14

    .line 171
    const-string v13, "Delete APM_QCC_FILENAME_PREONCE file failed"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 172
    const/16 v13, 0x3ed

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 175
    :cond_14
    const-string v13, "Use qcc file"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc"

    invoke-virtual {v13, v14}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 185
    .end local v12    # "srcFile":Ljava/io/File;
    :cond_15
    :goto_3
    if-nez v6, :cond_16

    .line 187
    :try_start_4
    const-string v13, "Use local finally file"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc_finally"

    invoke-virtual {v13, v14}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 197
    :cond_16
    :goto_4
    if-nez v6, :cond_19

    .line 198
    :try_start_5
    const-string v13, "open apm_qcc_finally failed, return cached quality"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 200
    sget-boolean v13, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileFetchInSession:Z

    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    if-eqz v13, :cond_17

    .line 201
    const/16 v13, 0x3f0

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/tencent/hawk/bridge/QCCFetcher;->asynFetchQcc(I)V

    .line 205
    :cond_17
    if-gtz v4, :cond_0

    .line 208
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 150
    .end local v6    # "ifstream":Ljava/io/FileInputStream;
    .restart local v1    # "cpuFreqPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    invoke-virtual {v1}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/high16 v15, 0x447a0000    # 1000.0f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    iput v13, v14, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;->cpuFreq:I

    goto/16 :goto_2

    .line 178
    .end local v1    # "cpuFreqPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    .restart local v6    # "ifstream":Ljava/io/FileInputStream;
    .restart local v12    # "srcFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v13, "open apm_qcc failed "

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 180
    const/4 v6, 0x0

    .line 181
    const/16 v13, 0x3ee

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    goto :goto_3

    .line 189
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "srcFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 190
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 191
    const-string v13, "open apm_qcc_finally failed"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 192
    const/16 v13, 0x3ef

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 193
    const/4 v6, 0x0

    goto :goto_4

    .line 211
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    if-nez v13, :cond_1b

    .line 212
    new-instance v13, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    invoke-direct {v13}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    .line 213
    const/4 v8, 0x0

    .line 216
    .local v8, "parseQccFlag":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    invoke-virtual {v13, v6}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->parseQccFile(Ljava/io/InputStream;)Z

    move-result v8

    .line 217
    if-eqz v8, :cond_1e

    .line 314
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->getQccVersion()I

    move-result v9

    .line 316
    .local v9, "qccVersion":I
    sget-boolean v13, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileFetchInSession:Z

    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    if-eqz v13, :cond_1b

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    invoke-virtual {v13, v9}, Lcom/tencent/hawk/bridge/QCCFetcher;->asynFetchQcc(I)V

    .line 321
    .end local v8    # "parseQccFlag":Z
    .end local v9    # "qccVersion":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/QccHandler;->mDeviceParam:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    invoke-virtual {v13, v14, v15}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->judgeDclsBatch(Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion$QCCParam;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    if-eqz v6, :cond_1c

    .line 325
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    const/4 v6, 0x0

    .line 332
    :cond_1c
    :goto_5
    const/4 v11, 0x0

    .line 333
    .local v11, "retValue":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mSessionCachedQualityMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 339
    :cond_1d
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Qcc judge value : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v4, v11

    .line 345
    goto/16 :goto_1

    .line 220
    .end local v11    # "retValue":I
    .restart local v8    # "parseQccFlag":Z
    :cond_1e
    if-eqz v6, :cond_1f

    .line 222
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 223
    const/4 v6, 0x0

    .line 229
    :cond_1f
    :goto_6
    const/16 v13, 0x3f9

    :try_start_9
    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 235
    const-string v13, "PARSE QCC FILE ERROR"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/hawk/bridge/QccHandler;->mAppId:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/QCCFetcher;->cpAssetFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->clearContext()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 240
    :try_start_a
    const-string v13, "USE PACKED FILE"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mContext:Landroid/content/Context;

    const-string v14, "apm_qcc_finally"

    invoke-virtual {v13, v14}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v6

    .line 249
    :goto_7
    if-nez v6, :cond_21

    .line 250
    :try_start_b
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "PACKET FILE NULL ERROR, DEFAULT: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 252
    const/16 v13, 0x3fe

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 253
    sget-boolean v13, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileFetchInSession:Z

    if-nez v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    if-eqz v13, :cond_20

    .line 254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/tencent/hawk/bridge/QCCFetcher;->asynFetchQcc(I)V

    .line 257
    :cond_20
    if-gtz v4, :cond_0

    .line 260
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 224
    :catch_2
    move-exception v2

    .line 225
    .local v2, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_6

    .line 242
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v13, "open apm_qcc_finally failed"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 245
    const/16 v13, 0x3fa

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 246
    const/4 v6, 0x0

    goto :goto_7

    .line 263
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mJudger:Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;

    invoke-virtual {v13, v6}, Lcom/tencent/hawk/bridge/QCCJudgerMultiVersion;->parseQccFile(Ljava/io/InputStream;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v8

    .line 264
    if-nez v8, :cond_1a

    .line 267
    if-eqz v6, :cond_22

    .line 269
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 270
    const/4 v6, 0x0

    .line 275
    :cond_22
    :goto_8
    :try_start_d
    const-string v13, "Parse file failed"

    invoke-static {v13}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 276
    const/16 v13, 0x3fb

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 277
    sget-boolean v13, Lcom/tencent/hawk/bridge/QCCFetcher;->isQccFileFetchInSession:Z

    if-nez v13, :cond_23

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    if-eqz v13, :cond_23

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/hawk/bridge/QccHandler;->mQccFetcherOnce:Lcom/tencent/hawk/bridge/QCCFetcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/tencent/hawk/bridge/QCCFetcher;->asynFetchQcc(I)V

    .line 279
    const/16 v13, 0x3fc

    const-string v14, "Qcc"

    invoke-static {v13, v14}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 283
    :cond_23
    if-gtz v4, :cond_0

    .line 286
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 271
    :catch_4
    move-exception v2

    .line 272
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8

    .line 327
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "parseQccFlag":Z
    :catch_5
    move-exception v13

    goto/16 :goto_5
.end method
