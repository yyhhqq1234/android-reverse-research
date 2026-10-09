.class public final Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public contentType:Ljava/lang/String;

.field public costTime:J

.field public downUrl:Ljava/lang/String;

.field public down_Size:J

.field public endTime:J

.field public finalDownloadUrl:Ljava/lang/String;

.field public jumpUrl:Ljava/lang/String;

.field public networkType:Ljava/lang/String;

.field public result:B

.field public segId:J

.field public startTime:J

.field public taskId:Ljava/lang/String;

.field public taskResult:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 25
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 27
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    .line 29
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    .line 31
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    .line 33
    iput v4, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 35
    iput-byte v4, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 39
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJIB)V
    .locals 5

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    .line 13
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    .line 15
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    .line 17
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    .line 21
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 25
    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 27
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    .line 31
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    .line 33
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 35
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 43
    iput-wide p1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    .line 44
    iput-object p3, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 50
    iput-wide p9, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 51
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    .line 52
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    .line 53
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    .line 54
    move/from16 v0, p17

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 55
    move/from16 v0, p18

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 56
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    .line 98
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    .line 99
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    .line 100
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    .line 101
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    .line 102
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    .line 103
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    .line 104
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    .line 105
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    .line 106
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    .line 107
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    .line 108
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    .line 109
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 61
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 85
    :cond_5
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 86
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 87
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 88
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 89
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 90
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 91
    return-void
.end method
