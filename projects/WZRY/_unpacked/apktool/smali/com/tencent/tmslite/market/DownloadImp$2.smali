.class Lcom/tencent/tmslite/market/DownloadImp$2;
.super Ljava/lang/Object;
.source "DownloadImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmslite/market/DownloadImp;->bindService(Landroid/content/Context;Lcom/tencent/tmslite/market/IDownload$TmsCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmslite/market/DownloadImp;


# direct methods
.method constructor <init>(Lcom/tencent/tmslite/market/DownloadImp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tmslite/market/DownloadImp$2;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    const-wide/16 v2, 0x1f40

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$2;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$4(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmsecurelite/base/ITmsConnection;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$2;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$2;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    const-string v2, "bindeFaided"

    invoke-interface {v1, v2}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onError(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$2;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mCallback::onError::bindeFaided"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
