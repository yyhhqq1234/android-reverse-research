.class Lcom/tencent/tmslite/market/DownloadImp$3;
.super Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;
.source "DownloadImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmslite/market/DownloadImp;->nativeQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/tmslite/market/DownloadImp$Dstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmslite/market/DownloadImp;

.field private final synthetic val$appVersion:Ljava/lang/String;

.field private final synthetic val$atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field private final synthetic val$pkgName:Ljava/lang/String;

.field private final synthetic val$waitSecond:I


# direct methods
.method constructor <init>(Lcom/tencent/tmslite/market/DownloadImp;ILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    iput p2, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$waitSecond:I

    iput-object p3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$appVersion:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p6, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    invoke-direct {p0}, Lcom/tencent/tmsecurelite/base/TmsCallbackExStub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 155
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeQuery::onCallback::"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 157
    .local v0, "data":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 158
    iget v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$waitSecond:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$appVersion:Ljava/lang/String;

    move-wide v8, v6

    invoke-interface/range {v1 .. v9}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onQueryState(Ljava/lang/String;Ljava/lang/String;IFJJ)V

    .line 160
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onQueryState::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeQuery::onCallback::error!!! data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 193
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v1, "ret_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 167
    .local v11, "tmsErr":I
    if-eqz v11, :cond_3

    .line 169
    iget v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$waitSecond:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$appVersion:Ljava/lang/String;

    move-wide v8, v6

    invoke-interface/range {v1 .. v9}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onQueryState(Ljava/lang/String;Ljava/lang/String;IFJJ)V

    .line 171
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onQueryState::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeQuery::onCallback::error!!! tmsErr != ErrorCode.ERR_NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 177
    :cond_3
    new-instance v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-direct {v10, v1}, Lcom/tencent/tmslite/market/DownloadImp$Dstate;-><init>(Lcom/tencent/tmslite/market/DownloadImp;)V

    .line 178
    .local v10, "dstate":Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    const-string v1, "key_download_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    .line 179
    const-string v1, "key_pkg_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->pkgName:Ljava/lang/String;

    .line 180
    const-string v1, "key_ver_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->versionCode:I

    .line 181
    const-string v1, "key_ver_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->appVersion:Ljava/lang/String;

    .line 182
    const-string v1, "key_apk_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    .line 183
    const-string v1, "key_current_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    .line 184
    const-string v1, "key_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    .line 185
    const-string v1, "key_trans_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->customKey:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nativeQuery::onCallback::dstate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$waitSecond:I

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$appVersion:Ljava/lang/String;

    iget v4, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    iget v5, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    iget-wide v6, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    iget-wide v8, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-interface/range {v1 .. v9}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onQueryState(Ljava/lang/String;Ljava/lang/String;IFJJ)V

    .line 189
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->this$0:Lcom/tencent/tmslite/market/DownloadImp;

    invoke-static {v1}, Lcom/tencent/tmslite/market/DownloadImp;->access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onQueryState::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v10, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0
.end method
