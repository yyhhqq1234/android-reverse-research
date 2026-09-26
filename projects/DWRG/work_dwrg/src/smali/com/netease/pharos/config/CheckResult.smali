.class public Lcom/netease/pharos/config/CheckResult;
.super Ljava/lang/Object;
.source "CheckResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckResult"


# instance fields
.field private mAvgRtt:Ljava/lang/String;

.field private mExtra:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoss:Ljava/lang/String;

.field private mPacketBytesCount:I

.field private mPacketCount:I

.field private mPacketLossCount:I

.field private mPort:I

.field private mProtocol:I

.field private mRegion:Ljava/lang/String;

.field private mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method


# virtual methods
.method public addTime(J)V
    .locals 2
    .param p1, "speed"    # J

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public getAvgSpeed()J
    .locals 8

    .prologue
    .line 214
    const-wide/16 v2, -0x1

    .line 215
    .local v2, "speed":J
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v0

    .line 217
    .local v0, "avgTime":J
    iget v4, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 218
    iget v4, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    int-to-long v4, v4

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v6

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long v2, v4, v6

    .line 221
    :cond_0
    return-wide v2
.end method

.method public getAvgTime()J
    .locals 7

    .prologue
    .line 197
    const-string v2, "CheckResult"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAvgTime mTimeList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 200
    :cond_0
    const-wide/16 v2, -0x1

    .line 209
    :goto_0
    return-wide v2

    .line 203
    :cond_1
    const/4 v0, 0x0

    .line 205
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 209
    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v0, v2

    int-to-long v2, v2

    goto :goto_0

    .line 206
    :cond_2
    int-to-long v3, v0

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v2, v3, v5

    long-to-int v0, v2

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLoss()D
    .locals 6

    .prologue
    .line 225
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 227
    .local v0, "loss":D
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v4

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 231
    :cond_0
    return-wide v0
.end method

.method public getMaxTime()J
    .locals 5

    .prologue
    .line 182
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 183
    :cond_0
    const-wide/16 v1, -0x1

    .line 192
    :cond_1
    return-wide v1

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 188
    .local v1, "maxSpeed":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMinTime()J
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 158
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 159
    :cond_0
    const-wide/16 v1, -0x1

    .line 176
    :cond_1
    :goto_0
    return-wide v1

    .line 162
    :cond_2
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 164
    .local v1, "minSpeed":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 172
    cmp-long v3, v5, v1

    if-nez v3, :cond_1

    .line 173
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 166
    :cond_3
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_4

    .line 164
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_2
.end method

.method public getPacketBytesCount()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    return v0
.end method

.method public getPacketLossCount()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketLossCount:I

    return v0
.end method

.method public getPingInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v1, "info":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketBytesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " data bytes\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getTimeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 300
    const-string v2, "--- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ping statistics ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " packets transmitted, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " packeds received, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " packed loss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v2, "round-trip min/avg/max/stddev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getMinTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getMaxTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getStddev()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketBytesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " bytes from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getTimeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mProtocol:I

    return v0
.end method

.method public getSquareSum()J
    .locals 9

    .prologue
    .line 278
    iget-object v4, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 279
    :cond_0
    const-wide/16 v2, -0x1

    .line 289
    :cond_1
    return-wide v2

    .line 282
    :cond_2
    iget-object v4, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 283
    .local v1, "len":I
    const-wide/16 v2, 0x0

    .line 285
    .local v2, "sqrsum":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 286
    iget-object v4, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v4, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    mul-long v4, v5, v7

    add-long/2addr v2, v4

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStddev()D
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getVariance()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 244
    .local v0, "result":D
    return-wide v0
.end method

.method public getTimeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    return-object v0
.end method

.method public getVariance()D
    .locals 11

    .prologue
    .line 256
    iget-object v7, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    .line 257
    :cond_0
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 265
    :goto_0
    return-wide v3

    .line 260
    :cond_1
    iget-object v7, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 261
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getSquareSum()J

    move-result-wide v5

    .line 262
    .local v5, "sqrsum":J
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v0

    .line 264
    .local v0, "average":J
    int-to-long v7, v2

    mul-long/2addr v7, v0

    mul-long/2addr v7, v0

    sub-long v7, v5, v7

    int-to-long v9, v2

    div-long/2addr v7, v9

    long-to-double v3, v7

    .line 265
    .local v3, "result":D
    goto :goto_0
.end method

.method public getmAvgRtt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mAvgRtt:Ljava/lang/String;

    return-object v0
.end method

.method public getmExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmLoss()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mLoss:Ljava/lang/String;

    return-object v0
.end method

.method public getmPacketCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketCount:I

    return v0
.end method

.method public getmPort()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPort:I

    return v0
.end method

.method public getmRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIp"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mIp:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setPacketBytesCount(I)V
    .locals 0
    .param p1, "mPacketBytesCount"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    .line 139
    return-void
.end method

.method public setPacketCount(I)V
    .locals 0
    .param p1, "mPacketCount"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPacketCount:I

    .line 81
    return-void
.end method

.method public setPacketLossCount(I)V
    .locals 0
    .param p1, "mPacketLossCount"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPacketLossCount:I

    .line 155
    return-void
.end method

.method public setProtocol(I)V
    .locals 0
    .param p1, "mProtocol"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mProtocol:I

    .line 73
    return-void
.end method

.method public setmAvgRtt(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAvgRtt"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mAvgRtt:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setmExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtra"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mExtra:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setmIpList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "mIpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public setmLoss(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLoss"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mLoss:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setmPort(I)V
    .locals 0
    .param p1, "mPort"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPort:I

    .line 69
    return-void
.end method

.method public setmRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mRegion:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, "mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    const-string v1, "mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string v1, "mIp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, "mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, "mPacketBytesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string v1, "mPacketCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPacketCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, "mPacketLossCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPacketLossCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string v1, "mCalculateLoss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v1, "mBestRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getMinTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    const-string v1, "getAvgTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string v1, "mAvgSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgSpeed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, "mIpList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v1, "mLoss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mLoss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "mAvgRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mAvgRtt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
