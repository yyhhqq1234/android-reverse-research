.class public Lcom/netease/epay/sdk/base/network/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;
    }
.end annotation


# static fields
.field private static client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/netease/epay/sdk/base/network/FileDownloader;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/netease/epay/sdk/base/network/FileDownloader;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/network/FileDownloader;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/netease/epay/sdk/base/network/FileDownloader;->client:Lokhttp3/OkHttpClient;

    .line 36
    :cond_0
    monitor-exit v1

    .line 38
    :cond_1
    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public start(Ljava/lang/String;Ljava/io/File;Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;)V
    .locals 1
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "save"    # Ljava/io/File;
    .param p3, "downloadListener"    # Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/epay/sdk/base/network/FileDownloader;->start(Ljava/lang/String;Ljava/io/File;Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;Landroid/os/Looper;)V

    .line 42
    return-void
.end method

.method public start(Ljava/lang/String;Ljava/io/File;Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;Landroid/os/Looper;)V
    .locals 7
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "save"    # Ljava/io/File;
    .param p3, "downloadListener"    # Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;
    .param p4, "callBackLooper"    # Landroid/os/Looper;

    .prologue
    .line 45
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/netease/epay/sdk/base/network/FileDownloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    .line 47
    new-instance v0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/epay/sdk/base/network/FileDownloader$1;-><init>(Lcom/netease/epay/sdk/base/network/FileDownloader;Ljava/lang/String;Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;Landroid/os/Looper;Ljava/io/File;)V

    invoke-interface {v6, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 100
    return-void
.end method
