.class public final Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public appId:J

.field public channelId:Ljava/lang/String;

.field public clientIp:Ljava/lang/String;

.field public downType:B

.field public endTime:J

.field public errorCode:I

.field public extradata:Ljava/lang/String;

.field public reportTime:J

.field public result:B

.field public sdkVersionInfo:Ljava/lang/String;

.field public starTime:J

.field public taskPackageName:Ljava/lang/String;

.field public taskVersioncode:Ljava/lang/String;

.field public totalFileSize:J

.field public traceId:Ljava/lang/String;

.field public uin:J

.field public uintype:Ljava/lang/String;

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->appId:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->clientIp:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->starTime:J

    .line 21
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->endTime:J

    .line 23
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->totalFileSize:J

    .line 25
    iput-byte v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    .line 27
    iput-byte v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    .line 29
    iput v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->errorCode:I

    .line 31
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uin:J

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uintype:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->channelId:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->reportTime:J

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->extradata:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJBBIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->appId:J

    .line 13
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 15
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 17
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->clientIp:Ljava/lang/String;

    .line 19
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->starTime:J

    .line 21
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->endTime:J

    .line 23
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->totalFileSize:J

    .line 25
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    .line 27
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    .line 29
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->errorCode:I

    .line 31
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uin:J

    .line 33
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uintype:Ljava/lang/String;

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    .line 37
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->channelId:Ljava/lang/String;

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->reportTime:J

    .line 43
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    .line 45
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->extradata:Ljava/lang/String;

    .line 53
    iput-wide p1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->appId:J

    .line 54
    iput-object p3, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->clientIp:Ljava/lang/String;

    .line 57
    iput-wide p6, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->starTime:J

    .line 58
    iput-wide p8, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->endTime:J

    .line 59
    iput-wide p10, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->totalFileSize:J

    .line 60
    move/from16 v0, p12

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    .line 61
    move/from16 v0, p13

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    .line 62
    move/from16 v0, p14

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->errorCode:I

    .line 63
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uin:J

    .line 64
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uintype:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->channelId:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 68
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->reportTime:J

    .line 69
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->extradata:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->appId:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->appId:J

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 127
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 128
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->clientIp:Ljava/lang/String;

    .line 129
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->starTime:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->starTime:J

    .line 130
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->endTime:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->endTime:J

    .line 131
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->totalFileSize:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->totalFileSize:J

    .line 132
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    .line 133
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    .line 134
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->errorCode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->errorCode:I

    .line 135
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uin:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uin:J

    .line 136
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uintype:Ljava/lang/String;

    .line 137
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    .line 138
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->channelId:Ljava/lang/String;

    .line 139
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 140
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->reportTime:J

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->reportTime:J

    .line 141
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    .line 142
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->extradata:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->appId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 76
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskVersioncode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskVersioncode:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->clientIp:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->clientIp:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 88
    :cond_2
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->starTime:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 89
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->endTime:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 90
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->totalFileSize:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 91
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 92
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 93
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->errorCode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 94
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uin:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 95
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uintype:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uintype:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->channelId:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 109
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 111
    :cond_6
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->reportTime:J

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 112
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->extradata:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->extradata:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 120
    :cond_8
    return-void
.end method
