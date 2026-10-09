.class public Lcom/tencent/midas/data/APMidasAnalyzeParams;
.super Ljava/lang/Object;
.source "APMidasAnalyzeParams.java"


# static fields
.field private static gInstance:Lcom/tencent/midas/data/APMidasAnalyzeParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/tencent/midas/data/APMidasAnalyzeParams;

    invoke-direct {v0}, Lcom/tencent/midas/data/APMidasAnalyzeParams;-><init>()V

    sput-object v0, Lcom/tencent/midas/data/APMidasAnalyzeParams;->gInstance:Lcom/tencent/midas/data/APMidasAnalyzeParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private AnalyzeCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v0

    .line 77
    .local v0, "dataInterface":Lcom/tencent/midas/data/APPluginDataInterface;
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setOfferId(Ljava/lang/String;)V

    .line 78
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setOpenId(Ljava/lang/String;)V

    .line 79
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setOpenKey(Ljava/lang/String;)V

    .line 80
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setSessionId(Ljava/lang/String;)V

    .line 81
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setSessionType(Ljava/lang/String;)V

    .line 82
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setPf(Ljava/lang/String;)V

    .line 83
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pfKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setPfKey(Ljava/lang/String;)V

    .line 84
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setZoneId(Ljava/lang/String;)V

    .line 85
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v2, v2, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setDiscountUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "dataInterface":Lcom/tencent/midas/data/APPluginDataInterface;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "AnalyzeCommParams"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/midas/data/APMidasAnalyzeParams;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/tencent/midas/data/APMidasAnalyzeParams;->gInstance:Lcom/tencent/midas/data/APMidasAnalyzeParams;

    return-object v0
.end method


# virtual methods
.method public AnalyzeParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->AnalyzeCommParams(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/tencent/midas/data/APMidasAnalyzeParams;->setSaveType(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    .line 29
    :cond_0
    return-void
.end method

.method public setSaveType(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/tencent/midas/api/request/APMidasBaseRequest;

    .prologue
    .line 32
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v0

    .line 35
    .local v0, "dataInterface":Lcom/tencent/midas/data/APPluginDataInterface;
    :try_start_0
    instance-of v2, p1, Lcom/tencent/midas/api/request/APMidasGameRequest;

    if-eqz v2, :cond_2

    .line 36
    iget-object v2, p1, Lcom/tencent/midas/api/request/APMidasBaseRequest;->acctType:Ljava/lang/String;

    const-string v3, "qb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setSaveType(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setSaveType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setSaveType"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    instance-of v2, p1, Lcom/tencent/midas/api/request/APMidasGoodsRequest;

    if-eqz v2, :cond_3

    .line 42
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setSaveType(I)V

    goto :goto_0

    .line 43
    :cond_3
    instance-of v2, p1, Lcom/tencent/midas/api/request/APMidasMonthRequest;

    if-eqz v2, :cond_4

    .line 44
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setSaveType(I)V

    goto :goto_0

    .line 45
    :cond_4
    instance-of v2, p1, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;

    if-eqz v2, :cond_0

    .line 46
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/tencent/midas/data/APPluginDataInterface;->setSaveType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
