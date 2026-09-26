.class public Lcom/netease/pharos/deviceinfo/IpInfoCore;
.super Ljava/lang/Object;
.source "IpInfoCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpInfoCore"

.field private static sDevicesCore:Lcom/netease/pharos/deviceinfo/IpInfoCore;


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

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->sDevicesCore:Lcom/netease/pharos/deviceinfo/IpInfoCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "https://whoami.nie.netease.com/v1"

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->mUrl:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/netease/pharos/deviceinfo/IpInfoCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/deviceinfo/IpInfoCore$1;-><init>(Lcom/netease/pharos/deviceinfo/IpInfoCore;)V

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 49
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceinfo/IpInfoCore;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->sDevicesCore:Lcom/netease/pharos/deviceinfo/IpInfoCore;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/netease/pharos/deviceinfo/IpInfoCore;

    invoke-direct {v0}, Lcom/netease/pharos/deviceinfo/IpInfoCore;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->sDevicesCore:Lcom/netease/pharos/deviceinfo/IpInfoCore;

    .line 55
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->sDevicesCore:Lcom/netease/pharos/deviceinfo/IpInfoCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 16
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v13, "IpInfoCore"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u89e3\u6790\u5185\u5bb9---"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 194
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "data":Lorg/json/JSONObject;
    const-string v13, "payload"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "payload"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "mIp_payload":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>([B)V

    .line 198
    .local v3, "jsonStr":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 199
    .local v10, "payloadObj":Lorg/json/JSONObject;
    const-string v13, "ip"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "ip"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "mIp_addr":Ljava/lang/String;
    :goto_1
    const/4 v11, 0x0

    .line 202
    .local v11, "temp1":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .line 203
    .local v12, "temp2":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 205
    .local v8, "mIp_province":Ljava/lang/String;
    const-string v13, "subdivisions"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 206
    const-string v13, "subdivisions"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 208
    const-string v13, "names"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 209
    const-string v13, "names"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 211
    const-string v13, "en"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 212
    const-string v13, "en"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 217
    :cond_0
    const/4 v6, 0x0

    .line 219
    .local v6, "mIp_country":Ljava/lang/String;
    const-string v13, "country"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 220
    const-string v13, "country"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 222
    const-string v13, "names"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 223
    const-string v13, "names"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 225
    const-string v13, "en"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 226
    const-string v13, "en"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 231
    :cond_1
    const/4 v5, 0x0

    .line 233
    .local v5, "mIp_continent":Ljava/lang/String;
    const-string v13, "continent"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 234
    const-string v13, "continent"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 236
    const-string v13, "names"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 237
    const-string v13, "names"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 239
    const-string v13, "en"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 240
    const-string v13, "en"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    :cond_2
    const-string v13, "sig"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "sig"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 247
    .local v9, "mIp_sig":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setIpaddr(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setIpContinent(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setIpCountry(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setipProvince(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setIpPayload(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setIpSig(Ljava/lang/String;)V

    .line 259
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jsonStr":Ljava/lang/String;
    .end local v4    # "mIp_addr":Ljava/lang/String;
    .end local v5    # "mIp_continent":Ljava/lang/String;
    .end local v6    # "mIp_country":Ljava/lang/String;
    .end local v7    # "mIp_payload":Ljava/lang/String;
    .end local v8    # "mIp_province":Ljava/lang/String;
    .end local v9    # "mIp_sig":Ljava/lang/String;
    .end local v10    # "payloadObj":Lorg/json/JSONObject;
    .end local v11    # "temp1":Lorg/json/JSONObject;
    .end local v12    # "temp2":Lorg/json/JSONObject;
    :cond_3
    :goto_3
    return-void

    .line 195
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_4
    const-string v7, ""

    goto/16 :goto_0

    .line 199
    .restart local v3    # "jsonStr":Ljava/lang/String;
    .restart local v7    # "mIp_payload":Ljava/lang/String;
    .restart local v10    # "payloadObj":Lorg/json/JSONObject;
    :cond_5
    const-string v4, ""

    goto/16 :goto_1

    .line 245
    .restart local v4    # "mIp_addr":Ljava/lang/String;
    .restart local v5    # "mIp_continent":Ljava/lang/String;
    .restart local v6    # "mIp_country":Ljava/lang/String;
    .restart local v8    # "mIp_province":Ljava/lang/String;
    .restart local v11    # "temp1":Lorg/json/JSONObject;
    .restart local v12    # "temp2":Lorg/json/JSONObject;
    :cond_6
    const-string v9, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 254
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "jsonStr":Ljava/lang/String;
    .end local v4    # "mIp_addr":Ljava/lang/String;
    .end local v5    # "mIp_continent":Ljava/lang/String;
    .end local v6    # "mIp_country":Ljava/lang/String;
    .end local v7    # "mIp_payload":Ljava/lang/String;
    .end local v8    # "mIp_province":Ljava/lang/String;
    .end local v10    # "payloadObj":Lorg/json/JSONObject;
    .end local v11    # "temp1":Lorg/json/JSONObject;
    .end local v12    # "temp2":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Lorg/json/JSONException;
    const-string v13, "IpInfoCore"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u89e3\u6790\u5185\u5bb9="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method public start()I
    .locals 14

    .prologue
    .line 93
    const/16 v6, 0xb

    .line 95
    .local v6, "result":I
    iget-object v9, p0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->mUrl:Ljava/lang/String;

    .line 96
    .local v9, "url":Ljava/lang/String;
    iget-object v10, p0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->mUrl:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/netease/pharos/deviceinfo/IpInfoCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 98
    const-string v10, "IpInfoCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz v6, :cond_2

    .line 101
    iget-object v10, p0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->mUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 103
    const-string v10, "IpInfoCore"

    const-string v11, "domain\u4e3a\u7a7a"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 136
    .end local v0    # "domain":Ljava/lang/String;
    .end local v6    # "result":I
    .local v7, "result":I
    :goto_0
    return v7

    .line 106
    .end local v7    # "result":I
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v6    # "result":I
    :cond_0
    const-string v10, "IpInfoCore"

    const-string v11, "\u8d70Httpdns"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    .line 108
    .local v2, "mDomains":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v10

    const-string v11, "Pharos_whoami"

    invoke-virtual {v10, v11, v2}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v10

    const-string v11, "Pharos_whoami"

    invoke-virtual {v10, v11}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v8

    .line 111
    .local v8, "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v8, :cond_4

    .line 112
    const-string v10, "IpInfoCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "httpdns\u7ed3\u679c="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v8}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->getHttpdnsUrlUnitList()Ljava/util/ArrayList;

    move-result-object v1

    .line 115
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v2    # "mDomains":[Ljava/lang/String;
    .end local v8    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_2
    :goto_1
    move v7, v6

    .line 136
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0

    .line 115
    .end local v7    # "result":I
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .restart local v2    # "mDomains":[Ljava/lang/String;
    .restart local v6    # "result":I
    .restart local v8    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 116
    .local v5, "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v4, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 117
    .local v4, "pIp":Ljava/lang/String;
    iget-object v3, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 119
    .local v3, "pHost":Ljava/lang/String;
    const-string v11, "IpInfoCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u539furl="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v11, "/"

    invoke-static {v9, v4, v11}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 121
    const-string v11, "IpInfoCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u65b0url="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v9, v3}, Lcom/netease/pharos/deviceinfo/IpInfoCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 124
    const-string v11, "IpInfoCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Httpdns \uff0c\u8fd4\u56de\u7801="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ip="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-nez v6, :cond_1

    goto :goto_1

    .line 132
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v3    # "pHost":Ljava/lang/String;
    .end local v4    # "pIp":Ljava/lang/String;
    .end local v5    # "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :cond_4
    const-string v10, "IpInfoCore"

    const-string v11, "httpdns\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v3, "\u63a2\u6d4b\u7528\u6237\u8bbe\u5907\u7684\u57fa\u672c\u4fe1\u606f"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 142
    const/16 v2, 0xb

    .line 144
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "X-AUTH-PRODUCT"

    const-string v4, "impression"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v3, "X-AUTH-TOKEN"

    const-string v4, "token.e8sUKKMswYmL"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v3, "X-IPDB-LOCALE"

    const-string v4, "en"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/pharos/deviceinfo/IpInfoCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u63a2\u6d4b\u7528\u6237\u8bbe\u5907\u7684\u57fa\u672c\u4fe1\u606f---\u7ed3\u679c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 162
    return v2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
