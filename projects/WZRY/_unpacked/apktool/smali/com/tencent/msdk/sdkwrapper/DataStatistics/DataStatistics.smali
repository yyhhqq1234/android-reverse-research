.class public Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;
.super Ljava/lang/Object;
.source "DataStatistics.java"


# static fields
.field private static instance:Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;


# instance fields
.field private defaultParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->mOpenid:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private buildDefaultParams()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->defaultParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->defaultParams:Ljava/util/Map;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->defaultParams:Ljava/util/Map;

    const-string v1, "msdkversion"

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/framework/MSDKEnv;->getMSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->defaultParams:Ljava/util/Map;

    const-string v1, "gameversion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget v3, v3, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->defaultParams:Ljava/util/Map;

    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->mOpenid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->defaultParams:Ljava/util/Map;

    const-string v1, "identify"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->instance:Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->instance:Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    invoke-direct {v0}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;-><init>()V

    sput-object v0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->instance:Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->instance:Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public ReportStatEvent(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "isOk"    # Z
    .param p2, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DatastatBridge;->needDataStat()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const-string v4, "eventName is empty"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 43
    :cond_0
    if-nez p3, :cond_1

    .line 44
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 46
    .restart local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0}, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->buildDefaultParams()V

    .line 47
    iget-object v4, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->defaultParams:Ljava/util/Map;

    invoke-interface {p3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    if-eqz p3, :cond_3

    .line 49
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 50
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 51
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 59
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&isok="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 61
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    const/4 v4, 0x1

    invoke-static {p1, p2, p3, v4}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->reportEvent(ZLjava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    .line 64
    :cond_4
    const-string v4, "report is closed"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 2
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iput-object p1, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->mOpenid:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/sdkwrapper/DataStatistics/DataStatistics;->mOpenid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method
