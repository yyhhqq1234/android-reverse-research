.class public final Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# instance fields
.field public UUID:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public currentRetryCnt:B

.field public endTime:J

.field public errorCode:I

.field public flag:Ljava/lang/String;

.field public isWap:B

.field public networkOperator:Ljava/lang/String;

.field public networkType:I

.field public readHeaderTime:J

.field public receiveDataSize:J

.field public requestRanagePosition:J

.field public requestRanageSize:J

.field public requestUrl:Ljava/lang/String;

.field public responseContentLength:J

.field public responseHttpCode:I

.field public responseRangeLength:J

.field public responseRangePosition:J

.field public resultState:I

.field public startTime:J

.field public type:B

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    .line 13
    iput-byte v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->type:B

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkOperator:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkType:I

    .line 21
    iput-byte v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->isWap:B

    .line 23
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanagePosition:J

    .line 25
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanageSize:J

    .line 27
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangePosition:J

    .line 29
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangeLength:J

    .line 31
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseContentLength:J

    .line 33
    iput v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseHttpCode:I

    .line 35
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->receiveDataSize:J

    .line 37
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->startTime:J

    .line 39
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->readHeaderTime:J

    .line 41
    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->endTime:J

    .line 43
    iput v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->errorCode:I

    .line 45
    iput v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->resultState:I

    .line 47
    iput-byte v1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->currentRetryCnt:B

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->flag:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;IBJJJJJIJJJJIIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    .line 13
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->type:B

    .line 15
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    .line 17
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkOperator:Ljava/lang/String;

    .line 19
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkType:I

    .line 21
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->isWap:B

    .line 23
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanagePosition:J

    .line 25
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanageSize:J

    .line 27
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangePosition:J

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangeLength:J

    .line 31
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseContentLength:J

    .line 33
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseHttpCode:I

    .line 35
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->receiveDataSize:J

    .line 37
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->startTime:J

    .line 39
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->readHeaderTime:J

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->endTime:J

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->errorCode:I

    .line 45
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->resultState:I

    .line 47
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->currentRetryCnt:B

    .line 49
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 51
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 53
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->flag:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    .line 62
    iput-byte p2, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->type:B

    .line 63
    iput-object p3, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkOperator:Ljava/lang/String;

    .line 65
    iput p5, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkType:I

    .line 66
    iput-byte p6, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->isWap:B

    .line 67
    iput-wide p7, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanagePosition:J

    .line 68
    iput-wide p9, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanageSize:J

    .line 69
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangePosition:J

    .line 70
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangeLength:J

    .line 71
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseContentLength:J

    .line 72
    move/from16 v0, p17

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseHttpCode:I

    .line 73
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->receiveDataSize:J

    .line 74
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->startTime:J

    .line 75
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->readHeaderTime:J

    .line 76
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->endTime:J

    .line 77
    move/from16 v0, p26

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->errorCode:I

    .line 78
    move/from16 v0, p27

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->resultState:I

    .line 79
    move/from16 v0, p28

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->currentRetryCnt:B

    .line 80
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 82
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->flag:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    .line 133
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->type:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->type:B

    .line 134
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    .line 135
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkOperator:Ljava/lang/String;

    .line 136
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkType:I

    .line 137
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->isWap:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->isWap:B

    .line 138
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanagePosition:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanagePosition:J

    .line 139
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanageSize:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanageSize:J

    .line 140
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangePosition:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangePosition:J

    .line 141
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangeLength:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangeLength:J

    .line 142
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseContentLength:J

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseContentLength:J

    .line 143
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseHttpCode:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseHttpCode:I

    .line 144
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->receiveDataSize:J

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->receiveDataSize:J

    .line 145
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->startTime:J

    const/16 v2, 0xe

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->startTime:J

    .line 146
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->readHeaderTime:J

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->readHeaderTime:J

    .line 147
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->endTime:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->endTime:J

    .line 148
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->errorCode:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->errorCode:I

    .line 149
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->resultState:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->resultState:I

    .line 150
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->currentRetryCnt:B

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->currentRetryCnt:B

    .line 151
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    .line 152
    const/16 v0, 0x15

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    .line 153
    const/16 v0, 0x16

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->flag:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->UUID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 91
    :cond_0
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->type:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 92
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestUrl:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkOperator:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkOperator:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 100
    :cond_2
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->networkType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 101
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->isWap:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 102
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanagePosition:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 103
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->requestRanageSize:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 104
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangePosition:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 105
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseRangeLength:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 106
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseContentLength:J

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 107
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->responseHttpCode:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 108
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->receiveDataSize:J

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 109
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->startTime:J

    const/16 v2, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 110
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->readHeaderTime:J

    const/16 v2, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 111
    iget-wide v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->endTime:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 112
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->errorCode:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 113
    iget v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->resultState:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 114
    iget-byte v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->currentRetryCnt:B

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 115
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->via:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->appId:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->flag:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadChunkLogInfo;->flag:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 127
    :cond_5
    return-void
.end method
