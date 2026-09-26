.class public Lcom/netease/download/check/CheckTime;
.super Ljava/lang/Object;
.source "CheckTime.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckTime"

.field private static mTopSpeed:J


# instance fields
.field private mAverageSpeed:J

.field private mCheckMinutes:I

.field private mTimeMarked:J

.field private mTimeStarted:J

.field private mTotalDownloadBytes:J

.field private slowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/download/check/CheckTime;->mTopSpeed:J

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTotalDownloadBytes:J

    .line 39
    iput-wide v2, p0, Lcom/netease/download/check/CheckTime;->mAverageSpeed:J

    .line 44
    iput v0, p0, Lcom/netease/download/check/CheckTime;->mCheckMinutes:I

    .line 46
    iput v0, p0, Lcom/netease/download/check/CheckTime;->slowCount:I

    .line 51
    iput v0, p0, Lcom/netease/download/check/CheckTime;->slowCount:I

    .line 52
    return-void
.end method

.method public static clean()V
    .locals 2

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/download/check/CheckTime;->mTopSpeed:J

    .line 121
    return-void
.end method

.method public static newInstance()Lcom/netease/download/check/CheckTime;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/netease/download/check/CheckTime;

    invoke-direct {v0}, Lcom/netease/download/check/CheckTime;-><init>()V

    .line 56
    .local v0, "time":Lcom/netease/download/check/CheckTime;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netease/download/check/CheckTime;->mTimeStarted:J

    .line 57
    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public calculate()Lcom/netease/download/check/CheckTime;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 71
    iget-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTimeMarked:J

    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTimeStarted:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 72
    iget-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTotalDownloadBytes:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTimeMarked:J

    iget-wide v4, p0, Lcom/netease/download/check/CheckTime;->mTimeStarted:J

    sub-long/2addr v2, v4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/download/check/CheckTime;->mAverageSpeed:J

    .line 74
    :cond_0
    return-object p0
.end method

.method public check(Ljava/lang/String;Lcom/netease/download/config2/ConfigParams2;Ljava/lang/String;)Z
    .locals 12
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/netease/download/config2/ConfigParams2;
    .param p3, "domain"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v7, 0x0

    .line 85
    .local v7, "result":Z
    iget-boolean v8, p2, Lcom/netease/download/config2/ConfigParams2;->removable:Z

    if-eqz v8, :cond_1

    .line 87
    iget-wide v8, p0, Lcom/netease/download/check/CheckTime;->mTimeMarked:J

    iget-wide v10, p0, Lcom/netease/download/check/CheckTime;->mTimeStarted:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v10

    iget v10, v10, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNTime:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    long-to-int v6, v8

    .line 89
    .local v6, "min":I
    iget v8, p0, Lcom/netease/download/check/CheckTime;->mCheckMinutes:I

    if-eq v6, v8, :cond_1

    .line 90
    iput v6, p0, Lcom/netease/download/check/CheckTime;->mCheckMinutes:I

    .line 91
    invoke-virtual {p0}, Lcom/netease/download/check/CheckTime;->getAverageSpeed()J

    move-result-wide v0

    .line 93
    .local v0, "current":J
    sget-wide v8, Lcom/netease/download/check/CheckTime;->mTopSpeed:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 94
    sput-wide v0, Lcom/netease/download/check/CheckTime;->mTopSpeed:J

    .line 96
    :cond_0
    sget-wide v8, Lcom/netease/download/check/CheckTime;->mTopSpeed:J

    iget v10, p2, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNPercent:I

    int-to-long v10, v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long v4, v8, v10

    .line 98
    .local v4, "limit":J
    sget-wide v8, Lcom/netease/download/check/CheckTime;->mTopSpeed:J

    invoke-static {p1, v8, v9, v0, v1}, Lcom/netease/download/util/StrUtil;->recordTopSpeed(Ljava/lang/String;JJ)V

    .line 100
    cmp-long v8, v0, v4

    if-gez v8, :cond_2

    const/4 v2, 0x1

    .line 101
    .local v2, "lessThanLimit":Z
    :goto_0
    iget v8, p2, Lcom/netease/download/config2/ConfigParams2;->removeSlowCDNSpeed:I

    int-to-long v8, v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_3

    const/4 v3, 0x1

    .line 102
    .local v3, "lessThanMinSpeed":Z
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 103
    const/4 v7, 0x1

    .line 107
    .end local v0    # "current":J
    .end local v2    # "lessThanLimit":Z
    .end local v3    # "lessThanMinSpeed":Z
    .end local v4    # "limit":J
    .end local v6    # "min":I
    :cond_1
    return v7

    .line 100
    .restart local v0    # "current":J
    .restart local v4    # "limit":J
    .restart local v6    # "min":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 101
    .restart local v2    # "lessThanLimit":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAverageSpeed()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/netease/download/check/CheckTime;->mAverageSpeed:J

    return-wide v0
.end method

.method public getTimeSpent(Z)J
    .locals 4
    .param p1, "inMillionSec"    # Z

    .prologue
    .line 111
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTimeMarked:J

    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTimeStarted:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTimeMarked:J

    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTimeStarted:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTotalDownloadBytes()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTotalDownloadBytes:J

    return-wide v0
.end method

.method public mark(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTimeMarked:J

    .line 63
    iget-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTotalDownloadBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/netease/download/check/CheckTime;->mTotalDownloadBytes:J

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckTime{mTimeStarted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTimeStarted:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeMarked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTimeMarked:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalDownloadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mTotalDownloadBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAverageSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/download/check/CheckTime;->mAverageSpeed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
