.class public Lcom/bytedance/retrofit2/SsHttpCall$2;
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

.field final synthetic val$callRequestRunnable:Ljava/lang/Runnable;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$expandCallback:Lcom/bytedance/retrofit2/ExpandCallback;


# direct methods
.method constructor <init>(Lcom/bytedance/retrofit2/SsHttpCall;Lcom/bytedance/retrofit2/ExpandCallback;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iput-object p2, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->val$expandCallback:Lcom/bytedance/retrofit2/ExpandCallback;

    iput-object p3, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->val$callRequestRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestDelayTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-boolean v0, v0, Lcom/bytedance/retrofit2/ServiceMethod;->isResponseStreaming:Z

    return v0
.end method

.method public priority()I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget v0, v0, Lcom/bytedance/retrofit2/ServiceMethod;->priorityLevel:I

    return v0
.end method

.method public run()V
    .locals 5

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v0, v0, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    invoke-virtual {v0}, Lcom/bytedance/retrofit2/ServiceMethod;->getRetrofitMetrics()Lcom/bytedance/retrofit2/RetrofitMetrics;

    move-result-object v0

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestStartTime:J

    .line 255
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v2, v1, Lcom/bytedance/retrofit2/SsHttpCall;->serviceMethod:Lcom/bytedance/retrofit2/ServiceMethod;

    iget-object v3, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->val$expandCallback:Lcom/bytedance/retrofit2/ExpandCallback;

    iget-object v4, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iget-object v4, v4, Lcom/bytedance/retrofit2/SsHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/retrofit2/ServiceMethod;->toRequest(Lcom/bytedance/retrofit2/ExpandCallback;[Ljava/lang/Object;)Lcom/bytedance/retrofit2/client/Request;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/retrofit2/SsHttpCall;->originalRequest:Lcom/bytedance/retrofit2/client/Request;

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/retrofit2/RetrofitMetrics;->toRequestEndTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 260
    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->this$0:Lcom/bytedance/retrofit2/SsHttpCall;

    iput-object v0, v1, Lcom/bytedance/retrofit2/SsHttpCall;->preBuildURLException:Ljava/lang/Throwable;

    .line 262
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bytedance/retrofit2/SsHttpCall$2;->val$callRequestRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
