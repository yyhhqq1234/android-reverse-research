.class public Lcom/netease/pharos/qos/HighSpeedListCore;
.super Ljava/lang/Object;
.source "HighSpeedListCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HighSpeedListCore"


# instance fields
.field private checkHighSpeedList:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

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

.field private mStauts:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStauts:I

    .line 48
    iput-object v1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedList:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    .line 50
    new-instance v0, Lcom/netease/pharos/qos/HighSpeedListCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/qos/HighSpeedListCore$1;-><init>(Lcom/netease/pharos/qos/HighSpeedListCore;)V

    iput-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/netease/pharos/qos/HighSpeedListCore;)Lcom/netease/pharos/qos/CheckHighSpeedListCore;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedList:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    return-object v0
.end method

.method static synthetic access$1(Lcom/netease/pharos/qos/HighSpeedListCore;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStauts:I

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStauts:I

    .line 256
    return-void
.end method

.method public start()I
    .locals 23

    .prologue
    .line 98
    const/16 v16, 0xb

    .line 100
    .local v16, "result":I
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/PharosProxy;->getmIp()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "ip":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/PharosProxy;->getmPort()Ljava/lang/String;

    move-result-object v13

    .line 102
    .local v13, "port":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/PharosProxy;->getmHighSpeedUrl()Ljava/lang/String;

    move-result-object v18

    .line 104
    .local v18, "url":Ljava/lang/String;
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "HighSpeedListCore [start] param error ip="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", port="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", url="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 106
    :cond_0
    const-string v19, "HighSpeedListCore"

    const-string v20, "HighSpeedListCore [start] param error"

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v16

    .line 229
    :goto_0
    return v19

    .line 110
    :cond_1
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "HighSpeedListCore [start] mStauts="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStauts:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStauts:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 113
    const-string v19, "HighSpeedListCore"

    const-string v20, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 HighSpeedListCore already start"

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/16 v19, 0x0

    goto :goto_0

    .line 117
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mStauts:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 119
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v8

    .line 120
    .local v8, "listener":Lcom/netease/pharos/PharosListener;
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u67e5\u8be2\u9ad8\u901f\u5217\u8868 \u56de\u8c03\u7ed3\u679c="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult()Lorg/json/JSONObject;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz v8, :cond_3

    .line 123
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult()Lorg/json/JSONObject;

    move-result-object v5

    .line 125
    .local v5, "fanalResult":Lorg/json/JSONObject;
    if-eqz v5, :cond_4

    .line 126
    invoke-interface {v8, v5}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .line 133
    .end local v5    # "fanalResult":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    const/16 v19, 0x0

    goto :goto_0

    .line 129
    .restart local v5    # "fanalResult":Lorg/json/JSONObject;
    :cond_4
    const-string v19, "HighSpeedListCore"

    const-string v20, "qosResult is null"

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .end local v5    # "fanalResult":Lorg/json/JSONObject;
    .end local v8    # "listener":Lcom/netease/pharos/PharosListener;
    :cond_5
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/pharos/qos/HighSpeedListCore;->mStauts:I

    .line 138
    new-instance v19, Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v13}, Lcom/netease/pharos/qos/CheckHighSpeedListCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pharos/qos/HighSpeedListCore;->checkHighSpeedList:Lcom/netease/pharos/qos/CheckHighSpeedListCore;

    .line 140
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/PharosProxy;->getmProjectId()Ljava/lang/String;

    move-result-object v14

    .line 141
    .local v14, "projectId":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getmRegion()Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, "region":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 146
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    .line 166
    :goto_2
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u666e\u901a\u8bf7\u6c42\u7ed3\u679c url="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/qos/HighSpeedListCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 168
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-eqz v16, :cond_b

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "domain":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 174
    const-string v19, "HighSpeedListCore"

    const-string v20, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u666e\u901a\u8bf7\u6c42\u7ed3\u679c domain\u4e3a\u7a7a"

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/16 v16, 0xe

    move/from16 v19, v16

    .line 176
    goto/16 :goto_0

    .line 150
    .end local v4    # "domain":Ljava/lang/String;
    :cond_6
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 151
    :cond_7
    const/16 v16, 0xe

    .line 152
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 [start] param error : projectId="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", region="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v19, v16

    .line 153
    goto/16 :goto_0

    .line 156
    :cond_8
    sget-object v19, Lcom/netease/pharos/Const;->QOS_LIGHTEN_URL:Ljava/lang/String;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x1

    aput-object v15, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 179
    .restart local v4    # "domain":Ljava/lang/String;
    :cond_9
    const-string v19, "HighSpeedListCore"

    const-string v20, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u666e\u901a\u8bf7\u6c42\u7ed3\u679c \u8d70Httpdns"

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v9, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v4, v9, v19

    .line 181
    .local v9, "mDomains":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v19

    const-string v20, "Pharos_lighten"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v19

    const-string v20, "Pharos_lighten"

    invoke-virtual/range {v19 .. v20}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v17

    .line 185
    .local v17, "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v17, :cond_e

    .line 186
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 httpdns\u7ed3\u679c="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {v17 .. v17}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->getHttpdnsUrlUnitList()Ljava/util/ArrayList;

    move-result-object v7

    .line 189
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_d

    .line 210
    .end local v4    # "domain":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v9    # "mDomains":[Ljava/lang/String;
    .end local v17    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_b
    :goto_3
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u67e5\u8be2\u9ad8\u901f\u5217\u8868 code\u7ed3\u679c="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/PharosProxy;->getmPharosListener()Lcom/netease/pharos/PharosListener;

    move-result-object v8

    .line 216
    .restart local v8    # "listener":Lcom/netease/pharos/PharosListener;
    const-string v19, "HighSpeedListCore"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u67e5\u8be2\u9ad8\u901f\u5217\u8868 \u56de\u8c03\u7ed3\u679c="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult()Lorg/json/JSONObject;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v8, :cond_c

    .line 219
    invoke-static {}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getInstance()Lcom/netease/pharos/qos/CheckHighSpeedResult;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/netease/pharos/qos/CheckHighSpeedResult;->getResult()Lorg/json/JSONObject;

    move-result-object v3

    .line 221
    .local v3, "checkHighSpeedResult":Lorg/json/JSONObject;
    if-eqz v3, :cond_f

    .line 222
    invoke-interface {v8, v3}, Lcom/netease/pharos/PharosListener;->onResult(Lorg/json/JSONObject;)V

    .end local v3    # "checkHighSpeedResult":Lorg/json/JSONObject;
    :cond_c
    :goto_4
    move/from16 v19, v16

    .line 229
    goto/16 :goto_0

    .line 189
    .end local v8    # "listener":Lcom/netease/pharos/PharosListener;
    .restart local v4    # "domain":Ljava/lang/String;
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .restart local v9    # "mDomains":[Ljava/lang/String;
    .restart local v17    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 190
    .local v12, "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v11, v12, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 191
    .local v11, "pIp":Ljava/lang/String;
    iget-object v10, v12, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 193
    .local v10, "pHost":Ljava/lang/String;
    const-string v20, "HighSpeedListCore"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u539furl="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    .line 195
    const-string v20, "HighSpeedListCore"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 \u65b0url="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pharos/qos/HighSpeedListCore;->mUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/netease/pharos/qos/HighSpeedListCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 198
    const-string v20, "HighSpeedListCore"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 Httpdns \uff0c\u8fd4\u56de\u7801="

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ip="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-nez v16, :cond_a

    goto/16 :goto_3

    .line 206
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v10    # "pHost":Ljava/lang/String;
    .end local v11    # "pIp":Ljava/lang/String;
    .end local v12    # "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :cond_e
    const-string v19, "HighSpeedListCore"

    const-string v20, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868 httpdns\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 225
    .end local v4    # "domain":Ljava/lang/String;
    .end local v9    # "mDomains":[Ljava/lang/String;
    .end local v17    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    .restart local v3    # "checkHighSpeedResult":Lorg/json/JSONObject;
    .restart local v8    # "listener":Lcom/netease/pharos/PharosListener;
    :cond_f
    const-string v19, "HighSpeedListCore"

    const-string v20, "qosResult is null"

    invoke-static/range {v19 .. v20}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v3, "\u83b7\u53d6\u9ad8\u901f\u5217\u8868"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 234
    const/16 v2, 0xb

    .line 236
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/pharos/qos/HighSpeedListCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 250
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

    .line 251
    return v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
