.class public Lcom/tencent/tmslite/market/DownloadImp;
.super Ljava/lang/Object;
.source "DownloadImp.java"

# interfaces
.implements Lcom/tencent/tmslite/market/IDownload;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    }
.end annotation


# static fields
.field private static final MAX_FAILED_TRY_TIME:I = 0x6


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mFailedTimes:I

.field private mInterval:J

.field private mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPkgName:Ljava/lang/String;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "[SGame DownloadImp]"

    iput-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mThread:Ljava/lang/Thread;

    .line 37
    iput-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    .line 38
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mInterval:J

    .line 39
    iput v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mFailedTimes:I

    .line 43
    new-instance v0, Lcom/tencent/tmslite/market/DownloadImp$1;

    invoke-direct {v0, p0}, Lcom/tencent/tmslite/market/DownloadImp$1;-><init>(Lcom/tencent/tmslite/market/DownloadImp;)V

    iput-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mConnection:Landroid/content/ServiceConnection;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/tmslite/market/DownloadImp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/tmslite/market/DownloadImp;Lcom/tencent/tmsecurelite/base/ITmsConnection;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/tmslite/market/DownloadImp;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/tencent/tmslite/market/DownloadImp;->exit(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmslite/market/IDownload$TmsCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tencent/tmslite/market/DownloadImp;)Lcom/tencent/tmsecurelite/base/ITmsConnection;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    return-object v0
.end method

.method private exit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    invoke-interface {v0, p2}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onError(Ljava/lang/String;)V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCallback::onError::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lcom/tencent/tmslite/market/IDownload$TmsCallback;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    .prologue
    .line 73
    if-nez p2, :cond_1

    .line 74
    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    const-string v4, "bindservice::callback == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v2, 0x0

    .line 98
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    iput-object p2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    .line 78
    const/16 v3, 0xe

    invoke-static {v3}, Lcom/tencent/tmsecurelite/commom/ServiceManager;->getTmsIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 80
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bindService::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/tencent/tmslite/market/DownloadImp$2;

    invoke-direct {v3, p0}, Lcom/tencent/tmslite/market/DownloadImp$2;-><init>(Lcom/tencent/tmslite/market/DownloadImp;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v0, "guard":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "interval"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v11, 0x1

    .line 227
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download::pkgName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    if-nez v1, :cond_2

    .line 229
    :cond_0
    const/4 v10, 0x0

    .line 255
    :cond_1
    :goto_0
    return v10

    .line 231
    :cond_2
    const/16 v1, 0xc8

    if-le p3, v1, :cond_3

    const/16 v1, 0x1388

    if-ge p3, v1, :cond_3

    .line 232
    int-to-long v2, p3

    iput-wide v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mInterval:J

    .line 234
    :cond_3
    iput-object p1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    if-eqz v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tencent/tmslite/market/DownloadImp;->nativeQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/tmslite/market/DownloadImp$Dstate;

    move-result-object v0

    .line 239
    .local v0, "dstate":Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    if-ne v1, v4, :cond_4

    .line 240
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download::pkgName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dstate.state == SDKMarketConst.STATE.STATE_FINISH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    iget v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    iget v5, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    iget-wide v6, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    iget-wide v8, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-interface/range {v1 .. v9}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onDownloadProcess(Ljava/lang/String;Ljava/lang/String;IFJJ)V

    .line 242
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onNoticeInstallApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onDownloadProcess::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onNoticeInstallApk::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 245
    goto/16 :goto_0

    .line 248
    .end local v0    # "dstate":Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    :cond_4
    invoke-virtual {p0, p1, p2, v11, v4}, Lcom/tencent/tmslite/market/DownloadImp;->nativeInstall(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    .line 249
    .local v10, "ret":Z
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download::pkgName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz v10, :cond_1

    .line 251
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mThread:Ljava/lang/Thread;

    .line 252
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install::pkgName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/tmslite/market/DownloadImp;->nativeInstall(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    .line 221
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "install::pkgName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public nativeInstall(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "isDown"    # Z
    .param p4, "waitSecond"    # I

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-object v6, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "nativeInstall::pkgName="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " appVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    if-nez v6, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v5

    .line 282
    :cond_1
    const/4 v4, 0x0

    .line 283
    .local v4, "ret":I
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 284
    .local v0, "atomicBoolean":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 287
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v2, "in":Landroid/os/Bundle;
    const-string v5, "key_pkg_name"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v5, "key_ver_name"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v5, "KEY_IS_DOWNLOAD"

    invoke-virtual {v2, v5, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    iget-object v5, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    const v6, 0xe0002

    new-instance v7, Lcom/tencent/tmslite/market/DownloadImp$4;

    invoke-direct {v7, p0, v3, v0}, Lcom/tencent/tmslite/market/DownloadImp$4;-><init>(Lcom/tencent/tmslite/market/DownloadImp;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v5, v6, v2, v7}, Lcom/tencent/tmsecurelite/base/ITmsConnection;->sendTmsCallback(ILandroid/os/Bundle;Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 320
    .end local v2    # "in":Landroid/os/Bundle;
    :goto_1
    if-nez v4, :cond_2

    .line 322
    int-to-long v6, p4

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "nativeInstall::pkgName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " appVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    const/16 v4, -0x63

    goto :goto_1

    .line 323
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 324
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public nativeQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "customKey"    # Ljava/lang/String;
    .param p4, "waitSecond"    # I

    .prologue
    .line 139
    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nativeQuery::pkgName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    if-nez v2, :cond_1

    .line 141
    :cond_0
    const/4 v2, 0x0

    .line 211
    :goto_0
    return-object v2

    .line 143
    :cond_1
    const/4 v11, 0x0

    .line 144
    .local v11, "ret":I
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v7, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 145
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    .local v8, "atomicReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/tencent/tmslite/market/DownloadImp$Dstate;>;"
    :try_start_0
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v10, "in":Landroid/os/Bundle;
    const-string v2, "key_pkg_name"

    invoke-virtual {v10, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "key_ver_name"

    move-object/from16 v0, p2

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "key_trans_value"

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v12, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    const v13, 0xe0001

    new-instance v2, Lcom/tencent/tmslite/market/DownloadImp$3;

    move-object v3, p0

    move/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/tencent/tmslite/market/DownloadImp$3;-><init>(Lcom/tencent/tmslite/market/DownloadImp;ILjava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v12, v13, v10, v2}, Lcom/tencent/tmsecurelite/base/ITmsConnection;->sendTmsCallback(ILandroid/os/Bundle;Lcom/tencent/tmsecurelite/base/ITmsCallbackEx;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 199
    .end local v10    # "in":Landroid/os/Bundle;
    :goto_1
    if-nez v11, :cond_2

    .line 200
    if-lez p4, :cond_3

    .line 202
    move/from16 v0, p4

    int-to-long v2, v0

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nativeQuery::pkgName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " verName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmslite/market/DownloadImp$Dstate;

    goto :goto_0

    .line 195
    :catch_0
    move-exception v9

    .line 196
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    const/16 v11, -0x63

    goto :goto_1

    .line 203
    .end local v9    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v9

    .line 204
    .restart local v9    # "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 207
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_3
    new-instance v2, Lcom/tencent/tmslite/market/DownloadImp$Dstate;

    invoke-direct {v2, p0}, Lcom/tencent/tmslite/market/DownloadImp$Dstate;-><init>(Lcom/tencent/tmslite/market/DownloadImp;)V

    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public pause(Z)V
    .locals 10
    .param p1, "pause"    # Z

    .prologue
    .line 333
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    if-nez p1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tencent/tmslite/market/DownloadImp;->nativeQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/tmslite/market/DownloadImp$Dstate;

    move-result-object v0

    .line 338
    .local v0, "dstate":Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    iget v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    iget v5, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    iget-wide v6, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    iget-wide v8, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-interface/range {v1 .. v9}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onDownloadProcess(Ljava/lang/String;Ljava/lang/String;IFJJ)V

    .line 340
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onDownloadProcess::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget v1, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onNoticeInstallApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onNoticeInstallApk::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0    # "dstate":Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    :cond_0
    return-void
.end method

.method public queryState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "result":Z
    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryState::pkgName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mService:Lcom/tencent/tmsecurelite/base/ITmsConnection;

    if-nez v3, :cond_1

    .line 135
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 133
    .restart local v1    # "result":Z
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/tencent/tmslite/market/DownloadImp;->nativeQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/tmslite/market/DownloadImp$Dstate;

    move-result-object v0

    .line 134
    .local v0, "dstate":Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "queryState::pkgName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " verName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dstate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "dstate":Lcom/tencent/tmslite/market/DownloadImp$Dstate;
    :goto_0
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    :goto_1
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    .line 354
    iget v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mFailedTimes:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 355
    const-string v1, "failed-max"

    invoke-direct {p0, v12, v1}, Lcom/tencent/tmslite/market/DownloadImp;->exit(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v12, v3}, Lcom/tencent/tmslite/market/DownloadImp;->nativeQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/tmslite/market/DownloadImp$Dstate;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_5

    .line 360
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    if-eqz v1, :cond_2

    .line 361
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    iget v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    iget v5, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    iget-wide v6, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    iget-wide v8, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-interface/range {v1 .. v9}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onDownloadProcess(Ljava/lang/String;Ljava/lang/String;IFJJ)V

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onDownloadProcess::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->progress:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->currentSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v1, v0, Lcom/tencent/tmslite/market/DownloadImp$Dstate;->state:I

    packed-switch v1, :pswitch_data_0

    .line 376
    :pswitch_0
    iget v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mFailedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mFailedTimes:I

    .line 385
    :cond_3
    :goto_2
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mInterval:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 386
    :catch_0
    move-exception v10

    .line 387
    .local v10, "e":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 366
    .end local v10    # "e":Ljava/lang/Throwable;
    :pswitch_1
    iput v11, p0, Lcom/tencent/tmslite/market/DownloadImp;->mFailedTimes:I

    goto :goto_2

    .line 369
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    if-eqz v1, :cond_4

    .line 370
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mCallback:Lcom/tencent/tmslite/market/IDownload$TmsCallback;

    iget-object v2, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/tencent/tmslite/market/IDownload$TmsCallback;->onNoticeInstallApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_4
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCallback::onNoticeInstallApk::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmslite/market/DownloadImp;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    .line 380
    :cond_5
    iget v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mFailedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/tmslite/market/DownloadImp;->mFailedTimes:I

    goto :goto_2

    .line 364
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unBindService(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/tmslite/market/DownloadImp;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unBindService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-nez p1, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    const-string/jumbo v0, "unBindService"

    invoke-direct {p0, p1, v0}, Lcom/tencent/tmslite/market/DownloadImp;->exit(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    goto :goto_0
.end method
