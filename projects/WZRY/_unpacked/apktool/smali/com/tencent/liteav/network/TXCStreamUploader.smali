.class public Lcom/tencent/liteav/network/TXCStreamUploader;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCStreamUploader.java"

# interfaces
.implements Lcom/tencent/liteav/network/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;,
        Lcom/tencent/liteav/network/TXCStreamUploader$a;
    }
.end annotation


# static fields
.field public static final RTMPSENDSTRATEGY_LIVE:I = 0x1

.field public static final RTMPSENDSTRATEGY_REALTIME_QUIC:I = 0x3

.field public static final RTMPSENDSTRATEGY_REALTIME_TCP:I = 0x2

.field static final TAG:Ljava/lang/String; = "TXCStreamUploader"

.field public static final TXE_UPLOAD_ERROR_ALLADDRESS_FAILED:I = 0x2b03

.field public static final TXE_UPLOAD_ERROR_NET_DISCONNECT:I = 0x2b04

.field public static final TXE_UPLOAD_ERROR_NET_RECONNECT:I = 0x2b08

.field public static final TXE_UPLOAD_ERROR_NO_DATA:I = 0x2b05

.field public static final TXE_UPLOAD_ERROR_NO_NETWORK:I = 0x2b07

.field public static final TXE_UPLOAD_ERROR_READ_FAILED:I = 0x2b09

.field public static final TXE_UPLOAD_ERROR_WRITE_FAILED:I = 0x2b0a

.field public static final TXE_UPLOAD_INFO_CONNECT_FAILED:I = 0x2afe

.field public static final TXE_UPLOAD_INFO_CONNECT_SUCCESS:I = 0x2af9

.field public static final TXE_UPLOAD_INFO_HANDSHAKE_FAIL:I = 0x2afd

.field public static final TXE_UPLOAD_INFO_NET_BUSY:I = 0x2afb

.field public static final TXE_UPLOAD_INFO_PUSH_BEGIN:I = 0x2afa

.field public static final TXE_UPLOAD_INFO_SERVER_REFUSE:I = 0x2aff

.field public static final TXE_UPLOAD_MODE_AUDIO_ONLY:I = 0x1

.field public static final TXE_UPLOAD_MODE_LINK_MIC:I = 0x2

.field public static final TXE_UPLOAD_MODE_REAL_TIME:I = 0x0

.field public static final TXE_UPLOAD_PROTOCOL_AV:I = 0x1

.field public static final TXE_UPLOAD_PROTOCOL_RTMP:I


# instance fields
.field private final MSG_EVENT:I

.field private final MSG_RECONNECT:I

.field private final MSG_REPORT_STATUS:I

.field private mChannelType:I

.field private mConnectSuccessTimeStamps:J

.field private mContext:Landroid/content/Context;

.field private mCurrentRecordIdx:I

.field private mEnableNearestIP:Z

.field private mGoodPushTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIntelligentRoute:Lcom/tencent/liteav/network/c;

.field private mIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/liteav/network/a;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPushing:Z

.field private mLastNetworkType:I

.field private mLastTimeStamp:J

.field private mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

.field private mNotifyListener:Lcom/tencent/liteav/basic/c/a;

.field private mParam:Lcom/tencent/liteav/network/g;

.field private mPushStartTS:J

.field private mQuicChannel:Z

.field private mRetryCount:I

.field private mRtmpUrl:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mThreadLock:Ljava/lang/Object;

.field private mUploaderInstance:J

.field private mVecPendingNAL:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/tencent/liteav/basic/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 128
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/network/g;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    .line 60
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    .line 61
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    .line 62
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    .line 63
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    .line 64
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 66
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    .line 67
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mChannelType:I

    .line 68
    iput-boolean v6, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    .line 70
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/c;

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 73
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    .line 74
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    .line 76
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    .line 77
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    .line 79
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 81
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    .line 82
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mGoodPushTime:J

    .line 85
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 86
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    .line 87
    const/16 v0, 0x65

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->MSG_RECONNECT:I

    .line 88
    const/16 v0, 0x66

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->MSG_EVENT:I

    .line 89
    const/16 v0, 0x67

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->MSG_REPORT_STATUS:I

    .line 93
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastTimeStamp:J

    .line 94
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    .line 96
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    .line 98
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    .line 136
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    .line 137
    if-nez p2, :cond_0

    .line 138
    new-instance p2, Lcom/tencent/liteav/network/g;

    invoke-direct {p2}, Lcom/tencent/liteav/network/g;-><init>()V

    .line 139
    iput v3, p2, Lcom/tencent/liteav/network/g;->a:I

    .line 140
    iput v7, p2, Lcom/tencent/liteav/network/g;->g:I

    .line 141
    iput v7, p2, Lcom/tencent/liteav/network/g;->f:I

    .line 142
    const/16 v0, 0x28

    iput v0, p2, Lcom/tencent/liteav/network/g;->h:I

    .line 143
    const/16 v0, 0x3e8

    iput v0, p2, Lcom/tencent/liteav/network/g;->i:I

    .line 144
    iput-boolean v6, p2, Lcom/tencent/liteav/network/g;->j:Z

    .line 146
    :cond_0
    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/tencent/liteav/network/c;

    invoke-direct {v0}, Lcom/tencent/liteav/network/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/c;

    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/c;

    iput-object p0, v0, Lcom/tencent/liteav/network/c;->a:Lcom/tencent/liteav/network/b;

    .line 152
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    .line 153
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 154
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    .line 155
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    .line 157
    iput-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    .line 158
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    .line 159
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 160
    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 161
    iput-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/liteav/network/TXCStreamUploader;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->reportNetStatus()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/liteav/network/TXCStreamUploader;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/tencent/liteav/network/TXCStreamUploader;J)J
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/tencent/liteav/network/TXCStreamUploader;J[BIJJJ)V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p10}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativePushNAL(J[BIJJJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/liteav/network/TXCStreamUploader;J)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeOnThreadRun(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tencent/liteav/network/TXCStreamUploader;J)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeUninitUploader(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/liteav/network/TXCStreamUploader;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/tencent/liteav/network/TXCStreamUploader;J)J
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/liteav/network/TXCStreamUploader;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/liteav/network/TXCStreamUploader;)Lcom/tencent/liteav/network/g;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Ljava/lang/String;ZIIIIIII)J
    .locals 2

    .prologue
    .line 27
    invoke-direct/range {p0 .. p10}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeInitUploader(Ljava/lang/String;Ljava/lang/String;ZIIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/tencent/liteav/network/TXCStreamUploader;JZII)V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSetVideoDropParams(JZII)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/liteav/network/TXCStreamUploader;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    return-object v0
.end method

.method private getRtmpRealConnectInfo()Lcom/tencent/liteav/network/TXCStreamUploader$a;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 501
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v6}, Lcom/tencent/liteav/network/TXCStreamUploader$a;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    .line 530
    :goto_0
    return-object v0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 506
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v6}, Lcom/tencent/liteav/network/TXCStreamUploader$a;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    goto :goto_0

    .line 509
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    if-gez v0, :cond_3

    .line 510
    :cond_2
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v6}, Lcom/tencent/liteav/network/TXCStreamUploader$a;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    goto :goto_0

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/a;

    .line 515
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 516
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 517
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v6}, Lcom/tencent/liteav/network/TXCStreamUploader$a;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    goto :goto_0

    .line 520
    :cond_4
    aget-object v3, v2, v1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/tencent/liteav/network/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/liteav/network/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 523
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v3, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 525
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    new-instance v1, Lcom/tencent/liteav/network/TXCStreamUploader$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/a;->c:Z

    invoke-direct {v1, p0, v2, v0}, Lcom/tencent/liteav/network/TXCStreamUploader$a;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;Z)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private getSpeed(JJJ)Ljava/lang/Long;
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 775
    .line 776
    cmp-long v2, p1, p3

    if-lez v2, :cond_1

    .line 784
    :goto_0
    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 785
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    mul-long/2addr v2, p5

    div-long/2addr v0, v2

    .line 788
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 780
    :cond_1
    sub-long/2addr p3, p1

    goto :goto_0
.end method

.method private native nativeEnableDrop(JZ)V
.end method

.method private native nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;
.end method

.method private native nativeInitUploader(Ljava/lang/String;Ljava/lang/String;ZIIIIIII)J
.end method

.method private native nativeOnThreadRun(J)V
.end method

.method private native nativePushAAC(J[BJ)V
.end method

.method private native nativePushNAL(J[BIJJJ)V
.end method

.method private native nativeSetSendStrategy(JI)V
.end method

.method private native nativeSetVideoDropParams(JZII)V
.end method

.method private native nativeStopPush(J)V
.end method

.method private native nativeUninitUploader(J)V
.end method

.method private nextRecordIdx(Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 552
    :goto_0
    return v0

    .line 538
    :cond_1
    if-ne p1, v2, :cond_2

    .line 539
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/a;

    .line 540
    iget v3, v0, Lcom/tencent/liteav/network/a;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/tencent/liteav/network/a;->d:I

    .line 543
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 544
    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    .line 545
    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 546
    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    move v0, v1

    .line 547
    goto :goto_0

    :cond_3
    move v0, v2

    .line 549
    goto :goto_0

    :cond_4
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method private postReconnectMsg(Ljava/lang/String;ZI)V
    .locals 4

    .prologue
    .line 190
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 191
    const/16 v0, 0x65

    iput v0, v1, Landroid/os/Message;->what:I

    .line 192
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 194
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reconnect(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x2b08

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 569
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->stopPushTask()V

    .line 572
    iget-boolean v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 573
    const-string v1, "TXCStreamUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnect network switch from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    .line 575
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/c;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mChannelType:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/network/c;->a(Ljava/lang/String;I)V

    .line 576
    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 628
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    if-nez v2, :cond_1

    move p1, v0

    .line 586
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-ne v0, v1, :cond_2

    move p1, v1

    .line 590
    :cond_2
    const-string v2, "TXCStreamUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnect change ip: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " enableNearestIP: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " last channel type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eqz v0, :cond_3

    const-string v0, "Q Channel"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    if-ne p1, v1, :cond_4

    .line 594
    invoke-direct {p0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->nextRecordIdx(Z)Z

    move-result v0

    .line 595
    if-nez v0, :cond_4

    .line 596
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->E:I

    const-string v2, "connect upload server failed"

    const-string/jumbo v3, "try all addresses"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->reportEvent40003(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 597
    const/16 v0, 0x2b03

    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto :goto_0

    .line 590
    :cond_3
    const-string v0, "TCP"

    goto :goto_1

    .line 601
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getRtmpRealConnectInfo()Lcom/tencent/liteav/network/TXCStreamUploader$a;

    move-result-object v0

    .line 604
    iget-boolean v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-ne v2, v1, :cond_5

    .line 605
    const-string v1, "TXCStreamUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnect last channel type is Q Channel,  invoke reconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v3, v3, Lcom/tencent/liteav/network/g;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s after"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->F:I

    const-string v3, "reconnect upload server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect last channel type is Q Channel,  invoke reconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v5, v5, Lcom/tencent/liteav/network/g;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s after"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->reportEvent40003(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->b:Z

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v2, v2, Lcom/tencent/liteav/network/g;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->postReconnectMsg(Ljava/lang/String;ZI)V

    .line 611
    invoke-direct {p0, v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto/16 :goto_0

    .line 614
    :cond_5
    const-string v1, "TXCStreamUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnect retry count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retry limit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v3, v3, Lcom/tencent/liteav/network/g;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invoke reconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v3, v3, Lcom/tencent/liteav/network/g;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s after"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v2, v2, Lcom/tencent/liteav/network/g;->f:I

    if-ge v1, v2, :cond_6

    .line 616
    iget v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 618
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    sget v2, Lcom/tencent/liteav/basic/datareport/a;->F:I

    const-string v3, "reconnect upload server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect retry count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retry limit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v5, v5, Lcom/tencent/liteav/network/g;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " invoke reconnect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v5, v5, Lcom/tencent/liteav/network/g;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s after"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->reportEvent40003(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->b:Z

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v2, v2, Lcom/tencent/liteav/network/g;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {p0, v1, v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->postReconnectMsg(Ljava/lang/String;ZI)V

    .line 622
    invoke-direct {p0, v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto/16 :goto_0

    .line 624
    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->E:I

    const-string v2, "connect upload server failed"

    const-string/jumbo v3, "try all times"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->reportEvent40003(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 625
    const/16 v0, 0x2b04

    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto/16 :goto_0
.end method

.method private reportNetStatus()V
    .locals 21

    .prologue
    .line 732
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v18

    .line 733
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastTimeStamp:J

    sub-long v10, v18, v4

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getUploadStats()Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    move-result-object v20

    .line 736
    const-wide/16 v12, 0x0

    .line 737
    const-wide/16 v8, 0x0

    .line 738
    const-wide/16 v6, 0x0

    .line 739
    const-wide/16 v4, 0x0

    .line 741
    if-eqz v20, :cond_0

    .line 742
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    if-eqz v14, :cond_3

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    iget-wide v6, v4, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inVideoBytes:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inVideoBytes:J

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    iget-wide v6, v4, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inAudioBytes:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->inAudioBytes:J

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    iget-wide v6, v4, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outVideoBytes:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outVideoBytes:J

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    iget-wide v6, v4, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outAudioBytes:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->outAudioBytes:J

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/tencent/liteav/network/TXCStreamUploader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v6, v12

    move-wide v8, v14

    move-wide/from16 v10, v16

    .line 749
    :goto_0
    const/16 v12, 0x1b59

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 750
    const/16 v10, 0x1b5a

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 751
    const/16 v8, 0x1b5b

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 752
    const/16 v6, 0x1b5c

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 754
    const/16 v4, 0x1b5d

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->videoCacheLen:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 755
    const/16 v4, 0x1b5e

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->audioCacheLen:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 756
    const/16 v4, 0x1b5f

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->videoDropCount:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 757
    const/16 v4, 0x1b60

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->audioDropCount:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 759
    const/16 v4, 0x1b61

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->startTS:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 760
    const/16 v4, 0x1b62

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->dnsTS:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 761
    const/16 v4, 0x1b63

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->connTS:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 762
    const/16 v4, 0x1b64

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->serverIP:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 763
    const/16 v6, 0x1b65

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x2

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setStatusValue(ILjava/lang/Object;)Z

    .line 766
    :cond_0
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastTimeStamp:J

    .line 767
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastUploadStats:Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x67

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 772
    :cond_1
    return-void

    .line 763
    :cond_2
    const-wide/16 v4, 0x1

    goto :goto_1

    :cond_3
    move-wide v10, v12

    goto/16 :goto_0
.end method

.method private sendNotifyEvent(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/16 v0, -0x51b

    .line 662
    if-nez p1, :cond_1

    .line 663
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->reconnect(Z)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    if-ne p1, v1, :cond_2

    .line 665
    invoke-direct {p0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->reconnect(Z)V

    goto :goto_0

    .line 667
    :cond_2
    const/16 v1, 0x2af9

    if-ne p1, v1, :cond_3

    .line 668
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    .line 670
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    if-eqz v1, :cond_0

    .line 672
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 674
    packed-switch p1, :pswitch_data_0

    .line 720
    :pswitch_0
    const-string v0, "EVT_MSG"

    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :goto_1
    const-string v0, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 724
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 677
    :pswitch_1
    const-string v2, "EVT_MSG"

    const-string/jumbo v3, "\u6240\u6709IP\u90fd\u5df2\u7ecf\u5c1d\u8bd5\u5931\u8d25,\u53ef\u4ee5\u653e\u5f03\u6cbb\u7597"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 678
    goto :goto_1

    .line 681
    :pswitch_2
    const-string v2, "EVT_MSG"

    const-string/jumbo v3, "\u7ecf\u8fde\u7eed\u591a\u6b21\u91cd\u8fde\u5931\u8d25\uff0c\u653e\u5f03\u91cd\u8fde"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 682
    goto :goto_1

    .line 685
    :pswitch_3
    const-string v2, "EVT_MSG"

    const-string/jumbo v3, "\u8d85\u8fc730s\u6ca1\u6709\u6570\u636e\u53d1\u9001\uff0c\u4e3b\u52a8\u65ad\u5f00\u8fde\u63a5"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 686
    goto :goto_1

    .line 688
    :pswitch_4
    const-string v2, "EVT_MSG"

    const-string/jumbo v3, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u6d4bWiFi\u6216\u79fb\u52a8\u6570\u636e\u662f\u5426\u5f00\u542f"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 690
    goto :goto_1

    .line 692
    :pswitch_5
    const-string v0, "EVT_MSG"

    const-string/jumbo v2, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/16 p1, 0xbba

    .line 694
    goto :goto_1

    .line 696
    :pswitch_6
    const/16 p1, 0x3e9

    .line 697
    const-string v0, "EVT_MSG"

    const-string/jumbo v2, "\u5df2\u7ecf\u8fde\u63a5rtmp\u670d\u52a1\u5668"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 700
    :pswitch_7
    const/16 p1, 0xbbb

    .line 701
    const-string v0, "EVT_MSG"

    const-string v2, "RTMP\u670d\u52a1\u5668\u63e1\u624b\u5931\u8d25"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 704
    :pswitch_8
    const-string v0, "EVT_MSG"

    const-string/jumbo v2, "\u4e0a\u884c\u5e26\u5bbd\u4e0d\u8db3\uff0c\u6570\u636e\u53d1\u9001\u4e0d\u53ca\u65f6"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/16 p1, 0x44d

    .line 706
    goto :goto_1

    .line 708
    :pswitch_9
    const/16 p1, 0x3ea

    .line 709
    const-string v0, "EVT_MSG"

    const-string v2, "rtmp\u5f00\u59cb\u63a8\u6d41"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :pswitch_a
    const/16 p1, 0xbbc

    .line 713
    const-string v0, "EVT_MSG"

    const-string/jumbo v2, "\u670d\u52a1\u5668\u62d2\u7edd\u8fde\u63a5\u8bf7\u6c42\uff0c\u53ef\u80fd\u662f\u8be5\u63a8\u6d41\u5730\u5740\u5df2\u7ecf\u88ab\u5360\u7528"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 716
    :pswitch_b
    const/16 p1, 0x44e

    .line 717
    const-string v0, "EVT_MSG"

    const-string/jumbo v2, "\u542f\u52a8\u7f51\u7edc\u91cd\u8fde"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 674
    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method

.method private sendNotifyEvent(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v0, 0xbbd

    .line 631
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 635
    const-string v2, "EVT_MSG"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 637
    sparse-switch p1, :sswitch_data_0

    .line 650
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    invoke-interface {v0, p1, v1}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 639
    :sswitch_0
    const/16 p1, 0xbba

    .line 640
    goto :goto_1

    :sswitch_1
    move p1, v0

    .line 643
    goto :goto_1

    :sswitch_2
    move p1, v0

    .line 646
    goto :goto_1

    .line 637
    nop

    :sswitch_data_0
    .sparse-switch
        0x2afe -> :sswitch_0
        0x2b09 -> :sswitch_1
        0x2b0a -> :sswitch_2
    .end sparse-switch
.end method

.method private startPushTask(Ljava/lang/String;ZI)V
    .locals 5

    .prologue
    .line 433
    const-string v0, "TXCStreamUploader"

    const-string v1, "start push task"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eq v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->M:I

    const-string/jumbo v2, "switch video push channel from quic to tcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v4, v4, Lcom/tencent/liteav/network/g;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->reportEvent40003(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$2;

    const-string v1, "RTMPUpload"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/tencent/liteav/network/TXCStreamUploader$2;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    .line 481
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 482
    return-void
.end method

.method private stopPushTask()V
    .locals 4

    .prologue
    .line 488
    const-string v0, "TXCStreamUploader"

    const-string v1, "stop push task"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 491
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v2, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeStopPush(J)V

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tryResetRetryCount()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 318
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v2, v2, Lcom/tencent/liteav/network/g;->f:I

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v3, v3, Lcom/tencent/liteav/network/g;->g:I

    add-int/lit8 v3, v3, 0xd

    mul-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 321
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    .line 322
    const-string v0, "TXCStreamUploader"

    const-string v1, "reset retry count"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method


# virtual methods
.method public getUploadStats()Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;
    .locals 4

    .prologue
    .line 416
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 417
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeGetStats(J)Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;

    move-result-object v3

    .line 418
    if-eqz v3, :cond_0

    .line 419
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x2

    :goto_0
    iput-wide v0, v3, Lcom/tencent/liteav/network/TXCStreamUploader$UploadStats;->channelType:J

    .line 421
    :cond_0
    monitor-exit v2

    .line 422
    return-object v3

    .line 419
    :cond_1
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onFetchDone(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/liteav/network/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 206
    :cond_0
    if-eqz p2, :cond_1

    .line 207
    const-string v0, "TXCStreamUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFetchDone: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ip count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-nez p1, :cond_1

    .line 209
    iput-object p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIpList:Ljava/util/ArrayList;

    .line 210
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mCurrentRecordIdx:I

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->getRtmpRealConnectInfo()Lcom/tencent/liteav/network/TXCStreamUploader$a;

    move-result-object v0

    .line 217
    iget-object v1, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->a:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/TXCStreamUploader$a;->b:Z

    invoke-direct {p0, v1, v0, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->postReconnectMsg(Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public pushAAC([BJ)V
    .locals 8

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->tryResetRetryCount()V

    .line 335
    iget-object v6, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v6

    .line 336
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 337
    const-wide/32 v0, 0x36ee80

    sub-long v0, p2, v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    .line 339
    :cond_0
    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    iget-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    sub-long v4, p2, v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativePushAAC(J[BJ)V

    .line 340
    monitor-exit v6

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pushNAL(Lcom/tencent/liteav/basic/f/b;)V
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    .line 349
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->tryResetRetryCount()V

    .line 350
    iget-object v12, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v12

    .line 351
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 352
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 353
    iget-wide v0, p1, Lcom/tencent/liteav/basic/f/b;->h:J

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    .line 355
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/tencent/liteav/basic/f/b;->a:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/liteav/basic/f/b;->a:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 356
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    iget-object v4, p1, Lcom/tencent/liteav/basic/f/b;->a:[B

    iget v5, p1, Lcom/tencent/liteav/basic/f/b;->b:I

    iget-wide v6, p1, Lcom/tencent/liteav/basic/f/b;->e:J

    iget-wide v0, p1, Lcom/tencent/liteav/basic/f/b;->g:J

    iget-wide v8, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    sub-long v8, v0, v8

    iget-wide v0, p1, Lcom/tencent/liteav/basic/f/b;->h:J

    iget-wide v10, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    sub-long v10, v0, v10

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativePushNAL(J[BIJJJ)V

    .line 365
    :cond_1
    :goto_0
    monitor-exit v12

    .line 366
    return-void

    .line 360
    :cond_2
    iget v0, p1, Lcom/tencent/liteav/basic/f/b;->b:I

    if-nez v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mVecPendingNAL:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioInfo(II)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput p2, v0, Lcom/tencent/liteav/network/g;->d:I

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput p1, v0, Lcom/tencent/liteav/network/g;->e:I

    .line 175
    :cond_0
    return-void
.end method

.method public setDropEanble(Z)V
    .locals 4

    .prologue
    .line 374
    const-string v1, "TXCStreamUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "yes"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v2, v3, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeEnableDrop(JZ)V

    .line 377
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    return-void

    .line 374
    :cond_0
    const-string v0, "no"

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMode(I)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput p1, v0, Lcom/tencent/liteav/network/g;->a:I

    .line 187
    :cond_0
    return-void
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    .line 133
    return-void
.end method

.method public setRetryInterval(I)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput p1, v0, Lcom/tencent/liteav/network/g;->g:I

    .line 168
    :cond_0
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput p1, v0, Lcom/tencent/liteav/network/g;->f:I

    .line 181
    :cond_0
    return-void
.end method

.method public setSendStrategy(Z)V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/g;->m:Z

    if-eq v0, p1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget-boolean v0, v0, Lcom/tencent/liteav/network/g;->m:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-direct {p0, v2, v3, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSetSendStrategy(JI)V

    .line 406
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput-boolean p1, v0, Lcom/tencent/liteav/network/g;->m:Z

    .line 409
    return-void

    .line 405
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVideoDropParams(ZII)V
    .locals 8

    .prologue
    .line 387
    const-string v1, "TXCStreamUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop params wait i frame:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "yes"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " max video count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " max video cache time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v7, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v7

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput-boolean p1, v0, Lcom/tencent/liteav/network/g;->j:Z

    .line 390
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput p2, v0, Lcom/tencent/liteav/network/g;->h:I

    .line 391
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iput p3, v0, Lcom/tencent/liteav/network/g;->i:I

    .line 392
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 393
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget-boolean v4, v0, Lcom/tencent/liteav/network/g;->j:Z

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v5, v0, Lcom/tencent/liteav/network/g;->h:I

    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mParam:Lcom/tencent/liteav/network/g;

    iget v6, v0, Lcom/tencent/liteav/network/g;->i:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeSetVideoDropParams(JZII)V

    .line 395
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    return-void

    .line 387
    :cond_1
    const-string v0, "no"

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start(Ljava/lang/String;ZI)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    if-ne v0, v1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    .line 239
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mConnectSuccessTimeStamps:J

    .line 240
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRetryCount:I

    .line 242
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    .line 243
    iput p3, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mChannelType:I

    .line 245
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    .line 247
    const-string v1, "TXCStreamUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start push with url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " enable nearest ip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "yes"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "channel type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    .line 250
    const/16 v0, 0x2b07

    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->sendNotifyEvent(I)V

    goto :goto_0

    .line 247
    :cond_1
    const-string v0, "no"

    goto :goto_1

    .line 254
    :cond_2
    iput-boolean p2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    .line 256
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RTMP_PUSH"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 258
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 261
    :cond_3
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamUploader$1;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader$1;-><init>(Lcom/tencent/liteav/network/TXCStreamUploader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    .line 280
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mEnableNearestIP:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mLastNetworkType:I

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/a;->c(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 281
    const-string v0, "TXCStreamUploader"

    const-string v1, "fetching nearest ip list"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIntelligentRoute:Lcom/tencent/liteav/network/c;

    invoke-virtual {v0, p1, p3}, Lcom/tencent/liteav/network/c;->a(Ljava/lang/String;I)V

    .line 288
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mRtmpUrl:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mQuicChannel:Z

    invoke-direct {p0, v0, v1, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->startPushTask(Ljava/lang/String;ZI)V

    goto :goto_2
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mIsPushing:Z

    .line 300
    const-string v0, "TXCStreamUploader"

    const-string v1, "stop push"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mUploaderInstance:J

    invoke-direct {p0, v2, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->nativeStopPush(J)V

    .line 304
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mPushStartTS:J

    .line 305
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 309
    iput-object v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 313
    iput-object v4, p0, Lcom/tencent/liteav/network/TXCStreamUploader;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
