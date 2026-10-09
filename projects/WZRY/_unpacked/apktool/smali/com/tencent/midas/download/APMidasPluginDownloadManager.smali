.class public Lcom/tencent/midas/download/APMidasPluginDownloadManager;
.super Ljava/lang/Object;
.source "APMidasPluginDownloadManager.java"


# static fields
.field private static final MAX_CURRENCY_DOWNLOAD_THREAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "APMidasPluginDownloadManager"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method private declared-synchronized enqueue(Lcom/tencent/midas/download/APMidasPluginDownloadWorker;)V
    .locals 2
    .param p1, "worker"    # Lcom/tencent/midas/download/APMidasPluginDownloadWorker;

    .prologue
    .line 53
    monitor-enter p0

    if-nez p1, :cond_0

    .line 54
    :try_start_0
    const-string v0, "APMidasPluginDownloadManager"

    const-string v1, "Cannot enqueue null worker!"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x1

    const-string v1, "Plugin Download Thread"

    const/4 v2, 0x0

    .line 70
    invoke-static {v1, v2}, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static startDownload(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/midas/download/IAPMidasPluginDownListener;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/tencent/midas/download/IAPMidasPluginDownListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/midas/download/APMidasPluginDownInfo;",
            ">;",
            "Lcom/tencent/midas/download/IAPMidasPluginDownListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/midas/download/APMidasPluginDownInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "midaspluginsTemp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 41
    .local v1, "file":Ljava/io/File;
    new-instance v0, Lcom/tencent/midas/download/APMidasPluginDownloadManager;

    invoke-direct {v0}, Lcom/tencent/midas/download/APMidasPluginDownloadManager;-><init>()V

    .line 42
    .local v0, "downloadManager":Lcom/tencent/midas/download/APMidasPluginDownloadManager;
    new-instance v2, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/tencent/midas/download/APMidasPluginDownloadWorker;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/tencent/midas/download/IAPMidasPluginDownListener;)V

    .line 44
    .local v2, "worker":Lcom/tencent/midas/download/APMidasPluginDownloadWorker;
    invoke-direct {v0, v2}, Lcom/tencent/midas/download/APMidasPluginDownloadManager;->enqueue(Lcom/tencent/midas/download/APMidasPluginDownloadWorker;)V

    .line 45
    return-void
.end method

.method private static threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "daemon"    # Z

    .prologue
    .line 85
    new-instance v0, Lcom/tencent/midas/download/APMidasPluginDownloadManager$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/midas/download/APMidasPluginDownloadManager$1;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
