.class public final Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public appId:J

.field public channelId:Ljava/lang/String;

.field public downloadDate:J

.field public extradata:Ljava/lang/String;

.field public sdkVersionInfo:Ljava/lang/String;

.field public taskPackageName:Ljava/lang/String;

.field public taskVersioncode:Ljava/lang/String;

.field public time:J

.field public type:B

.field public uin:J

.field public uintype:Ljava/lang/String;

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 36
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->appId:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 17
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->time:J

    .line 19
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->type:B

    .line 21
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uin:J

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uintype:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->via:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->channelId:Ljava/lang/String;

    .line 29
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->downloadDate:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->extradata:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JBJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->appId:J

    .line 13
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 15
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 17
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->time:J

    .line 19
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->type:B

    .line 21
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uin:J

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uintype:Ljava/lang/String;

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->via:Ljava/lang/String;

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->channelId:Ljava/lang/String;

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->downloadDate:J

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->extradata:Ljava/lang/String;

    .line 33
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 41
    iput-wide p1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->appId:J

    .line 42
    iput-object p3, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 44
    iput-wide p5, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->time:J

    .line 45
    iput-byte p7, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->type:B

    .line 46
    iput-wide p8, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uin:J

    .line 47
    iput-object p10, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uintype:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->via:Ljava/lang/String;

    .line 49
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->channelId:Ljava/lang/String;

    .line 50
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->downloadDate:J

    .line 51
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->extradata:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->appId:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->appId:J

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 97
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 98
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->time:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->time:J

    .line 99
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->type:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->type:B

    .line 100
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uin:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uin:J

    .line 101
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uintype:Ljava/lang/String;

    .line 102
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->via:Ljava/lang/String;

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->channelId:Ljava/lang/String;

    .line 104
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->downloadDate:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->downloadDate:J

    .line 105
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->extradata:Ljava/lang/String;

    .line 106
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->appId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 58
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskVersioncode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskVersioncode:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 66
    :cond_1
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->time:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 67
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->type:B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 68
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uin:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 69
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uintype:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uintype:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->via:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->via:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->channelId:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 81
    :cond_4
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->downloadDate:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 82
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->extradata:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->extradata:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 88
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 90
    :cond_6
    return-void
.end method
