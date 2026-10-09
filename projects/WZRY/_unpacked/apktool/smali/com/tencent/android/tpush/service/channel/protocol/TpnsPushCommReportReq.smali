.class public final Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public accessId:J

.field public broadcastId:J

.field public clientTimestamp:J

.field public ext:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public msgId:J

.field public msgTimestamp:J

.field public pkgName:Ljava/lang/String;

.field public type:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->type:J

    .line 13
    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->accessId:J

    .line 15
    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgId:J

    .line 17
    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->broadcastId:J

    .line 19
    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgTimestamp:J

    .line 21
    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->clientTimestamp:J

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->pkgName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msg:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->ext:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(JJJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->type:J

    .line 13
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->accessId:J

    .line 15
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgId:J

    .line 17
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->broadcastId:J

    .line 19
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgTimestamp:J

    .line 21
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->clientTimestamp:J

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->pkgName:Ljava/lang/String;

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msg:Ljava/lang/String;

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->ext:Ljava/lang/String;

    .line 35
    iput-wide p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->type:J

    .line 36
    iput-wide p3, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->accessId:J

    .line 37
    iput-wide p5, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgId:J

    .line 38
    iput-wide p7, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->broadcastId:J

    .line 39
    iput-wide p9, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgTimestamp:J

    .line 40
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->clientTimestamp:J

    .line 41
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->pkgName:Ljava/lang/String;

    .line 42
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msg:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->ext:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->type:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->type:J

    .line 72
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->accessId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->accessId:J

    .line 73
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgId:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgId:J

    .line 74
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->broadcastId:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->broadcastId:J

    .line 75
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgTimestamp:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgTimestamp:J

    .line 76
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->clientTimestamp:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->clientTimestamp:J

    .line 77
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->pkgName:Ljava/lang/String;

    .line 78
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msg:Ljava/lang/String;

    .line 79
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->ext:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->type:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 49
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->accessId:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 50
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgId:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 51
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->broadcastId:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 52
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgTimestamp:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 53
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->clientTimestamp:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 54
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->pkgName:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msg:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->ext:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->ext:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 66
    :cond_2
    return-void
.end method
