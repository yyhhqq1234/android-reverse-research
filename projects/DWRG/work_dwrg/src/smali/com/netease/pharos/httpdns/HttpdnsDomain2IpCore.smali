.class public Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
.super Ljava/lang/Object;
.source "HttpdnsDomain2IpCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsDomain2IpCore"


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mDomainDealer:Lcom/netease/pharos/network2/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network2/NetworkDealer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpdnsServicesIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mStartTime:J

.field private mZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    .line 81
    new-instance v0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore$1;-><init>(Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;)V

    iput-object v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomainDealer:Lcom/netease/pharos/network2/NetworkDealer;

    .line 36
    return-void
.end method

.method static synthetic access$1(Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mStartTime:J

    return-wide v0
.end method

.method private hasNext()Z
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Z
    iget-object v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    iget v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    iget-object v2, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    if-le v1, v2, :cond_0

    .line 74
    iget-object v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 77
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mIndex:I

    .line 78
    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 168
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;Ljava/lang/String;)V
    .locals 1
    .param p1, "unit"    # Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p1, Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;->zone:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mZone:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;->ipArrayList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    .line 51
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p2}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iput-object p2, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized reqCdnTargetIp(Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    const-string v3, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u521d\u59cb\u5316"

    invoke-static {v3}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 140
    .local v2, "result":I
    :try_start_1
    const-string v3, "HttpdnsDomain2IpCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0curl="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v3, "Host"

    iget-object v4, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mStartTime:J

    .line 143
    const/4 v3, 0x0

    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomainDealer:Lcom/netease/pharos/network2/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/pharos/network2/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network2/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 149
    :goto_0
    :try_start_2
    const-string v3, "HttpdnsDomain2IpCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d,\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->start()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 155
    :cond_0
    monitor-exit p0

    return v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public start()I
    .locals 4

    .prologue
    .line 111
    const-string v2, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u5f00\u59cb"

    invoke-static {v2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/netease/pharos/util/Util;->isZoneEast8()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    const/16 v0, 0x11

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    const/16 v0, 0xb

    .line 119
    .local v0, "result":I
    invoke-direct {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->next()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/pharos/util/Util;->getHttpdnsDomain2IpUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->reqCdnTargetIp(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
