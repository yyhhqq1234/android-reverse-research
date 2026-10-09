.class public final Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGResponseHeader.java"


# static fields
.field static cache_ipDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/IPData;",
            ">;>;"
        }
    .end annotation
.end field

.field static cache_scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

.field static cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;


# instance fields
.field public areacode:J

.field public bodyDataFlag:B

.field public checkSum:Ljava/lang/String;

.field public clientIP:Ljava/lang/String;

.field public compressVer:I

.field public decompressSize:J

.field public deviceId:Ljava/lang/String;

.field public dictVersion:Ljava/lang/String;

.field public ipDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/IPData;",
            ">;>;"
        }
    .end annotation
.end field

.field public requestId:I

.field public ret:I

.field public scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

.field public svrTimestamp:J

.field public ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 102
    new-instance v3, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    invoke-direct {v3}, Lcom/tencent/trbt/videosdk/wzry/Ticket;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 106
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->cache_ipDataMap:Ljava/util/Map;

    .line 107
    const-string v0, ""

    .line 108
    .local v0, "__var_19":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "__var_20":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/trbt/videosdk/wzry/IPData;>;"
    new-instance v2, Lcom/tencent/trbt/videosdk/wzry/IPData;

    invoke-direct {v2}, Lcom/tencent/trbt/videosdk/wzry/IPData;-><init>()V

    .line 110
    .local v2, "__var_21":Lcom/tencent/trbt/videosdk/wzry/IPData;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->cache_ipDataMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v3, Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    invoke-direct {v3}, Lcom/tencent/trbt/videosdk/wzry/SCTicket;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->cache_scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->requestId:I

    .line 13
    iput-wide v4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->areacode:J

    .line 15
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ret:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->deviceId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->clientIP:Ljava/lang/String;

    .line 21
    iput-byte v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->bodyDataFlag:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->dictVersion:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->compressVer:I

    .line 27
    iput-wide v4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->decompressSize:J

    .line 29
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 31
    iput-wide v4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->svrTimestamp:J

    .line 33
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ipDataMap:Ljava/util/Map;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->checkSum:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    .line 41
    return-void
.end method

.method public constructor <init>(IJILjava/lang/String;Ljava/lang/String;BLjava/lang/String;IJLcom/tencent/trbt/videosdk/wzry/Ticket;JLjava/util/Map;Ljava/lang/String;Lcom/tencent/trbt/videosdk/wzry/SCTicket;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "areacode"    # J
    .param p4, "ret"    # I
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "clientIP"    # Ljava/lang/String;
    .param p7, "bodyDataFlag"    # B
    .param p8, "dictVersion"    # Ljava/lang/String;
    .param p9, "compressVer"    # I
    .param p10, "decompressSize"    # J
    .param p12, "ticket"    # Lcom/tencent/trbt/videosdk/wzry/Ticket;
    .param p13, "svrTimestamp"    # J
    .param p16, "checkSum"    # Ljava/lang/String;
    .param p17, "scTicket"    # Lcom/tencent/trbt/videosdk/wzry/SCTicket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "B",
            "Ljava/lang/String;",
            "IJ",
            "Lcom/tencent/trbt/videosdk/wzry/Ticket;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/IPData;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/tencent/trbt/videosdk/wzry/SCTicket;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p15, "ipDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tencent/trbt/videosdk/wzry/IPData;>;>;"
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->requestId:I

    .line 13
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->areacode:J

    .line 15
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ret:I

    .line 17
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->deviceId:Ljava/lang/String;

    .line 19
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->clientIP:Ljava/lang/String;

    .line 21
    const/4 v2, 0x0

    iput-byte v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->bodyDataFlag:B

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->dictVersion:Ljava/lang/String;

    .line 25
    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->compressVer:I

    .line 27
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->decompressSize:J

    .line 29
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 31
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->svrTimestamp:J

    .line 33
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ipDataMap:Ljava/util/Map;

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->checkSum:Ljava/lang/String;

    .line 37
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    .line 45
    iput p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->requestId:I

    .line 46
    iput-wide p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->areacode:J

    .line 47
    iput p4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ret:I

    .line 48
    iput-object p5, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->deviceId:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->clientIP:Ljava/lang/String;

    .line 50
    iput-byte p7, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->bodyDataFlag:B

    .line 51
    iput-object p8, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->dictVersion:Ljava/lang/String;

    .line 52
    iput p9, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->compressVer:I

    .line 53
    iput-wide p10, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->decompressSize:J

    .line 54
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 55
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->svrTimestamp:J

    .line 56
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ipDataMap:Ljava/util/Map;

    .line 57
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->checkSum:Ljava/lang/String;

    .line 58
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    .line 59
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->requestId:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->requestId:I

    .line 121
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->areacode:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->areacode:J

    .line 122
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ret:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ret:I

    .line 123
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->deviceId:Ljava/lang/String;

    .line 124
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->clientIP:Ljava/lang/String;

    .line 125
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->bodyDataFlag:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->bodyDataFlag:B

    .line 126
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->dictVersion:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->compressVer:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->compressVer:I

    .line 128
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->decompressSize:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->decompressSize:J

    .line 129
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 130
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->svrTimestamp:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->svrTimestamp:J

    .line 131
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->cache_ipDataMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ipDataMap:Ljava/util/Map;

    .line 132
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->checkSum:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->cache_scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    .line 134
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 63
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->requestId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 64
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->areacode:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 65
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ret:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 66
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->deviceId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->clientIP:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->clientIP:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 74
    :cond_1
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->bodyDataFlag:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 75
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->dictVersion:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->dictVersion:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 79
    :cond_2
    iget v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->compressVer:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 80
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->decompressSize:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 81
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 85
    :cond_3
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->svrTimestamp:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 86
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ipDataMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->ipDataMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->checkSum:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->checkSum:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    if-eqz v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseHeader;->scTicket:Lcom/tencent/trbt/videosdk/wzry/SCTicket;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 98
    :cond_6
    return-void
.end method
