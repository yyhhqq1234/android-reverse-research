.class public Lcom/tencent/tmdownloader/c;
.super Lcom/tencent/tmassistant/aidl/e;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;


# direct methods
.method protected constructor <init>(Lcom/tencent/tmdownloader/TMAssistantDownloadService;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    invoke-direct {p0}, Lcom/tencent/tmassistant/aidl/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 150
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "returnValue: 1"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I
    .locals 8

    .prologue
    .line 217
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",manager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v2, v2, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmdownloader/internal/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)I

    move-result v0

    .line 224
    const-string v1, "TMAssistantDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return v0

    .line 228
    :cond_0
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "returnValue: TMAssistantDownloadErrorCode.DownloadSDK_START_FAILED_PARAMETERS_INVALID"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;
    .locals 4

    .prologue
    .line 200
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;

    move-result-object v0

    .line 204
    const-string v1, "TMAssistantDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "mServiceDownloadTaskManager == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "returnValue: null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 177
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxTaskNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/a/f;->a(I)V

    .line 180
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tencent/tmassistant/aidl/a;)V
    .locals 3

    .prologue
    .line 271
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 277
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "register callback"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_0
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 282
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 159
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTaskAutoResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/a/f;->a(Z)V

    .line 162
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/tencent/tmassistant/aidl/a;)V
    .locals 3

    .prologue
    .line 290
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 296
    const-string v0, "TMAssistantDownloadService"

    const-string/jumbo v1, "unregister callback"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :cond_0
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 236
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "pauseDownload"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 168
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDownloadWifiOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/f;->a()Lcom/tencent/tmdownloader/internal/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/a/f;->b(Z)V

    .line 171
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 186
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 190
    const-string v1, "TMAssistantDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 258
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/tencent/tmdownloader/c;->a:Lcom/tencent/tmdownloader/TMAssistantDownloadService;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmdownloader/internal/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "cancelDownload"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method
