.class public Lcom/bytedance/retrofit2/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lcom/bytedance/retrofit2/IMetricsCollect;
.implements Lcom/bytedance/retrofit2/IRequestInfo;
.implements Lcom/bytedance/retrofit2/intercept/Interceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/retrofit2/IMetricsCollect;",
        "Lcom/bytedance/retrofit2/IRequestInfo;",
        "Lcom/bytedance/retrofit2/intercept/Interceptor;"
    }
.end annotation


# instance fields
.field private volatile mCanceled:Z

.field private mCreationFailure:Ljava/lang/Throwable;

.field private volatile mExecuted:Z

.field private mOriginalRequest:Lcom/bytedance/retrofit2/client/Request;

.field private volatile mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

.field private final mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/retrofit2/ServiceMethod<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile mThrottleNetSpeed:J


# direct methods
.method public constructor <init>(Lcom/bytedance/retrofit2/ServiceMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/ServiceMethod<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    return-void
.end method

.method private createRawCall(Lcom/bytedance/retrofit2/ExpandCallback;Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object p1, p1, Lcom/bytedance/retrofit2/ServiceMethod;->clientProvider:Lcom/bytedance/retrofit2/client/Client$Provider;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/client/Client$Provider;->get()Lcom/bytedance/retrofit2/client/Client;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/bytedance/retrofit2/client/Client;->newSsCall(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;

    move-result-object p1

    return-object p1
.end method

.method private executeCall(Lcom/bytedance/retrofit2/client/SsCall;Lcom/bytedance/retrofit2/RetrofitMetrics;)Lcom/bytedance/retrofit2/client/Response;
    .locals 2

    if-eqz p2, :cond_0

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->executeCallStartTime:J

    .line 114
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/retrofit2/client/SsCall;->execute()Lcom/bytedance/retrofit2/client/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mCanceled:Z

    .line 167
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/client/SsCall;->cancel()V

    :cond_0
    return-void
.end method

.method public doCollect()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    instance-of v0, v0, Lcom/bytedance/retrofit2/IMetricsCollect;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    check-cast v0, Lcom/bytedance/retrofit2/IMetricsCollect;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/IMetricsCollect;->doCollect()V

    :cond_0
    return-void
.end method

.method public getRequestInfo()Ljava/lang/Object;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    instance-of v0, v0, Lcom/bytedance/retrofit2/IRequestInfo;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    check-cast v0, Lcom/bytedance/retrofit2/IRequestInfo;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/IRequestInfo;->getRequestInfo()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public intercept(Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;)Lcom/bytedance/retrofit2/SsResponse;
    .locals 8

    .line 32
    invoke-interface {p1}, Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;->metrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->callServerInterceptorTime:J

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 38
    invoke-interface {p1}, Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;->request()Lcom/bytedance/retrofit2/client/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mOriginalRequest:Lcom/bytedance/retrofit2/client/Request;

    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-boolean p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mExecuted:Z

    if-nez p1, :cond_b

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mExecuted:Z

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mCreationFailure:Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 46
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mCreationFailure:Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mOriginalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {p1, v0}, Lcom/bytedance/retrofit2/client/Request;->setMetrics(Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 56
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object p1, p1, Lcom/bytedance/retrofit2/ServiceMethod;->cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 58
    iget-object p1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestInterceptDuration:Ljava/util/Map;

    const-string v3, "CallServerInterceptor"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object p1, p1, Lcom/bytedance/retrofit2/ServiceMethod;->cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

    iget-object v3, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mOriginalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-interface {p1, v3}, Lcom/bytedance/retrofit2/cache/ICacheServer;->getCacheResponse(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/Response;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_9

    .line 65
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mOriginalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-direct {p0, v2, p1}, Lcom/bytedance/retrofit2/CallServerInterceptor;->createRawCall(Lcom/bytedance/retrofit2/ExpandCallback;Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/client/SsCall;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    .line 66
    iget-wide v2, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mThrottleNetSpeed:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_5

    .line 67
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    iget-wide v2, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mThrottleNetSpeed:J

    invoke-interface {p1, v2, v3}, Lcom/bytedance/retrofit2/client/SsCall;->setThrottleNetSpeed(J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_5
    iget-boolean p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mCanceled:Z

    if-eqz p1, :cond_6

    .line 81
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/client/SsCall;->cancel()V

    :cond_6
    if-eqz v0, :cond_7

    .line 85
    iget-object p1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->requestInterceptDuration:Ljava/util/Map;

    const-string v2, "CallServerInterceptor"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_7
    iget-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->executeCall(Lcom/bytedance/retrofit2/client/SsCall;Lcom/bytedance/retrofit2/RetrofitMetrics;)Lcom/bytedance/retrofit2/client/Response;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v1, v1, Lcom/bytedance/retrofit2/ServiceMethod;->cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

    if-eqz v1, :cond_9

    .line 90
    iget-object v1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v1, v1, Lcom/bytedance/retrofit2/ServiceMethod;->cacheServer:Lcom/bytedance/retrofit2/cache/ICacheServer;

    iget-object v2, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mOriginalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-interface {v1, v2, p1}, Lcom/bytedance/retrofit2/cache/ICacheServer;->putCacheResponse(Lcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/client/Response;)Lcom/bytedance/retrofit2/client/Response;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object p1, v1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 73
    iput-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mCreationFailure:Ljava/lang/Throwable;

    .line 74
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_8

    .line 75
    check-cast p1, Ljava/lang/Exception;

    throw p1

    .line 77
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 70
    :goto_1
    iput-object p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mCreationFailure:Ljava/lang/Throwable;

    .line 71
    throw p1

    .line 98
    :cond_9
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->parseResponse(Lcom/bytedance/retrofit2/client/Response;Lcom/bytedance/retrofit2/RetrofitMetrics;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseInterceptDuration:Ljava/util/Map;

    const-string v3, "CallServerInterceptor"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object p1

    .line 41
    :cond_b
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 43
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mCanceled:Z

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mExecuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseResponse(Lcom/bytedance/retrofit2/client/Response;Lcom/bytedance/retrofit2/RetrofitMetrics;)Lcom/bytedance/retrofit2/SsResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/client/Response;",
            "Lcom/bytedance/retrofit2/RetrofitMetrics;",
            ")",
            "Lcom/bytedance/retrofit2/SsResponse<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 121
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Response;->getBody()Lcom/bytedance/retrofit2/mime/TypedInput;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/bytedance/retrofit2/client/Response;->getStatus()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_5

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 138
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->toResponseStartTime:J

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mServiceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v1, v0}, Lcom/bytedance/retrofit2/ServiceMethod;->toResponse(Lcom/bytedance/retrofit2/mime/TypedInput;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/bytedance/retrofit2/RetrofitMetrics;->toResponseEndTime:J

    .line 144
    :cond_3
    invoke-static {v0, p1}, Lcom/bytedance/retrofit2/SsResponse;->success(Ljava/lang/Object;Lcom/bytedance/retrofit2/client/Response;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    throw p1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    .line 133
    invoke-static {p2, p1}, Lcom/bytedance/retrofit2/SsResponse;->success(Ljava/lang/Object;Lcom/bytedance/retrofit2/client/Response;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    return-object p1

    .line 127
    :cond_5
    :goto_1
    invoke-static {v0, p1}, Lcom/bytedance/retrofit2/SsResponse;->error(Lcom/bytedance/retrofit2/mime/TypedInput;Lcom/bytedance/retrofit2/client/Response;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object p1

    return-object p1

    .line 119
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SsResponse is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public request()Lcom/bytedance/retrofit2/client/Request;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mOriginalRequest:Lcom/bytedance/retrofit2/client/Request;

    return-object v0
.end method

.method public declared-synchronized resetExecuted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 161
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mExecuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThrottleNetSpeed(J)Z
    .locals 1

    .line 173
    iput-wide p1, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mThrottleNetSpeed:J

    .line 174
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/bytedance/retrofit2/CallServerInterceptor;->mRawCall:Lcom/bytedance/retrofit2/client/SsCall;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/retrofit2/client/SsCall;->setThrottleNetSpeed(J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
