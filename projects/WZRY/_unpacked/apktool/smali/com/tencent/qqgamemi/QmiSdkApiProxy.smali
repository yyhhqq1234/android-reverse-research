.class public Lcom/tencent/qqgamemi/QmiSdkApiProxy;
.super Ljava/lang/Object;
.source "QmiSdkApiProxy.java"


# static fields
.field private static volatile sInstance:Lcom/tencent/qqgamemi/QmiSdkApiProxy;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->sInstance:Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, "QmiSdkApiProxy"

    iput-object v1, p0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->TAG:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Lcom/tencent/qqgamemi/QmiSdkApi;->initQMi(Landroid/content/Context;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->TAG:Ljava/lang/String;

    const-string v2, "initQmi is fail because context is null!"

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkSDKFeature(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/QmiSdkApi;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 283
    return-void
.end method

.method public static checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkSDKFeatureCallback"    # Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;

    .prologue
    .line 286
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 287
    return-void
.end method

.method public static checkSDKPermission(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApi;->checkSDKPermission(Landroid/content/Context;)V

    .line 364
    return-void
.end method

.method public static closeGenerateMomentsVideoDialog()V
    .locals 0

    .prologue
    .line 537
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->closeGenerateMomentsVideoDialog()V

    .line 538
    return-void
.end method

.method public static configSDK(I)V
    .locals 0
    .param p0, "config"    # I

    .prologue
    .line 533
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApi;->configSDK(I)V

    .line 534
    return-void
.end method

.method public static enableBgmMix(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 409
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->enableBgmMix(Landroid/content/Context;Z)V

    .line 410
    return-void
.end method

.method public static generateMomentsVideo([Ljava/lang/String;[I[J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "titleArray"    # [Ljava/lang/String;
    .param p1, "priorityArray"    # [I
    .param p2, "startTimeArray"    # [J
    .param p3, "endTimeArray"    # [J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static/range {p0 .. p5}, Lcom/tencent/qqgamemi/QmiSdkApi;->generateMomentVideo([Ljava/lang/String;[I[J[JLjava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static getAvailableDeviceSpaceMB()D
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->getAvailableDeviceSpaceMB()D

    move-result-wide v0

    return-wide v0
.end method

.method private getCurRecorderPosition()Lcom/tencent/qqgamemi/api/RecorderPosition;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 477
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->getCurRecorderPosition()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "position":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    new-instance v5, Lcom/tencent/qqgamemi/api/RecorderPosition;

    invoke-direct {v5, v6, v6}, Lcom/tencent/qqgamemi/api/RecorderPosition;-><init>(FF)V

    .line 496
    :goto_0
    return-object v5

    .line 481
    :cond_0
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 482
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "parts":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-le v5, v7, :cond_1

    .line 484
    const/4 v3, 0x0

    .line 485
    .local v3, "x":F
    const/4 v4, 0x0

    .line 487
    .local v4, "y":F
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 488
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 489
    new-instance v5, Lcom/tencent/qqgamemi/api/RecorderPosition;

    invoke-direct {v5, v3, v4}, Lcom/tencent/qqgamemi/api/RecorderPosition;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 496
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    new-instance v5, Lcom/tencent/qqgamemi/api/RecorderPosition;

    invoke-direct {v5, v6, v6}, Lcom/tencent/qqgamemi/api/RecorderPosition;-><init>(FF)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/QmiSdkApiProxy;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->sInstance:Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->sInstance:Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->sInstance:Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->sInstance:Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSrpVersionCode()I
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->getSRPpluginVersionCode()I

    move-result v0

    return v0
.end method

.method public static getSystemCurrentTimeMillis()J
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->getSystemCurrentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private initQmi(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->initQMi(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->initSDK(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static isInstance()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->sInstance:Lcom/tencent/qqgamemi/QmiSdkApiProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 246
    .local v2, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_1

    .line 257
    const-string v4, "^"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 258
    .local v1, "last":I
    if-lez v1, :cond_1

    .line 259
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 264
    .end local v1    # "last":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v2, :cond_2

    .end local v2    # "result":Ljava/lang/String;
    :goto_1
    return-object v2

    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public static refreshMSDKTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "platform"    # I
    .param p4, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qqgamemi/QmiSdkApi;->refreshMSDKTicket(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    return-void
.end method

.method public static setMomentOriginalVideoCache(Z)V
    .locals 0
    .param p0, "cacheable"    # Z

    .prologue
    .line 545
    invoke-static {p0}, Lcom/tencent/qqgamemi/QmiSdkApi;->setMomentOriginalVideoCache(Z)V

    .line 546
    return-void
.end method

.method public static setRecorderAudioSource(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioSource"    # I

    .prologue
    .line 399
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->setAudioSource(Landroid/content/Context;I)V

    .line 400
    return-void
.end method

.method public static setRecorderAudioSource(Landroid/content/Context;Lcom/tencent/qqgamemi/api/AudioSource;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioSource"    # Lcom/tencent/qqgamemi/api/AudioSource;

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/tencent/qqgamemi/api/AudioSource;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/QmiSdkApi;->setAudioSource(Landroid/content/Context;I)V

    .line 396
    return-void
.end method

.method public static setVideoQuality(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 380
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->setVideoQuality(Landroid/content/Context;I)V

    .line 381
    return-void
.end method

.method public static setVideoQuality(Landroid/content/Context;Lcom/tencent/qqgamemi/api/VideoQuality;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # Lcom/tencent/qqgamemi/api/VideoQuality;

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/tencent/qqgamemi/api/VideoQuality;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/QmiSdkApi;->setVideoQuality(Landroid/content/Context;I)V

    .line 377
    return-void
.end method


# virtual methods
.method public GenerateExtraMomentsVideo(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "shortVideoTime":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    invoke-static {p1, p2}, Lcom/tencent/qqgamemi/QmiSdkApi;->GenerateExtraMomentsVideo(Ljava/util/List;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public closeVideoListDialog()V
    .locals 0

    .prologue
    .line 310
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->closeVideoListDialog()V

    .line 311
    return-void
.end method

.method public currentRecorderPosition()Lcom/tencent/qqgamemi/api/RecorderPosition;
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->getCurRecorderPosition()Lcom/tencent/qqgamemi/api/RecorderPosition;

    move-result-object v0

    return-object v0
.end method

.method public currentRecorderPositionStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->getCurRecorderPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public endMomentsRecording()V
    .locals 0

    .prologue
    .line 105
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->endMomentRecording()V

    .line 106
    return-void
.end method

.method public generateMomentVideoV2(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "largeVideoTimeStamp"    # Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;
    .param p3, "defaultGameTag"    # Ljava/lang/String;
    .param p4, "extraInfoStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;",
            ">;",
            "Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "shortVideoTimestampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/ShortVideoTimeStamp;>;"
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqgamemi/QmiSdkApi;->generateMomentVideoV2(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/CollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public generateMomentVideoWithSpeed(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "largeVideoTimeStamp"    # Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;
    .param p3, "defaultGameTag"    # Ljava/lang/String;
    .param p4, "extraInfoStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;",
            ">;",
            "Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "shortVideoTimestampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/model/SpeedShortVideoTimeStamp;>;"
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/qqgamemi/QmiSdkApi;->generateMomentVideoWithSpeed(Ljava/util/List;Lcom/tencent/qqgamemi/api/model/SpeedCollectionVideoTimeStamp;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public generateMomentsVideo(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "timeStampList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p3, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "extraInfoStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, "startTimeArray":[J
    const/4 v3, 0x0

    .line 120
    .local v3, "endTimeArray":[J
    const/4 v1, 0x0

    .line 121
    .local v1, "priorityArray":[I
    const/4 v0, 0x0

    .line 122
    .local v0, "titleArray":[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 125
    .local v7, "length":I
    new-array v2, v7, [J

    .line 126
    new-array v3, v7, [J

    .line 127
    new-array v1, v7, [I

    .line 128
    new-array v0, v7, [Ljava/lang/String;

    .line 130
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/tencent/qqgamemi/api/TimeStamp;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/tencent/qqgamemi/api/TimeStamp;

    .line 131
    .local v8, "timeStampArray":[Lcom/tencent/qqgamemi/api/TimeStamp;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 132
    aget-object v4, v8, v6

    iget-wide v10, v4, Lcom/tencent/qqgamemi/api/TimeStamp;->startTime:J

    aput-wide v10, v2, v6

    .line 133
    aget-object v4, v8, v6

    iget-wide v10, v4, Lcom/tencent/qqgamemi/api/TimeStamp;->endTime:J

    aput-wide v10, v3, v6

    .line 134
    aget-object v4, v8, v6

    iget-object v4, v4, Lcom/tencent/qqgamemi/api/TimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    invoke-virtual {v4}, Lcom/tencent/qqgamemi/api/TimeStampPriority;->getCode()I

    move-result v4

    aput v4, v1, v6

    .line 135
    aget-object v4, v8, v6

    iget-object v4, v4, Lcom/tencent/qqgamemi/api/TimeStamp;->title:Ljava/lang/String;

    aput-object v4, v0, v6

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    .end local v7    # "length":I
    .end local v8    # "timeStampArray":[Lcom/tencent/qqgamemi/api/TimeStamp;
    :cond_0
    move-object v4, p2

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/tencent/qqgamemi/QmiSdkApi;->generateMomentVideo([Ljava/lang/String;[I[J[JLjava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public generateMomentsVideo(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqgamemi/api/TimeStamp;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "shortVideoTime":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p2, "largeVideoTime":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/qqgamemi/api/TimeStamp;>;"
    .local p4, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .local v9, "extraInfoStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 158
    .local v4, "shortVideoStartTimeArray":[J
    const/4 v5, 0x0

    .line 159
    .local v5, "shortVideoEndTimeArray":[J
    const/4 v3, 0x0

    .line 160
    .local v3, "shortVideoPriorityArray":[I
    const/4 v2, 0x0

    .line 161
    .local v2, "shortVideoTitleArray":[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 162
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 164
    .local v11, "length":I
    new-array v4, v11, [J

    .line 165
    new-array v5, v11, [J

    .line 166
    new-array v3, v11, [I

    .line 167
    new-array v2, v11, [Ljava/lang/String;

    .line 169
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/tencent/qqgamemi/api/TimeStamp;

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/tencent/qqgamemi/api/TimeStamp;

    .line 170
    .local v12, "timeStampArray":[Lcom/tencent/qqgamemi/api/TimeStamp;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v11, :cond_0

    .line 171
    aget-object v8, v12, v10

    iget-wide v14, v8, Lcom/tencent/qqgamemi/api/TimeStamp;->startTime:J

    aput-wide v14, v4, v10

    .line 172
    aget-object v8, v12, v10

    iget-wide v14, v8, Lcom/tencent/qqgamemi/api/TimeStamp;->endTime:J

    aput-wide v14, v5, v10

    .line 173
    aget-object v8, v12, v10

    iget-object v8, v8, Lcom/tencent/qqgamemi/api/TimeStamp;->priority:Lcom/tencent/qqgamemi/api/TimeStampPriority;

    invoke-virtual {v8}, Lcom/tencent/qqgamemi/api/TimeStampPriority;->getCode()I

    move-result v8

    aput v8, v3, v10

    .line 174
    aget-object v8, v12, v10

    iget-object v8, v8, Lcom/tencent/qqgamemi/api/TimeStamp;->title:Ljava/lang/String;

    aput-object v8, v2, v10

    .line 170
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 178
    .end local v10    # "i":I
    .end local v11    # "length":I
    .end local v12    # "timeStampArray":[Lcom/tencent/qqgamemi/api/TimeStamp;
    :cond_0
    const/4 v6, 0x0

    .line 179
    .local v6, "largeVideoStartTimeArray":[J
    const/4 v7, 0x0

    .line 181
    .local v7, "largeVideoEndTimeArray":[J
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 182
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    .line 184
    .restart local v11    # "length":I
    new-array v6, v11, [J

    .line 185
    new-array v7, v11, [J

    .line 187
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/tencent/qqgamemi/api/TimeStamp;

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/tencent/qqgamemi/api/TimeStamp;

    .line 188
    .restart local v12    # "timeStampArray":[Lcom/tencent/qqgamemi/api/TimeStamp;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    if-ge v10, v11, :cond_1

    .line 189
    aget-object v8, v12, v10

    iget-wide v14, v8, Lcom/tencent/qqgamemi/api/TimeStamp;->startTime:J

    aput-wide v14, v6, v10

    .line 190
    aget-object v8, v12, v10

    iget-wide v14, v8, Lcom/tencent/qqgamemi/api/TimeStamp;->endTime:J

    aput-wide v14, v7, v10

    .line 188
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v10    # "i":I
    .end local v11    # "length":I
    .end local v12    # "timeStampArray":[Lcom/tencent/qqgamemi/api/TimeStamp;
    :cond_1
    move-object/from16 v8, p3

    .line 194
    invoke-static/range {v2 .. v9}, Lcom/tencent/qqgamemi/QmiSdkApi;->generateMomentVideo([Ljava/lang/String;[I[J[J[J[JLjava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public generateMomentsVideo([Ljava/lang/String;[I[J[J[J[JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "titleArray"    # [Ljava/lang/String;
    .param p2, "priorityArray"    # [I
    .param p3, "shortVideosStartTimeArray"    # [J
    .param p4, "shortVideosEndTimeArray"    # [J
    .param p5, "largeVideosStartTimeArray"    # [J
    .param p6, "largeVideoEndTimeArray"    # [J
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "extraInfoStr"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static/range {p1 .. p8}, Lcom/tencent/qqgamemi/QmiSdkApi;->generateMomentVideo([Ljava/lang/String;[I[J[J[J[JLjava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public getCurMomentSourceVideoDuration()J
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->getMomentSourceVideoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public hideQmi(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->hideQMi(Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRecordingAR()Z
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->isRecordingAR()Z

    move-result v0

    return v0
.end method

.method public isRecordingJudgement()Z
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->isRecordingJudgement()Z

    move-result v0

    return v0
.end method

.method public isRecordingMoments()Z
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->isRecordingMoment()Z

    move-result v0

    return v0
.end method

.method public isShowed()Z
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->isShowed()Z

    move-result v0

    return v0
.end method

.method public lockRecorderPosition()V
    .locals 0

    .prologue
    .line 504
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->lockRecorderPosition()V

    .line 505
    return-void
.end method

.method public setCurrentRecorderPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 455
    invoke-static {p1, p2}, Lcom/tencent/qqgamemi/QmiSdkApi;->setCurRecorderPosition(FF)V

    .line 456
    return-void
.end method

.method public setDefaultStartPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 71
    invoke-static {p1, p2}, Lcom/tencent/qqgamemi/QmiSdkApi;->setDefaultStartPosition(FF)V

    .line 72
    return-void
.end method

.method public setDefaultUploadShareDialogPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 521
    invoke-static {p1, p2}, Lcom/tencent/qqgamemi/QmiSdkApi;->setUploadShareDialogPosition(FF)V

    .line 522
    return-void
.end method

.method public showQmi(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->showQMi(Landroid/content/Context;)V

    .line 270
    return-void
.end method

.method public showVideoListDialog(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 299
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->showVideoListDialog(Landroid/content/Context;)V

    .line 300
    return-void
.end method

.method public startARRecording(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->startARRecording(Landroid/content/Context;)V

    .line 347
    return-void
.end method

.method public startJudgementRecording(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->startJudgementRecording(Landroid/content/Context;)V

    .line 324
    return-void
.end method

.method public startMomentsRecording(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->startMomentRecording(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public startRecorder(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->showQMi(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public stopARRecording()V
    .locals 0

    .prologue
    .line 354
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->stopARRecording()V

    .line 355
    return-void
.end method

.method public stopJudgementRecording(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {p1, p2}, Lcom/tencent/qqgamemi/QmiSdkApi;->stopJudgementRecording(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public stopJudgementRecording(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/tencent/qqgamemi/QmiSdkApiProxy;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "extraInfoStr":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/tencent/qqgamemi/QmiSdkApi;->stopJudgementRecording(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public stopRecorder(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {p1}, Lcom/tencent/qqgamemi/QmiSdkApi;->stopQMi(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public unLockRecorderPosition()V
    .locals 0

    .prologue
    .line 511
    invoke-static {}, Lcom/tencent/qqgamemi/QmiSdkApi;->unLockRecorderPosition()V

    .line 512
    return-void
.end method
