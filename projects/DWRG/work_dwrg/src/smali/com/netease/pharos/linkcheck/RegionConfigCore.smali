.class public Lcom/netease/pharos/linkcheck/RegionConfigCore;
.super Ljava/lang/Object;
.source "RegionConfigCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionConfigCore"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/netease/pharos/linkcheck/RegionConfigCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/RegionConfigCore$1;-><init>(Lcom/netease/pharos/linkcheck/RegionConfigCore;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 34
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 192
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public start()I
    .locals 14

    .prologue
    .line 82
    const/16 v6, 0xb

    .line 84
    .local v6, "result":I
    iget-object v9, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    .line 85
    .local v9, "url":Ljava/lang/String;
    iget-object v10, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 87
    const-string v10, "RegionConfigCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz v6, :cond_2

    .line 90
    iget-object v10, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 93
    const-string v10, "RegionConfigCore"

    const-string v11, "domain\u4e3a\u7a7a"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 128
    .end local v0    # "domain":Ljava/lang/String;
    .end local v6    # "result":I
    .local v7, "result":I
    :goto_0
    return v7

    .line 97
    .end local v7    # "result":I
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v6    # "result":I
    :cond_0
    const-string v10, "RegionConfigCore"

    const-string v11, "\u8d70Httpdns"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v0, v2, v10

    .line 99
    .local v2, "mDomains":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v10

    const-string v11, "Pharos"

    invoke-virtual {v10, v11, v2}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v10

    const-string v11, "Pharos_impression"

    invoke-virtual {v10, v11}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v8

    .line 103
    .local v8, "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v8, :cond_4

    .line 104
    const-string v10, "RegionConfigCore"

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

    .line 106
    invoke-virtual {v8}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->getHttpdnsUrlUnitList()Ljava/util/ArrayList;

    move-result-object v1

    .line 108
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

    .line 128
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0

    .line 108
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

    .line 109
    .local v5, "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v4, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 110
    .local v4, "pIp":Ljava/lang/String;
    iget-object v3, v5, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    .line 112
    .local v3, "pHost":Ljava/lang/String;
    const-string v11, "RegionConfigCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u539furl="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v11, "/"

    invoke-static {v9, v4, v11}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    const-string v11, "RegionConfigCore"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u65b0url="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, v9, v3}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 117
    const-string v11, "RegionConfigCore"

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

    .line 118
    if-nez v6, :cond_1

    goto :goto_1

    .line 124
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v3    # "pHost":Ljava/lang/String;
    .end local v4    # "pIp":Ljava/lang/String;
    .end local v5    # "pUnit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :cond_4
    const-string v10, "RegionConfigCore"

    const-string v11, "httpdns\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v10, v11}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v3, "\u94fe\u8def\u63a2\u6d4b\u6a21\u5757---\u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const/4 v2, 0x1

    .line 159
    :goto_0
    return v2

    .line 139
    :cond_0
    const/16 v2, 0xb

    .line 141
    .local v2, "result":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    const-string v3, "Host-Type"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->dealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 157
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u63a2\u6d4b\u7528\u6237\u8bbe\u5907\u7684\u57fa\u672c\u4fe1\u606f---\u7ed3\u679c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
