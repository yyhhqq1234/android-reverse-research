.class Lcom/netease/httpdns/HttpDnsService$4;
.super Ljava/lang/Object;
.source "HttpDnsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/httpdns/HttpDnsService;->getDomainAvailableCache(Ljava/util/List;Lcom/netease/httpdns/listener/MultiHttpDnsListener;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/httpdns/HttpDnsService;

.field final synthetic val$availableCacheMap:Ljava/util/Map;

.field final synthetic val$dnsOptions:Lcom/netease/httpdns/configuration/DnsOptions;

.field final synthetic val$listener:Lcom/netease/httpdns/listener/MultiHttpDnsListener;

.field final synthetic val$needRequestDomainSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/netease/httpdns/HttpDnsService;Lcom/netease/httpdns/configuration/DnsOptions;Ljava/util/Set;Ljava/util/Map;Lcom/netease/httpdns/listener/MultiHttpDnsListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService$4;->this$0:Lcom/netease/httpdns/HttpDnsService;

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$dnsOptions:Lcom/netease/httpdns/configuration/DnsOptions;

    iput-object p3, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$needRequestDomainSet:Ljava/util/Set;

    iput-object p4, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$availableCacheMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$listener:Lcom/netease/httpdns/listener/MultiHttpDnsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$dnsOptions:Lcom/netease/httpdns/configuration/DnsOptions;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/httpdns/configuration/DnsOptions;->isRefreshExpiringCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/netease/httpdns/cache/DomainCacheManager;->getAdventDomain()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-static {v0}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$needRequestDomainSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$4;->this$0:Lcom/netease/httpdns/HttpDnsService;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$needRequestDomainSet:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/netease/httpdns/HttpDnsService;->access$000(Lcom/netease/httpdns/HttpDnsService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$availableCacheMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 294
    invoke-static {v0}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/httpdns/module/DomainInfo;

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    iget-object v3, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$dnsOptions:Lcom/netease/httpdns/configuration/DnsOptions;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/httpdns/configuration/DnsOptions;->isDomainNeedMergeLocalDNS(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->mergeLocalDNSResult()V

    .line 302
    :cond_2
    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService$4;->val$listener:Lcom/netease/httpdns/listener/MultiHttpDnsListener;

    if-eqz v0, :cond_4

    .line 308
    invoke-interface {v0, v1}, Lcom/netease/httpdns/listener/MultiHttpDnsListener;->onIpsParsed(Ljava/util/Map;)V

    :cond_4
    return-void
.end method
