.class Lcom/netease/epay/sdk/base/network/FileDownloader$1;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/network/FileDownloader;->start(Ljava/lang/String;Ljava/io/File;Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/network/FileDownloader;

.field final synthetic val$callBackLooper:Landroid/os/Looper;

.field final synthetic val$downloadListener:Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;

.field final synthetic val$fileUrl:Ljava/lang/String;

.field final synthetic val$save:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/network/FileDownloader;Ljava/lang/String;Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;Landroid/os/Looper;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/network/FileDownloader;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->this$0:Lcom/netease/epay/sdk/base/network/FileDownloader;

    iput-object p2, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$fileUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$downloadListener:Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;

    iput-object p4, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$callBackLooper:Landroid/os/Looper;

    iput-object p5, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$save:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDownloader IOException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$downloadListener:Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/netease/epay/sdk/base/network/FileDownloader$1$1;

    invoke-direct {v0, p0, p2}, Lcom/netease/epay/sdk/base/network/FileDownloader$1$1;-><init>(Lcom/netease/epay/sdk/base/network/FileDownloader$1;Ljava/io/IOException;)V

    iget-object v1, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$callBackLooper:Landroid/os/Looper;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnLooperThread(Ljava/lang/Runnable;Landroid/os/Looper;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v2, 0x0

    .line 63
    .line 64
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 68
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lic file size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 71
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$save:Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :goto_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 73
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 85
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileDownloader IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$fileUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object v3, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$downloadListener:Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;

    if-eqz v3, :cond_0

    .line 87
    new-instance v3, Lcom/netease/epay/sdk/base/network/FileDownloader$1$3;

    invoke-direct {v3, p0, v0}, Lcom/netease/epay/sdk/base/network/FileDownloader$1$3;-><init>(Lcom/netease/epay/sdk/base/network/FileDownloader$1;Ljava/io/IOException;)V

    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$callBackLooper:Landroid/os/Looper;

    invoke-static {v3, v0}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnLooperThread(Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 95
    :cond_0
    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/FileUtil;->closeStream(Ljava/io/Closeable;)V

    .line 96
    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/FileUtil;->closeStream(Ljava/io/Closeable;)V

    .line 98
    :goto_2
    return-void

    .line 75
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$downloadListener:Lcom/netease/epay/sdk/base/network/FileDownloader$DownloadListener;

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Lcom/netease/epay/sdk/base/network/FileDownloader$1$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/network/FileDownloader$1$2;-><init>(Lcom/netease/epay/sdk/base/network/FileDownloader$1;)V

    iget-object v2, p0, Lcom/netease/epay/sdk/base/network/FileDownloader$1;->val$callBackLooper:Landroid/os/Looper;

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/base/util/UIDispatcher;->runOnLooperThread(Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 95
    :cond_2
    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/FileUtil;->closeStream(Ljava/io/Closeable;)V

    .line 96
    invoke-static {v3}, Lcom/netease/epay/sdk/base/util/FileUtil;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 95
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/FileUtil;->closeStream(Ljava/io/Closeable;)V

    .line 96
    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/FileUtil;->closeStream(Ljava/io/Closeable;)V

    throw v0

    .line 95
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 84
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method
