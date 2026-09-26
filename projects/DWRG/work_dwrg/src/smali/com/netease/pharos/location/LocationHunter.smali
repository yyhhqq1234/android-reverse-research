.class public Lcom/netease/pharos/location/LocationHunter;
.super Ljava/lang/Object;
.source "LocationHunter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationHunter"


# instance fields
.field private mListener:Lcom/netease/pharos/link/LinkCheckListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/netease/pharos/location/LocationHunter$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/location/LocationHunter$1;-><init>(Lcom/netease/pharos/location/LocationHunter;)V

    iput-object v0, p0, Lcom/netease/pharos/location/LocationHunter;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    .line 25
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 215
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method


# virtual methods
.method public checkRegion(Lcom/netease/pharos/deviceinfo/DeviceInfo;)Lcom/netease/pharos/deviceinfo/DeviceInfo;
    .locals 26
    .param p1, "deviceInfo"    # Lcom/netease/pharos/deviceinfo/DeviceInfo;

    .prologue
    .line 139
    const-string v2, "LocationHunter"

    const-string v3, "\u68c0\u9a8c\u5730\u533a---\u5f00\u59cb"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-nez p1, :cond_1

    .line 142
    const-string v2, "LocationHunter"

    const-string v3, "\u68c0\u9a8c\u5730\u533a---\u53c2\u6570\u4e3anull"

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/16 v24, 0x0

    .line 207
    :cond_0
    :goto_0
    return-object v24

    .line 146
    :cond_1
    move-object/from16 v24, p1

    .line 148
    .local v24, "result":Lcom/netease/pharos/deviceinfo/DeviceInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v23

    .line 149
    .local v23, "region":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v21

    .line 151
    .local v21, "method":Ljava/lang/String;
    const-string v2, "LocationHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "checkRegion method="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "isp"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/location/NetAreaInfo;->getmLocation()Ljava/lang/String;

    move-result-object v20

    .line 158
    .local v20, "loaction":Ljava/lang/String;
    const-string v2, "LocationHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "checkRegion loaction="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", region="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "cn"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v15, 0x1

    .line 163
    .local v15, "cnMatch":Z
    :goto_1
    const-string v2, "oversea"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "us"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "au"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "jp"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sg"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "eu"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const/16 v22, 0x1

    .line 164
    .local v22, "overseaMatch":Z
    :goto_2
    const-string v2, "LocationHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "checkRegion cnMatch="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", overseaMatch="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-nez v15, :cond_0

    if-nez v22, :cond_0

    .line 170
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/location/NetAreaInfo;->getMudphashMap()Ljava/util/Map;

    move-result-object v19

    .line 180
    .local v19, "ipMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_3
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 203
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/link/NetmonProxy;->start()I

    .line 206
    const-string v2, "LocationHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "deviceInfo \u7ed3\u679c="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v15    # "cnMatch":Z
    .end local v19    # "ipMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "overseaMatch":Z
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 163
    .restart local v15    # "cnMatch":Z
    :cond_5
    const/16 v22, 0x0

    goto :goto_2

    .line 180
    .restart local v19    # "ipMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "overseaMatch":Z
    :cond_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 181
    .local v9, "pRegion":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 182
    .local v18, "ip":Ljava/lang/String;
    const-string v2, "LocationHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "ip="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, ":"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 184
    .local v17, "info":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 185
    .local v4, "pIp":Ljava/lang/String;
    const/4 v5, -0x1

    .line 187
    .local v5, "pPort":I
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 188
    const/4 v2, 0x0

    aget-object v4, v17, v2

    .line 191
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 197
    :cond_7
    :goto_4
    const-string v2, "LocationHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "pIp="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", pPort="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-eqz v4, :cond_3

    const/4 v2, -0x1

    if-eq v2, v5, :cond_3

    .line 200
    invoke-static {}, Lcom/netease/pharos/link/NetmonProxy;->getInstance()Lcom/netease/pharos/link/NetmonProxy;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v6, 0x4

    const/16 v7, 0x320

    const/16 v8, 0x200

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/pharos/location/LocationHunter;->mListener:Lcom/netease/pharos/link/LinkCheckListener;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v2 .. v14}, Lcom/netease/pharos/link/NetmonProxy;->addNetmonCore(ILjava/lang/String;IIIILjava/lang/String;Lcom/netease/pharos/link/LinkCheckListener;ILcom/netease/pharos/linkcheck/CycleTaskStopListener;Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 192
    :catch_0
    move-exception v16

    .line 193
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "LocationHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\u89e3\u6790\u9519\u8bef Exception="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public start()Lcom/netease/pharos/deviceinfo/DeviceInfo;
    .locals 14

    .prologue
    .line 40
    const-string v11, "LocationHunter"

    const-string v12, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5f00\u59cb"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v2

    .line 45
    .local v2, "deviceInfo":Lcom/netease/pharos/deviceinfo/DeviceInfo;
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "deviceInfo="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getNetworkIsp()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "network_isp":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getNetwork()Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "network":Ljava/lang/String;
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u7f51\u7edc\uff0cnetwork_isp="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", network="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "460"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "mobile"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 52
    const-string v11, "cn"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 53
    const-string v11, "isp"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 54
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u7f51\u7edc\uff0c\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", \u65b9\u6cd5="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-object v2

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getIpContinent()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "continent":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getIpCountry()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "country":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    const-string v12, "continent"

    invoke-virtual {v11, v12, v0}, Lcom/netease/pharos/location/NetAreaInfo;->ipHashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "region":Ljava/lang/String;
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65adip\u5730\u5740 continent="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", country="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", continent="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 65
    invoke-virtual {v2, v6}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 66
    const-string v11, "ip-continent"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    const-string v12, "country"

    invoke-virtual {v11, v12, v1}, Lcom/netease/pharos/location/NetAreaInfo;->ipHashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65adip\u5730\u5740 continent="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", country="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", country="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 74
    invoke-virtual {v2, v6}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 75
    const-string v11, "ip-country"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 78
    :cond_2
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 79
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65adip\u5730\u5740\uff0c\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", \u65b9\u6cd5="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_3
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getAreazoneContinent()Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "zoneContinent":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getAreazoneCountry()Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "zoneCountry":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    const-string v12, "continent"

    invoke-virtual {v11, v12, v8}, Lcom/netease/pharos/location/NetAreaInfo;->timezonehashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, "zoneRegion":Ljava/lang/String;
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u65f6\u533a\uff08\u5730\u533a\uff09 zoneContinent="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", zoneCountry="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", continent="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 91
    invoke-virtual {v2, v10}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 92
    const-string v11, "areazone"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 95
    :cond_4
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    const-string v12, "country"

    invoke-virtual {v11, v12, v9}, Lcom/netease/pharos/location/NetAreaInfo;->timezonehashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u65f6\u533a\uff08\u5730\u533a\uff09 zoneContinent="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", zoneCountry="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", country="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 100
    invoke-virtual {v2, v10}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 101
    const-string v11, "areazone"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 104
    :cond_5
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 105
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u65f6\u533a\uff08\u5730\u533a\uff09\uff0c\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", \u65b9\u6cd5="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_6
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getTimezone()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "timezone":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    const-string v12, "timezone"

    invoke-virtual {v11, v12, v7}, Lcom/netease/pharos/location/NetAreaInfo;->timezonehashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "netTimezone":Ljava/lang/String;
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "LocationHunter---\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u65f6\u533a\uff08\u5730\u533a\uff09 timezone="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", netTimezone="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 115
    invoke-virtual {v2, v3}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 116
    const-string v11, "timezone"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 124
    :goto_1
    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 125
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u5730\u533a\u65f6\u533a\uff0c\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", \u65b9\u6cd5="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u521d\u6b65\u5224\u65ad---\u5224\u65ad\u5730\u533a\u65f6\u533a\uff0c\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_7
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    const-string v12, "timezone"

    const-string v13, "default"

    invoke-virtual {v11, v12, v13}, Lcom/netease/pharos/location/NetAreaInfo;->timezonehashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v3}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 121
    const-string v11, "timezone"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_8
    const-string v11, "cn"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmRegion(Ljava/lang/String;)V

    .line 131
    const-string v11, "default"

    invoke-virtual {v2, v11}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmMethod(Ljava/lang/String;)V

    .line 133
    const-string v11, "LocationHunter"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u521d\u6b65\u5224\u65ad---\u51fa\u73b0\u5f02\u5e38\u8d70\u9ed8\u8ba4\uff0c\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", \u65b9\u6cd5="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
