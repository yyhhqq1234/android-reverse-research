.class public final Lcom/tencent/android/tpush/service/channel/protocol/ApList;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field static cache_portList:Ljava/util/ArrayList;

.field static cache_primary:Ljava/util/Map;

.field static cache_secondary:Ljava/util/Map;

.field static cache_speedTestIpList:Ljava/util/ArrayList;


# instance fields
.field public backup:J

.field public domain:Ljava/lang/String;

.field public portList:Ljava/util/ArrayList;

.field public primary:Ljava/util/Map;

.field public secondary:Ljava/util/Map;

.field public speedTestIpList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_primary:Ljava/util/Map;

    .line 50
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 51
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 52
    sget-object v2, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_primary:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_secondary:Ljava/util/Map;

    .line 57
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 58
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 59
    sget-object v2, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_secondary:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_portList:Ljava/util/ArrayList;

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_portList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_speedTestIpList:Ljava/util/ArrayList;

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_speedTestIpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->primary:Ljava/util/Map;

    .line 13
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->secondary:Ljava/util/Map;

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->backup:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->domain:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->portList:Ljava/util/ArrayList;

    .line 21
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->speedTestIpList:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->primary:Ljava/util/Map;

    .line 13
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->secondary:Ljava/util/Map;

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->backup:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->domain:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->portList:Ljava/util/ArrayList;

    .line 21
    iput-object v2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->speedTestIpList:Ljava/util/ArrayList;

    .line 29
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->primary:Ljava/util/Map;

    .line 30
    iput-object p2, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->secondary:Ljava/util/Map;

    .line 31
    iput-wide p3, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->backup:J

    .line 32
    iput-object p5, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->domain:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->portList:Ljava/util/ArrayList;

    .line 34
    iput-object p7, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->speedTestIpList:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    sget-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_primary:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->primary:Ljava/util/Map;

    .line 77
    sget-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_secondary:Ljava/util/Map;

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->secondary:Ljava/util/Map;

    .line 78
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->backup:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->backup:J

    .line 79
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->domain:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_portList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->portList:Ljava/util/ArrayList;

    .line 81
    sget-object v0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->cache_speedTestIpList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->speedTestIpList:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->primary:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 40
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->secondary:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 41
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->backup:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 42
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->domain:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 43
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->portList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 44
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/protocol/ApList;->speedTestIpList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 45
    return-void
.end method
