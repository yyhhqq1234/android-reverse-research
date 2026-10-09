.class public abstract Lcom/tencent/tmassistantbase/network/PostHttpRequest;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final a:Ljava/lang/Integer;


# instance fields
.field protected mFuture:Ljava/util/concurrent/Future;

.field protected mHttpConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 43
    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized cancleRequest()V
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 201
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onFinished([B[BI)V
.end method

.method protected declared-synchronized sendRequest([B)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    monitor-enter p0

    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 59
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;-><init>(Lcom/tencent/tmassistantbase/network/PostHttpRequest;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
