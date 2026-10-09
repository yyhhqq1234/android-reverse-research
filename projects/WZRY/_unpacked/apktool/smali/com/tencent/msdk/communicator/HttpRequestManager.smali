.class public Lcom/tencent/msdk/communicator/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# static fields
.field public static final CLOUD_REQUEST_PATH:Ljava/lang/String; = "/comm/cloud_center_ctl/"

.field public static final NAME_AUTH_ACTION:Ljava/lang/String; = "/auth/realnameauth/"

.field public static final NOTICE_ACTION:Ljava/lang/String; = "/notice/gather_data/"

.field public static final PFKEY_ACTION:Ljava/lang/String; = "/auth/getlogin_info/"

.field public static final QQA8LOGIN_ACTION:Ljava/lang/String; = "/auth/qqa8_login/"

.field public static final REPORT_DATA_ACTION:Ljava/lang/String; = "/comm/data_report/"

.field public static final RSP_KEY:Ljava/lang/String; = "http_rsp"

.field public static final WXEXPIRED_LOGIN_ACTION:Ljava/lang/String; = "/auth/wxexpired_login/"

.field public static final WXFIRST_LOGIN_ACTION:Ljava/lang/String; = "/auth/wxfirst_login/"

.field public static final isEncode:Ljava/lang/Boolean;

.field public static mCaseId:I = 0x0

.field private static mExecutors:Ljava/util/concurrent/Executor; = null

.field public static final msdkEncodeType:I = 0x2


# instance fields
.field private mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    .line 36
    const/4 v0, -0x2

    sput v0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mCaseId:I

    .line 37
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mExecutors:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/msdk/communicator/IHttpRequestListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    .line 40
    invoke-direct {p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;->initHandle()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/communicator/HttpRequestManager;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/communicator/HttpRequestManager;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestSuccess(Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method private initHandle()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/msdk/communicator/HttpRequestManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/communicator/HttpRequestManager$1;-><init>(Lcom/tencent/msdk/communicator/HttpRequestManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mWorkerHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method private notifyRequestSuccess(Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "jsonBody"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, p3, v1}, Lcom/tencent/msdk/communicator/IHttpRequestListener;->onSuccess(Ljava/lang/String;II)V

    .line 114
    invoke-virtual {p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;->getInterfaceName()Ljava/lang/String;

    .line 117
    :cond_0
    return-void
.end method

.method private notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "errorContent"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, p3, v1}, Lcom/tencent/msdk/communicator/IHttpRequestListener;->onFailure(Ljava/lang/String;II)V

    .line 122
    invoke-virtual {p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;->getInterfaceName()Ljava/lang/String;

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method protected getInterfaceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    iget-object v3, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "name":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "nameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 105
    .local v0, "interfaceName":Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 106
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 108
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getTextAsync(Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "what"    # I

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 158
    const-string v2, "The calling thread has not called Looper.prepare()"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 160
    :cond_0
    new-instance v1, Lcom/tencent/msdk/communicator/MHttpRequest;

    invoke-direct {v1}, Lcom/tencent/msdk/communicator/MHttpRequest;-><init>()V

    .line 161
    .local v1, "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    invoke-virtual {v1, p1}, Lcom/tencent/msdk/communicator/MHttpRequest;->setUrl(Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->GET:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/communicator/MHttpRequest;->setMethod(Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;)V

    .line 165
    new-instance v2, Lcom/tencent/msdk/communicator/HttpTask;

    iget-object v3, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p2}, Lcom/tencent/msdk/communicator/HttpTask;-><init>(Landroid/os/Handler;I)V

    sget-object v3, Lcom/tencent/msdk/communicator/HttpRequestManager;->mExecutors:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/tencent/msdk/communicator/MHttpRequest;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/tencent/msdk/communicator/HttpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "url"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "method"

    const-string v3, "get"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v2, "taskid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/msdk/communicator/MHttpRequest;->getTaskId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "WGAddTask"

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 157
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "what"    # I

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 133
    const-string v2, "The calling thread has not called Looper.prepare()"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 135
    :cond_0
    new-instance v1, Lcom/tencent/msdk/communicator/MHttpRequest;

    invoke-direct {v1}, Lcom/tencent/msdk/communicator/MHttpRequest;-><init>()V

    .line 136
    .local v1, "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    invoke-virtual {v1, p1}, Lcom/tencent/msdk/communicator/MHttpRequest;->setUrl(Ljava/lang/String;)V

    .line 137
    sget-object v2, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->POST:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/communicator/MHttpRequest;->setMethod(Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;)V

    .line 138
    const/16 v2, 0x7e4

    if-ne v2, p3, :cond_1

    .line 139
    invoke-virtual {v1, p2}, Lcom/tencent/msdk/communicator/MHttpRequest;->setStrBody(Ljava/lang/String;)V

    .line 145
    :goto_0
    new-instance v2, Lcom/tencent/msdk/communicator/HttpTask;

    iget-object v3, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p3}, Lcom/tencent/msdk/communicator/HttpTask;-><init>(Landroid/os/Handler;I)V

    sget-object v3, Lcom/tencent/msdk/communicator/HttpRequestManager;->mExecutors:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/tencent/msdk/communicator/MHttpRequest;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/tencent/msdk/communicator/HttpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "url"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "method"

    const-string v3, "post"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v2, "taskid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/msdk/communicator/MHttpRequest;->getTaskId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "WGAddTask"

    invoke-virtual {v2, v3, v4, v0}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/tencent/msdk/communicator/MHttpRequest;->setBody(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v1    # "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
