.class public final Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;
.super Lcom/qq/taf/jce/JceStruct;
.source "NGGResponseBodyBase.java"


# static fields
.field static cache_busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

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

.field static cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;


# instance fields
.field public busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

.field public clientIP:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

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

.field public svrTimestamp:J

.field public ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    new-instance v3, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    invoke-direct {v3}, Lcom/tencent/trbt/videosdk/wzry/Ticket;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 68
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->cache_ipDataMap:Ljava/util/Map;

    .line 69
    const-string v0, ""

    .line 70
    .local v0, "__var_16":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v1, "__var_17":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/trbt/videosdk/wzry/IPData;>;"
    new-instance v2, Lcom/tencent/trbt/videosdk/wzry/IPData;

    invoke-direct {v2}, Lcom/tencent/trbt/videosdk/wzry/IPData;-><init>()V

    .line 72
    .local v2, "__var_18":Lcom/tencent/trbt/videosdk/wzry/IPData;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->cache_ipDataMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v3, Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    invoke-direct {v3}, Lcom/tencent/trbt/videosdk/wzry/BusiContext;-><init>()V

    sput-object v3, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->cache_busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 13
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ipDataMap:Ljava/util/Map;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->deviceId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->clientIP:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->svrTimestamp:J

    .line 21
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/tencent/trbt/videosdk/wzry/Ticket;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/trbt/videosdk/wzry/BusiContext;)V
    .locals 3
    .param p1, "ticket"    # Lcom/tencent/trbt/videosdk/wzry/Ticket;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "clientIP"    # Ljava/lang/String;
    .param p5, "svrTimestamp"    # J
    .param p7, "busiContext"    # Lcom/tencent/trbt/videosdk/wzry/BusiContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/trbt/videosdk/wzry/Ticket;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/trbt/videosdk/wzry/IPData;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/tencent/trbt/videosdk/wzry/BusiContext;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "ipDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/tencent/trbt/videosdk/wzry/IPData;>;>;"
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 13
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ipDataMap:Ljava/util/Map;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->deviceId:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->clientIP:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->svrTimestamp:J

    .line 21
    iput-object v2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    .line 29
    iput-object p1, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 30
    iput-object p2, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ipDataMap:Ljava/util/Map;

    .line 31
    iput-object p3, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->deviceId:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->clientIP:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->svrTimestamp:J

    .line 34
    iput-object p7, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    .line 35
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4
    .param p1, "_is"    # Lcom/qq/taf/jce/JceInputStream;

    .prologue
    const/4 v3, 0x0

    .line 82
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->cache_ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/Ticket;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    .line 83
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->cache_ipDataMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ipDataMap:Ljava/util/Map;

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->deviceId:Ljava/lang/String;

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->clientIP:Ljava/lang/String;

    .line 86
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->svrTimestamp:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->svrTimestamp:J

    .line 87
    sget-object v0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->cache_busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    iput-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    .line 88
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3
    .param p1, "_os"    # Lcom/qq/taf/jce/JceOutputStream;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ticket:Lcom/tencent/trbt/videosdk/wzry/Ticket;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ipDataMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->ipDataMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->deviceId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->clientIP:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->clientIP:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 55
    :cond_3
    iget-wide v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->svrTimestamp:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 56
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/tencent/trbt/videosdk/wzry/NGGResponseBodyBase;->busiContext:Lcom/tencent/trbt/videosdk/wzry/BusiContext;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 60
    :cond_4
    return-void
.end method
