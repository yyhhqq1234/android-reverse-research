.class public Lcom/netease/pharos/location/RecheckResult;
.super Ljava/lang/Object;
.source "RecheckResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/location/RecheckResult$RecheckResultUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecheckResult"

.field private static sRecheckResult:Lcom/netease/pharos/location/RecheckResult;


# instance fields
.field private volatile mCheckResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/location/RecheckResult;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/netease/pharos/location/RecheckResult;->sRecheckResult:Lcom/netease/pharos/location/RecheckResult;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/netease/pharos/location/RecheckResult;

    invoke-direct {v0}, Lcom/netease/pharos/location/RecheckResult;-><init>()V

    sput-object v0, Lcom/netease/pharos/location/RecheckResult;->sRecheckResult:Lcom/netease/pharos/location/RecheckResult;

    .line 32
    :cond_0
    sget-object v0, Lcom/netease/pharos/location/RecheckResult;->sRecheckResult:Lcom/netease/pharos/location/RecheckResult;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public chooseBest()Lcom/netease/pharos/deviceinfo/DeviceInfo;
    .locals 14

    .prologue
    .line 38
    const/4 v4, -0x1

    .line 39
    .local v4, "index":I
    const-string v10, "RecheckResult"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mCheckResultList \u5927\u5c0f="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-wide/16 v0, -0x1

    .line 42
    .local v0, "bestRtt":J
    const/4 v5, 0x0

    .line 44
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 46
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 68
    const-string v10, "RecheckResult"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "map\u4fe1\u606f="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmUdpMap()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-ltz v4, :cond_0

    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 71
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v10}, Lcom/netease/pharos/config/CheckResult;->getmRegion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v10

    const-string v11, "udpping"

    invoke-virtual {v10, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 75
    .end local v3    # "i":I
    :cond_0
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v10

    return-object v10

    .line 47
    .restart local v3    # "i":I
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v10}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v2

    .line 49
    .local v2, "count":I
    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v10}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v6

    .line 50
    .local v6, "lossCount":I
    sub-int v9, v2, v6

    .line 52
    .local v9, "successCount":I
    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v10}, Lcom/netease/pharos/config/CheckResult;->getMinTime()J

    move-result-wide v7

    .line 54
    .local v7, "rtt":J
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v10}, Lcom/netease/pharos/config/CheckResult;->getLoss()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v10, "RecheckResult"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "lossCount="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bestRtt="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", rtt="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v10, 0x4

    if-gt v6, v10, :cond_2

    .line 59
    cmp-long v10, v7, v0

    if-gez v10, :cond_2

    .line 60
    move-wide v0, v7

    .line 61
    move v4, v3

    .line 65
    :cond_2
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmUdpMap()Ljava/util/Map;

    move-result-object v11

    iget-object v10, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/netease/pharos/config/CheckResult;

    invoke-virtual {v10}, Lcom/netease/pharos/config/CheckResult;->getmRegion()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netease/pharos/location/RecheckResult;->mCheckResultList:Ljava/util/List;

    return-object v0
.end method
