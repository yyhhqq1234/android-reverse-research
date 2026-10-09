.class public Lcom/bytedance/retrofit2/SsHttpCall;
.super Ljava/lang/Object;
.source "SsHttpCall.java"

# interfaces
.implements Lcom/bytedance/retrofit2/Call;
.implements Lcom/bytedance/retrofit2/IMetricsCollect;
.implements Lcom/bytedance/retrofit2/IRequestInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;,
        Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/retrofit2/Call<",
        "TT;>;",
        "Lcom/bytedance/retrofit2/IMetricsCollect;",
        "Lcom/bytedance/retrofit2/IRequestInfo;"
    }
.end annotation


# static fields
.field public static sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

.field public static sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;


# instance fields
.field private appCallTime:J

.field public final args:[Ljava/lang/Object;

.field private final callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

.field public mReqControlLevel:I

.field public originalRequest:Lcom/bytedance/retrofit2/client/Request;

.field public preBuildURLException:Ljava/lang/Throwable;

.field public final serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/retrofit2/ServiceMethod<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/retrofit2/ServiceMethod;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/ServiceMethod<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->mReqControlLevel:I

    .line 64
    iput-object p1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    .line 65
    iput-object p2, p0, Lcom/bytedance/retrofit2/SsHttpCall;->args:[Ljava/lang/Object;

    .line 66
    new-instance p2, Lcom/bytedance/retrofit2/CallServerInterceptor;

    invoke-direct {p2, p1}, Lcom/bytedance/retrofit2/CallServerInterceptor;-><init>(Lcom/bytedance/retrofit2/ServiceMethod;)V

    iput-object p2, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    return-void
.end method

.method public static setReqLevelControl(Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;)V
    .locals 0

    .line 60
    sput-object p0, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    return-void
.end method

.method public static setThrottleControl(Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->cancel()V

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Lcom/bytedance/retrofit2/Call;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/SsHttpCall;->clone()Lcom/bytedance/retrofit2/SsHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/bytedance/retrofit2/SsHttpCall;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/retrofit2/SsHttpCall<",
            "TT;>;"
        }
    .end annotation

    .line 289
    new-instance v0, Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v2, p0, Lcom/bytedance/retrofit2/SsHttpCall;->args:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/retrofit2/SsHttpCall;-><init>(Lcom/bytedance/retrofit2/ServiceMethod;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/SsHttpCall;->clone()Lcom/bytedance/retrofit2/SsHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public doCollect()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->doCollect()V

    :cond_0
    return-void
.end method

.method public enqueue(Lcom/bytedance/retrofit2/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/ServiceMethod;->getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->enqueueTime:J

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->appCallTime:J

    if-eqz p1, :cond_7

    .line 127
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/CallServerInterceptor;->isExecuted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v1, v1, Lcom/bytedance/retrofit2/ServiceMethod;->httpExecutor:Ljava/util/concurrent/Executor;

    .line 131
    instance-of v2, p1, Lcom/bytedance/retrofit2/ExpandCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/bytedance/retrofit2/ExpandCallback;

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 133
    :goto_1
    new-instance v4, Lcom/bytedance/retrofit2/SsHttpCall$1;

    invoke-direct {v4, p0, v0, v2, p1}, Lcom/bytedance/retrofit2/SsHttpCall$1;-><init>(Lcom/bytedance/retrofit2/SsHttpCall;Lcom/bytedance/retrofit2/RetrofitMetrics;Lcom/bytedance/retrofit2/ExpandCallback;Lcom/bytedance/retrofit2/Callback;)V

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v5, p0, Lcom/bytedance/retrofit2/SsHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lcom/bytedance/retrofit2/ServiceMethod;->toRequest(Lcom/bytedance/retrofit2/ExpandCallback;[Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 215
    :goto_2
    sget-object v0, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->isReqLevelControllerEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    sget-object v0, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    iget-object v3, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->getRequestLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->mReqControlLevel:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/SsHttpCall;->cancel()V

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled by Requset Controller"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v0}, Lcom/bytedance/retrofit2/Callback;->onFailure(Lcom/bytedance/retrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const/4 p1, 0x1

    if-ne v0, p1, :cond_4

    .line 223
    sget-object p1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    invoke-interface {p1, v1, v4}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->maybeAddP1AsyncRequest(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 228
    :cond_4
    sget-object p1, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    if-eqz p1, :cond_6

    .line 229
    invoke-interface {p1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->isAppDelayHandleEnable()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    invoke-interface {p1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->isDispatchDelayEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget p1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->mReqControlLevel:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 231
    new-instance p1, Lcom/bytedance/retrofit2/SsHttpCall$2;

    invoke-direct {p1, p0, v2, v1, v4}, Lcom/bytedance/retrofit2/SsHttpCall$2;-><init>(Lcom/bytedance/retrofit2/SsHttpCall;Lcom/bytedance/retrofit2/ExpandCallback;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 266
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-void

    .line 126
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute()Lcom/bytedance/retrofit2/SsResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/retrofit2/SsResponse<",
            "TT;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/ServiceMethod;->getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->executeTime:J

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->appCallTime:J

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestStartTime:J

    .line 75
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bytedance/retrofit2/SsHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/retrofit2/ServiceMethod;->toRequest(Lcom/bytedance/retrofit2/ExpandCallback;[Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestEndTime:J

    .line 78
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->isReqLevelControllerEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    iget-object v3, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->getRequestLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->mReqControlLevel:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    .line 85
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    invoke-interface {v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->p1WaitP0Done()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/SsHttpCall;->cancel()V

    .line 83
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled by Requset Controller"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    :goto_0
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    if-eqz v1, :cond_5

    iget v3, p0, Lcom/bytedance/retrofit2/SsHttpCall;->mReqControlLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 93
    invoke-interface {v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->isAppDelayHandleEnable()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 95
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    iget-object v2, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->getDelayTimeByApp(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 97
    :cond_2
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    invoke-interface {v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->isDispatchDelayEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-eqz v1, :cond_4

    const-string/jumbo v4, "x-tt-request-tag"

    .line 98
    invoke-virtual {v1, v4}, Lcom/bytedance/retrofit2/client/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_3

    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/retrofit2/client/Header;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/retrofit2/client/Header;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    .line 104
    :goto_1
    sget-object v2, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    iget-object v3, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v3}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->getDispatchDelayTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_4
    :goto_2
    int-to-long v1, v3

    .line 106
    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->dispatchDelayTime:J

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/retrofit2/SsHttpCall;->getResponseWithInterceptorChain()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->isReqLevelControllerEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    iget v2, p0, Lcom/bytedance/retrofit2/SsHttpCall;->mReqControlLevel:I

    invoke-interface {v1, v2}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->notifyRequestBack(I)V

    :cond_6
    return-object v0
.end method

.method public getRequestInfo()Ljava/lang/Object;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->getRequestInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getResponseWithInterceptorChain()Lcom/bytedance/retrofit2/SsResponse;
    .locals 8

    .line 339
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/ServiceMethod;->getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->responseChainTime:J

    .line 342
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 343
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v1, v1, Lcom/bytedance/retrofit2/ServiceMethod;->interceptors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget-wide v3, p0, Lcom/bytedance/retrofit2/SsHttpCall;->appCallTime:J

    iput-wide v3, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->appLevelRequestStart:J

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->beforeAllInterceptors:J

    .line 348
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1, v0}, Lcom/bytedance/retrofit2/client/Request;->setMetrics(Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 349
    new-instance v7, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    move-object v1, v7

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/retrofit2/intercept/RealInterceptorChain;-><init>(Ljava/util/List;ILcom/bytedance/retrofit2/client/Request;Lcom/bytedance/retrofit2/Call;Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    .line 350
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-interface {v7, v1}, Lcom/bytedance/retrofit2/intercept/Interceptor$Chain;->proceed(Lcom/bytedance/retrofit2/client/Request;)Lcom/bytedance/retrofit2/SsResponse;

    move-result-object v1

    .line 351
    invoke-virtual {v1, v0}, Lcom/bytedance/retrofit2/SsResponse;->setRetrofitMetrics(Lcom/bytedance/retrofit2/RetrofitMetrics;)V

    return-object v1
.end method

.method public getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/ServiceMethod;->getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->isExecuted()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lcom/bytedance/retrofit2/client/Request;
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/bytedance/retrofit2/CallServerInterceptor;->request()Lcom/bytedance/retrofit2/client/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-nez v0, :cond_1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/ServiceMethod;->getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestStartTime:J

    .line 304
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v2, p0, Lcom/bytedance/retrofit2/SsHttpCall;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/retrofit2/ServiceMethod;->toRequest(Lcom/bytedance/retrofit2/ExpandCallback;[Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestEndTime:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 307
    throw v0

    .line 312
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    return-object v0
.end method

.method public setThrottleNetSpeed(J)Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->callServerInterceptor:Lcom/bytedance/retrofit2/CallServerInterceptor;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/retrofit2/CallServerInterceptor;->setThrottleNetSpeed(J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toResponseBody(Lcom/bytedance/retrofit2/mime/TypedInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/mime/TypedInput;",
            ")TT;"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v0, p1}, Lcom/bytedance/retrofit2/ServiceMethod;->toResponse(Lcom/bytedance/retrofit2/mime/TypedInput;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
