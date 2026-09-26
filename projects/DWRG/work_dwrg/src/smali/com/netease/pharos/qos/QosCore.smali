.class public Lcom/netease/pharos/qos/QosCore;
.super Ljava/lang/Object;
.source "QosCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QosCore"


# instance fields
.field private dealer:Lcom/netease/pharos/network2/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network2/NetworkDealer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCycle:Z

.field private mDest:Ljava/lang/String;

.field private mEnable:Z

.field private mIsCycle:Z

.field private mIsFitthreshold:Z

.field private mPhone:Ljava/lang/String;

.field private mPhoneUrl:Ljava/lang/String;

.field private mQosResult:Lorg/json/JSONObject;

.field private mResult:Lorg/json/JSONObject;

.field private mSource:Lorg/json/JSONObject;

.field private mStauts:I

.field private qos_dealer:Lcom/netease/pharos/network2/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network2/NetworkDealer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/netease/pharos/qos/QosCore;->mContext:Landroid/content/Context;

    .line 58
    iput-object v2, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    .line 64
    iput-boolean v1, p0, Lcom/netease/pharos/qos/QosCore;->mEnable:Z

    .line 66
    iput-boolean v1, p0, Lcom/netease/pharos/qos/QosCore;->mCycle:Z

    .line 68
    iput-object v2, p0, Lcom/netease/pharos/qos/QosCore;->mDest:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/netease/pharos/qos/QosCore;->mPhone:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/netease/pharos/qos/QosCore;->mIsFitthreshold:Z

    .line 80
    iput-boolean v1, p0, Lcom/netease/pharos/qos/QosCore;->mIsCycle:Z

    .line 82
    iput v1, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    .line 338
    new-instance v0, Lcom/netease/pharos/qos/QosCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/qos/QosCore$1;-><init>(Lcom/netease/pharos/qos/QosCore;)V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosCore;->qos_dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 634
    new-instance v0, Lcom/netease/pharos/qos/QosCore$2;

    invoke-direct {v0, p0}, Lcom/netease/pharos/qos/QosCore$2;-><init>(Lcom/netease/pharos/qos/QosCore;)V

    iput-object v0, p0, Lcom/netease/pharos/qos/QosCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/qos/QosCore;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/pharos/qos/QosCore;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    return-void
.end method

.method static synthetic access$2(Lcom/netease/pharos/qos/QosCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netease/pharos/qos/QosCore;->mPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/netease/pharos/qos/QosCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netease/pharos/qos/QosCore;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/netease/pharos/qos/QosCore;)I
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/netease/pharos/qos/QosCore;->qos()I

    move-result v0

    return v0
.end method

.method private checkExpire()Z
    .locals 9

    .prologue
    .line 605
    const/4 v3, 0x0

    .line 609
    .local v3, "result":Z
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_expire"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 610
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_expire"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "time":Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 614
    .local v1, "longTime":J
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 615
    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    .line 621
    :goto_0
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "QosCore [checkExpire] longTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", System.currentTimeMillis()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-wide/16 v5, 0x0

    cmp-long v5, v5, v1

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 624
    :cond_0
    const/4 v3, 0x1

    .line 631
    .end local v1    # "longTime":J
    .end local v4    # "time":Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 617
    .restart local v1    # "longTime":J
    .restart local v4    # "time":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "QosCore [checkExpire] Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "longTime":J
    .end local v4    # "time":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isISP()Z
    .locals 6

    .prologue
    .line 482
    const/4 v2, 0x0

    .line 484
    .local v2, "result":Z
    invoke-static {}, Lcom/netease/pharos/deviceinfo/NetDevices;->getInstances()Lcom/netease/pharos/deviceinfo/NetDevices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/deviceinfo/NetDevices;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "network":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "region":Ljava/lang/String;
    const-string v3, "QosCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "QosCore [isISP] network="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", region="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v3, "mobile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "cn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    const/4 v2, 0x1

    .line 493
    :cond_0
    return v2
.end method

.method private isThreshHold(Ljava/lang/String;II)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "lost"    # I
    .param p3, "rtt"    # I

    .prologue
    .line 504
    const/4 v2, 0x0

    .line 505
    .local v2, "result":Z
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QosCore [isThreshHold] \u53c2\u6570 key="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rtt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-ltz p2, :cond_0

    const/16 v7, 0x64

    if-gt p2, v7, :cond_0

    if-gez p3, :cond_1

    .line 508
    :cond_0
    const-string v7, "QosCore"

    const-string v8, "QosCore [isThreshHold] \u53c2\u6570\u9519\u8bef"

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 597
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 512
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    const/4 v4, -0x1

    .line 513
    .local v4, "tLost":I
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 515
    .local v5, "tRtt":D
    const-string v7, "nap_icmp"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 516
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmNapIcmpLost()I

    move-result v4

    .line 517
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmNapIcmpRtt()D

    move-result-wide v5

    .line 522
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QosCore [isThreshHold] nap_icmp tLost="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tRtt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    if-le v4, p2, :cond_2

    const/16 v7, 0x64

    if-lt v4, v7, :cond_3

    :cond_2
    int-to-double v7, p3

    cmpl-double v7, v5, v7

    if-lez v7, :cond_4

    const-wide/high16 v7, 0x4089000000000000L    # 800.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_4

    .line 525
    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_1
    move v3, v2

    .line 597
    .restart local v3    # "result":I
    goto :goto_0

    .line 528
    .end local v3    # "result":I
    :cond_5
    const-string v7, "rap_icmp"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 529
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapIcmpLost()I

    move-result v4

    .line 530
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapIcmpRtt()D

    move-result-wide v5

    .line 535
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QosCore [isThreshHold] rap_icmp tLost="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tRtt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-le v4, p2, :cond_6

    const/16 v7, 0x64

    if-lt v4, v7, :cond_7

    :cond_6
    int-to-double v7, p3

    cmpl-double v7, v5, v7

    if-lez v7, :cond_4

    const-wide/high16 v7, 0x4089000000000000L    # 800.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_4

    .line 538
    :cond_7
    const/4 v2, 0x1

    .line 541
    goto :goto_1

    :cond_8
    const-string v7, "rap_transfer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 542
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapIcmpLost()I

    move-result v4

    .line 543
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapIcmpRtt()D

    move-result-wide v5

    .line 548
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QosCore [isThreshHold] rap_transfer tLost="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tRtt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    if-le v4, p2, :cond_9

    const/16 v7, 0x64

    if-lt v4, v7, :cond_a

    :cond_9
    int-to-double v7, p3

    cmpl-double v7, v5, v7

    if-lez v7, :cond_4

    const-wide/high16 v7, 0x4089000000000000L    # 800.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_4

    .line 551
    :cond_a
    const/4 v2, 0x1

    .line 554
    goto/16 :goto_1

    :cond_b
    const-string v7, "rap_udp"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 555
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapUdpLost()D

    move-result-wide v0

    .line 556
    .local v0, "pLost":D
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapUdpRtt()J

    move-result-wide v7

    long-to-double v5, v7

    .line 561
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QosCore [isThreshHold] rap_udp tLost="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tRtt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    int-to-double v7, p2

    cmpl-double v7, v0, v7

    if-lez v7, :cond_c

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpg-double v7, v0, v7

    if-ltz v7, :cond_d

    :cond_c
    int-to-double v7, p3

    cmpl-double v7, v5, v7

    if-lez v7, :cond_4

    const-wide/high16 v7, 0x4089000000000000L    # 800.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_4

    .line 564
    :cond_d
    const/4 v2, 0x1

    .line 567
    goto/16 :goto_1

    .end local v0    # "pLost":D
    :cond_e
    const-string v7, "sap_transfer"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 568
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapTransferFail()D

    move-result-wide v0

    .line 569
    .restart local v0    # "pLost":D
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapTransferRtt()J

    move-result-wide v7

    long-to-double v5, v7

    .line 574
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QosCore [isThreshHold] sap_transfer tLost="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tRtt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    int-to-double v7, p2

    cmpl-double v7, v0, v7

    if-lez v7, :cond_f

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpg-double v7, v0, v7

    if-ltz v7, :cond_10

    :cond_f
    int-to-double v7, p3

    cmpl-double v7, v5, v7

    if-lez v7, :cond_4

    const-wide/high16 v7, 0x4089000000000000L    # 800.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_4

    .line 577
    :cond_10
    const/4 v2, 0x1

    .line 580
    goto/16 :goto_1

    .end local v0    # "pLost":D
    :cond_11
    const-string v7, "sap_udp"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 581
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapUdpLost()D

    move-result-wide v0

    .line 582
    .restart local v0    # "pLost":D
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapUdpRtt()J

    move-result-wide v7

    long-to-double v5, v7

    .line 587
    const-string v7, "QosCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "QosCore [isThreshHold] sap_udp tLost="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tRtt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    int-to-double v7, p2

    cmpl-double v7, v0, v7

    if-lez v7, :cond_12

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpg-double v7, v0, v7

    if-ltz v7, :cond_13

    :cond_12
    int-to-double v7, p3

    cmpl-double v7, v5, v7

    if-lez v7, :cond_4

    const-wide/high16 v7, 0x4089000000000000L    # 800.0

    cmpg-double v7, v5, v7

    if-gez v7, :cond_4

    .line 590
    :cond_13
    const/4 v2, 0x1

    .line 593
    goto/16 :goto_1

    .line 594
    .end local v0    # "pLost":D
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private qos()I
    .locals 5

    .prologue
    .line 310
    const-string v2, "QosCore"

    const-string v3, "QosCore [qos] \u53d1\u8d77qos\u52a0\u901f"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/16 v1, 0xb

    .line 320
    .local v1, "result":I
    const-string v2, "QosCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosCore [qos] mQosResult="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    const-string v3, "phone"

    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mPhone:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/pharos/qos/QosCore;->mDest:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/netease/pharos/qos/QosCore;->qos_post(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 335
    return v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "QosCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QosCore [qos] \u53d1\u8d77qos\u52a0\u901f JSONException ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTestData()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 770
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 772
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    if-nez v5, :cond_0

    .line 775
    :try_start_0
    const-string v5, "enable"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 776
    const-string v5, "cycle"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 777
    const-string v5, "dest"

    const-string v6, "106.2.42.123:9995"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 781
    .local v1, "guangdongJson":Lorg/json/JSONObject;
    const-string v5, "guangdong"

    const-string v6, "aHR0cDovLzEyMC4xOTYuMTY2LjE1Ni9iZHByb3h5Lz9hcHBpZD1uZXRlYXNlCg=="

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 783
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 784
    .local v0, "cmccJson":Lorg/json/JSONObject;
    const-string v5, "cmcc"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string v5, "isp"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 788
    .local v4, "thresholdJson":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 789
    .local v3, "thresholdArray":Lorg/json/JSONArray;
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 790
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 791
    const-string v5, "nap_icmp"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    const-string v5, "rap_transfer"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v5, "rap_udp"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v5, "threshold"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v0    # "cmccJson":Lorg/json/JSONObject;
    .end local v1    # "guangdongJson":Lorg/json/JSONObject;
    .end local v3    # "thresholdArray":Lorg/json/JSONArray;
    .end local v4    # "thresholdJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 797
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 865
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void
.end method


# virtual methods
.method public checkIsNeedToQos()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 211
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "QosCore [checkIsNeedToQos] mEnable="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/netease/pharos/qos/QosCore;->mEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isISP()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/netease/pharos/qos/QosCore;->isISP()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsFitthreshold="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/netease/pharos/qos/QosCore;->mIsFitthreshold:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", checkExpire()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/netease/pharos/qos/QosCore;->checkExpire()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", TextUtils.isEmpty(mPhoneUrl)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mStauts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 v4, 0xb

    .line 215
    .local v4, "result":I
    iget v5, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    if-ne v5, v8, :cond_0

    .line 216
    const-string v5, "QosCore"

    const-string v6, "QosCore already start"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 303
    :goto_0
    return v5

    .line 220
    :cond_0
    iput v8, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    .line 222
    iget v5, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 224
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v2

    .line 225
    .local v2, "listener":Lcom/netease/pharos/PharosListener;
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "qos\u56de\u8c03\u7ed3\u679c="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/netease/pharos/qos/QosCore;->getQosResult()Lorg/json/JSONObject;

    move-result-object v3

    .line 230
    .local v3, "qosResult":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 231
    invoke-interface {v2, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 237
    .end local v3    # "qosResult":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 234
    .restart local v3    # "qosResult":Lorg/json/JSONObject;
    :cond_2
    const-string v5, "QosCore"

    const-string v6, "qosResult is null"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    .end local v2    # "listener":Lcom/netease/pharos/PharosListener;
    .end local v3    # "qosResult":Lorg/json/JSONObject;
    :cond_3
    iget-boolean v5, p0, Lcom/netease/pharos/qos/QosCore;->mEnable:Z

    if-eqz v5, :cond_a

    .line 242
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "QosCore [checkIsNeedToQos] isISP()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netease/pharos/qos/QosCore;->isISP()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/netease/pharos/qos/QosCore;->isISP()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 246
    iget-boolean v5, p0, Lcom/netease/pharos/qos/QosCore;->mIsFitthreshold:Z

    if-eqz v5, :cond_8

    .line 247
    invoke-direct {p0}, Lcom/netease/pharos/qos/QosCore;->checkExpire()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 248
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 250
    invoke-direct {p0}, Lcom/netease/pharos/qos/QosCore;->qos()I

    move-result v4

    .line 269
    :goto_2
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v2

    .line 274
    .restart local v2    # "listener":Lcom/netease/pharos/PharosListener;
    if-eqz v2, :cond_4

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/pharos/qos/QosCore;->getQosResult()Lorg/json/JSONObject;

    move-result-object v3

    .line 277
    .restart local v3    # "qosResult":Lorg/json/JSONObject;
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "qos\u56de\u8c03\u7ed3\u679c="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz v3, :cond_b

    .line 280
    invoke-interface {v2, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v3    # "qosResult":Lorg/json/JSONObject;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v7, "rap_qos_status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapQosStatus(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v7, "rap_qos_expire"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->setmRapQosExpire(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getLinkCheckResultInfo()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "info":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 297
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Qos \u4e0a\u4f20\u5185\u5bb9="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/netease/pharos/report/ReportProxy;->getInstance()Lcom/netease/pharos/report/ReportProxy;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/netease/pharos/report/ReportProxy;->report(Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->clean()V

    :cond_5
    move v5, v4

    .line 303
    goto/16 :goto_0

    .line 253
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "listener":Lcom/netease/pharos/PharosListener;
    :cond_6
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/netease/pharos/qos/QosCore;->start(Ljava/lang/String;)I

    move-result v4

    .line 255
    goto/16 :goto_2

    .line 256
    :cond_7
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_status"

    const-string v7, "11"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 259
    :cond_8
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_status"

    const-string v7, "-9"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 262
    :cond_9
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_status"

    const-string v7, "-10"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 265
    :cond_a
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_status"

    const-string v7, "-11"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 283
    .restart local v2    # "listener":Lcom/netease/pharos/PharosListener;
    .restart local v3    # "qosResult":Lorg/json/JSONObject;
    :cond_b
    :try_start_1
    const-string v5, "QosCore"

    const-string v6, "qosResult is null"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 286
    .end local v3    # "qosResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "qosResult Exception="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    .line 859
    return-void
.end method

.method public getQosResult()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 807
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 809
    .local v3, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 813
    .local v1, "qos_effective":Z
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 815
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v6, "rap_qos_status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, "rap_qos_status":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 818
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 820
    .local v4, "t_rap_qos_status":I
    const/16 v5, -0x9

    if-le v4, v5, :cond_0

    .line 821
    const/4 v1, 0x1

    .line 827
    .end local v2    # "rap_qos_status":Ljava/lang/String;
    .end local v4    # "t_rap_qos_status":I
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    const-string v6, "qos_effective"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 828
    const-string v5, "qos"

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-object v3

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "QosCore [getResult] JSONException="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    iput-object p2, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    .line 90
    iput-object p1, p0, Lcom/netease/pharos/qos/QosCore;->mContext:Landroid/content/Context;

    .line 94
    :try_start_0
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v5, "rap_qos_status"

    const-string v6, "-11"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mResult:Lorg/json/JSONObject;

    const-string v5, "rap_qos_expire"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "udid":Ljava/lang/String;
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/pharos/util/Util;->getLocalIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "ip":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getIpaddr()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "ip_public":Ljava/lang/String;
    const-string v4, "QosCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosCore [qos] udid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ip_public="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPhone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->mPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->mDest:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :try_start_1
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    const-string v5, "id"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    const-string v5, "ip"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    const-string v5, "ip_public"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mQosResult:Lorg/json/JSONObject;

    const-string v5, "phone"

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->mPhone:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_1
    iget-object v4, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 119
    const-string v4, "QosCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosCore \u6d4b\u8bd5\u6570\u636e= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void

    .line 97
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "ip_public":Ljava/lang/String;
    .end local v3    # "udid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "QosCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosCore [init] JSONException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "ip":Ljava/lang/String;
    .restart local v2    # "ip_public":Ljava/lang/String;
    .restart local v3    # "udid":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v4, "QosCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QosCore [init] \u521d\u59cb\u5316mQosResult JSONException ="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public parse()I
    .locals 14

    .prologue
    .line 129
    const/16 v7, 0xb

    .line 131
    .local v7, "result":I
    const-string v11, "QosCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "QosCore [parse] mStauts="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/netease/pharos/qos/QosCore;->mStauts:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    if-nez v11, :cond_0

    .line 134
    const/16 v7, 0xe

    move v8, v7

    .line 202
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 138
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_0
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "enable"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 139
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "enable"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/netease/pharos/qos/QosCore;->mEnable:Z

    .line 142
    :cond_1
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "cycle"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 143
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "cycle"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/netease/pharos/qos/QosCore;->mCycle:Z

    .line 146
    :cond_2
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "dest"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 147
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "dest"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mDest:Ljava/lang/String;

    .line 151
    :cond_3
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "isp"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 152
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "isp"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 154
    .local v3, "ispJson":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    const-string v11, "cmcc"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 155
    const-string v11, "cmcc"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 157
    .local v1, "cmccJson":Lorg/json/JSONObject;
    if-eqz v1, :cond_5

    .line 158
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 160
    .local v4, "iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 178
    .end local v1    # "cmccJson":Lorg/json/JSONObject;
    .end local v3    # "ispJson":Lorg/json/JSONObject;
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "threshold"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 179
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mSource:Lorg/json/JSONObject;

    const-string v12, "threshold"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 181
    .local v10, "thresholdJson":Lorg/json/JSONObject;
    if-eqz v10, :cond_7

    .line 182
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 184
    .restart local v4    # "iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_9

    .line 200
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v10    # "thresholdJson":Lorg/json/JSONObject;
    :cond_7
    :goto_2
    const-string v11, "QosCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mEnable="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v13, p0, Lcom/netease/pharos/qos/QosCore;->mEnable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mCycle="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/netease/pharos/qos/QosCore;->mCycle:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mDest="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/netease/pharos/qos/QosCore;->mDest:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mPhoneUrl="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mIsFitthreshold="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/netease/pharos/qos/QosCore;->mIsFitthreshold:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 202
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto/16 :goto_0

    .line 161
    .end local v8    # "result":I
    .restart local v1    # "cmccJson":Lorg/json/JSONObject;
    .restart local v3    # "ispJson":Lorg/json/JSONObject;
    .restart local v4    # "iterator":Ljava/util/Iterator;
    .restart local v7    # "result":I
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 162
    .local v5, "key":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getipProvince()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "ip_province":Ljava/lang/String;
    const-string v11, "QosCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "QosCore [parse] key="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ip_province="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 167
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    .line 169
    iget-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 170
    new-instance v11, Ljava/lang/String;

    iget-object v12, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    iput-object v11, p0, Lcom/netease/pharos/qos/QosCore;->mPhoneUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 185
    .end local v1    # "cmccJson":Lorg/json/JSONObject;
    .end local v2    # "ip_province":Ljava/lang/String;
    .end local v3    # "ispJson":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .restart local v10    # "thresholdJson":Lorg/json/JSONObject;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 186
    .restart local v5    # "key":Ljava/lang/String;
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 188
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 189
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    .line 190
    .local v6, "lost":I
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    .line 192
    .local v9, "rtt":I
    invoke-direct {p0, v5, v6, v9}, Lcom/netease/pharos/qos/QosCore;->isThreshHold(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 193
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/netease/pharos/qos/QosCore;->mIsFitthreshold:Z

    goto/16 :goto_2
.end method

.method public qos_post(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string v5, "\u53d1\u8d77 QOS \u52a0\u901f"

    invoke-static {v5}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 436
    const/16 v3, 0xb

    .line 438
    .local v3, "result":I
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u53d1\u8d77 QOS \u52a0\u901f---\u53c2\u6570 info="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 441
    :cond_0
    const-string v5, "QosCore"

    const-string v6, "\u53d1\u8d77 QOS \u52a0\u901f---\u53c2\u6570\u9519\u8bef"

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/16 v3, 0xe

    move v4, v3

    .line 472
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 446
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 448
    const-string v5, "QosCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u53d1\u8d77 QOS \u52a0\u901f---\u5904\u7406\u540e\u7684url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 451
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Content-Type"

    const-string v6, "application/json"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v2, "pParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "post_content"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 464
    :try_start_0
    const-string v5, "POST"

    iget-object v6, p0, Lcom/netease/pharos/qos/QosCore;->qos_dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p2, v2, v5, v1, v6}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 471
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u53d1\u8d77 QOS \u52a0\u901f---\u7ed3\u679c="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    move v4, v3

    .line 472
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 466
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u53d1\u8d77 QOS \u52a0\u901f [qos_post] IOException="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public start(Ljava/lang/String;)I
    .locals 13
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 690
    const/16 v6, 0xb

    .line 692
    .local v6, "result":I
    const-string v9, "QosCore"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u83b7\u53d6\u624b\u673a\u53f7\u7801 url="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 695
    const-string v9, "QosCore"

    const-string v10, "\u83b7\u53d6\u624b\u673a\u53f7\u7801 \u53c2\u6570\u9519\u8bef"

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 742
    .end local v6    # "result":I
    .local v7, "result":I
    :goto_0
    return v7

    .line 699
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9}, Lcom/netease/pharos/qos/QosCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 700
    const-string v9, "QosCore"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u83b7\u53d6\u624b\u673a\u53f7\u7801  \u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    if-eqz v6, :cond_3

    .line 703
    invoke-static {p1}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 706
    const-string v9, "QosCore"

    const-string v10, "\u83b7\u53d6\u624b\u673a\u53f7\u7801  \u666e\u901a\u8bf7\u6c42\u7ed3\u679c domain\u4e3a\u7a7a"

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/16 v6, 0xe

    move v7, v6

    .line 708
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0

    .line 711
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :cond_1
    const-string v9, "QosCore"

    const-string v10, "\u83b7\u53d6\u624b\u673a\u53f7\u7801   \u8d70Httpdns"

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 713
    .local v2, "mDomains":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v9

    const-string v10, "Pharos_qos_phone"

    invoke-virtual {v9, v10, v2}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 715
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v9

    const-string v10, "Pharos_qos_phone"

    invoke-virtual {v9, v10}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v8

    .line 717
    .local v8, "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v8, :cond_5

    .line 718
    const-string v9, "QosCore"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u83b7\u53d6\u624b\u673a\u53f7\u7801 httpdns\u7ed3\u679c="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v8}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->getHttpdnsUrlUnitList()Ljava/util/ArrayList;

    move-result-object v1

    .line 721
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v2    # "mDomains":[Ljava/lang/String;
    .end local v8    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_3
    :goto_1
    move v7, v6

    .line 742
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0

    .line 721
    .end local v7    # "result":I
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .restart local v2    # "mDomains":[Ljava/lang/String;
    .restart local v6    # "result":I
    .restart local v8    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 722
    .local v5, "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v4, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 723
    .local v4, "pIp":Ljava/lang/String;
    iget-object v3, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 725
    .local v3, "pHost":Ljava/lang/String;
    const-string v10, "QosCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u83b7\u53d6\u624b\u673a\u53f7\u7801 \u539furl="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v10, "/"

    invoke-static {p1, v4, v10}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 727
    const-string v10, "QosCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u83b7\u53d6\u624b\u673a\u53f7\u7801 \u65b0url="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0, p1, v3}, Lcom/netease/pharos/qos/QosCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 730
    const-string v10, "QosCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u83b7\u53d6\u624b\u673a\u53f7\u7801 Httpdns \uff0c\u8fd4\u56de\u7801="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", ip="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    if-nez v6, :cond_2

    goto :goto_1

    .line 738
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v3    # "pHost":Ljava/lang/String;
    .end local v4    # "pIp":Ljava/lang/String;
    .end local v5    # "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :cond_5
    const-string v9, "QosCore"

    const-string v10, "\u83b7\u53d6\u624b\u673a\u53f7\u7801 httpdns\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v9, v10}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 747
    const-string v3, "\u83b7\u53d6\u624b\u673a\u53f7\u7801"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 748
    const/16 v2, 0xb

    .line 750
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 752
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 753
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 759
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/pharos/qos/QosCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 764
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868---\u7ed3\u679c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 765
    return v2

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
