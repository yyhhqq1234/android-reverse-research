.class public Lcom/netease/pharos/qos/CheckHighSpeedResult;
.super Ljava/lang/Object;
.source "CheckHighSpeedResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckHighSpeedResult"

.field private static sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;


# instance fields
.field private mHighSpeedUdpResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mIp:Ljava/lang/String;

.field private mIpAddr:Ljava/lang/String;

.field private mIpPayLoad:Ljava/lang/String;

.field private mIpSig:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;

.field private mNetid:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mServer:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mProject:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mUdid:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mNetid:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mRegion:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mMethod:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIpAddr:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIpPayLoad:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIpSig:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mServer:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;

    invoke-direct {v0}, Lcom/netease/pharos/qos/CheckHighSpeedResult;-><init>()V

    sput-object v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    .line 53
    :cond_0
    sget-object v0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->sCheckHighSpeedResult:Lcom/netease/pharos/qos/CheckHighSpeedResult;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method


# virtual methods
.method public getResult()Lorg/json/JSONObject;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 66
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v6, "result":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v0, "checkHighSpeedResult":Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "project"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getProject()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v10, "udid"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v10, "netid"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getNetid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v10, "region"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v10, "method"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v10, "ipaddr"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getIpaddr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v10, "ip_payload"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getIpPayload()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v10, "ip_sig"

    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getIpSig()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 80
    .local v9, "value":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 82
    iget-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 103
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 105
    .local v2, "data":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 106
    const-string v10, ""

    iput-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 109
    :cond_1
    iget-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 110
    const-string v10, ""

    iput-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    .line 113
    :cond_2
    iget-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    iget-object v10, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    const-string v10, "server"

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2    # "data":Lorg/json/JSONArray;
    .end local v9    # "value":Lorg/json/JSONArray;
    :goto_1
    :try_start_1
    const-string v10, "server"

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_2
    return-object v6

    .line 82
    .restart local v9    # "value":Lorg/json/JSONArray;
    :cond_3
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/config/CheckResult;

    .line 84
    .local v1, "checkResult":Lcom/netease/pharos/config/CheckResult;
    invoke-virtual {v1}, Lcom/netease/pharos/config/CheckResult;->getmExtra()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "pExtra":Ljava/lang/String;
    const/4 v7, 0x0

    .line 87
    .local v7, "tExtra":Ljava/lang/String;
    const/4 v8, 0x0

    .line 88
    .local v8, "tPort":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 89
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "infos":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v11, v4

    if-le v11, v12, :cond_4

    .line 91
    const/4 v11, 0x0

    aget-object v7, v4, v11

    .line 92
    const/4 v11, 0x1

    aget-object v8, v4, v11

    .line 96
    .end local v4    # "infos":[Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 97
    .restart local v2    # "data":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 98
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "checkResult":Lcom/netease/pharos/config/CheckResult;
    .end local v2    # "data":Lorg/json/JSONArray;
    .end local v5    # "pExtra":Ljava/lang/String;
    .end local v7    # "tExtra":Ljava/lang/String;
    .end local v8    # "tPort":Ljava/lang/String;
    .end local v9    # "value":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "CheckHighSpeedResult"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CheckHighSpeedResult [getResult] Exception1="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 127
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v10, "CheckHighSpeedResult"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CheckHighSpeedResult [getResult] Exception2="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mIp:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mPort:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setHighSpeedUdpResult(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/config/CheckResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "highSpeedUdpResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/config/CheckResult;>;"
    iput-object p1, p0, Lcom/netease/pharos/qos/CheckHighSpeedResult;->mHighSpeedUdpResult:Ljava/util/ArrayList;

    .line 58
    return-void
.end method
