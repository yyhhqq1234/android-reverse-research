.class public Lcom/netease/pharos/linkcheck/LinkCheckProxy;
.super Ljava/lang/Object;
.source "LinkCheckProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCheckProxy"

.field public static sLinkCheckProxy:Lcom/netease/pharos/linkcheck/LinkCheckProxy;


# instance fields
.field private isCycle:Z

.field private isStarting:Z

.field private mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

.field private volatile mCycleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private volatile mOnceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPharosResultCache:Lorg/json/JSONObject;

.field private volatile mStopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->sLinkCheckProxy:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isCycle:Z

    .line 39
    iput-boolean v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isStarting:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mCycleList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mOnceList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mStopList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mPharosResultCache:Lorg/json/JSONObject;

    .line 86
    new-instance v0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy$1;-><init>(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 110
    new-instance v0, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy$2;-><init>(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mStopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mCycleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/pharos/linkcheck/LinkCheckProxy;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isCycle:Z

    return-void
.end method

.method static synthetic access$3(Lcom/netease/pharos/linkcheck/LinkCheckProxy;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isStarting:Z

    return-void
.end method

.method static synthetic access$4(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mOnceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)Lcom/netease/pharos/linkcheck/ConfigInfoListener;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mConfigInfoListener:Lcom/netease/pharos/linkcheck/ConfigInfoListener;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->sLinkCheckProxy:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->sLinkCheckProxy:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    .line 138
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->sLinkCheckProxy:Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 330
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method


# virtual methods
.method public cleanOnceList()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mOnceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    return-void
.end method

.method public downloadRegionConfig()I
    .locals 7

    .prologue
    .line 142
    const-string v4, "LinkCheckProxy"

    const-string v5, "\u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v2, 0xb

    .line 144
    .local v2, "result":I
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "region":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string v0, "cn"

    .line 152
    :cond_0
    sget-object v4, Lcom/netease/pharos/Const;->REGION_CONFIG_URL:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/netease/pharos/linkcheck/RegionConfigCore;

    invoke-direct {v1}, Lcom/netease/pharos/linkcheck/RegionConfigCore;-><init>()V

    .line 155
    .local v1, "regionConfigCore":Lcom/netease/pharos/linkcheck/RegionConfigCore;
    invoke-virtual {v1, v3}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->init(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->start()I

    move-result v2

    .line 157
    return v2
.end method

.method public getCallBackInfo()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 278
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getmPharosResultCache()Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 281
    const-string v1, "LinkCheckProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "options="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/PharosProxy;->getmOption()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/pharos/PharosProxy;->getmOption()I

    move-result v1

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    .line 284
    const-string v1, "probe"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    :cond_0
    return-object v0
.end method

.method public getPharosResultInfo()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 245
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v8, "result":Lorg/json/JSONObject;
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmLinktestId()Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "linktestId":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "deviceInfo":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getLinkCheckResultInfo()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "linkCheckResult":Ljava/lang/String;
    const/4 v1, 0x0

    .line 250
    .local v1, "deviceInfoJson":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 254
    .local v5, "linkCheckResultJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 255
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .end local v1    # "deviceInfoJson":Lorg/json/JSONObject;
    .local v2, "deviceInfoJson":Lorg/json/JSONObject;
    move-object v1, v2

    .line 258
    .end local v2    # "deviceInfoJson":Lorg/json/JSONObject;
    .restart local v1    # "deviceInfoJson":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 259
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "linkCheckResultJson":Lorg/json/JSONObject;
    .local v6, "linkCheckResultJson":Lorg/json/JSONObject;
    move-object v5, v6

    .line 267
    .end local v6    # "linkCheckResultJson":Lorg/json/JSONObject;
    .restart local v5    # "linkCheckResultJson":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    :try_start_1
    const-string v9, "linktest_id"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v9, "policy"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v9, "probe"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :goto_1
    return-object v8

    .line 262
    :catch_0
    move-exception v3

    .line 263
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "LinkCheckProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getCallBackInfo Exception="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 271
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public getmCycleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mCycleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmOnceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mOnceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmPharosResultCache()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mPharosResultCache:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setmCycleList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "mCycleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mCycleList:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public setmOnceList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "mOnceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mOnceList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public setmPharosResultCache(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "mPharosResultCache"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mPharosResultCache:Lorg/json/JSONObject;

    .line 79
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 162
    const-string v3, "LinkCheckProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isStarting="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isStarting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCycle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isCycle:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-boolean v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isStarting:Z

    if-eqz v3, :cond_3

    .line 165
    const-string v3, "LinkCheckProxy"

    const-string v4, "\u4efb\u52a1\u5df2\u7ecf\u8fdb\u884c\u4e2d"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v1

    .line 169
    .local v1, "listener":Lcom/netease/pharos/PharosListener;
    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getCallBackInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 172
    .local v0, "callBackInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v1, v0}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 178
    :goto_0
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/qos/QosProxy;->getQosResult()Lorg/json/JSONObject;

    move-result-object v2

    .line 180
    .local v2, "qosResult":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 181
    invoke-interface {v1, v2}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 241
    .end local v0    # "callBackInfo":Lorg/json/JSONObject;
    .end local v1    # "listener":Lcom/netease/pharos/PharosListener;
    .end local v2    # "qosResult":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 175
    .restart local v0    # "callBackInfo":Lorg/json/JSONObject;
    .restart local v1    # "listener":Lcom/netease/pharos/PharosListener;
    :cond_1
    const-string v3, "LinkCheckProxy"

    const-string v4, "callBackInfo is null"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .restart local v2    # "qosResult":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "LinkCheckProxy"

    const-string v4, "qosResult is null"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    .end local v0    # "callBackInfo":Lorg/json/JSONObject;
    .end local v1    # "listener":Lcom/netease/pharos/PharosListener;
    .end local v2    # "qosResult":Lorg/json/JSONObject;
    :cond_3
    iget-boolean v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->isCycle:Z

    if-eqz v3, :cond_6

    .line 192
    const-string v3, "LinkCheckProxy"

    const-string v4, "\u4efb\u52a1\u5b58\u5728\u5faa\u73af\u673a\u5236\uff0c\u4e0d\u80fd\u518d\u6b21\u542f\u52a8"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v1

    .line 196
    .restart local v1    # "listener":Lcom/netease/pharos/PharosListener;
    if-eqz v1, :cond_0

    .line 197
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->getCallBackInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    .restart local v0    # "callBackInfo":Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    .line 200
    invoke-interface {v1, v0}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 205
    :goto_2
    invoke-static {}, Lcom/netease/pharos/qos/QosProxy;->getInstance()Lcom/netease/pharos/qos/QosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/qos/QosProxy;->getQosResult()Lorg/json/JSONObject;

    move-result-object v2

    .line 207
    .restart local v2    # "qosResult":Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 208
    invoke-interface {v1, v2}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 202
    .end local v2    # "qosResult":Lorg/json/JSONObject;
    :cond_4
    const-string v3, "LinkCheckProxy"

    const-string v4, "callBackInfo is null"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    .restart local v2    # "qosResult":Lorg/json/JSONObject;
    :cond_5
    const-string v3, "LinkCheckProxy"

    const-string v4, "qosResult is null"

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v0    # "callBackInfo":Lorg/json/JSONObject;
    .end local v1    # "listener":Lcom/netease/pharos/PharosListener;
    .end local v2    # "qosResult":Lorg/json/JSONObject;
    :cond_6
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mCycleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 219
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckProxy;->mOnceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 221
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;

    invoke-direct {v4, p0}, Lcom/netease/pharos/linkcheck/LinkCheckProxy$3;-><init>(Lcom/netease/pharos/linkcheck/LinkCheckProxy;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 240
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
