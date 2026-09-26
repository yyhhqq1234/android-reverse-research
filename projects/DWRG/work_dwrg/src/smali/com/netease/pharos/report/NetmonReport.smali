.class public Lcom/netease/pharos/report/NetmonReport;
.super Ljava/lang/Object;
.source "NetmonReport.java"


# instance fields
.field private mCliIp:Ljava/lang/String;

.field private mCliMtr:Ljava/lang/String;

.field private mKcptestTime:J

.field private mLinktestId:Ljava/lang/String;

.field private mLinktestProtocol:Ljava/lang/String;

.field private mNetCarrier:Ljava/lang/String;

.field private mNetworkCondition:Ljava/lang/String;

.field private mPacketCount:J

.field public mPacketLossCount:J

.field private mSvrIp:Ljava/lang/String;

.field private mSvrMtr:Ljava/lang/String;

.field private mTcptestTime:J

.field private mTimeZone:Ljava/lang/String;

.field private mUdptestTime:J

.field private mWifiSignal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    .line 14
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method


# virtual methods
.method public declared-synchronized addPacketLossCount()V
    .locals 4

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCliIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mCliIp:Ljava/lang/String;

    return-object v0
.end method

.method public getCliMtr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mCliMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getKcptestTime()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mKcptestTime:J

    return-wide v0
.end method

.method public getLinktestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinktestProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getNetCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mNetCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mNetworkCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketCount()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketCount:J

    return-wide v0
.end method

.method public getPacketLossCount()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    return-wide v0
.end method

.method public getSvrIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrIp:Ljava/lang/String;

    return-object v0
.end method

.method public getSvrMtr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getTcptestTime()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mTcptestTime:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUdptestTime()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mUdptestTime:J

    return-wide v0
.end method

.method public getWifiSignal()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/netease/pharos/report/NetmonReport;->mWifiSignal:I

    return v0
.end method

.method public setCliIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCliIp"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mCliIp:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCliMtr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCliMtr"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mCliMtr:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setKcptestTime(J)V
    .locals 0
    .param p1, "mKcptestTime"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mKcptestTime:J

    .line 160
    return-void
.end method

.method public setLinktestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLinktestId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLinktestProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLinktestProtocol"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestProtocol:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setNetCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetCarrier"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mNetCarrier:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setNetworkCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetworkCondition"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mNetworkCondition:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPacketCount(J)V
    .locals 0
    .param p1, "mPacketCount"    # J

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketCount:J

    .line 211
    return-void
.end method

.method public setSvrIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSvrIp"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrIp:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSvrMtr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSvrMtr"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrMtr:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setTcptestTime(J)V
    .locals 0
    .param p1, "mTcptestTime"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mTcptestTime:J

    .line 152
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimeZone"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mTimeZone:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setUdptestTime(J)V
    .locals 0
    .param p1, "mUdptestTime"    # J

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mUdptestTime:J

    .line 168
    return-void
.end method

.method public setWifiSignal(I)V
    .locals 0
    .param p1, "mWifiSignal"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/netease/pharos/report/NetmonReport;->mWifiSignal:I

    .line 104
    return-void
.end method
