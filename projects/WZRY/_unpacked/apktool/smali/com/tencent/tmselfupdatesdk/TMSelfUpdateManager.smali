.class public Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final DEFAULT_VIA:Ljava/lang/String; = "ANDROIDYYB.UPDATE"

.field private static final PREDOWNLOAD_SCENE:Ljava/lang/String; = "wifipredownload"

.field protected static final TAG:Ljava/lang/String; = "TMSelfUpdateManager"

.field private static final YYB_APPID:Ljava/lang/String; = "50801"

.field private static final YYB_PACKAGENAME:Ljava/lang/String; = "com.tencent.android.qqdownloader"

.field protected static isMergeApk:Z

.field protected static mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# instance fields
.field a:Ljava/lang/ref/ReferenceQueue;

.field b:Ljava/util/ArrayList;

.field c:Landroid/os/Handler;

.field d:Landroid/os/HandlerThread;

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:I

.field protected hostPackageName:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Z

.field private mApkUpdateListener:Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

.field protected mAppId:J

.field protected mContext:Landroid/content/Context;

.field private mDownloadPatchCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

.field private mDownloadYYBCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

.field protected mHostChannelId:Ljava/lang/String;

.field protected mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

.field private mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

.field private mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

.field protected mScene:Ljava/lang/String;

.field protected mYybChannelId:Ljava/lang/String;

.field protected overwriteChannelid:B

.field protected updateType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    .line 63
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mAppId:J

    .line 66
    iput-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "selfUpdateSDK_call_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->d:Landroid/os/HandlerThread;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->f:I

    .line 103
    iput-boolean v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    .line 117
    iput-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->j:Z

    .line 852
    new-instance v0, Lcom/tencent/tmselfupdatesdk/h;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/h;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    .line 903
    new-instance v0, Lcom/tencent/tmselfupdatesdk/i;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/i;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadYYBCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    .line 987
    new-instance v0, Lcom/tencent/tmselfupdatesdk/k;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/k;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadPatchCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    .line 1111
    new-instance v0, Lcom/tencent/tmselfupdatesdk/m;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/m;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mApkUpdateListener:Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    .line 1222
    new-instance v0, Lcom/tencent/tmselfupdatesdk/b;

    invoke-direct {v0, p0}, Lcom/tencent/tmselfupdatesdk/b;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

    .line 126
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a:Ljava/lang/ref/ReferenceQueue;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    .line 132
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    .line 134
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->genNewPkgProcess()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->onCheckYYBDownloaded(Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->onCheckNeedUpdateInfo(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->patchGenInstall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startInstall(Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private genNewPkgProcess()V
    .locals 2

    .prologue
    .line 1239
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/c;

    invoke-direct {v1, p0}, Lcom/tencent/tmselfupdatesdk/c;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1347
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;
    .locals 2

    .prologue
    .line 143
    const-class v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;-><init>()V

    sput-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    .line 147
    :cond_0
    sget-object v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mInstance:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onCheckNeedUpdateInfo(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V
    .locals 4

    .prologue
    .line 1439
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    if-nez p1, :cond_0

    .line 1441
    const-string v0, "TMSelfUpdateManager"

    const-string/jumbo v1, "upateinfo == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    :goto_0
    return-void

    .line 1445
    :cond_0
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upateinfo: (status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; updateMedthod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; newApkSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewApkSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; patchSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getPatchSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; newFeature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getNewFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; updateDownloadUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1450
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1451
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1452
    if-nez v0, :cond_2

    .line 1453
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "onCheckNeedUpdateInfo listener = null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1456
    :cond_2
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    if-eqz v2, :cond_1

    .line 1457
    check-cast v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    invoke-interface {v0, p1}, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;->onUpdateInfoReceived(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_1

    .line 1461
    :cond_3
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onCheckYYBDownloaded(Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;)V
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    .line 246
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 247
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 248
    if-nez v1, :cond_1

    .line 249
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "listener == null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_1
    const/4 v3, -0x1

    .line 255
    if-eqz p1, :cond_3

    .line 256
    iget v3, p1, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mState:I

    .line 257
    iget-wide v4, p1, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mReceiveDataLen:J

    .line 258
    iget-wide v6, p1, Lcom/tencent/tmassistant/aidl/TMAssistantDownloadTaskInfo;->mTotalDataLen:J

    .line 260
    :goto_1
    instance-of v0, v1, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    if-eqz v0, :cond_0

    .line 261
    check-cast v1, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;->onCheckDownloadYYBState(Ljava/lang/String;IJJ)V

    goto :goto_0

    .line 266
    :cond_2
    return-void

    :cond_3
    move-wide v6, v8

    move-wide v4, v8

    goto :goto_1
.end method

.method private onYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 833
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 836
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 837
    if-nez v0, :cond_1

    .line 838
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "listener == null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_1
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    if-eqz v2, :cond_0

    .line 842
    check-cast v0, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;->onDownloadYYBStateChanged(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 846
    :cond_2
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method private patchGenInstall(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 1356
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "patchPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_new.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1362
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1366
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1368
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1369
    if-eqz v2, :cond_0

    .line 1370
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new apk has yet exists\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";  newPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startInstall(Ljava/lang/String;Ljava/lang/String;B)V

    .line 1375
    const/16 v0, -0xe

    const-string v1, "SelfUpdate success,New Pakage is exists!"

    invoke-virtual {p0, v6, v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1377
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1384
    :cond_1
    const/16 v1, 0x67

    const-string v2, "SelfUpdate generating new apk!"

    invoke-virtual {p0, v1, v5, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1385
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->patchNewApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1386
    const-string v2, "TMSelfUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now begin gen New apk; result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; patchPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; newGenApkPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    if-nez v1, :cond_3

    .line 1390
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patchGenInstall overwriteChannelid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p0, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->writeChannelIdAfterUpdate(Ljava/lang/String;)V

    .line 1394
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iget-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startInstall(Ljava/lang/String;Ljava/lang/String;B)V

    .line 1397
    const-string v0, "SelfUpdate success !"

    invoke-virtual {p0, v6, v5, v0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1404
    :cond_2
    :goto_1
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    :cond_3
    const/16 v0, 0x66

    const-string v2, "SelfUpdate failure,genNewApk failure!"

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_1
.end method

.method private registerListener(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 530
    if-nez p1, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0

    .line 536
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 542
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 543
    if-ne v0, p1, :cond_2

    move v0, v1

    .line 544
    goto :goto_0

    .line 549
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 550
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 552
    goto :goto_0
.end method

.method private startInstall(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 3

    .prologue
    .line 758
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; updateType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 761
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 764
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 765
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method private unregisterListener()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 775
    return-void
.end method


# virtual methods
.method a(Z)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;
    .locals 4

    .prologue
    .line 783
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUseSDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    if-eqz p1, :cond_1

    .line 788
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getInstance(Landroid/content/Context;)Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    move-result-object v0

    const-string v1, "selfUpdateSDK_client_sdkupdate"

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getDownloadSDKClient(Ljava/lang/String;)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    .line 789
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "get selfUpdateSDK_client_sdkupdate"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    if-eqz v0, :cond_0

    .line 792
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadPatchCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->registerDownloadTaskListener(Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;)Z

    .line 804
    :cond_0
    :goto_0
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue(client): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-object v0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getInstance(Landroid/content/Context;)Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    move-result-object v0

    const-string v1, "selfUpdateSDK_client_yybupdate"

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->getDownloadSDKClient(Ljava/lang/String;)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    move-result-object v0

    .line 798
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "get selfUpdateSDK_client_yybupdate"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    if-eqz v0, :cond_0

    .line 801
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mDownloadYYBCallback:Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->registerDownloadTaskListener(Lcom/tencent/tmdownloader/ITMAssistantDownloadClientListener;)Z

    goto :goto_0
.end method

.method a(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 816
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 819
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 820
    if-nez v0, :cond_1

    .line 821
    const-string v0, "TMSelfUpdateManager"

    const-string v2, "listener == null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_1
    instance-of v2, v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    if-eqz v2, :cond_0

    .line 825
    check-cast v0, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;->onDownloadAppStateChanged(IILjava/lang/String;)V

    goto :goto_0

    .line 829
    :cond_2
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public cancelYYBDownload()V
    .locals 2

    .prologue
    .line 333
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "cancelYYBDownload enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/f;

    invoke-direct {v1, p0}, Lcom/tencent/tmselfupdatesdk/f;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "cancelYYBDownload exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public checkSelfUpdate()V
    .locals 3

    .prologue
    .line 561
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    .line 566
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->checkUpdate(Ljava/util/List;)V

    .line 567
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public checkYYBDownloaded()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "checkYYBDownloaded enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/a;

    invoke-direct {v1, p0}, Lcom/tencent/tmselfupdatesdk/a;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "checkYYBDownloaded exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public checkYYBInstallState()I
    .locals 4

    .prologue
    .line 204
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->checkQQDownloaderInstalled()I

    move-result v0

    .line 208
    if-nez v0, :cond_0

    .line 210
    const-string v1, "TMSelfUpdateManager"

    const-string/jumbo v2, "yybExist: UpdateLogConst.YYB_INSTALLED"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    const-string v1, "TMSelfUpdateManager"

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

    .line 216
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return v0

    .line 213
    :cond_0
    const-string v1, "TMSelfUpdateManager"

    const-string/jumbo v2, "yybExist: UpdateLogConst.YYB_NOT_INSTALL"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 413
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->unregisterListener()V

    .line 416
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->closeAllService(Landroid/content/Context;)V

    .line 418
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->unregisterListener(Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;)Z

    move-result v0

    .line 420
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenSDKInstance.unregisterListener result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->destroyQQDownloaderOpenSDK()V

    .line 423
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 425
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->destory()V

    .line 429
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b(Landroid/content/Context;)V

    .line 430
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

    invoke-virtual {v0, v1}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->b(Lcom/tencent/tmselfupdatesdk/internal/b;)V

    .line 431
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method protected downloadAndMergeApk(Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 577
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 580
    const-string v0, "TMSelfUpdateManager"

    const-string/jumbo v1, "updateInfo != null && !TextUtils.isEmpty(updateInfo.getUpdateDownloadUrl())"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iput v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    .line 593
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    .line 594
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInfo.getUpdateMethod(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInfo.getUpdateDownloadUrl(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->genNewPkgProcess()V

    .line 601
    :goto_1
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void

    .line 585
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 587
    iput v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;->getUpdateMethod()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 591
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    goto :goto_0

    .line 599
    :cond_3
    const-string v0, "TMSelfUpdateManager"

    const-string/jumbo v1, "updateInfo == null || TextUtils.isEmpty(updateInfo.getUpdateDownloadUrl())"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;Landroid/os/Bundle;)I
    .locals 4

    .prologue
    .line 162
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "init enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init applicationContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; yybchannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; ITMSelfUpdateListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; YYBDownloadListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->initManager(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;Landroid/os/Bundle;)I

    move-result v0

    .line 165
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init exit ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return v0
.end method

.method protected initManager(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tmselfupdatesdk/ITMSelfUpdateListener;Lcom/tencent/tmselfupdatesdk/YYBDownloadListener;Landroid/os/Bundle;)I
    .locals 5

    .prologue
    .line 447
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 449
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exception: you must input an application context!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "you must input an application context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    .line 454
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    .line 455
    iput-object p2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    .line 456
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applicationContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; yybchannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; hostPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 460
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "YYB_APPKEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "YYB_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    .line 471
    :goto_0
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHostChannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.myapp.com/downcenter/a/50801?g_f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mYybChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->e:Ljava/lang/String;

    .line 478
    invoke-static {}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->getInstance()Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    .line 479
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->initTMAssistantCallYYBApi(Landroid/content/Context;)I

    move-result v0

    .line 480
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "initQQDownloaderOpenSDK"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKYYBStateListener:Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;

    invoke-virtual {v1, v2}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->registerListener(Lcom/tencent/tmassistantsdk/ITMAssistantCallBackListener;)Z

    .line 482
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "registerListener"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 486
    if-eqz p5, :cond_6

    .line 487
    const-string v2, "scene"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROIDYYB.UPDATE."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    .line 496
    :goto_1
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this.mScene: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->init(Landroid/content/Context;)V

    .line 500
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "ApkUpdateManager.init"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mApkUpdateListener:Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;

    invoke-virtual {v1, v2}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->addListener(Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;)V

    .line 503
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "ApkUpdateManager.addListener"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    if-eqz p3, :cond_2

    .line 510
    invoke-direct {p0, p3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->registerListener(Ljava/lang/Object;)Z

    move-result v1

    .line 511
    const-string v2, "TMSelfUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_2
    if-eqz p4, :cond_3

    .line 514
    invoke-direct {p0, p4}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->registerListener(Ljava/lang/Object;)Z

    .line 516
    :cond_3
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mPackageInstallListener:Lcom/tencent/tmselfupdatesdk/internal/b;

    invoke-virtual {v1, v2}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a(Lcom/tencent/tmselfupdatesdk/internal/b;)V

    .line 517
    invoke-static {}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a()Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/tmselfupdatesdk/internal/PackageInstallReceiver;->a(Landroid/content/Context;)V

    .line 518
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return v0

    .line 469
    :cond_4
    iput-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    goto/16 :goto_0

    .line 491
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROIDYYB.UPDATE."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    goto/16 :goto_1

    .line 494
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROIDYYB.UPDATE."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onActivityResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 357
    const/4 v3, 0x1

    .line 358
    const/4 v4, 0x1

    .line 360
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "onActivityResume enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 362
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exception: you must input an application context!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    new-instance v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    invoke-direct {v2}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;-><init>()V

    .line 367
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "yyb isFromStartUpdate :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-boolean v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    if-eqz v0, :cond_2

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->checkQQDownloaderInstalled()I

    move-result v5

    .line 374
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "yyb startSaveUpdateToWhere  flag: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-nez v5, :cond_1

    .line 377
    const-string v0, "TMSelfUpdateManager"

    const-string/jumbo v1, "yyb startSaveUpdateToWhere!!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, ""

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    .line 391
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFromStartUpdate param: (param.SNGAppId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; param.taskPackageName = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; param.channelId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; param.via = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_1
    iput-boolean v7, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 403
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "onActivityResume exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_2
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 397
    :try_start_1
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception:"

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :catchall_0
    move-exception v0

    iput-boolean v7, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->g:Z

    .line 403
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "onActivityResume exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    throw v0
.end method

.method public startPreDownloadYYB(Z)V
    .locals 2

    .prologue
    .line 300
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "startPreDownloadYYB enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/e;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tmselfupdatesdk/e;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "startPreDownloadYYB exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method protected startSaveUpdate(ZZ)I
    .locals 6

    .prologue
    .line 616
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 618
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exception: you must input an application context!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "you must input an application or activity context!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    new-instance v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;

    invoke-direct {v2}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;-><init>()V

    .line 623
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoDownload = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; isAutoInstall = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "1234"

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    .line 626
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    .line 628
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mHostChannelId:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    .line 631
    invoke-virtual {p0}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->checkYYBInstallState()I

    move-result v5

    .line 632
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkYYBInstalled flag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    if-nez v5, :cond_1

    .line 637
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mScene:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    .line 643
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: (param.SNGAppId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.taskPackageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.channelId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.via = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V

    .line 646
    const/4 v0, 0x0

    .line 647
    const-string v1, "TMSelfUpdateManager"

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

    .line 648
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return v0

    .line 654
    :cond_1
    const-string v0, "TMSelfUpdateManager"

    const-string/jumbo v1, "yyb  uninstall!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: (param.SNGAppId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.taskPackageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.channelId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; param.via = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V

    .line 663
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/g;

    invoke-direct {v1, p0, v2}, Lcom/tencent/tmselfupdatesdk/g;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->f:I

    goto/16 :goto_0
.end method

.method protected startSaveUpdateToWhere(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZI)V
    .locals 3

    .prologue
    .line 730
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    if-eqz p2, :cond_0

    .line 732
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param: (param.SNGAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->SNGAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; param.taskPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; param.channelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->channelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; param.via = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;->via:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_0
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isAutoInstall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; checkQQDownloaderInstalled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    if-nez p5, :cond_1

    .line 740
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->startToAppDetail(Landroid/content/Context;Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZ)V

    .line 747
    :goto_0
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mOpenSDKInstance:Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;

    invoke-virtual {v0, p2, p3, p4}, Lcom/tencent/tmassistantsdk/TMAssistantCallYYB_V1;->addDownloadTaskFromAppDetail(Lcom/tencent/tmassistantsdk/TMAssistantCallYYBParamStruct;ZZ)J

    goto :goto_0
.end method

.method public startSelfUpdate(Z)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 178
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz p1, :cond_0

    .line 181
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    .line 182
    invoke-virtual {p0, v2, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->startSaveUpdate(ZZ)I

    move-result v0

    .line 183
    const-string v1, "TMSelfUpdateManager"

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

    .line 195
    :goto_0
    return v0

    .line 186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    sput-boolean v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    .line 189
    iput-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->updateType:B

    .line 190
    const-string v1, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUpdate: hostPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->getInstance()Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmapkupdatesdk/ApkUpdateManager;->checkUpdate(Ljava/util/List;)V

    .line 194
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startYYBInstallIfDownloaded()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "startYYBInstallIfDownloaded enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/tmselfupdatesdk/d;

    invoke-direct {v1, p0}, Lcom/tencent/tmselfupdatesdk/d;-><init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "startYYBInstallIfDownloaded exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method protected writeChannelIdAfterUpdate(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1412
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter overwriteChannelid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-byte v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1414
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeChannelIdPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1418
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1422
    invoke-static {v0, p1}, Lcom/tencent/tmselfupdatesdk/internal/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1423
    const-string v2, "TMSelfUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeOldCommentToNewFile; result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; packageName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->hostPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; oldApk="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; newGenApkPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    :cond_0
    :goto_0
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    return-void

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1427
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
