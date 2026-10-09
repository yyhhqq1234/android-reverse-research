.class Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;
.super Ljava/lang/Object;
.source "SRTTAPIHTTPTaskQueue.java"


# static fields
.field private static LOGTAG:Ljava/lang/String;

.field private static taskQueue:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "GCloudVoiceTag"

    sput-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->LOGTAG:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-direct {v0}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;-><init>()V

    sput-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->taskQueue:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addTask(IILjava/lang/String;[BI)V
    .locals 7
    .param p0, "type"    # I
    .param p1, "method"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "body"    # [B
    .param p4, "session"    # I

    .prologue
    .line 19
    const-class v6, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->taskQueue:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->addTask(IILjava/lang/String;[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v6

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->taskQueue:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-virtual {v0}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->init()V

    .line 12
    return-void
.end method

.method public static setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 15
    sget-object v0, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueue;->taskQueue:Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/apollo/apollovoice/httpclient/SRTTAPIHTTPTaskQueueImp;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method
