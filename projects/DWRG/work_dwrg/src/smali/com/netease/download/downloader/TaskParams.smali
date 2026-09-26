.class public Lcom/netease/download/downloader/TaskParams;
.super Ljava/lang/Object;
.source "TaskParams.java"


# instance fields
.field private mCdnTopSpeed:J

.field private mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckTime:Lcom/netease/download/check/CheckTime;

.field private mConfigRetCode:I

.field private mConfigSerUrl:Ljava/lang/String;

.field private mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

.field private mErrorcdn:Ljava/lang/String;

.field private mFinished:Z

.field private mGateway:Ljava/lang/String;

.field private mGatewayDns:Ljava/lang/String;

.field private mHttpdnsEdgeIpCount:I

.field private mHttpdnsEdgeIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpdnsErrCode:I

.field private mHttpdnsErrHost:Ljava/lang/String;

.field private mHttpdnsResolvedIp:Ljava/lang/String;

.field private mHttpdnsUsedDnsips:Ljava/lang/String;

.field private mIsUseHttpDns:Z

.field private mIsUseLvsip:Z

.field private mLvsipErrCode:I

.field private mLvsipErrHost:Ljava/lang/String;

.field private mLvsipUrl:Ljava/lang/String;

.field private mNetDns:Ljava/lang/String;

.field private mPartAverageSpeedMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPartUrlMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPatchDlspeed:D

.field private mRemovecdn:Z

.field private mSlowcdn:Ljava/lang/String;

.field private mTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/download/downloader/TaskParams;->mCdnTopSpeed:J

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsEdgeIpCount:I

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsEdgeIpList:Ljava/util/ArrayList;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mTaskId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method


# virtual methods
.method public addHttpdnsEdgeIp(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsEdgeIpList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public getCdnTopSpeed()J
    .locals 2

    .prologue
    .line 377
    iget-wide v0, p0, Lcom/netease/download/downloader/TaskParams;->mCdnTopSpeed:J

    return-wide v0
.end method

.method public getCdnerrorMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getCheckTime()Lcom/netease/download/check/CheckTime;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mCheckTime:Lcom/netease/download/check/CheckTime;

    return-object v0
.end method

.method public getConfigRetCode()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/netease/download/downloader/TaskParams;->mConfigRetCode:I

    return v0
.end method

.method public getConfigSerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mConfigSerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadParams()Lcom/netease/download/downloader/DownloadParams;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    return-object v0
.end method

.method public getErrorcdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mErrorcdn:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayDns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mGatewayDns:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpdnsEdgeIpCount()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsEdgeIpCount:I

    return v0
.end method

.method public getHttpdnsEdgeIpList()Ljava/util/ArrayList;
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
    .line 268
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsEdgeIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHttpdnsErrCode()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsErrCode:I

    return v0
.end method

.method public getHttpdnsErrHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsErrHost:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpdnsResolvedIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsResolvedIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLvsipErrCode()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/netease/download/downloader/TaskParams;->mLvsipErrCode:I

    return v0
.end method

.method public getLvsipErrHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mLvsipErrHost:Ljava/lang/String;

    return-object v0
.end method

.method public getLvsipUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mLvsipUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNetDns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mNetDns:Ljava/lang/String;

    return-object v0
.end method

.method public getPartAverageSpeedMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartAverageSpeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartAverageSpeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartAverageSpeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getPartResultMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getPartUrlMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mPartUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getPatchDlspeed()D
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/netease/download/downloader/TaskParams;->mPatchDlspeed:D

    return-wide v0
.end method

.method public getSlowcdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mSlowcdn:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedDnsips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsUsedDnsips:Ljava/lang/String;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/netease/download/downloader/TaskParams;->mFinished:Z

    return v0
.end method

.method public isRemovecdn()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/netease/download/downloader/TaskParams;->mRemovecdn:Z

    return v0
.end method

.method public isUseHttpDns()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/netease/download/downloader/TaskParams;->mIsUseHttpDns:Z

    return v0
.end method

.method public isUseLvsip()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/netease/download/downloader/TaskParams;->mIsUseLvsip:Z

    return v0
.end method

.method public setCdnTopSpeed(J)V
    .locals 1
    .param p1, "mCdnTopSpeed"    # J

    .prologue
    .line 381
    iput-wide p1, p0, Lcom/netease/download/downloader/TaskParams;->mCdnTopSpeed:J

    .line 382
    return-void
.end method

.method public setCdnerrorMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "mCdnerrorMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mCdnerrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 374
    return-void
.end method

.method public setCheckTime(Lcom/netease/download/check/CheckTime;)V
    .locals 0
    .param p1, "mCheckTime"    # Lcom/netease/download/check/CheckTime;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mCheckTime:Lcom/netease/download/check/CheckTime;

    .line 331
    return-void
.end method

.method public setConfigRetCode(I)V
    .locals 0
    .param p1, "mConfigRetCode"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/netease/download/downloader/TaskParams;->mConfigRetCode:I

    .line 167
    return-void
.end method

.method public setConfigSerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mConfigSerUrl"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mConfigSerUrl:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setDownloadParams(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0
    .param p1, "mDownloadParams"    # Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 323
    return-void
.end method

.method public setErrorcdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mErrorcdn"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mErrorcdn:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .param p1, "mFinished"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/netease/download/downloader/TaskParams;->mFinished:Z

    .line 363
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "mGateway"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mGateway:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setGatewayDns(Ljava/lang/String;)V
    .locals 0
    .param p1, "mGatewayDns"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mGatewayDns:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setHttpdnsEdgeIpCount(I)V
    .locals 0
    .param p1, "mHttpdnsEdgeIpCount"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsEdgeIpCount:I

    .line 281
    return-void
.end method

.method public setHttpdnsErrCode(I)V
    .locals 0
    .param p1, "mHttpdnsErrCode"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsErrCode:I

    .line 305
    return-void
.end method

.method public setHttpdnsErrHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHttpdnsErrHost"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsErrHost:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setHttpdnsResolvedIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHttpdnsResolvedIp"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsResolvedIp:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setLvsipErrCode(I)V
    .locals 0
    .param p1, "mLvsipErrCode"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/netease/download/downloader/TaskParams;->mLvsipErrCode:I

    .line 207
    return-void
.end method

.method public setLvsipErrHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLvsipErrHost"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mLvsipErrHost:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setLvsipUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLvsipUrl"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mLvsipUrl:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setNetDns(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetDns"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mNetDns:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setPartAverageSpeedMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "mPartAverageSpeedMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mPartAverageSpeedMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    return-void
.end method

.method public setPartResultMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "mPartResultMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mPartResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    return-void
.end method

.method public setPartUrlMap(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "mPartUrlMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mPartUrlMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    return-void
.end method

.method public setPatchDlspeed(D)V
    .locals 1
    .param p1, "mPatchDlspeed"    # D

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/netease/download/downloader/TaskParams;->mPatchDlspeed:D

    .line 125
    return-void
.end method

.method public setRemovecdn(Z)V
    .locals 0
    .param p1, "mRemovecdn"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/netease/download/downloader/TaskParams;->mRemovecdn:Z

    .line 339
    return-void
.end method

.method public setSlowcdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSlowcdn"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mSlowcdn:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mTaskId:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setUseHttpDns(Z)V
    .locals 0
    .param p1, "isUseHttpDns"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/netease/download/downloader/TaskParams;->mIsUseHttpDns:Z

    .line 117
    return-void
.end method

.method public setUseLvsip(Z)V
    .locals 0
    .param p1, "isUseLvsip"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/netease/download/downloader/TaskParams;->mIsUseLvsip:Z

    .line 159
    return-void
.end method

.method public setUsedDnsips(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpdnsUsedDnsips"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/netease/download/downloader/TaskParams;->mHttpdnsUsedDnsips:Ljava/lang/String;

    .line 289
    return-void
.end method
