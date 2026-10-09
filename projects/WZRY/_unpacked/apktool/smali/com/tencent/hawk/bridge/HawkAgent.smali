.class public Lcom/tencent/hawk/bridge/HawkAgent;
.super Ljava/lang/Object;
.source "HawkAgent.java"


# static fields
.field private static bCtxInit:Z

.field private static isGpuInfoNativeSet:Z

.field private static isInitGpuInfoValid:Z

.field private static isLevalLoaded:Z

.field private static isLevelFin:Z

.field private static isSpecialProj:Z

.field private static isStatusSet:Z

.field private static isStreamEventComplete:Z

.field private static isStreamEventEnabled:Z

.field private static isStreamEventInit:Z

.field private static isTApmEnabled:Z

.field private static isTrackStateInit:Z

.field private static isUEInit:Z

.field private static mStreamEventSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppId:Ljava/lang/String;

.field private static sBackwardStartIdx:I

.field private static sBuglySet:Z

.field private static sContext:Landroid/content/Context;

.field private static sCurrentSceneName:Ljava/lang/String;

.field private static sForwardStartIdx:I

.field private static sGlobalQuality:I

.field private static sGpuRender:Ljava/lang/String;

.field private static sGpuVendor:Ljava/lang/String;

.field private static sGpuVersion:Ljava/lang/String;

.field private static sInitMarkStartTime:J

.field private static sQccHandler:Lcom/tencent/hawk/bridge/QccHandler;

.field private static sTagStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 30
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z

    .line 31
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    .line 33
    const/16 v0, 0x7530

    sput v0, Lcom/tencent/hawk/bridge/HawkAgent;->sForwardStartIdx:I

    .line 34
    sget v0, Lcom/tencent/hawk/bridge/HawkAgent;->sForwardStartIdx:I

    sput v0, Lcom/tencent/hawk/bridge/HawkAgent;->sBackwardStartIdx:I

    .line 35
    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    .line 37
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isLevalLoaded:Z

    .line 38
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isLevelFin:Z

    .line 39
    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    .line 40
    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sUserId:Ljava/lang/String;

    .line 41
    sput v2, Lcom/tencent/hawk/bridge/HawkAgent;->sGlobalQuality:I

    .line 42
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->sBuglySet:Z

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isInitGpuInfoValid:Z

    .line 45
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isGpuInfoNativeSet:Z

    .line 47
    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sQccHandler:Lcom/tencent/hawk/bridge/QccHandler;

    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/hawk/bridge/HawkAgent;->sInitMarkStartTime:J

    .line 51
    const-string v0, "NA"

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    .line 52
    const-string v0, "NA"

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    .line 53
    const-string v0, "NA"

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    .line 54
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isSpecialProj:Z

    .line 55
    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    .line 187
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isUEInit:Z

    .line 1058
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isStatusSet:Z

    .line 1271
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventInit:Z

    .line 1272
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventEnabled:Z

    .line 1273
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventComplete:Z

    .line 1274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->mStreamEventSet:Ljava/util/Set;

    .line 1384
    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isTrackStateInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ayncFetchQccQuality()V
    .locals 2

    .prologue
    .line 1255
    const-class v1, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v1

    :try_start_0
    const-string v0, "no implementation"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    monitor-exit v1

    return-void

    .line 1255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static beginTag(Ljava/lang/String;)V
    .locals 3
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 475
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-eqz v0, :cond_0

    .line 481
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 482
    const-string v0, "AddTag ERROR, no current scene set"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_2
    if-nez p0, :cond_3

    .line 487
    const-string v0, "AddTag ERROR, TagName is null"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_3
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    .line 496
    const-string v0, "AddTag ERROR, reaches max limit 8, return"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_4
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddTag ERROR, equals the last TagName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_5
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget v0, Lcom/tencent/hawk/bridge/HawkAgent;->sBackwardStartIdx:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/tencent/hawk/bridge/HawkNative;->levelControl(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static beginTupleWrap(Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->beginTupleWrap(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public static beignExclude()V
    .locals 1

    .prologue
    .line 1443
    const-string v0, "beignExclude"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkAgent;->validCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    :goto_0
    return-void

    .line 1446
    :cond_0
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->beignExclude()V

    goto :goto_0
.end method

.method public static checkDCLS(Ljava/lang/String;)I
    .locals 1
    .param p0, "renderer"    # Ljava/lang/String;

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized checkDCLSByQcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "configName"    # Ljava/lang/String;
    .param p1, "vendor"    # Ljava/lang/String;
    .param p2, "renderer"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1062
    const-class v3, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sQccHandler:Lcom/tencent/hawk/bridge/QccHandler;

    if-nez v2, :cond_1

    .line 1063
    const-string v2, "QccHandler is null"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1064
    const/16 v2, 0x3e8

    const-string v4, "Qcc"

    invoke-static {v2, v4}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    :cond_0
    :goto_0
    monitor-exit v3

    return v1

    .line 1068
    :cond_1
    :try_start_1
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/hawk/bridge/VersionHandler;->checkCacheValidation(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1069
    const-string v2, "Version changed, needs to flush cached info and cp files"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 1070
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/tencent/hawk/bridge/QCCFetcher;->cpAssetFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1071
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v4, "apm_qcc_preonce"

    invoke-static {v2, v4}, Lcom/tencent/hawk/bridge/FileUtil;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1072
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v4, "apm_qcc_finally"

    const-string v5, "apm_qcc_preonce"

    invoke-static {v2, v4, v5}, Lcom/tencent/hawk/bridge/FileUtil;->cpFileWithCtx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1075
    :cond_2
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v4, "apm_qcc_finally"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1076
    .local v0, "qccFinallyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1077
    const-string v2, "Cannot find finally file, cp qcc from asset"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 1078
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/tencent/hawk/bridge/QCCFetcher;->cpAssetFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1079
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v4, "apm_qcc_finally"

    const-string v5, "apm_qcc_preonce"

    invoke-static {v2, v4, v5}, Lcom/tencent/hawk/bridge/FileUtil;->cpFileWithCtx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1080
    const-string v2, "end cp asset file"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 1083
    :cond_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1084
    :cond_4
    const-string v2, "Param is null"

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1085
    const/16 v2, 0x3e9

    const-string v4, "Qcc"

    invoke-static {v2, v4}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1062
    .end local v0    # "qccFinallyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1089
    .restart local v0    # "qccFinallyFile":Ljava/io/File;
    :cond_5
    :try_start_2
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sQccHandler:Lcom/tencent/hawk/bridge/QccHandler;

    invoke-virtual {v2, p0, p1, p2}, Lcom/tencent/hawk/bridge/QccHandler;->checkDCLSByQcc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1090
    .local v1, "retValue":I
    sget-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isStatusSet:Z

    if-nez v2, :cond_0

    .line 1091
    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isStatusSet:Z

    .line 1092
    const/16 v2, 0x3ff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static checkDeviceIsReal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->checkDeviceIsReal()Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "isReal":Ljava/lang/String;
    return-object v0
.end method

.method private static checkTMode()V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/__apmtmode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->turnOnTMode()V

    .line 873
    :cond_0
    return-void
.end method

.method private static commonInit(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pAppid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 124
    if-nez p0, :cond_0

    move v1, v12

    .line 183
    :goto_0
    return v1

    .line 127
    :cond_0
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "Application alreay init"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move v1, v12

    .line 129
    goto :goto_0

    .line 133
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/hawk/bridge/HawkAgent;->sInitMarkStartTime:J

    .line 134
    sput-object p0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 136
    invoke-static {p1}, Lcom/tencent/hawk/bridge/HawkAgent;->setAppId(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/hawk/bridge/MetaInfo;->initMetaCtx(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->isInitSuccessed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    const-string v1, "init failed"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move v1, v12

    .line 143
    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getManu()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getAbi()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getMacAddr()J

    move-result-wide v4

    .line 147
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getIpAddr()J

    move-result-wide v6

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getBuildInt()I

    move-result v8

    const/16 v9, 0x26c

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getOsLevel()I

    move-result v10

    .line 146
    invoke-static/range {v1 .. v10}, Lcom/tencent/hawk/bridge/CC;->initCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIII)V

    .line 149
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    const-string v3, "NA"

    const-string v4, "NA"

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/hawk/bridge/CC;->isHawkEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    .line 150
    .local v11, "hawkEnabled":Z
    sput-boolean v11, Lcom/tencent/hawk/bridge/CC;->isTApmEnabled:Z

    .line 152
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->isAvm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    const-string v1, "iToolAvm"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move v1, v12

    .line 154
    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Lcom/tencent/hawk/bridge/Fetcher;

    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tencent/hawk/bridge/Fetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    .local v0, "asyFetcher":Lcom/tencent/hawk/bridge/Fetcher;
    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/Fetcher;->asynFetch()V

    .line 169
    if-nez v11, :cond_4

    .line 170
    const-string v1, "TAPM DISABLED"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move v1, v12

    .line 171
    goto :goto_0

    .line 174
    :cond_4
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getBlockMask()I

    move-result v1

    const/16 v2, 0x1ff

    if-ne v1, v2, :cond_5

    .line 175
    const-string v1, "MASK is 511"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    move v1, v12

    .line 176
    goto/16 :goto_0

    .line 179
    :cond_5
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getBlockMask()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 180
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getBlockMask()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkAgent;->disableOpts(I)V

    .line 183
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static disableOpts(I)V
    .locals 1
    .param p0, "opts"    # I

    .prologue
    .line 559
    const/16 v0, 0x1ff

    if-le p0, v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->disableOpts(I)V

    goto :goto_0
.end method

.method public static enableDebugMode()V
    .locals 0

    .prologue
    .line 854
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkLogger;->enableDebug()V

    .line 855
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->enableLogPrint()V

    .line 857
    return-void
.end method

.method public static enableStreamEvent()V
    .locals 31

    .prologue
    .line 1278
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-nez v1, :cond_0

    .line 1321
    .local v3, "imeiValue":J
    .local v13, "androidId":Ljava/lang/String;
    .local v14, "defaultUserId":Ljava/lang/String;
    .local v27, "hardware":Ljava/lang/String;
    .local v28, "ifInfo":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local v29, "settings":Landroid/content/SharedPreferences;
    .local v30, "uuidPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_0
    return-void

    .line 1281
    .end local v3    # "imeiValue":J
    .end local v13    # "androidId":Ljava/lang/String;
    .end local v14    # "defaultUserId":Ljava/lang/String;
    .end local v27    # "hardware":Ljava/lang/String;
    .end local v28    # "ifInfo":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v29    # "settings":Landroid/content/SharedPreferences;
    .end local v30    # "uuidPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    sget-boolean v1, Lcom/tencent/hawk/bridge/CC;->isSECOREnabled:Z

    if-nez v1, :cond_1

    .line 1282
    const-string v1, "StreamEvent is disabled"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1286
    :cond_1
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getPermissionFlag()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/hawk/bridge/DevPacket;->getIMEIUnderPermission(Landroid/content/Context;I)J

    move-result-wide v3

    .line 1287
    .restart local v3    # "imeiValue":J
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/hawk/bridge/DevPacket;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 1288
    .restart local v13    # "androidId":Ljava/lang/String;
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/hawk/bridge/DevPacket;->getUUID(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v30

    .line 1289
    .restart local v30    # "uuidPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/hawk/bridge/DevPacket;->GetInternalFlashSz(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v28

    .line 1291
    .restart local v28    # "ifInfo":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v14, "NA"

    .line 1292
    .restart local v14    # "defaultUserId":Ljava/lang/String;
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v2, "APMCfg"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    .line 1293
    .restart local v29    # "settings":Landroid/content/SharedPreferences;
    if-eqz v29, :cond_2

    .line 1294
    const-string v1, "apm_user_name"

    const-string v2, "APM_HN"

    move-object/from16 v0, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1297
    :cond_2
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getHardwareInfo()Ljava/lang/String;

    move-result-object v27

    .line 1305
    .restart local v27    # "hardware":Ljava/lang/String;
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1306
    const-string v1, "NA"

    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    .line 1307
    :cond_3
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1308
    const-string v1, "NA"

    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    .line 1309
    :cond_4
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 1310
    const-string v1, "NA"

    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    .line 1311
    :cond_5
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getMacAddr()J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getBuildStr()Ljava/lang/String;

    move-result-object v6

    .line 1312
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getManu()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getAbi()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    sget-object v11, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    sget-object v12, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    .line 1313
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getBuildInt()I

    move-result v15

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getCpuCore()I

    move-result v16

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getRam()I

    move-result v17

    .line 1314
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getCpuFreqMax()I

    move-result v18

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getOsLevel()I

    move-result v19

    invoke-virtual/range {v28 .. v28}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->intValue()I

    move-result v20

    .line 1315
    invoke-virtual/range {v28 .. v28}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->intValue()I

    move-result v21

    invoke-virtual/range {v30 .. v30}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v30 .. v30}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getNetworkType()I

    move-result v26

    .line 1311
    invoke-static/range {v1 .. v27}, Lcom/tencent/hawk/bridge/HawkNative;->initStreamEvent(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJJILjava/lang/String;)V

    .line 1318
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkNative;->launchStreamEvent(Ljava/lang/String;)V

    .line 1320
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventEnabled:Z

    goto/16 :goto_0
.end method

.method public static endExclude()V
    .locals 1

    .prologue
    .line 1450
    const-string v0, "endExclude"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkAgent;->validCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1453
    :cond_0
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->endExclude()V

    goto :goto_0
.end method

.method public static endTag()V
    .locals 4

    .prologue
    .line 512
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 513
    const-string v1, "EndTag ERROR, there\'s no tag set"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 519
    .local v0, "lastTag":Ljava/lang/String;
    :goto_0
    return-void

    .line 517
    .end local v0    # "lastTag":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    .restart local v0    # "lastTag":Ljava/lang/String;
    sget v1, Lcom/tencent/hawk/bridge/HawkAgent;->sBackwardStartIdx:I

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/hawk/bridge/HawkNative;->levelControl(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static endTupleWrap()V
    .locals 0

    .prologue
    .line 996
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->endTupleWrap()V

    .line 997
    return-void
.end method

.method public static genTmpCCFile(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bugly"    # Z

    .prologue
    .line 1101
    if-eqz p1, :cond_0

    .line 1103
    :try_start_0
    const-string v6, "com.tencent.bugly.crashreport.CrashReport"

    const-string v7, "initCrashReport"

    .line 1104
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 1105
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    const-string v11, "a7b2de6200"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    .line 1103
    invoke-static {v6, v7, v8, v9}, Lcom/tencent/hawk/bridge/RefInvoke;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1127
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 1128
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 1131
    .local v0, "br":Ljava/io/BufferedWriter;
    :try_start_1
    const-string v6, "apm_cc"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1132
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .local v1, "br":Ljava/io/BufferedWriter;
    :try_start_2
    const-string v2, "32512;0;112;0;0;0;0;0;0;0;0;0;100;1;2622463251"

    .line 1143
    .local v2, "ccStr":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1153
    if-eqz v1, :cond_3

    .line 1155
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    move-object v0, v1

    .line 1161
    .end local v1    # "br":Ljava/io/BufferedWriter;
    .end local v2    # "ccStr":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 1106
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 1107
    .local v4, "e1":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1108
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RefError :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    .end local v4    # "e1":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 1110
    .local v4, "e1":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1111
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RefError :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    .end local v4    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 1113
    .local v4, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1114
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RefError :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    .end local v4    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v4

    .line 1116
    .local v4, "e1":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 1117
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RefError :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    .end local v4    # "e1":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 1119
    .local v4, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1120
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RefError :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1121
    .end local v4    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v4

    .line 1122
    .local v4, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 1123
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "RefError :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1146
    .end local v4    # "e1":Ljava/lang/IllegalAccessException;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v3

    .line 1147
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1148
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1153
    if-eqz v0, :cond_1

    .line 1155
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_1

    .line 1156
    :catch_7
    move-exception v3

    .line 1157
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1150
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 1151
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1153
    if-eqz v0, :cond_1

    .line 1155
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto/16 :goto_1

    .line 1156
    :catch_9
    move-exception v3

    .line 1157
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1152
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1153
    :goto_4
    if-eqz v0, :cond_2

    .line 1155
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 1160
    :cond_2
    :goto_5
    throw v6

    .line 1156
    :catch_a
    move-exception v3

    .line 1157
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1156
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v2    # "ccStr":Ljava/lang/String;
    :catch_b
    move-exception v3

    .line 1157
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    goto/16 :goto_1

    .line 1152
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .end local v2    # "ccStr":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 1150
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .restart local v1    # "br":Ljava/io/BufferedWriter;
    :catch_c
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1146
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .restart local v1    # "br":Ljava/io/BufferedWriter;
    :catch_d
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public static getCtx()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1040
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentThreadTid()I
    .locals 1

    .prologue
    .line 1421
    invoke-static {}, Lcom/tencent/hawk/bridge/VmpHelper;->getCurrentThreadTid()I

    move-result v0

    return v0
.end method

.method public static getQuality()I
    .locals 1

    .prologue
    .line 305
    sget v0, Lcom/tencent/hawk/bridge/HawkAgent;->sGlobalQuality:I

    return v0
.end method

.method public static declared-synchronized getUnityAppContext()Landroid/content/Context;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 522
    const-class v4, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 524
    :try_start_1
    const-string v5, "android.app.ActivityThread"

    .line 525
    const-string v6, "currentActivityThread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    .line 524
    invoke-static {v5, v6, v7, v8}, Lcom/tencent/hawk/bridge/RefInvoke;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 527
    .local v1, "currentActivityThread":Ljava/lang/Object;
    const-string v5, "android.app.ActivityThread"

    .line 528
    const-string v6, "mInitialApplication"

    .line 527
    invoke-static {v5, v1, v6}, Lcom/tencent/hawk/bridge/RefInvoke;->getFieldObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 530
    .local v0, "application":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 531
    const/4 v5, 0x0

    sput-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .end local v0    # "application":Ljava/lang/Object;
    :goto_0
    monitor-exit v4

    return-object v3

    .line 534
    .restart local v0    # "application":Ljava/lang/Object;
    :cond_0
    :try_start_2
    check-cast v0, Landroid/content/Context;

    .end local v0    # "application":Ljava/lang/Object;
    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    :cond_1
    :goto_1
    :try_start_3
    sget-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    goto :goto_0

    .line 535
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "get app context fail"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 537
    const/4 v3, 0x0

    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 522
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getUnityCurrentActivity()Landroid/app/Activity;
    .locals 5

    .prologue
    .line 546
    const-class v3, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v3

    :try_start_0
    const-string v2, "com.unity3d.player.UnityPlayer"

    const-string v4, "currentActivity"

    invoke-static {v2, v4}, Lcom/tencent/hawk/bridge/RefInvoke;->getStaticFieldObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 547
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 548
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    monitor-exit v3

    return-object v1

    .line 549
    .restart local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Failed to get the current activity from UnityPlayer "

    invoke-static {v2}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized hawkInitForCocos(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpuvendor"    # Ljava/lang/String;
    .param p2, "gpurenderer"    # Ljava/lang/String;
    .param p3, "gpuversion"    # Ljava/lang/String;

    .prologue
    .line 597
    const-class v1, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 599
    invoke-static {p1, p2, p3}, Lcom/tencent/hawk/bridge/HawkAgent;->hawkInitPortal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized hawkInitForUnity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "pVendor"    # Ljava/lang/String;
    .param p2, "pRender"    # Ljava/lang/String;
    .param p3, "pVersion"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 604
    const-class v2, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 605
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityAppContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 606
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 607
    const-string v1, "get context error, try alternative ways"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 612
    :cond_0
    sput-object p1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    .line 613
    sput-object p2, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    .line 614
    sput-object p3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    .line 616
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 617
    const-string v1, "init context error"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 618
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :goto_0
    monitor-exit v2

    return v0

    .line 622
    :cond_1
    :try_start_1
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/tencent/hawk/bridge/HawkAgent;->commonInit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 623
    const-string v1, "Init failed, return"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 624
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 628
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isTickFrameEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 629
    const-string v1, "TAPM TF ENABLED"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->setManualPostFrame()V

    .line 638
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/tencent/hawk/bridge/HawkAgent;->hawkInitPortal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 639
    .local v0, "initFlag":I
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z

    goto :goto_0

    .line 632
    .end local v0    # "initFlag":I
    :cond_3
    const-string v1, "TAPM TF DISABLED"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized hawkInitPortal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 41
    .param p0, "gpuvendor"    # Ljava/lang/String;
    .param p1, "gpurenderer"    # Ljava/lang/String;
    .param p2, "gpuversion"    # Ljava/lang/String;

    .prologue
    .line 646
    const-class v40, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v40

    :try_start_0
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 647
    const-string v5, "AppId is null"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    const/4 v5, -0x1

    .line 818
    :goto_0
    monitor-exit v40

    return v5

    .line 651
    :cond_0
    :try_start_1
    sget-boolean v5, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z

    if-eqz v5, :cond_1

    .line 652
    const-string v5, "Application alreay init"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 653
    const/4 v5, -0x1

    goto :goto_0

    .line 656
    :cond_1
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 657
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityAppContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 658
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 659
    const-string v5, "get context error, try alternative ways"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    sput-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 664
    :cond_2
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v5, :cond_3

    .line 665
    const-string v5, "init context error"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 666
    const/4 v5, -0x1

    goto :goto_0

    .line 687
    :cond_3
    const/16 v5, 0x26c

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkNative;->setSDKVersion(I)V

    .line 689
    const-string v5, "TAPM VERSION: 620"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 690
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/hawk/bridge/FileUtil;->cleanSpace(Landroid/content/Context;)V

    .line 693
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sUserId:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 694
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v6, "APMCfg"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 695
    .local v38, "settings":Landroid/content/SharedPreferences;
    if-eqz v38, :cond_4

    .line 696
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    .line 697
    .local v28, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v28, :cond_4

    .line 698
    const-string v5, "apm_user_name"

    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sUserId:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 699
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 704
    .end local v28    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v38    # "settings":Landroid/content/SharedPreferences;
    :cond_4
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sUserId:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 706
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v6, "APMCfg"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 707
    .restart local v38    # "settings":Landroid/content/SharedPreferences;
    if-eqz v38, :cond_5

    .line 708
    const-string v5, "apm_user_name"

    .line 709
    const-string v6, "APM_HN"

    .line 708
    move-object/from16 v0, v38

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 710
    .local v26, "defaultUserId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retrive last login name : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V

    .line 711
    if-eqz v26, :cond_5

    .line 712
    invoke-static/range {v26 .. v26}, Lcom/tencent/hawk/bridge/HawkNative;->setUserId(Ljava/lang/String;)V

    .line 717
    .end local v26    # "defaultUserId":Ljava/lang/String;
    .end local v38    # "settings":Landroid/content/SharedPreferences;
    :cond_5
    const/16 v35, 0x0

    .line 718
    .local v35, "initFlag":I
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getManu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HUAWEI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getManu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HONOR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 719
    :cond_6
    add-int/lit8 v35, v35, 0x1

    .line 720
    :cond_7
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getAbi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ARM64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 721
    add-int/lit8 v35, v35, 0x2

    .line 723
    :cond_8
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->toMsg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Imei:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getImei()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mac :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getMacAddr()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getFBCheckGray()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkNative;->setFBCheckPb(I)V

    .line 733
    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    .line 734
    :cond_9
    const-string p0, "NA"

    .line 736
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_c

    .line 737
    :cond_b
    const-string p1, "NA"

    .line 740
    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    .line 741
    :cond_d
    const-string p2, "NA"

    .line 744
    :cond_e
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getPermissionFlag()I

    move-result v6

    invoke-static {v5, v6}, Lcom/tencent/hawk/bridge/DevPacket;->getIMEIUnderPermission(Landroid/content/Context;I)J

    move-result-wide v36

    .line 745
    .local v36, "imeiValue":J
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/hawk/bridge/DevPacket;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 746
    .local v4, "androidId":Ljava/lang/String;
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/hawk/bridge/DevPacket;->getUUID(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v39

    .line 748
    .local v39, "uuidPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static/range {v36 .. v37}, Lcom/tencent/hawk/bridge/HawkNative;->setIMEI(J)V

    .line 749
    invoke-static {v4}, Lcom/tencent/hawk/bridge/HawkNative;->setAndroidId(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {v39 .. v39}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v39 .. v39}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/tencent/hawk/bridge/HawkNative;->setUUID(JJ)V

    .line 752
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    .line 753
    .local v25, "country":Ljava/lang/String;
    if-nez v25, :cond_f

    .line 754
    const-string v25, "NA"

    .line 755
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v5}, Lcom/tencent/hawk/bridge/HawkNative;->setLocale(Ljava/lang/String;I)V

    .line 756
    const/16 v34, 0x0

    .line 757
    .local v34, "ifSz":I
    const/16 v32, 0x0

    .line 758
    .local v32, "ifAvailableSz":I
    const/16 v31, 0x0

    .line 759
    .local v31, "efSz":I
    const/16 v29, 0x0

    .line 761
    .local v29, "efAvailableSz":I
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isInternalFlashInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 762
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/hawk/bridge/DevPacket;->GetInternalFlashSz(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v33

    .line 763
    .local v33, "ifInfo":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {v33 .. v33}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v34

    .line 764
    invoke-virtual/range {v33 .. v33}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v32

    .line 767
    .end local v33    # "ifInfo":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_10
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isExternalFlashInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 768
    const-string v5, "External FlashInfo enabled"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 769
    sget-object v5, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/hawk/bridge/DevPacket;->getExternalFlashSz(Landroid/content/Context;)Lcom/tencent/hawk/bridge/Pair;

    move-result-object v30

    .line 770
    .local v30, "efInfo":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual/range {v30 .. v30}, Lcom/tencent/hawk/bridge/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v31

    .line 771
    invoke-virtual/range {v30 .. v30}, Lcom/tencent/hawk/bridge/Pair;->getRight()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v29

    .line 774
    .end local v30    # "efInfo":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_11
    move/from16 v0, v34

    move/from16 v1, v32

    move/from16 v2, v31

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/hawk/bridge/HawkNative;->setFlashInfo(IIII)V

    .line 775
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FlashInfo: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isHardwareEnabled()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 778
    invoke-static {}, Lcom/tencent/hawk/bridge/DevPacket;->getHardwareInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkNative;->setHardwareInfo(Ljava/lang/String;)V

    .line 783
    :goto_1
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isQemuHardwareBlocked()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 784
    const-string v5, "Block Tencent Qemu info"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->setTencentQemuBlocked()V

    .line 788
    :cond_12
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getPssAlgRand()I

    move-result v5

    .line 789
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getJavaPssRand()I

    move-result v6

    .line 790
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getPssIntervals()I

    move-result v7

    .line 791
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getFileBufferSz()I

    move-result v8

    .line 788
    invoke-static {v5, v6, v7, v8}, Lcom/tencent/hawk/bridge/HawkNative;->setRunConfigPolicy(IIII)V

    .line 793
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getFileCompressNum()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkNative;->setCompressFormatRand(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    :try_start_2
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getRandSeed()I

    move-result v5

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getMacAddr()J

    move-result-wide v6

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getImei()J

    move-result-wide v8

    .line 798
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getBuildStr()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getManu()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getModel()Ljava/lang/String;

    move-result-object v13

    .line 799
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getAbi()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getBuildInt()I

    move-result v18

    .line 800
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getCpuCore()I

    move-result v19

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getRam()I

    move-result v20

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getCpuFreqMax()I

    move-result v21

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getOsLevel()I

    move-result v22

    .line 801
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getNetworkType()I

    move-result v23

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getCpuFreqMin()I

    move-result v24

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    .line 796
    invoke-static/range {v5 .. v24}, Lcom/tencent/hawk/bridge/HawkNative;->initCommitter(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    .line 803
    const-string v5, "begin init hawk"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 804
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getRandSeed()I

    move-result v6

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getOsLevel()I

    move-result v7

    move/from16 v0, v35

    invoke-static {v5, v6, v0, v7}, Lcom/tencent/hawk/bridge/HawkNative;->launchHawk(Ljava/lang/String;III)V

    .line 805
    const-string v5, "TApm End Init Hawk"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 807
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "Launch"

    invoke-static {v5, v6, v7, v8}, Lcom/tencent/hawk/bridge/HawkAgent;->postStreamEvent(IIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 815
    :try_start_3
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->initExtMsg()V

    .line 816
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z

    .line 817
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    .line 818
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 780
    :cond_13
    const-string v5, "NA"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkNative;->setHardwareInfo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 646
    .end local v4    # "androidId":Ljava/lang/String;
    .end local v25    # "country":Ljava/lang/String;
    .end local v29    # "efAvailableSz":I
    .end local v31    # "efSz":I
    .end local v32    # "ifAvailableSz":I
    .end local v34    # "ifSz":I
    .end local v35    # "initFlag":I
    .end local v36    # "imeiValue":J
    .end local v39    # "uuidPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v40

    throw v5

    .line 809
    .restart local v4    # "androidId":Ljava/lang/String;
    .restart local v25    # "country":Ljava/lang/String;
    .restart local v29    # "efAvailableSz":I
    .restart local v31    # "efSz":I
    .restart local v32    # "ifAvailableSz":I
    .restart local v34    # "ifSz":I
    .restart local v35    # "initFlag":I
    .restart local v36    # "imeiValue":J
    .restart local v39    # "uuidPair":Lcom/tencent/hawk/bridge/Pair;, "Lcom/tencent/hawk/bridge/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_0
    move-exception v27

    .line 810
    .local v27, "e":Ljava/lang/Exception;
    const/4 v5, 0x1

    :try_start_4
    sput-boolean v5, Lcom/tencent/hawk/bridge/HawkAgent;->bCtxInit:Z

    .line 811
    const-string v5, "HawkNative.initCommitter exception"

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 813
    const/4 v5, -0x1

    goto/16 :goto_0
.end method

.method public static initContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pAppid"    # Ljava/lang/String;

    .prologue
    .line 191
    if-nez p0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-boolean v3, Lcom/tencent/hawk/bridge/HawkAgent;->isUEInit:Z

    if-nez v3, :cond_0

    .line 196
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/hawk/bridge/HawkAgent;->isUEInit:Z

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/tencent/hawk/bridge/HawkAgent;->sInitMarkStartTime:J

    .line 199
    sput-object p0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 201
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkAgent;->setBuildEnv(I)V

    .line 202
    invoke-static/range {p1 .. p1}, Lcom/tencent/hawk/bridge/HawkAgent;->setAppId(Ljava/lang/String;)V

    .line 206
    sget-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/hawk/bridge/MetaInfo;->initMetaCtx(Landroid/content/Context;)V

    .line 207
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->isInitSuccessed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    const-string v3, "init failed"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->isAvm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    const-string v3, "iToolAvm"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getManu()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getAbi()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getMacAddr()J

    move-result-wide v6

    .line 218
    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getIpAddr()J

    move-result-wide v8

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getBuildInt()I

    move-result v10

    const/16 v11, 0x26c

    invoke-static {}, Lcom/tencent/hawk/bridge/MetaInfo;->getOsLevel()I

    move-result v12

    .line 217
    invoke-static/range {v3 .. v12}, Lcom/tencent/hawk/bridge/CC;->initCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIII)V

    .line 220
    sget-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    const-string v5, "NA"

    const-string v6, "NA"

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/hawk/bridge/CC;->isHawkEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 221
    .local v14, "isTApmEnabled":Z
    sput-boolean v14, Lcom/tencent/hawk/bridge/CC;->isTApmEnabled:Z

    .line 224
    new-instance v2, Lcom/tencent/hawk/bridge/Fetcher;

    sget-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/tencent/hawk/bridge/Fetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    .local v2, "asyFetcher":Lcom/tencent/hawk/bridge/Fetcher;
    invoke-virtual {v2}, Lcom/tencent/hawk/bridge/Fetcher;->asynFetch()V

    .line 227
    if-nez v14, :cond_4

    .line 228
    const-string v3, "hawk disabled"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_4
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getBlockMask()I

    move-result v3

    const/16 v4, 0x1ff

    if-ne v3, v4, :cond_5

    .line 233
    const-string v3, "mask is 511"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_5
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getBlockMask()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 238
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->getBlockMask()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkAgent;->disableOpts(I)V

    .line 241
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/tencent/hawk/bridge/HashGen;->oneWayHash(Ljava/lang/String;I)J

    move-result-wide v16

    .line 242
    .local v16, "sepcialProj":J
    const-wide/32 v4, 0x4658b812

    cmp-long v3, v16, v4

    if-nez v3, :cond_7

    .line 243
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/hawk/bridge/HawkAgent;->isSpecialProj:Z

    .line 246
    :cond_7
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isTickFrameEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 247
    const-string v3, "TAPM TF ENABLED"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->setManualPostFrame()V

    .line 253
    :goto_1
    sget-boolean v3, Lcom/tencent/hawk/bridge/HawkAgent;->isSpecialProj:Z

    if-eqz v3, :cond_9

    .line 254
    const-string v3, "NA"

    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    .line 255
    const-string v3, "NA"

    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    .line 256
    const-string v3, "NA"

    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    .line 258
    const-string v3, "NA"

    const-string v4, "NA"

    const-string v5, "NA"

    invoke-static {v3, v4, v5}, Lcom/tencent/hawk/bridge/HawkAgent;->hawkInitPortal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_8
    const-string v3, "TAPM TF DISABLED"

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/tencent/hawk/bridge/GpuInfoHandler;->readGpuInfoByCache(Landroid/content/Context;)Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    move-result-object v13

    .line 261
    .local v13, "gpuInfo":Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    const-string v3, "Read Gpu Info from cache : %s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 262
    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 261
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 265
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/hawk/bridge/HawkAgent;->isInitGpuInfoValid:Z

    .line 266
    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    .line 267
    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    .line 268
    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    .line 274
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GpuInfo valid "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/tencent/hawk/bridge/HawkAgent;->isInitGpuInfoValid:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tencent/hawk/bridge/HawkAgent;->hawkInitPortal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    :cond_a
    const/4 v3, 0x0

    sput-boolean v3, Lcom/tencent/hawk/bridge/HawkAgent;->isInitGpuInfoValid:Z

    goto :goto_2
.end method

.method public static initTGPA()V
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1165
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityAppContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 1166
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1167
    const-string v0, "GET context error, try alternative ways"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 1172
    :cond_0
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1173
    const-string v0, "TGPA init context error"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1178
    :goto_0
    return-void

    .line 1177
    :cond_1
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/hawk/bridge/VmpHelper;->initTGPA(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static markAppFinishLaunch()V
    .locals 6

    .prologue
    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 282
    .local v0, "finishTimeStamp":J
    sget-wide v4, Lcom/tencent/hawk/bridge/HawkAgent;->sInitMarkStartTime:J

    sub-long v2, v0, v4

    .line 283
    .local v2, "startUpTime":J
    long-to-int v4, v2

    invoke-static {v4}, Lcom/tencent/hawk/bridge/HawkNative;->setAppStartupTime(I)V

    .line 284
    return-void
.end method

.method public static markLevelFin()V
    .locals 4

    .prologue
    .line 440
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 471
    .local v0, "networkType":I
    :cond_0
    :goto_0
    return-void

    .line 442
    .end local v0    # "networkType":I
    :cond_1
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-eqz v1, :cond_0

    .line 445
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 446
    const-string v1, "mark-level-fin:  no current scene set"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_2
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 451
    const-string v1, "Context is null, return markLevelFin"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isLevelFin:Z

    .line 456
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isLevalLoaded:Z

    .line 458
    invoke-static {}, Lcom/tencent/hawk/bridge/ExtMsg;->cleanIdxMap()V

    .line 466
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/hawk/bridge/NetworkUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    .line 468
    .restart local v0    # "networkType":I
    sget v1, Lcom/tencent/hawk/bridge/HawkAgent;->sBackwardStartIdx:I

    const/4 v2, 0x3

    sget-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/hawk/bridge/HawkNative;->levelControl(IIILjava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->endHawk()V

    .line 470
    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static markLevelLoad(Ljava/lang/String;I)V
    .locals 7
    .param p0, "sceneName"    # Ljava/lang/String;
    .param p1, "pDeprecatedQuality"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 337
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 338
    const-string v1, "MarkLevelLoad, Appid is null"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 342
    :cond_0
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 343
    const-string v1, "Context is null, return MarkLevelLoad"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_1
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    if-eqz v1, :cond_2

    .line 348
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 350
    :cond_2
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isSpecialProj:Z

    if-eqz v1, :cond_4

    .line 351
    const-string v1, "NA"

    const-string v2, "NA"

    const-string v3, "NA"

    invoke-static {v1, v2, v3}, Lcom/tencent/hawk/bridge/HawkNative;->setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_3
    :goto_1
    if-nez p0, :cond_b

    .line 381
    const-string v1, "MarkLevelLoad, SceneName is null"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_4
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isGpuInfoNativeSet:Z

    if-nez v1, :cond_3

    .line 354
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 355
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "NA"

    :goto_2
    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    .line 356
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "NA"

    :goto_3
    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    .line 357
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "NA"

    :goto_4
    sput-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    .line 358
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    sget-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/tencent/hawk/bridge/HawkNative;->setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_5
    sput-boolean v4, Lcom/tencent/hawk/bridge/HawkAgent;->isGpuInfoNativeSet:Z

    goto :goto_1

    .line 355
    :cond_5
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVendor:Ljava/lang/String;

    goto :goto_2

    .line 356
    :cond_6
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuRender:Ljava/lang/String;

    goto :goto_3

    .line 357
    :cond_7
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sGpuVersion:Ljava/lang/String;

    goto :goto_4

    .line 360
    :cond_8
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/hawk/bridge/GpuInfoHandler;->readGpuInfoByCache(Landroid/content/Context;)Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    move-result-object v0

    .line 361
    .local v0, "gpuInfo":Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_a

    .line 362
    invoke-static {}, Lcom/tencent/hawk/bridge/GpuInfoHandler;->getGpuInfoByGLES()Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 364
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/hawk/bridge/GpuInfoHandler;->writeGpuInfoInCache(Landroid/content/Context;Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;)V

    .line 372
    :goto_6
    const-string v1, "InitGpuInfo is not valid, Start Set Native"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getRender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tencent/hawk/bridge/HawkNative;->setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 366
    :cond_9
    const-string v1, "Gpu info not valid by gles"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    goto :goto_6

    .line 369
    :cond_a
    const-string v1, "Gpu info valid"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    goto :goto_6

    .line 385
    .end local v0    # "gpuInfo":Lcom/tencent/hawk/bridge/GpuInfoHandler$GpuInfo;
    :cond_b
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-nez v1, :cond_c

    .line 386
    const-string v1, "MarkLevelLoad, isHawkEnabled disabled"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :cond_c
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 391
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->markLevelFin()V

    .line 394
    :cond_d
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isLevelFin:Z

    if-nez v1, :cond_e

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MarkLevelLoad: scene name is the same, but the latest is not finished : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 396
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_e
    sput-boolean v6, Lcom/tencent/hawk/bridge/HawkAgent;->isLevelFin:Z

    .line 402
    sput-boolean v6, Lcom/tencent/hawk/bridge/HawkAgent;->isLevalLoaded:Z

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 404
    const-string p0, "A_DEF_NULL_"

    .line 405
    :cond_f
    sput-object p0, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    .line 407
    sget v1, Lcom/tencent/hawk/bridge/HawkAgent;->sForwardStartIdx:I

    sput v1, Lcom/tencent/hawk/bridge/HawkAgent;->sBackwardStartIdx:I

    .line 408
    sget v1, Lcom/tencent/hawk/bridge/HawkAgent;->sForwardStartIdx:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/hawk/bridge/HawkAgent;->sForwardStartIdx:I

    .line 410
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->beginHawk()V

    .line 411
    sget v1, Lcom/tencent/hawk/bridge/HawkAgent;->sBackwardStartIdx:I

    sget v2, Lcom/tencent/hawk/bridge/HawkAgent;->sGlobalQuality:I

    invoke-static {v1, v4, v2, p0}, Lcom/tencent/hawk/bridge/HawkNative;->levelControl(IIILjava/lang/String;)V

    .line 413
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/tencent/hawk/bridge/HashGen;->oneWayHash(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tencent/hawk/bridge/HawkAgent;->updateGameStatusToVmp(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static markLevelLoadCompleted()V
    .locals 4

    .prologue
    .line 418
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 425
    const-string v0, "MarkLevelloadCompleted:  no current scene set"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_2
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isLevalLoaded:Z

    if-eqz v0, :cond_3

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarkLevelloadCompleted:  the current level is loaded, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isLevalLoaded:Z

    .line 435
    sget v0, Lcom/tencent/hawk/bridge/HawkAgent;->sBackwardStartIdx:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/hawk/bridge/HawkNative;->levelControl(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static postEvent(ILjava/lang/String;)V
    .locals 1
    .param p0, "key"    # I
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 580
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    const/4 p1, 0x0

    .line 582
    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/EventDispatcher;->dispatchEvent(ILjava/lang/String;)V

    .line 583
    return-void
.end method

.method public static postFrame(F)V
    .locals 1
    .param p0, "deltaTime"    # F

    .prologue
    .line 1054
    invoke-static {}, Lcom/tencent/hawk/bridge/CC;->isTickFrameEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->postFrame(F)V

    .line 1056
    :cond_0
    return-void
.end method

.method public static postInfoToTGPA(ILjava/lang/String;)V
    .locals 0
    .param p0, "key"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1408
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/VmpHelper;->updateGameInfoToTGPAIS(ILjava/lang/String;)V

    .line 1409
    return-void
.end method

.method public static postInfoToTGPA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1404
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/VmpHelper;->updateGameInfoToTGPASS(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    return-void
.end method

.method public static postLagState(F)V
    .locals 1
    .param p0, "distance"    # F

    .prologue
    .line 288
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkNative;->postLagStatus(I)V

    .line 289
    return-void
.end method

.method public static postNTL(II)V
    .locals 1
    .param p0, "latency"    # I
    .param p1, "serverip"    # I

    .prologue
    .line 823
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 830
    :cond_0
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 831
    const-string v0, "NTL current scene name is null"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkNative;->postNTL(II)V

    goto :goto_0
.end method

.method public static postNTL(IJ)V
    .locals 1
    .param p0, "latency"    # I
    .param p1, "serverip"    # J

    .prologue
    .line 839
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-nez v0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 846
    :cond_0
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 847
    const-string v0, "ntl current scene name is null"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/tencent/hawk/bridge/HawkNative;->postNTL2(IJ)V

    goto :goto_0
.end method

.method public static postStreamEvent(IIILjava/lang/String;)V
    .locals 3
    .param p0, "stepId"    # I
    .param p1, "status"    # I
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 1325
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-nez v1, :cond_0

    .line 1382
    :goto_0
    return-void

    .line 1328
    :cond_0
    sget-boolean v1, Lcom/tencent/hawk/bridge/CC;->isSECOREnabled:Z

    if-nez v1, :cond_1

    .line 1329
    const-string v1, "PostStreamEvent disabled"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1333
    :cond_1
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 1334
    const-string v1, "PostStreamEvent Context is null"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1338
    :cond_2
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventInit:Z

    if-nez v1, :cond_3

    .line 1339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init Stream Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->enableStreamEvent()V

    .line 1341
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventInit:Z

    .line 1349
    :cond_3
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventEnabled:Z

    if-nez v1, :cond_4

    .line 1350
    const-string v1, "PostStreamEvent is not enabled"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1354
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TAPMSE Add StepId READY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    .line 1356
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isStreamEventComplete:Z

    if-eqz v1, :cond_5

    .line 1357
    const-string v1, "TAPMSE PROCESS iS COMPLETE"

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1361
    :cond_5
    if-nez p1, :cond_6

    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->mStreamEventSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TAPMSE StepId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already Added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    :cond_6
    if-nez p1, :cond_7

    .line 1367
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->mStreamEventSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1369
    :cond_7
    const/4 v0, 0x0

    .line 1370
    .local v0, "networkType":I
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_8

    .line 1371
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/hawk/bridge/NetworkUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    .line 1373
    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    .line 1374
    :cond_9
    const-string p3, "NA"

    .line 1377
    :cond_a
    invoke-static {p0, p1, p2, p3, v0}, Lcom/tencent/hawk/bridge/HawkNative;->postStreamEvent(IIILjava/lang/String;I)V

    .line 1378
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TAPMSE Add StepId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static postTrackState(FFFFFF)V
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "pitch"    # F
    .param p4, "yaw"    # F
    .param p5, "roll"    # F

    .prologue
    .line 1388
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-nez v0, :cond_0

    .line 1401
    :goto_0
    return-void

    .line 1391
    :cond_0
    sget-boolean v0, Lcom/tencent/hawk/bridge/CC;->isSECOREnabled:Z

    if-nez v0, :cond_1

    .line 1392
    const-string v0, "PostTrackState disabled"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1396
    :cond_1
    sget-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isTrackStateInit:Z

    if-nez v0, :cond_2

    .line 1397
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->enableTrackState()V

    .line 1398
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/hawk/bridge/HawkAgent;->isTrackStateInit:Z

    .line 1400
    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/tencent/hawk/bridge/HawkNative;->postTrackState(FFFFFF)V

    goto :goto_0
.end method

.method public static postValue1F(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "a"    # F

    .prologue
    .line 964
    invoke-static {p0, p1, p2}, Lcom/tencent/hawk/bridge/HawkNative;->postValue1F(Ljava/lang/String;Ljava/lang/String;F)V

    .line 965
    return-void
.end method

.method public static postValue1I(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "a"    # I

    .prologue
    .line 976
    invoke-static {p0, p1, p2}, Lcom/tencent/hawk/bridge/HawkNative;->postValue1I(Ljava/lang/String;Ljava/lang/String;I)V

    .line 977
    return-void
.end method

.method public static postValue2F(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "a"    # F
    .param p3, "b"    # F

    .prologue
    .line 968
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/hawk/bridge/HawkNative;->postValue2F(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 969
    return-void
.end method

.method public static postValue2I(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 980
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/hawk/bridge/HawkNative;->postValue2I(Ljava/lang/String;Ljava/lang/String;II)V

    .line 981
    return-void
.end method

.method public static postValue3F(Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "a"    # F
    .param p3, "b"    # F
    .param p4, "c"    # F

    .prologue
    .line 972
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/hawk/bridge/HawkNative;->postValue3F(Ljava/lang/String;Ljava/lang/String;FFF)V

    .line 973
    return-void
.end method

.method public static postValue3I(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "a"    # I
    .param p3, "b"    # I
    .param p4, "c"    # I

    .prologue
    .line 984
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/hawk/bridge/HawkNative;->postValue3I(Ljava/lang/String;Ljava/lang/String;III)V

    .line 985
    return-void
.end method

.method public static postValueS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 988
    invoke-static {p0, p1, p2}, Lcom/tencent/hawk/bridge/HawkNative;->postValueS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    return-void
.end method

.method public static processAffinitySetting(II)V
    .locals 2
    .param p0, "tid"    # I
    .param p1, "type"    # I

    .prologue
    .line 1230
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1231
    const-string v0, "init context error"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1241
    const/16 v0, 0x33

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/VmpHelper;->tgpaUpdateGameInfo(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static putKVArrD(Ljava/lang/String;[D)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "jarray"    # [D

    .prologue
    .line 961
    return-void
.end method

.method public static putKVArrI(Ljava/lang/String;[I)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 935
    return-void
.end method

.method public static putKVArrS(Ljava/lang/String;Lcom/tencent/hawk/bridge/JArrS;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "jarray"    # Lcom/tencent/hawk/bridge/JArrS;

    .prologue
    .line 948
    return-void
.end method

.method public static putKVD(Ljava/lang/String;D)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 921
    return-void
.end method

.method public static putKVI(Ljava/lang/String;I)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 895
    return-void
.end method

.method public static putKVS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 908
    return-void
.end method

.method public static registerCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;)Z
    .locals 1
    .param p0, "openId"    # Ljava/lang/String;
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "paramGCallBack"    # Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;

    .prologue
    .line 1181
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1182
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityAppContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 1183
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1184
    const-string v0, "get context error, try alternative ways"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 1189
    :cond_0
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1190
    const-string v0, "init context error"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1191
    const/4 v0, 0x0

    .line 1196
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->UNITY:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    invoke-static {v0, p2}, Lcom/tencent/hawk/bridge/VmpHelper;->registerTGPACallback(Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;)Z

    move-result v0

    goto :goto_0
.end method

.method public static registerTPGACallback(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1412
    if-nez p0, :cond_0

    .line 1413
    const-string v0, "RegisterTPGACallback failed, Context is null"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1418
    :cond_0
    return-void
.end method

.method public static requestPssSample()V
    .locals 0

    .prologue
    .line 1049
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->requestPssSample()V

    .line 1050
    return-void
.end method

.method public static requestResourceGuarantee(III)V
    .locals 1
    .param p0, "contiditon"    # I
    .param p1, "loadType"    # I
    .param p2, "applyType"    # I

    .prologue
    .line 1222
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1223
    const-string v0, "init context error"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1227
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-static {p0}, Lcom/tencent/hawk/bridge/VmpHelper;->requestResourceGuarantee(I)V

    goto :goto_0
.end method

.method public static declared-synchronized setAppId(Ljava/lang/String;)V
    .locals 10
    .param p0, "appid"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v7, Lcom/tencent/hawk/bridge/HawkAgent;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "appid is not null, return "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 63
    :cond_1
    :try_start_1
    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v6, :cond_2

    .line 64
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityAppContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 65
    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v6, :cond_2

    .line 66
    const-string v6, "get context error, try alternative ways"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->getUnityCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    sput-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    .line 71
    :cond_2
    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v6, :cond_3

    .line 72
    const-string v6, "init context error"

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 76
    :cond_3
    :try_start_2
    sput-object p0, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    .line 78
    sget-boolean v6, Lcom/tencent/hawk/bridge/HawkAgent;->sBuglySet:Z

    if-nez v6, :cond_5

    .line 79
    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v8, "BuglySdkInfos"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, "buglysettings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_5

    .line 81
    const-string v6, "b563002ef4"

    const-string v8, "N/A"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "buglyIden":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v6, "N/A"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 83
    const-string v6, "6.2.0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 84
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 85
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "b563002ef4"

    const-string v8, "6.2.0"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    const/4 v6, 0x1

    sput-boolean v6, Lcom/tencent/hawk/bridge/HawkAgent;->sBuglySet:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v0    # "buglyIden":Ljava/lang/String;
    .end local v1    # "buglysettings":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    const/4 v4, 0x0

    .line 94
    .local v4, "fis":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v8, "hawk_data_init"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 99
    if-eqz v4, :cond_6

    .line 101
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    :cond_6
    :goto_1
    :try_start_5
    sget-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v8, "__apmtmode"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 109
    .local v5, "tmodefile":Ljava/io/File;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 110
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->turnOnTMode()V

    .line 117
    :goto_2
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->setAppId(Ljava/lang/String;)V

    .line 118
    new-instance v6, Lcom/tencent/hawk/bridge/QccHandler;

    sget-object v8, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    invoke-direct {v6, v8, p0}, Lcom/tencent/hawk/bridge/QccHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sQccHandler:Lcom/tencent/hawk/bridge/QccHandler;

    .line 119
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    sput-object v6, Lcom/tencent/hawk/bridge/HawkAgent;->sTagStack:Ljava/util/Stack;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 96
    .end local v5    # "tmodefile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_0

    .line 101
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 102
    :catch_1
    move-exception v2

    .line 103
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 98
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 99
    if-eqz v4, :cond_7

    .line 101
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 106
    :cond_7
    :goto_3
    :try_start_9
    throw v6

    .line 102
    :catch_2
    move-exception v2

    .line 103
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 102
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 103
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "tmodefile":Ljava/io/File;
    :cond_8
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkAgent;->checkTMode()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public static setBuildEnv(I)V
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 292
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->setBuildEnv(I)V

    .line 293
    return-void
.end method

.method public static setGlobalQuality(I)V
    .locals 2
    .param p0, "quality"    # I

    .prologue
    .line 296
    sput p0, Lcom/tencent/hawk/bridge/HawkAgent;->sGlobalQuality:I

    .line 297
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->setGQuality(I)V

    .line 299
    const/16 v0, 0x9

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/HawkAgent;->updateGameStatusToVmp(ILjava/lang/String;)V

    .line 302
    return-void
.end method

.method public static setGpuInfoForUe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "gpuRender"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 1260
    if-nez p0, :cond_0

    .line 1261
    const-string p0, "NA"

    .line 1264
    :cond_0
    if-nez p1, :cond_1

    .line 1265
    const-string p1, "NA"

    .line 1268
    :cond_1
    const-string v0, "NA"

    invoke-static {v0, p0, p1}, Lcom/tencent/hawk/bridge/HawkNative;->setGpuInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    return-void
.end method

.method public static setLocale(Ljava/lang/String;I)V
    .locals 0
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "manual"    # I

    .prologue
    .line 576
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkNative;->setLocale(Ljava/lang/String;I)V

    .line 577
    return-void
.end method

.method public static setPssManualMode()V
    .locals 0

    .prologue
    .line 1044
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->setPssManualMode()V

    .line 1045
    return-void
.end method

.method public static setTargetFramerate(I)V
    .locals 2
    .param p0, "target"    # I

    .prologue
    .line 568
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->setTargetFramerate(I)V

    .line 571
    const/4 v0, 0x4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/HawkAgent;->updateGameStatusToVmp(ILjava/lang/String;)V

    .line 573
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 5
    .param p0, "userid"    # Ljava/lang/String;

    .prologue
    .line 309
    if-nez p0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 311
    :cond_0
    sput-object p0, Lcom/tencent/hawk/bridge/HawkAgent;->sUserId:Ljava/lang/String;

    .line 313
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 314
    sget-object v2, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    const-string v3, "APMCfg"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 315
    .local v1, "settings":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 318
    const-string v2, "apm_user_name"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->setUserId(Ljava/lang/String;)V

    .line 326
    const-string v2, "OpenID"

    invoke-static {v2, p0}, Lcom/tencent/hawk/bridge/VmpHelper;->updateGameInfoToTGPASS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserIdenForUE4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "openId"    # Ljava/lang/String;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 1205
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1206
    const-string v0, "init context error"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 1207
    const/4 v0, 0x0

    .line 1211
    :goto_0
    return v0

    .line 1210
    :cond_0
    sget-object v0, Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;->UNRAL:Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/hawk/bridge/VmpHelper;->registerTGPACallback(Lcom/tencent/hawk/bridge/VmpHelper$ENGINE;Lcom/tencent/hawk/bridge/VmpGCallbackWrapper;)Z

    .line 1211
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setVersionIden(Ljava/lang/String;)V
    .locals 1
    .param p0, "versionName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 587
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    const-string v0, "VersionName is NULL or is empty"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    .line 591
    :cond_1
    invoke-static {p0}, Lcom/tencent/hawk/bridge/HawkNative;->setRevisedVersion(Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method private static turnOnTMode()V
    .locals 1

    .prologue
    .line 860
    const-string v0, "TMODE"

    invoke-static {v0}, Lcom/tencent/hawk/bridge/HawkLogger;->w(Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkLogger;->enableDebug()V

    .line 862
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->enableLogPrint()V

    .line 864
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkLogger;->enableTMode()V

    .line 865
    invoke-static {}, Lcom/tencent/hawk/bridge/HawkNative;->enableTMode()V

    .line 866
    return-void
.end method

.method public static updateGameStatusToVmp(ILjava/lang/String;)V
    .locals 1
    .param p0, "key"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1215
    sget-object v0, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1218
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/VmpHelper;->tgpaUpdateGameInfo(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static validCheck(Ljava/lang/String;)Z
    .locals 3
    .param p0, "funcName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1425
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sAppId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v0

    .line 1427
    :cond_1
    sget-boolean v1, Lcom/tencent/hawk/bridge/HawkAgent;->isTApmEnabled:Z

    if-eqz v1, :cond_0

    .line 1430
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sCurrentSceneName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "no current scene set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1435
    :cond_2
    sget-object v1, Lcom/tencent/hawk/bridge/HawkAgent;->sContext:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 1436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Context is null, return "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
