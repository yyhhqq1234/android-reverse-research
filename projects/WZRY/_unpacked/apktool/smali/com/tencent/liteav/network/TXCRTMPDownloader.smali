.class public Lcom/tencent/liteav/network/TXCRTMPDownloader;
.super Lcom/tencent/liteav/network/TXIStreamDownloader;
.source "TXCRTMPDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/TXCRTMPDownloader$a;
    }
.end annotation


# instance fields
.field private final MSG_EVENT:I

.field private final MSG_RECONNECT:I

.field private final TAG:Ljava/lang/String;

.field private mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

.field private mEnableNearestIP:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasTcpPlayUrl:Z

.field private mIsPlayRtmpAccStream:Z

.field private mPlayUrl:Ljava/lang/String;

.field private mQuicChannel:Z

.field private mRTMPThreadLock:Ljava/lang/Object;

.field private mServerIp:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;

.field private mVecPlayUrls:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/liteav/network/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;-><init>()V

    .line 18
    const-string v0, "network.TXCRTMPDownloader"

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0x65

    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->MSG_RECONNECT:I

    .line 21
    const/16 v0, 0x66

    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->MSG_EVENT:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mServerIp:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 30
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    .line 33
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    .line 37
    iput-boolean v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    .line 38
    iput-boolean v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/network/TXCRTMPDownloader;Ljava/lang/String;Z)J
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeInitRtmpHandler(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeStart(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeUninitRtmpHandler(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeStop(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/liteav/network/TXCRTMPDownloader;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->startInternal()V

    return-void
.end method

.method private native nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
.end method

.method private native nativeInitRtmpHandler(Ljava/lang/String;Z)J
.end method

.method private native nativeStart(J)V
.end method

.method private native nativeStop(J)V
.end method

.method private native nativeUninitRtmpHandler(J)V
.end method

.method private postReconnectMsg()V
    .locals 4

    .prologue
    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 102
    :cond_0
    return-void
.end method

.method private reconnect(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x2eef

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 114
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    if-nez v0, :cond_1

    .line 167
    :goto_0
    return-void

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 120
    :cond_1
    iget-boolean v3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    .line 122
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    if-eqz v0, :cond_3

    .line 124
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    if-nez v0, :cond_7

    move v0, v2

    .line 129
    :goto_1
    if-eqz v3, :cond_2

    move v0, v1

    .line 134
    :cond_2
    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 137
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/d;

    .line 138
    iget-object v4, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 140
    iget-object v2, v0, Lcom/tencent/liteav/network/d;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    .line 141
    iget-boolean v0, v0, Lcom/tencent/liteav/network/d;->b:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    move v0, v1

    .line 145
    :goto_2
    if-nez v0, :cond_3

    .line 153
    :cond_3
    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHasTcpPlayUrl:Z

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {p0, v5}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    .line 155
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->postReconnectMsg()V

    goto :goto_0

    .line 158
    :cond_4
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    iget v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryLimit:I

    if-ge v0, v1, :cond_5

    .line 159
    iget v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    .line 160
    const-string v0, "network.TXCRTMPDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnect retry count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->connectRetryLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v5}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    .line 162
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->postReconnectMsg()V

    goto :goto_0

    .line 164
    :cond_5
    const/16 v0, 0x2eec

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, p1

    goto :goto_1
.end method

.method private startInternal()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    new-instance v0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;-><init>(Lcom/tencent/liteav/network/TXCRTMPDownloader;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 92
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->start()V

    .line 93
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCurrentStreamUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 2

    .prologue
    .line 318
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v0

    monitor-exit v1

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isQuicChannel()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    return v0
.end method

.method public sendNotifyEvent(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 229
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    .line 231
    :cond_0
    if-ne p1, v0, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->reconnect(Z)V

    .line 235
    :goto_1
    return-void

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_2
    invoke-super {p0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->sendNotifyEvent(I)V

    goto :goto_1
.end method

.method public sendNotifyEvent(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->sendNotifyEvent(I)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v1, "EVT_MSG"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    invoke-interface {v1, p1, v0}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public startDownload(Ljava/util/Vector;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/liteav/network/d;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iput-boolean p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    .line 247
    iput-boolean p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    .line 248
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    .line 249
    iput-boolean v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHasTcpPlayUrl:Z

    move v1, v2

    .line 250
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/d;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/d;->b:Z

    if-nez v0, :cond_4

    .line 252
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHasTcpPlayUrl:Z

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/d;

    .line 258
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 260
    iget-object v1, v0, Lcom/tencent/liteav/network/d;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    .line 261
    iget-boolean v0, v0, Lcom/tencent/liteav/network/d;->b:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    .line 263
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    .line 264
    const-string v1, "network.TXCRTMPDownloader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start pull with url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " quic:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mQuicChannel:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "yes"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 267
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RTMP_PULL"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    .line 268
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 271
    :cond_3
    new-instance v0, Lcom/tencent/liteav/network/TXCRTMPDownloader$1;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/network/TXCRTMPDownloader$1;-><init>(Lcom/tencent/liteav/network/TXCRTMPDownloader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    .line 280
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->startInternal()V

    goto/16 :goto_0

    .line 250
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 264
    :cond_5
    const-string v0, "no"

    goto :goto_2
.end method

.method public stopDownload()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsRunning:Z

    .line 290
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 291
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mVecPlayUrls:Ljava/util/Vector;

    .line 293
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mIsPlayRtmpAccStream:Z

    .line 294
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableNearestIP:Z

    .line 296
    const-string v0, "network.TXCRTMPDownloader"

    const-string v1, "stop pull"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mRTMPThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mCurrentThread:Lcom/tencent/liteav/network/TXCRTMPDownloader$a;

    .line 304
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 308
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mThread:Landroid/os/HandlerThread;

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 312
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
