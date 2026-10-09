.class public Lcom/bytedance/retrofit2/RetrofitMetrics;
.super Ljava/lang/Object;
.source "RetrofitMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/RetrofitMetrics$ExtraKeys;
    }
.end annotation


# instance fields
.field public addClientKeyDuration:J

.field public addCommonParamDuration:J

.field public appCreateRetrofitStart:J

.field public appLevelRequestStart:J

.field public beforeAllInterceptors:J

.field public bodyEncryptDuration:J

.field public callExecuteStartTime:J

.field public callServerInterceptorTime:J

.field public checkReqTicketDuration:J

.field public commandListenerDuration:J

.field public concurrentRequest:Lorg/json/JSONObject;

.field public createSsHttpCallTime:J

.field public dispatchDelayTime:J

.field public dispatchQueryActionInfo:Lorg/json/JSONArray;

.field public encryptRequestDuration:J

.field public enqueueTime:J

.field public executeCallEndTime:J

.field public executeCallStartTime:J

.field public executeTime:J

.field public extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public fallbackMessage:Ljava/lang/String;

.field public fallbackReason:I

.field public filterDupQueryDuration:J

.field public filterUrlDuration:J

.field public genReqTicketDuration:J

.field public interceptorNameAndTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public isConcurrent:Z

.field public postCdnCacheVerifyDuration:J

.field public preCdnCacheVerifyDuration:J

.field public queryFilterDuration:J

.field public requestInterceptDuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public requestVerifyDuration:J

.field public responseChainTime:J

.field public responseInterceptDuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public retrofitLogReportTime:J

.field public retrofitMethodInvokeTime:J

.field public toRequestEndTime:J

.field public toRequestStartTime:J

.field public toResponseEndTime:J

.field public toResponseStartTime:J

.field public transactionId:Ljava/lang/String;

.field public ttnetVersion:Ljava/lang/String;

.field public updateClientKeyDuration:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackReason:I

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackMessage:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestInterceptDuration:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseInterceptDuration:Ljava/util/Map;

    const-wide/16 v1, -0x1

    .line 74
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->filterUrlDuration:J

    .line 75
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->addCommonParamDuration:J

    .line 76
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestVerifyDuration:J

    .line 77
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->filterDupQueryDuration:J

    .line 78
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->encryptRequestDuration:J

    .line 79
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->genReqTicketDuration:J

    .line 80
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->checkReqTicketDuration:J

    .line 81
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->preCdnCacheVerifyDuration:J

    .line 82
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->addClientKeyDuration:J

    .line 83
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->updateClientKeyDuration:J

    .line 84
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->postCdnCacheVerifyDuration:J

    .line 85
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->commandListenerDuration:J

    .line 86
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->queryFilterDuration:J

    .line 87
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->bodyEncryptDuration:J

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->extra:Ljava/util/Map;

    .line 99
    iput-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->ttnetVersion:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->interceptorNameAndTime:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackReason:I

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackMessage:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestInterceptDuration:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseInterceptDuration:Ljava/util/Map;

    const-wide/16 v1, -0x1

    .line 74
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->filterUrlDuration:J

    .line 75
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->addCommonParamDuration:J

    .line 76
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestVerifyDuration:J

    .line 77
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->filterDupQueryDuration:J

    .line 78
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->encryptRequestDuration:J

    .line 79
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->genReqTicketDuration:J

    .line 80
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->checkReqTicketDuration:J

    .line 81
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->preCdnCacheVerifyDuration:J

    .line 82
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->addClientKeyDuration:J

    .line 83
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->updateClientKeyDuration:J

    .line 84
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->postCdnCacheVerifyDuration:J

    .line 85
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->commandListenerDuration:J

    .line 86
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->queryFilterDuration:J

    .line 87
    iput-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->bodyEncryptDuration:J

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->extra:Ljava/util/Map;

    .line 99
    iput-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->ttnetVersion:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->interceptorNameAndTime:Ljava/util/Map;

    .line 109
    iput-wide p1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->appLevelRequestStart:J

    .line 110
    iput-wide p3, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->beforeAllInterceptors:J

    return-void
.end method

.method private getBaseTimingInfo()Lorg/json/JSONObject;
    .locals 9

    .line 159
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "fallback"

    .line 161
    iget v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackReason:I

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    iget-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fallbackMessage"

    .line 163
    iget-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackMessage:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "createRetrofitTime"

    .line 165
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->appCreateRetrofitStart:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "appRequestStartTime"

    .line 166
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->appLevelRequestStart:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "beforeAllInterceptTime"

    .line 167
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->beforeAllInterceptors:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "callServerInterceptTime"

    .line 168
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->callServerInterceptorTime:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "callExecuteStartTime"

    .line 169
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->callExecuteStartTime:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "reportTime"

    .line 170
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->retrofitLogReportTime:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "delayWait"

    .line 171
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->dispatchDelayTime:J

    invoke-virtual {v8, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "injectInterceptorTime"

    .line 172
    invoke-direct {p0}, Lcom/bytedance/retrofit2/RetrofitMetrics;->getInjectInterceptorTimingInfo()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-object v0, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->transactionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "transactionId"

    .line 174
    iget-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->transactionId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v7, 0x1

    const-string v2, "loadServiceMethod"

    .line 181
    iget-wide v3, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->retrofitMethodInvokeTime:J

    iget-wide v5, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->createSsHttpCallTime:J

    move-object v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/retrofit2/RetrofitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJZ)Z

    move-result v7

    .line 183
    iget-wide v3, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->enqueueTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-lez v2, :cond_2

    const-string v2, "enqueueWait"

    .line 184
    iget-wide v5, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseChainTime:J

    move-object v0, p0

    move-object v1, v8

    .line 185
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/retrofit2/RetrofitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJZ)Z

    move-result v0

    goto :goto_1

    :cond_2
    const-string v2, "executeWait"

    .line 187
    iget-wide v3, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->executeTime:J

    iget-wide v5, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseChainTime:J

    move-object v0, p0

    move-object v1, v8

    .line 188
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/retrofit2/RetrofitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJZ)Z

    move-result v0

    :goto_1
    move v7, v0

    const-string v2, "executeCall"

    .line 190
    iget-wide v3, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->executeCallStartTime:J

    iget-wide v5, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->executeCallEndTime:J

    move-object v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/retrofit2/RetrofitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJZ)Z

    move-result v7

    const-string v2, "requestParse"

    .line 192
    iget-wide v3, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestStartTime:J

    iget-wide v5, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestEndTime:J

    .line 193
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/retrofit2/RetrofitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJZ)Z

    move-result v7

    const-string v2, "responseParse"

    .line 194
    iget-wide v3, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toResponseStartTime:J

    iget-wide v5, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toResponseEndTime:J

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/retrofit2/RetrofitMetrics;->validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJZ)Z

    return-object v8
.end method

.method private getCallbackTimingInfo()Lorg/json/JSONObject;
    .locals 6

    .line 212
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "filterUrl"

    .line 214
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->filterUrlDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "addCommonParam"

    .line 215
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->addCommonParamDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "requestVerify"

    .line 216
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestVerifyDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "encryptRequest"

    .line 217
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->encryptRequestDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "genReqTicket"

    .line 218
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->genReqTicketDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "checkReqTicket"

    .line 219
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->checkReqTicketDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "preCdnVerify"

    .line 220
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->preCdnCacheVerifyDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "postCdnVerify"

    .line 221
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->postCdnCacheVerifyDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "addClientKey"

    .line 222
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->addClientKeyDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "updateClientKey"

    .line 223
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->updateClientKeyDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "commandListener"

    .line 224
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->commandListenerDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "filterDupQuery"

    .line 225
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->filterDupQueryDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "queryFilter"

    .line 226
    iget-wide v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->queryFilterDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 227
    iget-wide v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->bodyEncryptDuration:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-string v3, "bodyEncrypt"

    .line 228
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 232
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getInjectInterceptorTimingInfo()Lorg/json/JSONObject;
    .locals 4

    .line 200
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->interceptorNameAndTime:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 206
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method private getInterceptorTimingInfo()Lorg/json/JSONObject;
    .locals 5

    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestInterceptDuration:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    iget-object v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestInterceptDuration:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "request"

    .line 246
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseInterceptDuration:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 250
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 251
    iget-object v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseInterceptDuration:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 252
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    const-string v2, "response"

    .line 254
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 258
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v0
.end method

.method private getModelInfoWhenFallback()Lorg/json/JSONObject;
    .locals 4

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "model"

    .line 141
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, ""

    .line 146
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 147
    array-length v3, v2

    if-lez v3, :cond_0

    .line 148
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "abis"

    .line 151
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 153
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private validateAndSetTimingValue(Lorg/json/JSONObject;Ljava/lang/String;JJZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    cmp-long p7, p3, p5

    if-lez p7, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr p5, p3

    .line 271
    :try_start_0
    invoke-virtual {p1, p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p3, -0x1

    .line 268
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public getRetrofitLog()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    :try_start_0
    iget v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->fallbackReason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "model"

    .line 117
    invoke-direct {p0}, Lcom/bytedance/retrofit2/RetrofitMetrics;->getModelInfoWhenFallback()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->concurrentRequest:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v2, "concurrentRequest"

    .line 121
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "concurrent"

    .line 124
    iget-boolean v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->isConcurrent:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "base"

    .line 125
    invoke-direct {p0}, Lcom/bytedance/retrofit2/RetrofitMetrics;->getBaseTimingInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "callback"

    .line 126
    invoke-direct {p0}, Lcom/bytedance/retrofit2/RetrofitMetrics;->getCallbackTimingInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "interceptor"

    .line 127
    invoke-direct {p0}, Lcom/bytedance/retrofit2/RetrofitMetrics;->getInterceptorTimingInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ttnetVersion"

    .line 128
    iget-object v2, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->ttnetVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    iget-object v1, p0, Lcom/bytedance/retrofit2/RetrofitMetrics;->dispatchQueryActionInfo:Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    const-string v2, "actionInfo"

    .line 130
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 132
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
