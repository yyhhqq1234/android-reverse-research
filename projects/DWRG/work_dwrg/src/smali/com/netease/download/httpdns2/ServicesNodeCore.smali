.class public Lcom/netease/download/httpdns2/ServicesNodeCore;
.super Ljava/lang/Object;
.source "ServicesNodeCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpDnsCore"


# instance fields
.field private mHost:Ljava/lang/String;

.field private mServicesNodeDealer:Lcom/netease/download/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/download/network/NetworkDealer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/netease/download/httpdns2/ServicesNodeCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/httpdns2/ServicesNodeCore$1;-><init>(Lcom/netease/download/httpdns2/ServicesNodeCore;)V

    iput-object v0, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mServicesNodeDealer:Lcom/netease/download/network/NetworkDealer;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/netease/download/httpdns2/ServicesNodeCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 273
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public declared-synchronized reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip"

    invoke-static {v3}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const/16 v2, 0xb

    .line 239
    .local v2, "result":I
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v1, "pHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v3, "HttpDnsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0chost="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    const-string v3, "HttpDnsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0curl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    const/4 v3, 0x0

    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mServicesNodeDealer:Lcom/netease/download/network/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 264
    .end local v1    # "pHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const/16 v2, 0xd

    .line 253
    :try_start_2
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 255
    .restart local v2    # "result":I
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x4

    .line 257
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HttpDnsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/16 v2, 0xb

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized start()I
    .locals 11

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v8, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip"

    invoke-static {v8}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/netease/download/util/TimeZoneUtil;->isZoneEast8()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 68
    const/16 v5, 0x11

    .line 159
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 71
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "oversea":Ljava/lang/String;
    const-string v8, "HttpDnsCore"

    const-string v9, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u5148\u5bf9\u94fe\u63a5\u505aDNS\u89e3\u6790"

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/netease/download/httpdns2/HttpDnsUtil;->getHttpdnsServicesIp()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "url":Ljava/lang/String;
    const-string v8, "2"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    const-string v8, "netease.com"

    const-string v9, "easebar.com"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 81
    :cond_2
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "ServicesNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    const-string v8, "HttpDnsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u94fe\u63a5\u505aDNS\u89e3\u6790\uff0cDNS\u7ed3\u679c="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/16 v5, 0xb

    .line 87
    .local v5, "result":I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9

    .line 107
    :cond_4
    :goto_1
    if-eqz v5, :cond_0

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip, \u91c7\u7528lvsip, \u662f\u5426\u521b\u5efa\u8fc7lvsip\u5217\u8868="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/config2/Lvsip;->isCteateIp()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 110
    const-string v8, "https://mbdl.update.netease.com/httpdns.mbdl"

    invoke-static {v8}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/config2/Lvsip;->isCteateIp()Z

    move-result v8

    if-nez v8, :cond_8

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "ips":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 115
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/config2/ConfigParams2;->getLvsipArray()[Ljava/lang/String;

    move-result-object v3

    .line 118
    :cond_5
    if-eqz v3, :cond_6

    array-length v8, v3

    if-gtz v8, :cond_7

    .line 119
    :cond_6
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v4

    .line 121
    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 122
    sget-object v3, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    .line 123
    const-string v8, "mbdl.update.netease.com"

    iput-object v8, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;

    .line 138
    :cond_7
    :goto_2
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/netease/download/config2/Lvsip;->init([Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/config2/Lvsip;->createLvsip()V

    .line 143
    .end local v3    # "ips":[Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/config2/Lvsip;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v5, :cond_0

    .line 144
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/config2/Lvsip;->getNewIpFromArray()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "ip":Ljava/lang/String;
    const-string v8, "HttpDnsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip, \u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684ip="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 148
    const-string v8, "/"

    invoke-static {v7, v1, v8}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    const-string v8, "HttpDnsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip, \u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684host="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v8, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/netease/download/httpdns2/ServicesNodeCore;->reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 152
    if-nez v5, :cond_8

    goto/16 :goto_0

    .line 89
    .end local v1    # "ip":Ljava/lang/String;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/download/dns/DnsParams$Unit;

    .line 90
    .local v6, "unit":Lcom/netease/download/dns/DnsParams$Unit;
    iget-object v2, v6, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 92
    .local v2, "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    .line 101
    :goto_3
    if-nez v5, :cond_3

    goto/16 :goto_1

    .line 92
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .restart local v1    # "ip":Ljava/lang/String;
    const-string v10, "/"

    invoke-static {v7, v1, v10}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    iget-object v10, v6, Lcom/netease/download/dns/DnsParams$Unit;->domain:Ljava/lang/String;

    invoke-virtual {p0, v7, v10}, Lcom/netease/download/httpdns2/ServicesNodeCore;->reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 96
    if-nez v5, :cond_a

    goto :goto_3

    .line 125
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "unit":Lcom/netease/download/dns/DnsParams$Unit;
    .restart local v3    # "ips":[Ljava/lang/String;
    :cond_c
    const-string v8, "2"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 126
    sget-object v3, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    .line 127
    const-string v8, "mbdl.update.easebar.com"

    iput-object v8, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 65
    .end local v0    # "ServicesNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    .end local v3    # "ips":[Ljava/lang/String;
    .end local v4    # "oversea":Ljava/lang/String;
    .end local v5    # "result":I
    .end local v7    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 129
    .restart local v0    # "ServicesNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    .restart local v3    # "ips":[Ljava/lang/String;
    .restart local v4    # "oversea":Ljava/lang/String;
    .restart local v5    # "result":I
    .restart local v7    # "url":Ljava/lang/String;
    :cond_d
    :try_start_2
    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "-1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 130
    :cond_e
    sget-object v3, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    .line 131
    const-string v8, "mbdl.update.netease.com"

    iput-object v8, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;

    goto/16 :goto_2

    .line 134
    :cond_f
    sget-object v3, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    .line 135
    const-string v8, "mbdl.update.netease.com"

    iput-object v8, p0, Lcom/netease/download/httpdns2/ServicesNodeCore;->mHost:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method
