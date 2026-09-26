.class public Lcom/netease/pharos/deviceinfo/NetDnsCore;
.super Ljava/lang/Object;
.source "NetDnsCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetDnsCore"

.field private static sNetDnsCore:Lcom/netease/pharos/deviceinfo/NetDnsCore;


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
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->sNetDnsCore:Lcom/netease/pharos/deviceinfo/NetDnsCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "https://nstool.netease.com/jsonify/"

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->mUrl:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/netease/pharos/deviceinfo/NetDnsCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/deviceinfo/NetDnsCore$1;-><init>(Lcom/netease/pharos/deviceinfo/NetDnsCore;)V

    iput-object v0, p0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 47
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/deviceinfo/NetDnsCore;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->sNetDnsCore:Lcom/netease/pharos/deviceinfo/NetDnsCore;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/netease/pharos/deviceinfo/NetDnsCore;

    invoke-direct {v0}, Lcom/netease/pharos/deviceinfo/NetDnsCore;-><init>()V

    sput-object v0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->sNetDnsCore:Lcom/netease/pharos/deviceinfo/NetDnsCore;

    .line 53
    :cond_0
    sget-object v0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->sNetDnsCore:Lcom/netease/pharos/deviceinfo/NetDnsCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 16
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v13, "NetDnsCore"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u89e3\u6790\u5185\u5bb9---"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 202
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "data":Lorg/json/JSONObject;
    const-string v13, "dns_province"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "dns_province"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "mDns_province":Ljava/lang/String;
    :goto_0
    const-string v13, "ip_city"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "ip_city"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "mIp_city":Ljava/lang/String;
    :goto_1
    const-string v13, "ip"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "ip"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "mIp":Ljava/lang/String;
    :goto_2
    const-string v13, "ip_province"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "ip_province"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, "mIp_province":Ljava/lang/String;
    :goto_3
    const-string v13, "ip_isp"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "ip_isp"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, "mIp_isp":Ljava/lang/String;
    :goto_4
    const-string v13, "res"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "res"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "mRes":Ljava/lang/String;
    :goto_5
    const-string v13, "dns_city"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "dns_city"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "mDns_city":Ljava/lang/String;
    :goto_6
    const-string v13, "dns_isp"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "dns_isp"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "mDns_isp":Ljava/lang/String;
    :goto_7
    const-string v13, "dns"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "dns"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "mDns":Ljava/lang/String;
    :goto_8
    const-string v13, "msg"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "msg"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 215
    .local v11, "mMsg":Ljava/lang/String;
    :goto_9
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setNameserver(Ljava/lang/String;)V

    .line 221
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "mDns":Ljava/lang/String;
    .end local v4    # "mDns_city":Ljava/lang/String;
    .end local v5    # "mDns_isp":Ljava/lang/String;
    .end local v6    # "mDns_province":Ljava/lang/String;
    .end local v7    # "mIp":Ljava/lang/String;
    .end local v8    # "mIp_city":Ljava/lang/String;
    .end local v9    # "mIp_isp":Ljava/lang/String;
    .end local v10    # "mIp_province":Ljava/lang/String;
    .end local v11    # "mMsg":Ljava/lang/String;
    .end local v12    # "mRes":Ljava/lang/String;
    :cond_0
    :goto_a
    return-void

    .line 204
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    const-string v6, ""

    goto/16 :goto_0

    .line 205
    .restart local v6    # "mDns_province":Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_1

    .line 206
    .restart local v8    # "mIp_city":Ljava/lang/String;
    :cond_3
    const-string v7, ""

    goto :goto_2

    .line 207
    .restart local v7    # "mIp":Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto :goto_3

    .line 208
    .restart local v10    # "mIp_province":Ljava/lang/String;
    :cond_5
    const-string v9, ""

    goto :goto_4

    .line 209
    .restart local v9    # "mIp_isp":Ljava/lang/String;
    :cond_6
    const-string v12, ""

    goto :goto_5

    .line 210
    .restart local v12    # "mRes":Ljava/lang/String;
    :cond_7
    const-string v4, ""

    goto :goto_6

    .line 211
    .restart local v4    # "mDns_city":Ljava/lang/String;
    :cond_8
    const-string v5, ""

    goto :goto_7

    .line 212
    .restart local v5    # "mDns_isp":Ljava/lang/String;
    :cond_9
    const-string v3, ""

    goto :goto_8

    .line 213
    .restart local v3    # "mDns":Ljava/lang/String;
    :cond_a
    const-string v11, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 217
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "mDns":Ljava/lang/String;
    .end local v4    # "mDns_city":Ljava/lang/String;
    .end local v5    # "mDns_isp":Ljava/lang/String;
    .end local v6    # "mDns_province":Ljava/lang/String;
    .end local v7    # "mIp":Ljava/lang/String;
    .end local v8    # "mIp_city":Ljava/lang/String;
    .end local v9    # "mIp_isp":Ljava/lang/String;
    .end local v10    # "mIp_province":Ljava/lang/String;
    .end local v12    # "mRes":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a
.end method

.method public start()I
    .locals 14

    .prologue
    .line 90
    const/16 v6, 0xb

    .line 92
    .local v6, "result":I
    iget-object v9, p0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->mUrl:Ljava/lang/String;

    .line 94
    .local v9, "url":Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/pharos/PharosProxy;->ismEB()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 95
    const-string v10, "https://dl.nstool.easebar.com/jsonify/"

    iput-object v10, p0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->mUrl:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v10, p0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->mUrl:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/netease/pharos/deviceinfo/NetDnsCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 100
    const-string v10, "NetDnsCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz v6, :cond_3

    .line 104
    iget-object v10, p0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->mUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 107
    const-string v10, "NetDnsCore"

    const-string v11, "domain\u4e3a\u7a7a"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 142
    .end local v0    # "domain":Ljava/lang/String;
    .end local v6    # "result":I
    .local v7, "result":I
    :goto_0
    return v7

    .line 111
    .end local v7    # "result":I
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v6    # "result":I
    :cond_1
    const-string v10, "NetDnsCore"

    const-string v11, "\u8d70Httpdns"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    .line 113
    .local v2, "mDomains":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v10

    const-string v11, "Pharos_nstool"

    invoke-virtual {v10, v11, v2}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v10

    const-string v11, "Pharos_nstool"

    invoke-virtual {v10, v11}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v8

    .line 117
    .local v8, "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v8, :cond_5

    .line 118
    const-string v10, "NetDnsCore"

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

    .line 120
    invoke-virtual {v8}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->getHttpdnsUrlUnitList()Ljava/util/ArrayList;

    move-result-object v1

    .line 122
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v2    # "mDomains":[Ljava/lang/String;
    .end local v8    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_3
    :goto_1
    move v7, v6

    .line 142
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0

    .line 122
    .end local v7    # "result":I
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .restart local v2    # "mDomains":[Ljava/lang/String;
    .restart local v6    # "result":I
    .restart local v8    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 123
    .local v5, "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v4, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 124
    .local v4, "pIp":Ljava/lang/String;
    iget-object v3, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 126
    .local v3, "pHost":Ljava/lang/String;
    const-string v11, "NetDnsCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u539furl="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v11, "/"

    invoke-static {v9, v4, v11}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 128
    const-string v11, "NetDnsCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u65b0url="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v9, v3}, Lcom/netease/pharos/deviceinfo/NetDnsCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 131
    const-string v11, "NetDnsCore"

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

    .line 133
    if-nez v6, :cond_2

    goto :goto_1

    .line 138
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v3    # "pHost":Ljava/lang/String;
    .end local v4    # "pIp":Ljava/lang/String;
    .end local v5    # "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :cond_5
    const-string v10, "NetDnsCore"

    const-string v11, "httpdns\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v3, "Dns \u67e5\u8be2 net_dns"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 148
    const/16 v2, 0xb

    .line 150
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "X-AUTH-PROJECT"

    const-string v4, "impression"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v3, "X-AUTH-TOKEN"

    const-string v4, "PFtTgRbVrj43"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/pharos/deviceinfo/NetDnsCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dns \u67e5\u8be2 net_dns---\u7ed3\u679c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 169
    return v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
