.class Lcom/tencent/tmslite/market/DownloadImp$1;
.super Ljava/lang/Object;
.source "DownloadImp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmslite/market/DownloadImp;
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
    iput-object p1, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {p2}, Lcom/tencent/tmsecurelite/commom/ServiceManager;->getTmsConnection(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecurelite/base/ITmsConnection;

    invoke-static {v2, v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$1(Lcom/tencent/tmslite/market/DownloadImp;Lcom/tencent/tmsecurelite/base/ITmsConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onServiceConnected(Landroid/content/ComponentName;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mCallback::onServiceConnected::"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v0}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v0, v2}, Lcom/tencent/tmslite/market/DownloadImp;->access$1(Lcom/tencent/tmslite/market/DownloadImp;Lcom/tencent/tmsecurelite/base/ITmsConnection;)V

    .line 48
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp$1;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v2, v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$2(Lcom/tencent/tmslite/market/DownloadImp;Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method
