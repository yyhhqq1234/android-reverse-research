.class public Lcom/netease/pharos/link/LinkCheck;
.super Ljava/lang/Object;
.source "LinkCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/link/LinkCheck$MyTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCheck"


# instance fields
.field private mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private mCheckResult:Lcom/netease/pharos/config/CheckResult;

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private mExtra:Ljava/lang/String;

.field private mInterval:I

.field private mListener:Lcom/netease/pharos/link/LinkCheckListener;

.field private mRegion:Ljava/lang/String;

.field private mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mRegion:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/link/LinkCheck;->mInterval:I

    .line 68
    iput-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 70
    iput-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 72
    iput-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 74
    iput-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mExtra:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->timer:Ljava/util/Timer;

    .line 181
    new-instance v0, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    invoke-direct {v0, p0}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;-><init>(Lcom/netease/pharos/link/LinkCheck;)V

    iput-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/link/LinkCheck;ILjava/lang/String;IIII)I
    .locals 1

    .prologue
    .line 188
    invoke-direct/range {p0 .. p6}, Lcom/netease/pharos/link/LinkCheck;->checkOnce(ILjava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/pharos/link/LinkCheck;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/link/LinkCheck$MyTimeTask;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    return-object v0
.end method

.method static synthetic access$4(Lcom/netease/pharos/link/LinkCheck;)Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object v0
.end method

.method private checkOnce(ILjava/lang/String;IIII)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "count"    # I
    .param p5, "time"    # I
    .param p6, "size"    # I

    .prologue
    .line 189
    const-string v0, "LinkCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u6b21\u6267\u884c\uff0c\u53c2\u6570 type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/link/LinkCheck;->mExtra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/16 v6, 0xb

    .line 191
    .local v6, "result":I
    new-instance v0, Lcom/netease/pharos/config/CheckResult;

    invoke-direct {v0}, Lcom/netease/pharos/config/CheckResult;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    .line 193
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mRegion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    iget-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/config/CheckResult;->setmRegion(Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmLinktestId()Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/config/CheckResult;->setProtocol(I)V

    .line 199
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p4}, Lcom/netease/pharos/config/CheckResult;->setPacketCount(I)V

    .line 200
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p6}, Lcom/netease/pharos/config/CheckResult;->setPacketBytesCount(I)V

    .line 201
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p2}, Lcom/netease/pharos/config/CheckResult;->setIp(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v0, p3}, Lcom/netease/pharos/config/CheckResult;->setmPort(I)V

    .line 203
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    iget-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/config/CheckResult;->setmExtra(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 206
    invoke-virtual/range {v0 .. v5}, Lcom/netease/pharos/link/LinkCheck;->tcpCheck(Ljava/lang/String;IIII)I

    move-result v6

    .line 221
    :cond_1
    :goto_0
    return v6

    .line 208
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_3

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 209
    invoke-virtual/range {v0 .. v5}, Lcom/netease/pharos/link/LinkCheck;->udpCheck(Ljava/lang/String;IIII)I

    move-result v6

    .line 211
    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_4

    .line 212
    invoke-virtual {p0, p4}, Lcom/netease/pharos/link/LinkCheck;->kcpCheck(I)I

    move-result v6

    .line 214
    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    .line 215
    invoke-virtual {p0, p2, p4, p5}, Lcom/netease/pharos/link/LinkCheck;->ping(Ljava/lang/String;II)I

    move-result v6

    .line 217
    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 218
    invoke-virtual {p0, p2}, Lcom/netease/pharos/link/LinkCheck;->dns(Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method private isRecordMtr(IJ)Z
    .locals 6
    .param p1, "ptotocal"    # I
    .param p2, "useTime"    # J

    .prologue
    .line 559
    const-wide/16 v0, 0x0

    .line 560
    .local v0, "mTraceThreshold":J
    const/4 v2, 0x0

    .line 562
    .local v2, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 593
    :goto_0
    cmp-long v3, p2, v0

    if-lez v3, :cond_0

    .line 594
    const/4 v2, 0x1

    .line 597
    :cond_0
    return v2

    .line 565
    :pswitch_0
    const-wide/16 v0, 0x3e8

    .line 566
    const-string v3, "LinkCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LinkCheck isRecordMtr ptotocal=tcp , useTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :pswitch_1
    const-wide/16 v0, 0x7d0

    .line 575
    const-string v3, "LinkCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LinkCheck isRecordMtr ptotocal=udp , useTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :pswitch_2
    const-wide/16 v0, 0xbb8

    .line 583
    const-string v3, "LinkCheck"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LinkCheck isRecordMtr ptotocal=kcp , useTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 785
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;IIII)I
    .locals 8
    .param p1, "type"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "count"    # I
    .param p5, "time"    # I
    .param p6, "size"    # I

    .prologue
    .line 231
    const-string v0, "LinkCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Link check \u53c2\u6570 type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/16 v7, 0xb

    .line 235
    .local v7, "result":I
    iget v0, p0, Lcom/netease/pharos/link/LinkCheck;->mInterval:I

    if-nez v0, :cond_0

    .line 236
    const-string v0, "LinkCheck"

    const-string v1, "\u4e00\u6b21\u6027\u6267\u884c"

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct/range {p0 .. p6}, Lcom/netease/pharos/link/LinkCheck;->checkOnce(ILjava/lang/String;IIII)I

    move-result v7

    .line 255
    :goto_0
    return v7

    .line 240
    :cond_0
    const/4 v6, 0x0

    .line 241
    .local v6, "delay":I
    const-string v0, "LinkCheck"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5faa\u73af\u6267\u884c\uff0c\u65f6\u95f4\u95f4\u9694\u4e3a="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/netease/pharos/link/LinkCheck;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    invoke-virtual {v0, p1}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->setType(I)V

    .line 244
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    invoke-virtual {v0, p2}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->setmIp(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    invoke-virtual {v0, p3}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->setmPort(I)V

    .line 246
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    invoke-virtual {v0, p4}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->setTime(I)V

    .line 247
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    invoke-virtual {v0, p5}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->setmTime(I)V

    .line 248
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    invoke-virtual {v0, p6}, Lcom/netease/pharos/link/LinkCheck$MyTimeTask;->setmSize(I)V

    .line 251
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/netease/pharos/link/LinkCheck;->mTask:Lcom/netease/pharos/link/LinkCheck$MyTimeTask;

    const/4 v2, 0x0

    int-to-long v2, v2

    iget v4, p0, Lcom/netease/pharos/link/LinkCheck;->mInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 252
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public dns(Ljava/lang/String;)I
    .locals 8
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 725
    const/16 v3, 0xb

    .line 726
    .local v3, "result":I
    const/4 v4, 0x0

    .line 727
    .local v4, "returnStr":[Ljava/net/InetAddress;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v2, "ipArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 735
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-lt v1, v5, :cond_1

    .line 741
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 742
    const/4 v3, 0x0

    .line 743
    iget-object v5, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v5, v2}, Lcom/netease/pharos/config/CheckResult;->setmIpList(Ljava/util/ArrayList;)V

    .line 744
    iget-object v5, p0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    iget-object v6, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    invoke-interface {v5, v6}, Lcom/netease/pharos/link/LinkCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 747
    :cond_0
    return v3

    .line 731
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 736
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "i":I
    :cond_1
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 737
    const-string v5, "LinkCheck"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dns ip="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getmCheckOverNotifyListener()Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-object v0
.end method

.method public getmCycleTaskStopListener()Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object v0
.end method

.method public getmExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getmListener()Lcom/netease/pharos/link/LinkCheckListener;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    return-object v0
.end method

.method public kcpCheck(I)I
    .locals 29
    .param p1, "count"    # I

    .prologue
    .line 451
    const-string v25, "LinkCheck"

    const-string v26, "LinkCheck kcpCheck"

    invoke-static/range {v25 .. v26}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/16 v18, 0xb

    .line 455
    .local v18, "result":I
    new-instance v25, Ljava/util/Random;

    invoke-direct/range {v25 .. v25}, Ljava/util/Random;-><init>()V

    const v26, 0xf423f

    invoke-virtual/range {v25 .. v26}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 457
    .local v6, "conv":I
    const/4 v15, 0x0

    .line 458
    .local v15, "packetLossCount":I
    new-instance v22, Ljava/util/Timer;

    invoke-direct/range {v22 .. v22}, Ljava/util/Timer;-><init>()V

    .line 462
    .local v22, "timer":Ljava/util/Timer;
    :try_start_0
    new-instance v5, Lcom/netease/pharos/link/kcp/KcpJavaClient;

    int-to-long v0, v6

    move-wide/from16 v25, v0

    const-string v27, "123.58.164.135"

    const/16 v28, 0x270d

    move-wide/from16 v0, v25

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJavaClient;-><init>(JLjava/lang/String;I)V

    .line 463
    .local v5, "client":Lcom/netease/pharos/link/kcp/KcpJavaClient;
    const/16 v25, 0x400

    const/16 v26, 0x400

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Lcom/netease/pharos/link/kcp/KcpJavaClient;->WndSize(II)I

    .line 464
    const/16 v25, 0x1

    const/16 v26, 0x14

    const/16 v27, 0x2

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/netease/pharos/link/kcp/KcpJavaClient;->NoDelay(IIII)I

    .line 466
    const/16 v25, 0x800

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 468
    .local v19, "sendBuf":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v25

    if-lt v10, v0, :cond_0

    .line 472
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    move/from16 v0, p1

    if-lt v12, v0, :cond_1

    .line 545
    .end local v5    # "client":Lcom/netease/pharos/link/kcp/KcpJavaClient;
    .end local v10    # "i":I
    .end local v12    # "j":I
    .end local v19    # "sendBuf":[B
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/Timer;->cancel()V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Lcom/netease/pharos/link/LinkCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 548
    return v18

    .line 469
    .restart local v5    # "client":Lcom/netease/pharos/link/kcp/KcpJavaClient;
    .restart local v10    # "i":I
    .restart local v19    # "sendBuf":[B
    :cond_0
    const/16 v25, 0x73

    :try_start_1
    aput-byte v25, v19, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 475
    .restart local v12    # "j":I
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 477
    .local v20, "startTime":J
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/netease/pharos/link/kcp/KcpJavaClient;->Send([B)I

    .line 480
    new-instance v25, Lcom/netease/pharos/link/LinkCheck$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/netease/pharos/link/LinkCheck$1;-><init>(Lcom/netease/pharos/link/LinkCheck;Lcom/netease/pharos/link/kcp/KcpJavaClient;)V

    .line 488
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    const-wide/16 v27, 0x7d0

    .line 480
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-wide/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 490
    const/16 v25, 0x800

    move/from16 v0, v25

    new-array v13, v0, [B

    .line 491
    .local v13, "kcpBuf":[B
    const/4 v14, 0x0

    .line 495
    .local v14, "length":I
    :cond_2
    const/16 v25, 0x800

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 496
    .local v16, "recvBuf":[B
    new-instance v17, Ljava/net/DatagramPacket;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    .local v17, "recvPacket":Ljava/net/DatagramPacket;
    :try_start_3
    iget-object v0, v5, Lcom/netease/pharos/link/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    :goto_3
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v16

    .line 505
    invoke-virtual/range {v17 .. v17}, Ljava/net/DatagramPacket;->getLength()I

    move-result v25

    add-int v14, v14, v25

    .line 507
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/netease/pharos/link/kcp/KcpJavaClient;->Input([B)I

    move-result v11

    .line 510
    .local v11, "index":I
    invoke-virtual {v5, v13}, Lcom/netease/pharos/link/kcp/KcpJavaClient;->Recv([B)I

    move-result v25

    if-lez v25, :cond_2

    .line 515
    const/16 v25, 0x800

    move/from16 v0, v25

    if-le v0, v14, :cond_3

    .line 516
    const-string v25, "LinkCheck"

    const-string v26, "UDP Packet loss"

    invoke-static/range {v25 .. v26}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    add-int/lit8 v15, v15, 0x1

    .line 518
    sget-object v25, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v25 .. v25}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    .line 527
    :goto_4
    const/16 v18, 0x0

    .line 528
    const-string v25, "LinkCheck"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "KCP recePacket length="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .end local v11    # "index":I
    .end local v13    # "kcpBuf":[B
    .end local v14    # "length":I
    .end local v16    # "recvBuf":[B
    .end local v17    # "recvPacket":Ljava/net/DatagramPacket;
    .end local v20    # "startTime":J
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 500
    .restart local v13    # "kcpBuf":[B
    .restart local v14    # "length":I
    .restart local v16    # "recvBuf":[B
    .restart local v17    # "recvPacket":Ljava/net/DatagramPacket;
    .restart local v20    # "startTime":J
    :catch_0
    move-exception v7

    .line 501
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 530
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "kcpBuf":[B
    .end local v14    # "length":I
    .end local v16    # "recvBuf":[B
    .end local v17    # "recvPacket":Ljava/net/DatagramPacket;
    .end local v20    # "startTime":J
    :catch_1
    move-exception v7

    .line 531
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v25, "LinkCheck"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "kcpCheck Exception1="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 533
    add-int/lit8 v15, v15, 0x1

    .line 534
    sget-object v25, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v25 .. v25}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 538
    .end local v5    # "client":Lcom/netease/pharos/link/kcp/KcpJavaClient;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v12    # "j":I
    .end local v19    # "sendBuf":[B
    :catch_2
    move-exception v7

    .line 539
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v25, "LinkCheck"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "kcpCheck Exception2="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    add-int/lit8 v15, v15, 0x1

    .line 542
    sget-object v25, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v26, 0x3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v25 .. v25}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    goto/16 :goto_2

    .line 521
    .restart local v5    # "client":Lcom/netease/pharos/link/kcp/KcpJavaClient;
    .restart local v10    # "i":I
    .restart local v11    # "index":I
    .restart local v12    # "j":I
    .restart local v13    # "kcpBuf":[B
    .restart local v14    # "length":I
    .restart local v16    # "recvBuf":[B
    .restart local v17    # "recvPacket":Ljava/net/DatagramPacket;
    .restart local v19    # "sendBuf":[B
    .restart local v20    # "startTime":J
    :cond_3
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 522
    .local v8, "endTime":J
    sub-long v23, v8, v20

    .line 523
    .local v23, "useTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V

    .line 524
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/pharos/link/LinkCheck;->isRecordMtr(IJ)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4
.end method

.method public ping(Ljava/lang/String;II)I
    .locals 23
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 608
    const/16 v16, 0x0

    .line 609
    .local v16, "p":Ljava/lang/Process;
    const/16 v17, 0xb

    .line 612
    .local v17, "result":I
    :try_start_0
    const-string v20, "LinkCheck"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ping \u53c2\u6570 host= "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", num="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeout="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/16 p3, 0xa

    .line 615
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "/system/bin/ping -c "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -w "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    .line 616
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 617
    .local v12, "input":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 618
    .local v9, "in":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 619
    .local v4, "buffer":Ljava/lang/StringBuffer;
    const-string v14, ""

    .line 620
    .local v14, "line":Ljava/lang/String;
    const-string v13, ""

    .line 621
    .local v13, "ip":Ljava/lang/String;
    const-string v5, ""

    .line 622
    .local v5, "cost":Ljava/lang/String;
    const-string v15, ""

    .line 624
    .local v15, "lost":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    .line 691
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/netease/pharos/link/LinkCheck;->printMessage(Ljava/io/InputStream;)V

    .line 692
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 694
    .local v2, "a":I
    const-string v20, "LinkCheck"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "cost="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", lost="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ip="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v20, "LinkCheck"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ping result:\n"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const/16 v17, 0x0

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/netease/pharos/config/CheckResult;->setmAvgRtt(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/netease/pharos/config/CheckResult;->setmLoss(Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/netease/pharos/link/LinkCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 705
    :cond_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    if-eqz v16, :cond_2

    .line 717
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->destroy()V

    .line 721
    .end local v2    # "a":I
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "cost":Ljava/lang/String;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v13    # "ip":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "lost":Ljava/lang/String;
    :cond_2
    :goto_1
    return v17

    .line 625
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "cost":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "input":Ljava/io/InputStream;
    .restart local v13    # "ip":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "lost":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const-string v20, "/avg/"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 628
    const-string v20, "="

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 630
    .local v3, "avgTmp":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 631
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 632
    .local v8, "first":I
    const/16 v20, 0x1

    aget-object v20, v3, v20

    const-string v21, "/"

    add-int/lit8 v22, v8, 0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 634
    .local v7, "end":I
    add-int/lit8 v20, v8, 0x1

    move/from16 v0, v20

    if-ge v0, v7, :cond_4

    .line 635
    const/16 v20, 0x1

    aget-object v20, v3, v20

    add-int/lit8 v21, v8, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 670
    .end local v3    # "avgTmp":[Ljava/lang/String;
    .end local v7    # "end":I
    .end local v8    # "first":I
    :cond_4
    :goto_2
    const-string v20, "% packet loss"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 671
    const-string v20, "% packet loss"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 672
    .local v11, "infos":[Ljava/lang/String;
    if-eqz v11, :cond_5

    array-length v0, v11

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 673
    const/16 v20, 0x0

    aget-object v20, v11, v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 674
    if-eqz v11, :cond_5

    array-length v0, v11

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 675
    array-length v0, v11

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v15, v11, v20

    .line 680
    .end local v11    # "infos":[Ljava/lang/String;
    :cond_5
    const-string v20, "("

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, ")"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 681
    const-string v20, "("

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v19, v20, 0x1

    .line 682
    .local v19, "start":I
    const-string v20, ")"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 684
    .restart local v7    # "end":I
    move/from16 v0, v19

    if-ge v0, v7, :cond_0

    .line 685
    move/from16 v0, v19

    invoke-virtual {v14, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 647
    .end local v7    # "end":I
    .end local v19    # "start":I
    :cond_6
    const-string v20, "icmp_seq"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 648
    const-string v20, "LinkCheck"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ping line="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v20, " |="

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 650
    .local v10, "info":[Ljava/lang/String;
    if-eqz v10, :cond_4

    array-length v0, v10

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 652
    const/16 v20, 0x9

    :try_start_2
    aget-object v20, v10, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 653
    .local v18, "rtt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v20, v0

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 654
    .end local v18    # "rtt":F
    :catch_0
    move-exception v6

    .line 655
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v20, "LinkCheck"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "LinkCheck  [ping] Exception="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cost="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 707
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "cost":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v10    # "info":[Ljava/lang/String;
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v13    # "ip":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "lost":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 708
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    const-string v20, "LinkCheck"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ping\u5f02\u5e38 IOException="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 716
    if-eqz v16, :cond_2

    .line 717
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_1

    .line 711
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 712
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v20, "LinkCheck"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "ping\u5f02\u5e38 InterruptedException="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 716
    if-eqz v16, :cond_2

    .line 717
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_1

    .line 715
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v20

    .line 716
    if-eqz v16, :cond_7

    .line 717
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->destroy()V

    .line 719
    :cond_7
    throw v20
.end method

.method public printMessage(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;

    .prologue
    .line 751
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/link/LinkCheck$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/pharos/link/LinkCheck$2;-><init>(Lcom/netease/pharos/link/LinkCheck;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 778
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 779
    return-void
.end method

.method public setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/netease/pharos/link/LinkCheck;->mInterval:I

    .line 90
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck;->mRegion:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V
    .locals 0
    .param p1, "mCheckOverNotifyListener"    # Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 115
    return-void
.end method

.method public setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V
    .locals 0
    .param p1, "mCycleTaskStopListener"    # Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 106
    return-void
.end method

.method public setmExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtra"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck;->mExtra:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setmListener(Lcom/netease/pharos/link/LinkCheckListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/netease/pharos/link/LinkCheckListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 98
    return-void
.end method

.method public tcpCheck(Ljava/lang/String;IIII)I
    .locals 26
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "count"    # I
    .param p4, "time"    # I
    .param p5, "size"    # I

    .prologue
    .line 263
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "LinkCheck tcpCheck time="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/16 v15, 0xb

    .line 265
    .local v15, "result":I
    const/16 v17, 0x0

    .line 266
    .local v17, "socket":Ljava/net/Socket;
    const/4 v4, 0x0

    .line 267
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 270
    .local v14, "packetLossCount":I
    :try_start_0
    move/from16 v0, p5

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 272
    .local v16, "sendBuffer":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v9, v0, :cond_1

    .line 276
    new-instance v18, Ljava/net/Socket;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 277
    .end local v17    # "socket":Ljava/net/Socket;
    .local v18, "socket":Ljava/net/Socket;
    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 278
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 279
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 280
    .local v13, "out":Ljava/io/OutputStream;
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "TCP time="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    move/from16 v0, p3

    if-lt v11, v0, :cond_2

    .line 322
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->isClosed()Z

    move-result v23

    if-nez v23, :cond_0

    .line 323
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->shutdownInput()V

    .line 324
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->shutdownOutput()V

    .line 325
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 328
    :cond_0
    const/4 v15, 0x0

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .line 338
    .end local v9    # "i":I
    .end local v11    # "j":I
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v16    # "sendBuffer":[B
    .end local v18    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    :goto_2
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "LinkCheck tcpCheck mCheckResult="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/netease/pharos/link/LinkCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 341
    return v15

    .line 273
    .restart local v9    # "i":I
    .restart local v16    # "sendBuffer":[B
    :cond_1
    const/16 v23, 0x73

    :try_start_3
    aput-byte v23, v16, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 272
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 288
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v11    # "j":I
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v18    # "socket":Ljava/net/Socket;
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 289
    .local v19, "startTime":J
    const/16 v23, 0x0

    add-int/lit8 v24, v11, 0x30

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v16, v23

    .line 290
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 292
    const/4 v10, 0x0

    .line 295
    .local v10, "index":I
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v12

    .local v12, "len":I
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v12, v0, :cond_3

    .line 301
    move/from16 v0, p5

    if-eq v0, v10, :cond_4

    .line 302
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "TCP Packet loss, count="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    add-int/lit8 v14, v14, 0x1

    .line 304
    sget-object v23, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    .line 285
    .end local v10    # "index":I
    .end local v12    # "len":I
    .end local v19    # "startTime":J
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 296
    .restart local v10    # "index":I
    .restart local v12    # "len":I
    .restart local v19    # "startTime":J
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 307
    :cond_4
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "count="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 309
    .local v7, "endTime":J
    sub-long v21, v7, v19

    .line 310
    .local v21, "useTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V

    .line 311
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/pharos/link/LinkCheck;->isRecordMtr(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 314
    .end local v7    # "endTime":J
    .end local v10    # "index":I
    .end local v12    # "len":I
    .end local v19    # "startTime":J
    .end local v21    # "useTime":J
    :catch_0
    move-exception v6

    .line 315
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    add-int/lit8 v14, v14, 0x1

    .line 317
    sget-object v23, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 330
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "j":I
    .end local v13    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v17, v18

    .line 332
    .end local v9    # "i":I
    .end local v16    # "sendBuffer":[B
    .end local v18    # "socket":Ljava/net/Socket;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v17    # "socket":Ljava/net/Socket;
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    add-int/lit8 v14, v14, 0x1

    .line 334
    sget-object v23, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    goto/16 :goto_2

    .line 330
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_5

    .end local v17    # "socket":Ljava/net/Socket;
    .restart local v9    # "i":I
    .restart local v16    # "sendBuffer":[B
    .restart local v18    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v6

    move-object/from16 v17, v18

    .end local v18    # "socket":Ljava/net/Socket;
    .restart local v17    # "socket":Ljava/net/Socket;
    goto :goto_5
.end method

.method public udpCheck(Ljava/lang/String;IIII)I
    .locals 26
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "count"    # I
    .param p4, "time"    # I
    .param p5, "size"    # I

    .prologue
    .line 354
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "LinkCheck udpCheck ip="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", port="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", count="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", time="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", size="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v23, "LinkCheck"

    const-string v24, "LinkCheck udpCheck"

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/16 v12, 0xb

    .line 357
    .local v12, "result":I
    const/16 v16, 0x0

    .line 358
    .local v16, "socket":Ljava/net/DatagramSocket;
    const/4 v14, 0x0

    .line 360
    .local v14, "sendPacket":Ljava/net/DatagramPacket;
    move/from16 v0, p5

    new-array v13, v0, [B

    .line 362
    .local v13, "sendBuf":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v7, v0, :cond_3

    .line 366
    move/from16 v0, p5

    new-array v10, v0, [B

    .line 367
    .local v10, "recBuf":[B
    const/4 v9, 0x0

    .line 371
    .local v9, "packetLossCount":I
    if-nez v16, :cond_0

    .line 372
    :try_start_0
    new-instance v17, Ljava/net/DatagramSocket;

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 373
    .end local v16    # "socket":Ljava/net/DatagramSocket;
    .local v17, "socket":Ljava/net/DatagramSocket;
    const/16 v23, 0x1

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 374
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 375
    new-instance v23, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v16, v17

    .line 379
    .end local v17    # "socket":Ljava/net/DatagramSocket;
    .restart local v16    # "socket":Ljava/net/DatagramSocket;
    :cond_0
    const/16 v20, 0x3e8

    .line 380
    .local v20, "timeOut":I
    :try_start_2
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 381
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v0, v13

    move/from16 v23, v0

    .line 382
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    .line 381
    move/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p2

    invoke-direct {v15, v13, v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 383
    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .local v15, "sendPacket":Ljava/net/DatagramPacket;
    :try_start_3
    new-instance v11, Ljava/net/DatagramPacket;

    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v11, v10, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 384
    .local v11, "recePacket":Ljava/net/DatagramPacket;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    move/from16 v0, p3

    if-lt v8, v0, :cond_4

    .line 410
    const/4 v12, 0x0

    .line 411
    if-eqz v11, :cond_6

    .line 412
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "UCP recePacket length="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v14, v15

    .line 424
    .end local v8    # "j":I
    .end local v11    # "recePacket":Ljava/net/DatagramPacket;
    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v20    # "timeOut":I
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/netease/pharos/config/CheckResult;->setPacketLossCount(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/netease/pharos/link/LinkCheckListener;->callBack(Lcom/netease/pharos/config/CheckResult;)V

    .line 428
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "LinkCheck udpCheck mCheckResult="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/netease/pharos/config/CheckResult;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-eqz v16, :cond_2

    .line 432
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 433
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->disconnect()V

    .line 436
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v23

    if-nez v23, :cond_2

    .line 437
    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->close()V

    .line 443
    :cond_2
    return v12

    .line 363
    .end local v9    # "packetLossCount":I
    .end local v10    # "recBuf":[B
    :cond_3
    const/16 v23, 0x73

    aput-byte v23, v13, v7

    .line 362
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 387
    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v8    # "j":I
    .restart local v9    # "packetLossCount":I
    .restart local v10    # "recBuf":[B
    .restart local v11    # "recePacket":Ljava/net/DatagramPacket;
    .restart local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v20    # "timeOut":I
    :cond_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 388
    .local v18, "startTime":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 389
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 390
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getLength()I

    move-result v23

    move/from16 v0, p5

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 391
    const-string v23, "LinkCheck"

    const-string v24, "UDP Packet loss"

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    add-int/lit8 v9, v9, 0x1

    .line 393
    sget-object v23, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    .line 384
    .end local v18    # "startTime":J
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 396
    .restart local v18    # "startTime":J
    :cond_5
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "UDP receive Packet count="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 398
    .local v5, "endTime":J
    sub-long v21, v5, v18

    .line 399
    .local v21, "useTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/link/LinkCheck;->mCheckResult:Lcom/netease/pharos/config/CheckResult;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/config/CheckResult;->addTime(J)V

    .line 400
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/pharos/link/LinkCheck;->isRecordMtr(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 403
    .end local v5    # "endTime":J
    .end local v18    # "startTime":J
    .end local v21    # "useTime":J
    :catch_0
    move-exception v4

    .line 404
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "udpCheck Exception e="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    add-int/lit8 v9, v9, 0x1

    .line 407
    sget-object v23, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 416
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v8    # "j":I
    .end local v11    # "recePacket":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v4

    move-object v14, v15

    .line 417
    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v20    # "timeOut":I
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    const-string v23, "LinkCheck"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "udpCheck Exception = "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ip="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    move/from16 v9, p3

    .line 420
    sget-object v23, Lcom/netease/pharos/link/NetmonCore;->mNetmonReportMap:Ljava/util/Map;

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/netease/pharos/report/NetmonReport;

    invoke-virtual/range {v23 .. v23}, Lcom/netease/pharos/report/NetmonReport;->addPacketLossCount()V

    goto/16 :goto_2

    .line 416
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_4

    .end local v16    # "socket":Ljava/net/DatagramSocket;
    .restart local v17    # "socket":Ljava/net/DatagramSocket;
    :catch_3
    move-exception v4

    move-object/from16 v16, v17

    .end local v17    # "socket":Ljava/net/DatagramSocket;
    .restart local v16    # "socket":Ljava/net/DatagramSocket;
    goto :goto_4

    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v8    # "j":I
    .restart local v11    # "recePacket":Ljava/net/DatagramPacket;
    .restart local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v20    # "timeOut":I
    :cond_6
    move-object v14, v15

    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    goto/16 :goto_2
.end method
