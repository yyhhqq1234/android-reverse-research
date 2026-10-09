.class public Lcom/tencent/tmdownloader/TMAssistantDownloadService;
.super Landroid/app/Service;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/a/a/a;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TMAssistantDownloadService"


# instance fields
.field protected final downloadSDKServiceImpl:Lcom/tencent/tmdownloader/c;

.field protected final mCallbackHashMap:Ljava/util/HashMap;

.field protected final mCallbacks:Landroid/os/RemoteCallbackList;

.field mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/tencent/tmdownloader/c;

    invoke-direct {v0, p0}, Lcom/tencent/tmdownloader/c;-><init>(Lcom/tencent/tmdownloader/TMAssistantDownloadService;)V

    iput-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->downloadSDKServiceImpl:Lcom/tencent/tmdownloader/c;

    .line 39
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbackHashMap:Ljava/util/HashMap;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    .line 143
    return-void
.end method


# virtual methods
.method public OnDownloadProgressChanged(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 13

    .prologue
    .line 347
    const-string v2, "TMAssistantDownloadService"

    const-string v3, "enter"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v2, "TMAssistantDownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",receivedLen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; totalLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 352
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v11, :cond_0

    .line 357
    :try_start_1
    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/tencent/tmassistant/aidl/a;

    .line 358
    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 362
    const-string v2, "TMAssistantDownloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clientKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",receivedLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    .line 363
    invoke-interface/range {v3 .. v9}, Lcom/tencent/tmassistant/aidl/a;->a(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 378
    :goto_1
    const-string v2, "TMAssistantDownloadService"

    const-string v3, "exit"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 367
    :catch_0
    move-exception v2

    .line 369
    :try_start_3
    const-string v3, "TMAssistantDownloadService"

    const-string v4, "exception: "

    invoke-static {v3, v4, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 352
    :cond_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 374
    :catch_1
    move-exception v2

    .line 376
    const-string v3, "TMAssistantDownloadService"

    const-string v4, "exception: "

    invoke-static {v3, v4, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public OnDownloadStateChanged(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 310
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 315
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistant/aidl/a;

    .line 321
    iget-object v1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbackHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 325
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "serviceCallback.OnDownloadSDKServiceTaskStateChanged"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 326
    invoke-interface/range {v0 .. v5}, Lcom/tencent/tmassistant/aidl/a;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 341
    :goto_1
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    :try_start_3
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 315
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    .line 339
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 94
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->downloadSDKServiceImpl:Lcom/tencent/tmdownloader/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->downloadSDKServiceImpl:Lcom/tencent/tmdownloader/c;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->setContext(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->registerReceiver()V

    .line 54
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a()Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->b()V

    .line 56
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-direct {v1, v0}, Lcom/tencent/tmdownloader/internal/a/a/c;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    .line 59
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v0, p0}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Lcom/tencent/tmdownloader/internal/a/a/a;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/a/c;->a()V

    .line 63
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/a;->b()V

    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/tmdownloader/b;

    invoke-direct {v1, p0}, Lcom/tencent/tmdownloader/b;-><init>(Lcom/tencent/tmdownloader/TMAssistantDownloadService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 118
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/a;->a()Lcom/tencent/tmdownloader/internal/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/a;->c()V

    .line 123
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/i;->a()Lcom/tencent/tmdownloader/internal/logreport/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/i;->d()V

    .line 124
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/i;->a()Lcom/tencent/tmdownloader/internal/logreport/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/i;->b()V

    .line 125
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/a/a/c;->b()V

    .line 126
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    invoke-virtual {v0, v2}, Lcom/tencent/tmdownloader/internal/a/a/c;->a(Lcom/tencent/tmdownloader/internal/a/a/a;)V

    .line 127
    iput-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadService;->mServiceDownloadTaskManager:Lcom/tencent/tmdownloader/internal/a/a/c;

    .line 129
    invoke-static {}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->unregisterReceiver()V

    .line 130
    invoke-static {}, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->a()Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/logreport/AppInstallReportReceiver;->c()V

    .line 131
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->destroy()V

    .line 134
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 135
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;->a()Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;->d(Landroid/content/Context;)I

    .line 141
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    .line 104
    const-string v0, "TMAssistantDownloadService"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "TMAssistantDownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    .line 107
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

    .line 108
    const-string v1, "TMAssistantDownloadService"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return v0
.end method
