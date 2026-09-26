.class public Lcom/netease/pharos/httpdns/ServicesNodeCore;
.super Ljava/lang/Object;
.source "ServicesNodeCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpDnsCore"


# instance fields
.field private mHost:Ljava/lang/String;

.field private mServicesNodeDealer:Lcom/netease/pharos/network2/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network2/NetworkDealer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/httpdns/ServicesNodeCore;->mHost:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/netease/pharos/httpdns/ServicesNodeCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/httpdns/ServicesNodeCore$1;-><init>(Lcom/netease/pharos/httpdns/ServicesNodeCore;)V

    iput-object v0, p0, Lcom/netease/pharos/httpdns/ServicesNodeCore;->mServicesNodeDealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 45
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public declared-synchronized reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    const-string v3, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const/16 v2, 0xb

    .line 200
    .local v2, "result":I
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v1, "pHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    const-string v3, "Host"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "HttpDnsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0chost="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    const-string v3, "HttpDnsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0curl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    const/4 v3, 0x0

    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/pharos/httpdns/ServicesNodeCore;->mServicesNodeDealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 225
    .end local v1    # "pHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/net/SocketTimeoutException;
    const/16 v2, 0xd

    .line 214
    :try_start_2
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 216
    .restart local v2    # "result":I
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x4

    .line 218
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 221
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

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v2, 0xb

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized start()I
    .locals 9

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    const-string v6, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip"

    invoke-static {v6}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/netease/pharos/util/Util;->isZoneEast8()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 63
    const/16 v3, 0x11

    .line 147
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 66
    :cond_1
    :try_start_1
    const-string v6, "HttpDnsCore"

    const-string v7, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u5148\u5bf9\u94fe\u63a5\u505aDNS\u89e3\u6790"

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/netease/pharos/httpdns/DnsCore;->getInstances()Lcom/netease/pharos/httpdns/DnsCore;

    move-result-object v6

    const-string v7, "https://mbdl.update.netease.com/httpdns.mbdl"

    invoke-virtual {v6, v7}, Lcom/netease/pharos/httpdns/DnsCore;->init(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/netease/pharos/httpdns/DnsCore;->getInstances()Lcom/netease/pharos/httpdns/DnsCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/pharos/httpdns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    .local v0, "ServicesNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/DnsParams$Unit;>;"
    const-string v6, "HttpDnsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u94fe\u63a5\u505aDNS\u89e3\u6790\uff0cDNS\u7ed3\u679c="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/16 v3, 0xb

    .line 73
    .local v3, "result":I
    const-string v5, "https://mbdl.update.netease.com/httpdns.mbdl"

    .line 75
    .local v5, "url":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/pharos/httpdns/DnsParams$Unit;

    .line 78
    .local v4, "unit":Lcom/netease/pharos/httpdns/DnsParams$Unit;
    iget-object v2, v4, Lcom/netease/pharos/httpdns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 80
    .local v2, "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 89
    :goto_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 80
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, "ip":Ljava/lang/String;
    const-string v8, "/"

    invoke-static {v5, v1, v8}, Lcom/netease/pharos/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    iget-object v8, v4, Lcom/netease/pharos/httpdns/DnsParams$Unit;->domain:Ljava/lang/String;

    invoke-virtual {p0, v5, v8}, Lcom/netease/pharos/httpdns/ServicesNodeCore;->reqServicesNodeIp(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 84
    if-nez v3, :cond_3

    goto :goto_1

    .line 60
    .end local v0    # "ServicesNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/DnsParams$Unit;>;"
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "result":I
    .end local v4    # "unit":Lcom/netease/pharos/httpdns/DnsParams$Unit;
    .end local v5    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
