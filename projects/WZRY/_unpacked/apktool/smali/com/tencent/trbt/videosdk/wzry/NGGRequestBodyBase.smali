.class public final Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGRequestBodyBase.java"


# static fields
.field static cache_externalList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field static cache_net:Lcom/tencent/trbt/videosdk/wzry/Net;


# instance fields
.field public areacode:J

.field public clientTimestamp:J

.field public externalList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public isForeground:B

.field public net:Lcom/tencent/trbt/videosdk/wzry/Net;

.field public svrTimestamp:J

.field public traceLogContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 59
    new-instance v3, Lcom/tencent/trbt/videosdk/wzry/Net;

    invoke-direct {v3}, Lcom/tencent/trbt/videosdk/wzry/Net;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->cache_net:Lcom/tencent/trbt/videosdk/wzry/Net;

    .line 63
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->cache_externalList:Ljava/util/Map;

    .line 64
    const-string v1, ""

    .line 65
    .local v1, "__var_8":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [B

    check-cast v2, [B

    .line 66
    .local v2, "__var_9":[B
    const/4 v0, 0x0

    .local v0, "__var_10":B
    move-object v3, v2

    .line 67
    check-cast v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    .line 68
    sget-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->cache_externalList:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 26
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->net:Lcom/tencent/trbt/videosdk/wzry/Net;

    .line 13
    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->areacode:J

    .line 15
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->isForeground:B

    .line 17
    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->svrTimestamp:J

    .line 19
    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->clientTimestamp:J

    .line 21
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->traceLogContext:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/tencent/trbt/videosdk/wzry/Net;JBJJLjava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p1, "net"    # Lcom/tencent/trbt/videosdk/wzry/Net;
    .param p2, "areacode"    # J
    .param p4, "isForeground"    # B
    .param p5, "svrTimestamp"    # J
    .param p7, "clientTimestamp"    # J
    .param p10, "traceLogContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/trbt/videosdk/wzry/Net;",
            "JBJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p9, "externalList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->net:Lcom/tencent/trbt/videosdk/wzry/Net;

    .line 13
    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->areacode:J

    .line 15
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->isForeground:B

    .line 17
    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->svrTimestamp:J

    .line 19
    iput-wide v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->clientTimestamp:J

    .line 21
    iput-object v1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->traceLogContext:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->net:Lcom/tencent/trbt/videosdk/wzry/Net;

    .line 32
    iput-wide p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->areacode:J

    .line 33
    iput-byte p4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->isForeground:B

    .line 34
    iput-wide p5, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->svrTimestamp:J

    .line 35
    iput-wide p7, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->clientTimestamp:J

    .line 36
    iput-object p9, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    .line 37
    iput-object p10, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->traceLogContext:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 73
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->cache_net:Lcom/tencent/trbt/videosdk/wzry/Net;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/Net;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->net:Lcom/tencent/trbt/videosdk/wzry/Net;

    .line 74
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->areacode:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->areacode:J

    .line 75
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->isForeground:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->isForeground:B

    .line 76
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->svrTimestamp:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->svrTimestamp:J

    .line 77
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->clientTimestamp:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->clientTimestamp:J

    .line 78
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->cache_externalList:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    .line 79
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->traceLogContext:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->net:Lcom/tencent/trbt/videosdk/wzry/Net;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 43
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->areacode:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 44
    iget-byte v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->isForeground:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 45
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->svrTimestamp:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 46
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->clientTimestamp:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 47
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->externalList:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->traceLogContext:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGRequestBodyBase;->traceLogContext:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 55
    :cond_1
    return-void
.end method
