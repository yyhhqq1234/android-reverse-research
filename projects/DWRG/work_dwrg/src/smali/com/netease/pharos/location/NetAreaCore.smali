.class public Lcom/netease/pharos/location/NetAreaCore;
.super Ljava/lang/Object;
.source "NetAreaCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetAreaCore"

.field private static sLocationCore:Lcom/netease/pharos/location/NetAreaCore;


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

    sput-object v0, Lcom/netease/pharos/location/NetAreaCore;->sLocationCore:Lcom/netease/pharos/location/NetAreaCore;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "https://impression.update.netease.com/net_decision.txt"

    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaCore;->mUrl:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/netease/pharos/location/NetAreaCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/location/NetAreaCore$1;-><init>(Lcom/netease/pharos/location/NetAreaCore;)V

    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 47
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/location/NetAreaCore;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/netease/pharos/location/NetAreaCore;->sLocationCore:Lcom/netease/pharos/location/NetAreaCore;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/netease/pharos/location/NetAreaCore;

    invoke-direct {v0}, Lcom/netease/pharos/location/NetAreaCore;-><init>()V

    sput-object v0, Lcom/netease/pharos/location/NetAreaCore;->sLocationCore:Lcom/netease/pharos/location/NetAreaCore;

    .line 53
    :cond_0
    sget-object v0, Lcom/netease/pharos/location/NetAreaCore;->sLocationCore:Lcom/netease/pharos/location/NetAreaCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 212
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public start()I
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 91
    const/16 v7, 0xb

    .line 93
    .local v7, "result":I
    iget-object v10, p0, Lcom/netease/pharos/location/NetAreaCore;->mUrl:Ljava/lang/String;

    .line 95
    .local v10, "url":Ljava/lang/String;
    const-string v11, "NetAreaCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u666e\u901a\u8bf7\u6c42\u7ed3\u679c decision="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/pharos/PharosProxy;->getmDecision()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/PharosProxy;->getmDecision()I

    move-result v11

    if-ne v14, v11, :cond_0

    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "https://impression.update.netease.com/net_decision_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/pharos/PharosProxy;->getmProjectId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 101
    :cond_0
    const-string v11, "NetAreaCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/netease/pharos/location/NetAreaCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 105
    const-string v11, "NetAreaCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz v7, :cond_3

    .line 109
    invoke-static {v10}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 112
    const-string v11, "NetAreaCore"

    const-string v12, "domain\u4e3a\u7a7a"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 157
    .end local v1    # "domain":Ljava/lang/String;
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 116
    .end local v8    # "result":I
    .restart local v1    # "domain":Ljava/lang/String;
    .restart local v7    # "result":I
    :cond_1
    const-string v11, "NetAreaCore"

    const-string v12, "\u8d70Httpdns"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-array v3, v14, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v3, v11

    .line 118
    .local v3, "mDomains":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v11

    const-string v12, "Pharos_impression"

    invoke-virtual {v11, v12, v3}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v11

    const-string v12, "Pharos_impression"

    invoke-virtual {v11, v12}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v9

    .line 122
    .local v9, "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v9, :cond_6

    .line 123
    const-string v11, "NetAreaCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "httpdns\u7ed3\u679c="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v9}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->getHttpdnsUrlUnitList()Ljava/util/ArrayList;

    move-result-object v2

    .line 127
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 150
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v3    # "mDomains":[Ljava/lang/String;
    .end local v9    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 151
    const-string v11, "\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u83b7\u53d6\u5931\u8d25\uff0c\u91c7\u7528\u9ed8\u8ba4\u6570\u636e"

    invoke-static {v11}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/netease/pharos/location/NetAreaInfo;->getDefaultData()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "defaultData":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u9ed8\u8ba4\u6570\u636e="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/netease/pharos/location/NetAreaInfo;->getInstances()Lcom/netease/pharos/location/NetAreaInfo;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/netease/pharos/location/NetAreaInfo;->init(Ljava/lang/String;)V

    .end local v0    # "defaultData":Ljava/lang/String;
    :cond_4
    move v8, v7

    .line 157
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0

    .line 127
    .end local v8    # "result":I
    .restart local v1    # "domain":Ljava/lang/String;
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .restart local v3    # "mDomains":[Ljava/lang/String;
    .restart local v7    # "result":I
    .restart local v9    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 128
    .local v6, "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v5, v6, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 129
    .local v5, "pIp":Ljava/lang/String;
    iget-object v4, v6, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 131
    .local v4, "pHost":Ljava/lang/String;
    const-string v12, "NetAreaCore"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u539furl="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v12, "/"

    invoke-static {v10, v5, v12}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 133
    const-string v12, "NetAreaCore"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u65b0url="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v10, v4}, Lcom/netease/pharos/location/NetAreaCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 136
    const-string v12, "NetAreaCore"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Httpdns \uff0c\u8fd4\u56de\u7801="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", ip="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-nez v7, :cond_2

    goto/16 :goto_1

    .line 145
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v4    # "pHost":Ljava/lang/String;
    .end local v5    # "pIp":Ljava/lang/String;
    .end local v6    # "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :cond_6
    const-string v11, "NetAreaCore"

    const-string v12, "httpdns\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v3, "\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 163
    const/16 v2, 0xb

    .line 165
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "GET"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/pharos/location/NetAreaCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v5, v6}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 180
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u7ed3\u679c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 181
    return v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
