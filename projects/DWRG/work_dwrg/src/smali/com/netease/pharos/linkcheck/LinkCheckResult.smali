.class public Lcom/netease/pharos/linkcheck/LinkCheckResult;
.super Ljava/lang/Object;
.source "LinkCheckResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkCheckResult"

.field private static sLinkCheckResult:Lcom/netease/pharos/linkcheck/LinkCheckResult;


# instance fields
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

.field private mIpaddr:Ljava/lang/String;

.field private mLinktestId:Ljava/lang/String;

.field private mNapIcmpDest:Ljava/lang/String;

.field private mNapIcmpLost:I

.field private mNapIcmpRtt:D

.field private mNapIcmpStddev:D

.field private mNetid:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mRapIcmpDest:Ljava/lang/String;

.field private mRapIcmpLost:I

.field private mRapIcmpRtt:D

.field private mRapIcmpStddev:D

.field private mRapMtr:Ljava/lang/String;

.field private mRapQosExpire:Ljava/lang/String;

.field private mRapQosStatus:Ljava/lang/String;

.field private mRapTransferDest:Ljava/lang/String;

.field private mRapTransferFail:D

.field private mRapTransferRtt:J

.field private mRapTransferSpeed:J

.field private mRapTransferStddev:D

.field private mRapUdpDest:Ljava/lang/String;

.field private mRapUdpLost:D

.field private mRapUdpRtt:J

.field private mRapUdpStddev:D

.field private mSapTransferDest:Ljava/lang/String;

.field private mSapTransferFail:D

.field private mSapTransferRtt:J

.field private mSapTransferSpeed:J

.field private mSapTransferStddev:D

.field private mSapUdpDest:Ljava/lang/String;

.field private mSapUdpLost:D

.field private mSapUdpRtt:J

.field private mSapUdpStddev:D

.field private mTestlog:I

.field private mType:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/LinkCheckResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mProject:Ljava/lang/String;

    .line 46
    iput-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mUdid:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNetid:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mLinktestId:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpaddr:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mTestlog:I

    .line 52
    iput-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mType:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpDest:Ljava/lang/String;

    .line 55
    iput v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    .line 56
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpRtt:D

    .line 57
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpStddev:D

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpDest:Ljava/lang/String;

    .line 61
    iput v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    .line 62
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpRtt:D

    .line 63
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpStddev:D

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferDest:Ljava/lang/String;

    .line 66
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    .line 67
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferRtt:J

    .line 68
    iput-wide v7, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferSpeed:J

    .line 69
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferStddev:D

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpDest:Ljava/lang/String;

    .line 72
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    .line 73
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpRtt:J

    .line 74
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpStddev:D

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferDest:Ljava/lang/String;

    .line 77
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    .line 78
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferRtt:J

    .line 79
    iput-wide v7, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferSpeed:J

    .line 80
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferStddev:D

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpDest:Ljava/lang/String;

    .line 83
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    .line 84
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpRtt:J

    .line 85
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpStddev:D

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    .line 88
    iput-object v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapMtr:Ljava/lang/String;

    .line 90
    const-string v0, "-11"

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosStatus:Ljava/lang/String;

    .line 91
    const-string v0, "0"

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosExpire:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mProject:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmUdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mUdid:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmNetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNetid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/linkcheck/LinkCheckResult;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/LinkCheckResult;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/netease/pharos/linkcheck/LinkCheckResult;

    invoke-direct {v0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;-><init>()V

    sput-object v0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/LinkCheckResult;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->sLinkCheckResult:Lcom/netease/pharos/linkcheck/LinkCheckResult;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 696
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 491
    iput-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mLinktestId:Ljava/lang/String;

    .line 492
    iput-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpaddr:Ljava/lang/String;

    .line 495
    iput-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mType:Ljava/lang/String;

    .line 497
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpDest:Ljava/lang/String;

    .line 498
    iput v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    .line 499
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpRtt:D

    .line 500
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpStddev:D

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpDest:Ljava/lang/String;

    .line 503
    iput v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    .line 504
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpRtt:D

    .line 505
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpStddev:D

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferDest:Ljava/lang/String;

    .line 508
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    .line 509
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferRtt:J

    .line 510
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferSpeed:J

    .line 511
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferStddev:D

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpDest:Ljava/lang/String;

    .line 514
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    .line 515
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpRtt:J

    .line 516
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpStddev:D

    .line 518
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferDest:Ljava/lang/String;

    .line 519
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    .line 520
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferRtt:J

    .line 521
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferSpeed:J

    .line 522
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferStddev:D

    .line 524
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpDest:Ljava/lang/String;

    .line 525
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    .line 526
    iput-wide v3, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpRtt:J

    .line 527
    iput-wide v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpStddev:D

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    .line 530
    iput-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapMtr:Ljava/lang/String;

    .line 532
    const-string v0, "-11"

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosStatus:Ljava/lang/String;

    .line 533
    const-string v0, "0"

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosExpire:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public getLinkCheckResultInfo()Ljava/lang/String;
    .locals 8

    .prologue
    .line 598
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 600
    .local v4, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "project"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mProject:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    const-string v5, "udid"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mUdid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 602
    const-string v5, "netid"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNetid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 603
    const-string v5, "linktest_id"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmLinktestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 604
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getIpaddr()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "ipAddr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 607
    const-string v1, ""

    .line 610
    :cond_0
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "region":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    const-string v3, ""

    .line 616
    :cond_1
    const-string v5, "ipaddr"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    const-string v5, "region"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 619
    const-string v5, "testlog"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmTestlog()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 620
    const-string v5, "cell_id"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/pharos/util/Util;->getCellId(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 621
    const-string v5, "ip_local"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/pharos/util/Util;->getLocalIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    const-string v5, "type"

    const-string v6, "probe"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    const-string v5, "os_name"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 625
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpDest:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 626
    const-string v5, "nap_icmp_dest"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpDest:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v5, "nap_icmp_lost"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmNapIcmpLost()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 628
    const-string v5, "nap_icmp_rtt"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmNapIcmpRtt()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 629
    const-string v5, "nap_icmp_stddev"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmNapIcmpStddev()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 632
    :cond_2
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpDest:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 633
    const-string v5, "rap_imcp_dest"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpDest:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    const-string v5, "rap_icmp_lost"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapIcmpLost()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 635
    const-string v5, "rap_icmp_rtt"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapIcmpRtt()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 636
    const-string v5, "rap_icmp_stddev"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapIcmpStddev()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 639
    :cond_3
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferDest:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 640
    const-string v5, "rap_transfer_dest"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferDest:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    const-string v5, "rap_transfer_fail"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapTransferFail()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 642
    const-string v5, "rap_transfer_rtt"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapTransferRtt()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 643
    const-string v5, "rap_transfer_speed"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapTransferSpeed()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 644
    const-string v5, "rap_transfer_stddev"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapTransferStddev()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 647
    :cond_4
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpDest:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 648
    const-string v5, "rap_udp_dest"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpDest:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 649
    const-string v5, "rap_udp_lost"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapUdpLost()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 650
    const-string v5, "rap_udp_rtt"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapUdpRtt()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 651
    const-string v5, "rap_udp_stddev"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmRapUdpStddev()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 654
    :cond_5
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferDest:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 655
    const-string v5, "sap_transfer_dest"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferDest:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v5, "sap_transfer_fail"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapTransferFail()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 657
    const-string v5, "sap_transfer_rtt"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapTransferRtt()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 658
    const-string v5, "sap_transfer_speed"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapTransferSpeed()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 659
    const-string v5, "sap_transfer_stddev"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapTransferStddev()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 662
    :cond_6
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpDest:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 663
    const-string v5, "sap_udp_dest"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpDest:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string v5, "sap_udp_lost"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapUdpLost()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 665
    const-string v5, "sap_udp_rtt"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapUdpRtt()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 666
    const-string v5, "sap_udp_stddev"

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmSapUdpStddev()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 669
    :cond_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 671
    .local v2, "pIp":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_9

    .line 679
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 680
    const-string v5, "resolve_host"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    :cond_8
    const-string v5, "rap_qos_status"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosStatus:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string v5, "rap_qos_expire"

    iget-object v6, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosExpire:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v0    # "i":I
    .end local v1    # "ipAddr":Ljava/lang/String;
    .end local v2    # "pIp":Ljava/lang/StringBuffer;
    .end local v3    # "region":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 672
    .restart local v0    # "i":I
    .restart local v1    # "ipAddr":Ljava/lang/String;
    .restart local v2    # "pIp":Ljava/lang/StringBuffer;
    .restart local v3    # "region":Ljava/lang/String;
    :cond_9
    :try_start_1
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    iget-object v5, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_a

    .line 675
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 671
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    .end local v0    # "i":I
    .end local v1    # "ipAddr":Ljava/lang/String;
    .end local v2    # "pIp":Ljava/lang/StringBuffer;
    .end local v3    # "region":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getmIpaddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getmLinktestId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mLinktestId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mUdid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mLinktestId:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mLinktestId:Ljava/lang/String;

    return-object v0
.end method

.method public getmNapIcmpDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmNapIcmpLost()I
    .locals 2

    .prologue
    .line 176
    const/4 v0, -0x1

    iget v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    if-ne v0, v1, :cond_0

    .line 177
    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    .line 179
    :cond_0
    iget v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 180
    iget v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    .line 183
    :cond_1
    iget v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    return v0
.end method

.method public getmNapIcmpRtt()D
    .locals 4

    .prologue
    .line 192
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpRtt:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 193
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpRtt:D

    .line 196
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpRtt:D

    return-wide v0
.end method

.method public getmNapIcmpStddev()D
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpStddev:D

    return-wide v0
.end method

.method public getmNetid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNetid:Ljava/lang/String;

    return-object v0
.end method

.method public getmProject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapIcmpDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapIcmpLost()I
    .locals 2

    .prologue
    .line 206
    const/4 v0, -0x1

    iget v1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    if-ne v0, v1, :cond_0

    .line 207
    const/16 v0, 0x64

    iput v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    .line 209
    :cond_0
    iget v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 210
    iget v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    mul-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    .line 213
    :cond_1
    iget v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    return v0
.end method

.method public getmRapIcmpRtt()D
    .locals 4

    .prologue
    .line 221
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpRtt:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 222
    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpRtt:D

    .line 224
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpRtt:D

    return-wide v0
.end method

.method public getmRapIcmpStddev()D
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpStddev:D

    return-wide v0
.end method

.method public getmRapMtr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapQosExpire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosExpire:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapQosStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapTransferDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapTransferFail()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 233
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 234
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    .line 236
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 237
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    .line 240
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    return-wide v0
.end method

.method public getmRapTransferRtt()J
    .locals 4

    .prologue
    .line 248
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferRtt:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 249
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferRtt:J

    .line 251
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferRtt:J

    return-wide v0
.end method

.method public getmRapTransferSpeed()J
    .locals 4

    .prologue
    .line 259
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferSpeed:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 260
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferSpeed:J

    .line 262
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferSpeed:J

    return-wide v0
.end method

.method public getmRapTransferStddev()D
    .locals 2

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferStddev:D

    return-wide v0
.end method

.method public getmRapUdpDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmRapUdpLost()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 271
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 272
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    .line 274
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 275
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    .line 278
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    return-wide v0
.end method

.method public getmRapUdpRtt()J
    .locals 4

    .prologue
    .line 286
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpRtt:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpRtt:J

    .line 289
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpRtt:J

    return-wide v0
.end method

.method public getmRapUdpStddev()D
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpStddev:D

    return-wide v0
.end method

.method public getmResolveHost()Ljava/util/ArrayList;
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
    .line 369
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmSapTransferDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmSapTransferFail()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 297
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 298
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    .line 300
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 301
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    .line 304
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    return-wide v0
.end method

.method public getmSapTransferRtt()J
    .locals 4

    .prologue
    .line 313
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferRtt:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 314
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferRtt:J

    .line 317
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferRtt:J

    return-wide v0
.end method

.method public getmSapTransferSpeed()J
    .locals 4

    .prologue
    .line 326
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferSpeed:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 327
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferSpeed:J

    .line 330
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferSpeed:J

    return-wide v0
.end method

.method public getmSapTransferStddev()D
    .locals 2

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferStddev:D

    return-wide v0
.end method

.method public getmSapUdpDest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpDest:Ljava/lang/String;

    return-object v0
.end method

.method public getmSapUdpLost()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 339
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 340
    iput-wide v4, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    .line 342
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 343
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    .line 346
    :cond_1
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    return-wide v0
.end method

.method public getmSapUdpRtt()J
    .locals 4

    .prologue
    .line 356
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpRtt:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 357
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpRtt:J

    .line 359
    :cond_0
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpRtt:J

    return-wide v0
.end method

.method public getmSapUdpStddev()D
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpStddev:D

    return-wide v0
.end method

.method public getmTestlog()I
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mTestlog:I

    .line 159
    :goto_0
    iget v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mTestlog:I

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mTestlog:I

    goto :goto_0
.end method

.method public getmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getmUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public setmIpaddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIpaddr"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpaddr:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setmLinktestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLinktestId"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mLinktestId:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setmNapIcmpDest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNapIcmpDest"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpDest:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setmNapIcmpLost(I)V
    .locals 0
    .param p1, "mNapIcmpLost"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    .line 189
    return-void
.end method

.method public setmNapIcmpRtt(D)V
    .locals 0
    .param p1, "mNapIcmpRtt"    # D

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpRtt:D

    .line 201
    return-void
.end method

.method public setmNapIcmpStddev(D)V
    .locals 0
    .param p1, "mNapIcmpStddev"    # D

    .prologue
    .line 443
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpStddev:D

    .line 444
    return-void
.end method

.method public setmNetid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetid"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNetid:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setmProject(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProject"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mProject:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setmRapIcmpDest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRapIcmpDest"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpDest:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setmRapIcmpLost(I)V
    .locals 0
    .param p1, "mRapIcmpLost"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    .line 218
    return-void
.end method

.method public setmRapIcmpRtt(D)V
    .locals 0
    .param p1, "mRapIcmpRtt"    # D

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpRtt:D

    .line 229
    return-void
.end method

.method public setmRapIcmpStddev(D)V
    .locals 0
    .param p1, "mRapIcmpStddev"    # D

    .prologue
    .line 451
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpStddev:D

    .line 452
    return-void
.end method

.method public setmRapMtr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRapMtr"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapMtr:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setmRapQosExpire(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRapQosExpire"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosExpire:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setmRapQosStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRapQosStatus"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosStatus:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setmRapTransferDest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRapTransferDest"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferDest:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setmRapTransferFail(D)V
    .locals 0
    .param p1, "mRapTransferFail"    # D

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    .line 245
    return-void
.end method

.method public setmRapTransferRtt(J)V
    .locals 0
    .param p1, "mRapTransferRtt"    # J

    .prologue
    .line 255
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferRtt:J

    .line 256
    return-void
.end method

.method public setmRapTransferSpeed(J)V
    .locals 0
    .param p1, "mRapTransferSpeed"    # J

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferSpeed:J

    .line 267
    return-void
.end method

.method public setmRapTransferStddev(D)V
    .locals 0
    .param p1, "mRapTransferStddev"    # D

    .prologue
    .line 459
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferStddev:D

    .line 460
    return-void
.end method

.method public setmRapUdpDest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRapUdpDest"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpDest:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setmRapUdpLost(D)V
    .locals 0
    .param p1, "mRapUdpLost"    # D

    .prologue
    .line 282
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    .line 283
    return-void
.end method

.method public setmRapUdpRtt(J)V
    .locals 0
    .param p1, "mRapudprtt"    # J

    .prologue
    .line 293
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpRtt:J

    .line 294
    return-void
.end method

.method public setmRapUdpStddev(D)V
    .locals 0
    .param p1, "mRapUdpStddev"    # D

    .prologue
    .line 467
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpStddev:D

    .line 468
    return-void
.end method

.method public setmResolveHost(Ljava/util/ArrayList;)V
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
    .line 374
    .local p1, "ipList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    .line 375
    return-void
.end method

.method public setmSapTransferDest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSapTransferDest"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferDest:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setmSapTransferFail(D)V
    .locals 0
    .param p1, "mSapTransferFail"    # D

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    .line 309
    return-void
.end method

.method public setmSapTransferRtt(J)V
    .locals 0
    .param p1, "mSapTransferRtt"    # J

    .prologue
    .line 321
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferRtt:J

    .line 322
    return-void
.end method

.method public setmSapTransferSpeed(J)V
    .locals 0
    .param p1, "mSapTransferSpeed"    # J

    .prologue
    .line 334
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferSpeed:J

    .line 335
    return-void
.end method

.method public setmSapTransferStddev(D)V
    .locals 0
    .param p1, "mSapTransferStddev"    # D

    .prologue
    .line 475
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferStddev:D

    .line 476
    return-void
.end method

.method public setmSapUdpDest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSapUdpDest"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpDest:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setmSapUdpLost(D)V
    .locals 0
    .param p1, "mSapUdpLost"    # D

    .prologue
    .line 351
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    .line 352
    return-void
.end method

.method public setmSapUdpRtt(J)V
    .locals 0
    .param p1, "mSapUdpRtt"    # J

    .prologue
    .line 364
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpRtt:J

    .line 365
    return-void
.end method

.method public setmSapUdpStddev(D)V
    .locals 0
    .param p1, "mSapUdpStddev"    # D

    .prologue
    .line 483
    iput-wide p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpStddev:D

    .line 484
    return-void
.end method

.method public setmTestlog(I)V
    .locals 0
    .param p1, "mTestlog"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mTestlog:I

    .line 164
    return-void
.end method

.method public setmType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mType"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mType:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setmUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUdid"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mUdid:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 540
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    const-string v1, "mProject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mProject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const-string v1, "mUdid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mUdid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    const-string v1, "mNetid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNetid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const-string v1, "mLinktestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmLinktestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    const-string v1, "mIpaddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpaddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    const-string v1, "mTestlog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/pharos/linkcheck/LinkCheckResult;->getmTestlog()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const-string v1, "mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    const-string v1, "mNapIcmpDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    const-string v1, "mNapIcmpLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpLost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    const-string v1, "mNapIcmpRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpRtt:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v1, "mNapIcmpStddev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mNapIcmpStddev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    const-string v1, "mRapIcmpDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v1, "mRapIcmpLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpLost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string v1, "mRapIcmpRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpRtt:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    const-string v1, "mRapIcmpStddev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapIcmpStddev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    const-string v1, "mRapTransferDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    const-string v1, "mRapTransferFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferFail:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    const-string v1, "mRapTransferRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferRtt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    const-string v1, "mRapTransferSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferSpeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 568
    const-string v1, "mRapTransferStddev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapTransferStddev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    const-string v1, "mRapUdpDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    const-string v1, "mRapUdpLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpLost:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    const-string v1, "mRapUdpRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpRtt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    const-string v1, "mRapUdpStddev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapUdpStddev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    const-string v1, "mSapTransferDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    const-string v1, "mSapTransferFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferFail:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    const-string v1, "mSapTransferRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferRtt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    const-string v1, "mSapTransferSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferSpeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    const-string v1, "mSapTransferStddev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapTransferStddev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    const-string v1, "mSapUdpDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpDest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    const-string v1, "mSapUdpLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpLost:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    const-string v1, "mSapUdpRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpRtt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    const-string v1, "mSapUdpStddev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mSapUdpStddev:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    const-string v1, "mIpList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    const-string v1, "mRapMtr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapMtr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    const-string v1, "mRapQosStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    const-string v1, "mRapQosExpire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/linkcheck/LinkCheckResult;->mRapQosExpire:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
