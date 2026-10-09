.class public Lcom/tencent/trbt/videosdk/net/NetworkApi;
.super Ljava/lang/Object;
.source "NetworkApi.java"


# static fields
.field private static instance:Lcom/tencent/trbt/videosdk/net/NetworkApi;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile requestId:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Lcom/tencent/trbt/videosdk/net/NetworkApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->TAG:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->requestId:I

    .line 26
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->TAG:Ljava/lang/String;

    const-string v1, "NetworkApi() called"

    invoke-static {v0, v1}, Lcom/tencent/trbt/videosdk/utils/XLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/tencent/trbt/videosdk/net/NetworkApi;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->instance:Lcom/tencent/trbt/videosdk/net/NetworkApi;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/tencent/trbt/videosdk/net/NetworkApi;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->instance:Lcom/tencent/trbt/videosdk/net/NetworkApi;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/tencent/trbt/videosdk/net/NetworkApi;

    invoke-direct {v0}, Lcom/tencent/trbt/videosdk/net/NetworkApi;-><init>()V

    sput-object v0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->instance:Lcom/tencent/trbt/videosdk/net/NetworkApi;

    .line 17
    :cond_0
    sget-object v0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->instance:Lcom/tencent/trbt/videosdk/net/NetworkApi;

    monitor-exit v1

    .line 20
    :goto_0
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20
    :cond_1
    sget-object v0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->instance:Lcom/tencent/trbt/videosdk/net/NetworkApi;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized sendAsyncRequest(Lcom/qq/taf/jce/JceStruct;Ljava/lang/Class;Lcom/tencent/trbt/videosdk/net/NetworkCallback;)I
    .locals 3
    .param p1, "request"    # Lcom/qq/taf/jce/JceStruct;
    .param p3, "networkCallback"    # Lcom/tencent/trbt/videosdk/net/NetworkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/taf/jce/JceStruct;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;",
            "Lcom/tencent/trbt/videosdk/net/NetworkCallback;",
            ")I"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/qq/taf/jce/JceStruct;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/tencent/trbt/videosdk/net/NetworkClient;

    iget v1, p0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->requestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/trbt/videosdk/net/NetworkApi;->requestId:I

    invoke-direct {v0, v1, p1, p2}, Lcom/tencent/trbt/videosdk/net/NetworkClient;-><init>(ILcom/qq/taf/jce/JceStruct;Ljava/lang/Class;)V

    .line 32
    .local v0, "client":Lcom/tencent/trbt/videosdk/net/NetworkClient;
    invoke-virtual {v0, p3}, Lcom/tencent/trbt/videosdk/net/NetworkClient;->setNetworkCallback(Lcom/tencent/trbt/videosdk/net/NetworkCallback;)V

    .line 33
    invoke-virtual {v0}, Lcom/tencent/trbt/videosdk/net/NetworkClient;->sendRequest()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 31
    .end local v0    # "client":Lcom/tencent/trbt/videosdk/net/NetworkClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
