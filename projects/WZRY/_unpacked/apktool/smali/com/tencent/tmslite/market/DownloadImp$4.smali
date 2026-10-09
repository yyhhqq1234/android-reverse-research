.class Lcom/tencent/tmslite/market/DownloadImp$4;
.super Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;
.source "DownloadImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmslite/market/DownloadImp;->nativeInstall(Ljava/lang/String;Ljava/lang/String;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmslite/market/DownloadImp;

.field private final synthetic val$atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/tencent/tmslite/market/DownloadImp;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    iput-object p2, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->val$atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    invoke-direct {p0}, Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v4}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nativeInstall::onCallback::"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 296
    .local v0, "data":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 297
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 298
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v4}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nativeInstall::onCallback::error!!! data == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v4, "ret_result"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 302
    .local v3, "tmsErr":I
    if-eqz v3, :cond_1

    .line 304
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 305
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v4}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nativeInstall::onCallback::error!!! tmsErr != ErrorCode.ERR_NONE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_1
    const-string v4, "key_pkg_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "rPkgName":Ljava/lang/String;
    const-string v4, "key_ver_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 311
    .local v2, "rVersionCode":I
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v4}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nativeInstall::onCallback::pkg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " verName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->val$atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 313
    iget-object v4, p0, Lcom/tencent/tmslite/market/DownloadImp$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method
