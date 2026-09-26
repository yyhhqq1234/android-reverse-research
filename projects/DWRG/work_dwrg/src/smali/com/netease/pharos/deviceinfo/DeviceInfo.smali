.class public Lcom/netease/pharos/deviceinfo/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static sDeviceInfo:Lcom/netease/pharos/deviceinfo/DeviceInfo;


# instance fields
.field private mAreazoneContinent:Ljava/lang/String;

.field private mAreazoneCountry:Ljava/lang/String;

.field private mGateway:Ljava/lang/String;

.field private mIpContinent:Ljava/lang/String;

.field private mIpCountry:Ljava/lang/String;

.field private mIpPayload:Ljava/lang/String;

.field private mIpSig:Ljava/lang/String;

.field private mIpaddr:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;

.field private mNameserver:Ljava/lang/String;

.field private mNetid:Ljava/lang/String;

.field private mNetwork:Ljava/lang/String;

.field private mNetworkIsp:Ljava/lang/String;

.field private mNetworkIspName:Ljava/lang/String;

.field private mNetworkSignal:Ljava/lang/String;

.field private mOsName:Ljava/lang/String;

.field private mOsVer:Ljava/lang/String;

.field private mProject:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mTimezone:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;

.field private mUdpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mipProvince:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceinfo/DeviceInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpaddr:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpContinent:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpCountry:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mipProvince:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpPayload:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpSig:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNameserver:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetwork:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mGateway:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mTimezone:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsName:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsVer:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mLocation:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mMethod:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmUdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getmNetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceinfo/DeviceInfo;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;

    invoke-direct {v0}, Lcom/netease/pharos/deviceinfo/DeviceInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceinfo/DeviceInfo;

    .line 46
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->sDeviceInfo:Lcom/netease/pharos/deviceinfo/DeviceInfo;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method


# virtual methods
.method public getAreazoneContinent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    return-object v0
.end method

.method public getAreazoneCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo(Z)Ljava/lang/String;
    .locals 17
    .param p1, "isAll"    # Z

    .prologue
    .line 295
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 298
    .local v7, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v14, "project"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v14, "udid"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v14, "netid"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v13, "ipaddr"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpaddr:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v13, "ip_continent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpContinent:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string v13, "ip_country"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpCountry:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v13, "ip_province"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mipProvince:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    if-eqz p1, :cond_0

    .line 309
    const-string v13, "ip_payload"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpPayload:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v13, "ip_sig"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpSig:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    :cond_0
    const-string v13, "nameserver"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNameserver:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v13, "network"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetwork:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v13, "network_isp"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v13, "network_signal"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v13, "network_isp_name"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v13, "gateway"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mGateway:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v13, "timezone"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mTimezone:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v13, "areazone_continent"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v13, "areazone_country"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v13, "os_name"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsName:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v13, "os_ver"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsVer:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v13, "location"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 338
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 339
    .local v12, "udpPing":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 340
    .local v11, "udpArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 342
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 343
    .local v10, "tBestRegion":Ljava/lang/String;
    const-wide v8, 0x40b3880000000000L    # 5000.0

    .line 344
    .local v8, "rtt":D
    const-string v13, "DeviceInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mUdpMap="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 378
    const-string v13, "udp"

    invoke-virtual {v7, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "rtt":D
    .end local v10    # "tBestRegion":Ljava/lang/String;
    .end local v11    # "udpArray":Lorg/json/JSONArray;
    .end local v12    # "udpPing":Lorg/json/JSONObject;
    :cond_1
    const-string v13, "region"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v13, "method"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v13, "type"

    const-string v14, "decision"

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 387
    const-string v13, "testlog"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 392
    :goto_4
    const-string v13, "cell_id"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/netease/pharos/util/Util;->getCellId(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    const-string v13, "ip_local"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/netease/pharos/util/Util;->getLocalIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 298
    :cond_2
    :try_start_1
    const-string v13, "00000"

    goto/16 :goto_0

    .line 299
    :cond_3
    const-string v13, "00000"

    goto/16 :goto_1

    .line 300
    :cond_4
    const-string v13, "00000"

    goto/16 :goto_2

    .line 345
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "rtt":D
    .restart local v10    # "tBestRegion":Ljava/lang/String;
    .restart local v11    # "udpArray":Lorg/json/JSONArray;
    .restart local v12    # "udpPing":Lorg/json/JSONObject;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 346
    .local v4, "pRegion":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONArray;

    .end local v11    # "udpArray":Lorg/json/JSONArray;
    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 347
    .restart local v11    # "udpArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 349
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_7

    .line 370
    const-wide v15, 0x40b3880000000000L    # 5000.0

    cmpl-double v13, v15, v8

    if-eqz v13, :cond_6

    .line 371
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 372
    const-string v13, "udpping"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mMethod:Ljava/lang/String;

    .line 375
    :cond_6
    invoke-virtual {v12, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 398
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pRegion":Ljava/lang/String;
    .end local v8    # "rtt":D
    .end local v10    # "tBestRegion":Ljava/lang/String;
    .end local v11    # "udpArray":Lorg/json/JSONArray;
    .end local v12    # "udpPing":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 400
    const-string v13, "DeviceInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "DeviceInfo JSONException = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 350
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "pRegion":Ljava/lang/String;
    .restart local v8    # "rtt":D
    .restart local v10    # "tBestRegion":Ljava/lang/String;
    .restart local v11    # "udpArray":Lorg/json/JSONArray;
    .restart local v12    # "udpPing":Lorg/json/JSONObject;
    :cond_7
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 352
    const/4 v13, 0x1

    if-ne v13, v2, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    const/4 v15, 0x1

    if-le v13, v15, :cond_8

    .line 355
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 356
    .local v5, "pRtt":D
    const-string v13, "DeviceInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "pRtt="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", rtt="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    cmpl-double v13, v15, v5

    if-eqz v13, :cond_8

    cmpg-double v13, v5, v8

    if-gez v13, :cond_8

    .line 358
    move-wide v8, v5

    .line 360
    move-object v10, v4

    .line 361
    const-string v13, "DeviceInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "tBestRegion="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pRegion="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 349
    .end local v5    # "pRtt":D
    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 363
    :catch_1
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v13, "DeviceInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 389
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pRegion":Ljava/lang/String;
    .end local v8    # "rtt":D
    .end local v10    # "tBestRegion":Ljava/lang/String;
    .end local v11    # "udpArray":Lorg/json/JSONArray;
    .end local v12    # "udpPing":Lorg/json/JSONObject;
    :cond_9
    const-string v13, "testlog"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIpContinent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpContinent:Ljava/lang/String;

    return-object v0
.end method

.method public getIpCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getIpPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getIpSig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpSig:Ljava/lang/String;

    return-object v0
.end method

.method public getIpaddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNameserver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNameserver:Ljava/lang/String;

    return-object v0
.end method

.method public getNetid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkIsp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkIspName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsVer:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    return-object v0
.end method

.method public getTestDeviceInfo(Z)Lorg/json/JSONObject;
    .locals 11
    .param p1, "isAll"    # Z

    .prologue
    .line 413
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 416
    .local v5, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "project"

    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string v9, "udid"

    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v9, "netid"

    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v8, "ipaddr"

    const-string v9, "218.107.55.253"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 422
    const-string v8, "ip_continent"

    const-string v9, "asia"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    const-string v8, "ip_country"

    const-string v9, "china"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    const-string v8, "ip_province"

    const-string v9, "guangdong"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    if-eqz p1, :cond_0

    .line 428
    const-string v8, "ip_payload"

    const-string v9, "eyJpcCI6ICIyMTguMTA3LjU1LjI1MyIsICJzdWJkaXZpc2lvbnMiOiB7Imlzb19jb2RlIjogIjQ0IiwgIm5hbWVzIjogeyJlbiI6ICJHdWFuZ2RvbmcifX0sICJjb250aW5lbnQiOiB7ImNvZGUiOiAiQVMiLCAibmFtZXMiOiB7ImVuIjogIkFzaWEifX0sICJjb3VudHJ5IjogeyJpc29fY29kZSI6ICJDTiIsICJuYW1lcyI6IHsiZW4iOiAiQ2hpbmEifX19"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v8, "ip_sig"

    const-string v9, "ipzn228de5ca25215681eb0c04329d751dce"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    :cond_0
    const-string v8, "nameserver"

    const-string v9, "218.107.55.177"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    const-string v8, "network"

    const-string v9, "wifi"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string v8, "network_isp"

    const-string v9, "00000"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v8, "network_signal"

    const-string v9, "4"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v8, "network_isp_name"

    const-string v9, "unknow"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v8, "gateway"

    const-string v9, "172.20.153.6"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v8, "timezone"

    const-string v9, "+8"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v8, "areazone_continent"

    const-string v9, "asia"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    const-string v8, "areazone_country"

    const-string v9, "shanghai"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v8, "os_name"

    const-string v9, "android"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v8, "os_ver"

    const-string v9, "6.0"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v8, "location"

    const-string v9, "oversea"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v3, "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "7"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v8, "0.1"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    const-string v9, "cn"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    const-string v9, "au"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    const-string v9, "jp"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    const-string v9, "us"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    const-string v9, "eu"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    const-string v9, "sg"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 468
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v7, "udpPing":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 470
    .local v6, "udpArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 472
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 483
    const-string v8, "udp"

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "udpArray":Lorg/json/JSONArray;
    .end local v7    # "udpPing":Lorg/json/JSONObject;
    :cond_1
    const-string v8, "region"

    const-string v9, "cn"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    const-string v8, "method"

    const-string v9, "udpping"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v8, "type"

    const-string v9, "decision"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v8, "cell_id"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/netease/pharos/util/Util;->getCellId(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 493
    const-string v8, "ip_local"

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/pharos/PharosProxy;->getmContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/netease/pharos/util/Util;->getLocalIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/pharos/PharosProxy;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 496
    const-string v8, "testlog"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 506
    .end local v3    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    return-object v5

    .line 416
    :cond_2
    const-string v8, "00000"

    goto/16 :goto_0

    .line 417
    :cond_3
    const-string v8, "00000"

    goto/16 :goto_1

    .line 418
    :cond_4
    const-string v8, "00000"

    goto/16 :goto_2

    .line 472
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "udpArray":Lorg/json/JSONArray;
    .restart local v7    # "udpPing":Lorg/json/JSONObject;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 473
    .local v4, "pRegion":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONArray;

    .end local v6    # "udpArray":Lorg/json/JSONArray;
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 474
    .restart local v6    # "udpArray":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 476
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 480
    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 501
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pRegion":Ljava/lang/String;
    .end local v6    # "udpArray":Lorg/json/JSONArray;
    .end local v7    # "udpPing":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 503
    const-string v8, "DeviceInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DeviceInfo JSONException = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 476
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "pList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "pRegion":Ljava/lang/String;
    .restart local v6    # "udpArray":Lorg/json/JSONArray;
    .restart local v7    # "udpPing":Lorg/json/JSONObject;
    :cond_6
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    .local v1, "info":Ljava/lang/String;
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 498
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pRegion":Ljava/lang/String;
    .end local v6    # "udpArray":Lorg/json/JSONArray;
    .end local v7    # "udpPing":Lorg/json/JSONObject;
    :cond_7
    const-string v8, "testlog"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    return-object v0
.end method

.method public getipProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mipProvince:Ljava/lang/String;

    return-object v0
.end method

.method public getmLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getmMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getmRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getmUdpMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    return-object v0
.end method

.method public setAreazoneContinent(Ljava/lang/String;)V
    .locals 3
    .param p1, "mAreazoneContinent"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneContinent:Ljava/lang/String;

    .line 192
    :cond_0
    return-void
.end method

.method public setAreazoneCountry(Ljava/lang/String;)V
    .locals 3
    .param p1, "mAreazoneCountry"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mAreazoneCountry:Ljava/lang/String;

    .line 202
    :cond_0
    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0
    .param p1, "mGateway"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mGateway:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setIpContinent(Ljava/lang/String;)V
    .locals 3
    .param p1, "mIpContinent"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpContinent:Ljava/lang/String;

    .line 130
    :cond_0
    return-void
.end method

.method public setIpCountry(Ljava/lang/String;)V
    .locals 3
    .param p1, "mIpCountry"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpCountry:Ljava/lang/String;

    .line 140
    :cond_0
    return-void
.end method

.method public setIpPayload(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIpPayload"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpPayload:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setIpSig(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIpSig"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpSig:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setIpaddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIpaddr"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mIpaddr:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setNameserver(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNameserver"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNameserver:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setNetid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetid"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetid:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "mNetwork"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetwork:Ljava/lang/String;

    .line 212
    :cond_0
    return-void
.end method

.method public setNetworkIsp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetworkIsp"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIsp:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setNetworkIspName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetworkIspName"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkIspName:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setNetworkSignal(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNetworkSignal"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mNetworkSignal:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOsName"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsName:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setOsVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "mOsVer"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mOsVer:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProject"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mProject:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTestData()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "mobile1"

    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setNetwork(Ljava/lang/String;)V

    .line 517
    const-string v0, "555"

    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setNetworkIsp(Ljava/lang/String;)V

    .line 524
    const-string v0, "1asia1"

    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setIpContinent(Ljava/lang/String;)V

    .line 525
    const-string v0, "1china1"

    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setIpCountry(Ljava/lang/String;)V

    .line 528
    const-string v0, "australia1"

    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setAreazoneContinent(Ljava/lang/String;)V

    .line 529
    const-string v0, "hongkong1"

    invoke-virtual {p0, v0}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setAreazoneCountry(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTimezone"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mTimezone:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUdid"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdid:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setipProvince(Ljava/lang/String;)V
    .locals 3
    .param p1, "mipProvince"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mipProvince:Ljava/lang/String;

    .line 150
    :cond_0
    return-void
.end method

.method public setmLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocation"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mLocation:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setmMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMethod"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mMethod:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setmRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mRegion:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setmUdpMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "mUdpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/netease/pharos/deviceinfo/DeviceInfo;->mUdpMap:Ljava/util/Map;

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getDeviceInfo(Z)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
