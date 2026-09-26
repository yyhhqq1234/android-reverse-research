.class public Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;
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

.field private mDomainDealer:Lcom/netease/download/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/download/network/NetworkDealer",
            "<",
            "Ljava/lang/Boolean;",
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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mIndex:I

    .line 85
    new-instance v0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore$1;-><init>(Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;)V

    iput-object v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mDomainDealer:Lcom/netease/download/network/NetworkDealer;

    .line 40
    return-void
.end method

.method static synthetic access$1(Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;)J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method private hasNext()Z
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "result":Z
    iget-object v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    iget v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mIndex:I

    iget-object v2, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private next()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mIndex:I

    if-le v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 81
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mIndex:I

    .line 82
    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
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
    .line 167
    invoke-virtual {p0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->start()I

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
    invoke-virtual {p0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;Ljava/lang/String;)V
    .locals 1
    .param p1, "unit"    # Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p1, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;->zone:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mZone:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;->ipArrayList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mHttpdnsServicesIpList:Ljava/util/ArrayList;

    .line 55
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p2}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iput-object p2, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized reqCdnTargetIp(Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    const-string v3, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u521d\u59cb\u5316"

    invoke-static {v3}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 146
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

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "Host"

    iget-object v4, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mStartTime:J

    .line 149
    const/4 v3, 0x0

    const-string v4, "GET"

    iget-object v5, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mDomainDealer:Lcom/netease/download/network/NetworkDealer;

    invoke-static {p1, v3, v4, v1, v5}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 155
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

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->start()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 161
    :cond_0
    monitor-exit p0

    return v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 140
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
    .line 117
    const-string v2, "Httpdns\u73af\u8282--\u901a\u8fc7httpdns\u670d\u52a1\u5668\u89e3\u6790\u57df\u540d\uff0c\u5f00\u59cb"

    invoke-static {v2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/netease/download/util/TimeZoneUtil;->isZoneEast8()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    const/16 v0, 0x11

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const/16 v0, 0xb

    .line 125
    .local v0, "result":I
    invoke-direct {p0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->next()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netease/download/httpdns2/HttpDnsUtil;->getHttpdnsDomain2IpUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->reqCdnTargetIp(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
