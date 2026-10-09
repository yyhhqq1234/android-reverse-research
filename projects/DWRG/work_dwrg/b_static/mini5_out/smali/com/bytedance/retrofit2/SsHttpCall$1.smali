.class public Lcom/bytedance/retrofit2/SsHttpCall$1;
.super Ljava/lang/Object;
.source "SsHttpCall.java"

# interfaces
.implements Lcom/bytedance/retrofit2/SsRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/retrofit2/SsHttpCall;->enqueue(Lcom/bytedance/retrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/retrofit2/SsHttpCall;

.field final synthetic val$callback:Lcom/bytedance/retrofit2/Callback;

.field final synthetic val$expandCallback:Lcom/bytedance/retrofit2/ExpandCallback;

.field final synthetic val$metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;


# direct methods
.method constructor <init>(Lcom/bytedance/retrofit2/SsHttpCall;Lcom/bytedance/retrofit2/RetrofitMetrics;Lcom/bytedance/retrofit2/ExpandCallback;Lcom/bytedance/retrofit2/Callback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iput-object p2, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    iput-object p3, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$expandCallback:Lcom/bytedance/retrofit2/ExpandCallback;

    iput-object p4, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$callback:Lcom/bytedance/retrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$callback:Lcom/bytedance/retrofit2/Callback;

    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/retrofit2/Callback;->onFailure(Lcom/bytedance/retrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private callSuccess(Lcom/bytedance/retrofit2/SsResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/retrofit2/SsResponse<",
            "TT;>;)V"
        }
    .end annotation

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$callback:Lcom/bytedance/retrofit2/Callback;

    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/retrofit2/Callback;->onResponse(Lcom/bytedance/retrofit2/Call;Lcom/bytedance/retrofit2/SsResponse;)V

    .line 200
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$expandCallback:Lcom/bytedance/retrofit2/ExpandCallback;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/retrofit2/ExpandCallback;->onAsyncResponse(Lcom/bytedance/retrofit2/Call;Lcom/bytedance/retrofit2/SsResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getRequestDelayTime()I
    .locals 4

    .line 170
    sget-object v0, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->isAppDelayHandleEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    sget-object v0, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v1, v1, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v1}, Lcom/bytedance/retrofit2/client/Request;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->getDelayTimeByApp(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 175
    :cond_0
    sget-object v0, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    invoke-interface {v0}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->isDispatchDelayEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    const-string/jumbo v2, "x-tt-request-tag"

    invoke-virtual {v0, v2}, Lcom/bytedance/retrofit2/client/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/retrofit2/client/Header;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/retrofit2/client/Header;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 182
    :goto_0
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sThrottleControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;

    iget-object v2, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v2, v2, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    invoke-virtual {v2}, Lcom/bytedance/retrofit2/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallThrottleControl;->getDispatchDelayTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 185
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->dispatchDelayTime:J

    return v1
.end method

.method public isStreaming()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-boolean v0, v0, Lcom/bytedance/retrofit2/ServiceMethod;->isResponseStreaming:Z

    return v0
.end method

.method public priority()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget v0, v0, Lcom/bytedance/retrofit2/ServiceMethod;->priorityLevel:I

    return v0
.end method

.method public run()V
    .locals 4

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->preBuildURLException:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestStartTime:J

    .line 143
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v1, v0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v2, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$expandCallback:Lcom/bytedance/retrofit2/ExpandCallback;

    iget-object v3, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v3, v3, Lcom/bytedance/retrofit2/SsHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/retrofit2/ServiceMethod;->toRequest(Lcom/bytedance/retrofit2/ExpandCallback;[Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    .line 144
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->val$metrics:Lcom/bytedance/retrofit2/RetrofitMetrics;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestEndTime:J

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/SsHttpCall;->getResponseWithInterceptorChain()Lcom/bytedance/retrofit2/SsResponse;

    move-result-object v0

    .line 147
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    invoke-interface {v1}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->isReqLevelControllerEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    sget-object v1, Lcom/bytedance/retrofit2/SsHttpCall;->sReqLevelControl:Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;

    iget-object v2, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget v2, v2, Lcom/bytedance/retrofit2/SsHttpCall;->mReqControlLevel:I

    invoke-interface {v1, v2}, Lcom/bytedance/retrofit2/SsHttpCall$IHttpCallReqLevelControl;->notifyRequestBack(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/retrofit2/SsHttpCall$1;->callSuccess(Lcom/bytedance/retrofit2/SsResponse;)V

    return-void

    .line 139
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$1;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->preBuildURLException:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 151
    invoke-direct {p0, v0}, Lcom/bytedance/retrofit2/SsHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method
