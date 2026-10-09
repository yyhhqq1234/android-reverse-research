.class public Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;
.super Ljava/lang/Object;
.source "TXAudioJitterBufferReportInfo.java"


# instance fields
.field public mLoadCnt:I

.field public mLoadMaxTime:I

.field public mLoadTime:I

.field public mNoDataCnt:I

.field public mSpeedCnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadTime:I

    .line 10
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadCnt:I

    .line 11
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadMaxTime:I

    .line 12
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mSpeedCnt:I

    .line 13
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mNoDataCnt:I

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadTime:I

    .line 17
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadCnt:I

    .line 18
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mLoadMaxTime:I

    .line 19
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mSpeedCnt:I

    .line 20
    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;->mNoDataCnt:I

    .line 21
    return-void
.end method
