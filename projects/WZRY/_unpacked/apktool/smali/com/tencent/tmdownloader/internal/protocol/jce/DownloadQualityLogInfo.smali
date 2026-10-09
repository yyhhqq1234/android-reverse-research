.class public final Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field static a:Ljava/util/ArrayList;


# instance fields
.field public clientIp:Ljava/lang/String;

.field public costTime:J

.field public downType:B

.field public downloadChunkLogList:Ljava/util/ArrayList;

.field public endTime:J

.field public extMsg:Ljava/lang/String;

.field public memorySize:J

.field public pkg_size:J

.field public remainsdCardSize:J

.field public result:B

.field public sdkVersion:Ljava/lang/String;

.field public startTime:J

.field public taskId:Ljava/lang/String;

.field public taskResult:I

.field public usedcard:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 42
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    .line 15
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    .line 17
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    .line 19
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    .line 21
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->costTime:J

    .line 23
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    .line 25
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->endTime:J

    .line 27
    iput-byte v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    .line 33
    iput-byte v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->clientIp:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJJBLjava/lang/String;IBLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    .line 13
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    .line 15
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    .line 17
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    .line 19
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    .line 21
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->costTime:J

    .line 23
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    .line 25
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->endTime:J

    .line 27
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    .line 29
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    .line 31
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    .line 33
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    .line 37
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->clientIp:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    .line 49
    iput-wide p3, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    .line 50
    iput-wide p5, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    .line 51
    iput-wide p7, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    .line 52
    iput-wide p9, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->costTime:J

    .line 53
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    .line 54
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->endTime:J

    .line 55
    move/from16 v0, p15

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    .line 56
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    .line 57
    move/from16 v0, p17

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    .line 58
    move/from16 v0, p18

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    .line 59
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    .line 61
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->clientIp:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    .line 107
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    .line 108
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    .line 109
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    .line 110
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->costTime:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->costTime:J

    .line 111
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    .line 112
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->endTime:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->endTime:J

    .line 113
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    .line 114
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    .line 115
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    .line 116
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    .line 117
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->a:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;-><init>()V

    .line 122
    sget-object v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->a:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    .line 125
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->clientIp:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 74
    :cond_1
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 75
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 76
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 77
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->costTime:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 78
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 79
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->endTime:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 80
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 81
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 85
    :cond_2
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 86
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 87
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->clientIp:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->clientIp:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 99
    :cond_5
    return-void
.end method
