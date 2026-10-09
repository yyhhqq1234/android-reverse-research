.class public Lcom/netease/httpdns/HttpDnsService;
.super Ljava/lang/Object;
.source "HttpDnsService.java"


# static fields
.field private static final DELAY_CHANGE_NETWORK:I = 0x1f4

.field private static final HTTP:Ljava/lang/String; = "http://"

.field private static final HTTPS:Ljava/lang/String; = "https://"

.field private static final LIST_INIT_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/netease/httpdns/HttpDnsService;

.field private static isFirstStart:Z

.field private static isSDKStart:Z


# instance fields
.field private context:Landroid/content/Context;

.field private currentNetworkType:Ljava/lang/String;

.field private listener:Lcom/netease/httpdns/listener/RequestStatusListener;

.field private monitor:Lcom/netease/httpdns/util/NetworkMonitor;

.field private options:Lcom/netease/httpdns/configuration/DnsOptions;

.field private preNetworkType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/httpdns/HttpDnsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 57
    sput-boolean v0, Lcom/netease/httpdns/HttpDnsService;->isFirstStart:Z

    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/netease/httpdns/HttpDnsService;->isSDKStart:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->preNetworkType:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->currentNetworkType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/httpdns/HttpDnsService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/netease/httpdns/HttpDnsService;->handlerMultiHttpDNS(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private finishCurrentScore(Ljava/lang/String;)V
    .locals 1

    .line 641
    sget-boolean v0, Lcom/netease/httpdns/HttpDnsService;->isFirstStart:Z

    if-nez v0, :cond_0

    .line 642
    invoke-static {}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->getInstance()Lcom/netease/httpdns/score/socketScore/RttScoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->finishCurrentScore(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getDomainAvailableCache(Ljava/util/List;Lcom/netease/httpdns/listener/MultiHttpDnsListener;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/httpdns/listener/MultiHttpDnsListener;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/httpdns/module/DomainInfo;",
            ">;"
        }
    .end annotation

    .line 251
    invoke-static {p1}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {p1}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "getSingleIpByAsync domainList isEmpty."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 256
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 257
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 259
    new-instance v0, Lcom/netease/httpdns/HttpDnsService$2;

    invoke-direct {v0, p0, v6}, Lcom/netease/httpdns/HttpDnsService$2;-><init>(Lcom/netease/httpdns/HttpDnsService;Ljava/util/Map;)V

    new-instance v1, Lcom/netease/httpdns/HttpDnsService$3;

    invoke-direct {v1, p0, v3}, Lcom/netease/httpdns/HttpDnsService$3;-><init>(Lcom/netease/httpdns/HttpDnsService;Ljava/util/Set;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/netease/httpdns/HttpDnsService;->DomainResolvePreprocessing(Ljava/util/List;Lcom/netease/android/extension/func/NFunc1;Lcom/netease/android/extension/func/NFunc1;)V

    .line 275
    invoke-virtual {p0}, Lcom/netease/httpdns/HttpDnsService;->getOptions()Lcom/netease/httpdns/configuration/DnsOptions;

    move-result-object v2

    .line 278
    invoke-static {v3}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 279
    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {p1}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 280
    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "needRequestDomainSet is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    .line 281
    :cond_2
    new-instance p1, Lcom/netease/httpdns/HttpDnsService$4;

    move-object v0, p1

    move-object v1, p0

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/httpdns/HttpDnsService$4;-><init>(Lcom/netease/httpdns/HttpDnsService;Lcom/netease/httpdns/configuration/DnsOptions;Ljava/util/Set;Ljava/util/Map;Lcom/netease/httpdns/listener/MultiHttpDnsListener;)V

    invoke-static {p1}, Lcom/netease/httpdns/configuration/ThreadPool;->submit(Ljava/lang/Runnable;)V

    :cond_3
    return-object v6
.end method

.method private getDomainInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/netease/httpdns/module/DomainInfo;",
            ">;"
        }
    .end annotation

    .line 501
    invoke-static {p1}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 505
    :cond_0
    new-instance v0, Lcom/netease/httpdns/request/DomainRequestTask;

    invoke-direct {v0}, Lcom/netease/httpdns/request/DomainRequestTask;-><init>()V

    .line 506
    invoke-virtual {v0, p1}, Lcom/netease/httpdns/request/DomainRequestTask;->setDomains(Ljava/util/List;)V

    .line 507
    iget-object v2, p0, Lcom/netease/httpdns/HttpDnsService;->listener:Lcom/netease/httpdns/listener/RequestStatusListener;

    invoke-virtual {v0, v2}, Lcom/netease/httpdns/request/DomainRequestTask;->setListener(Lcom/netease/httpdns/listener/RequestStatusListener;)V

    .line 508
    invoke-static {}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getInstance()Lcom/netease/httpdns/request/HttpDnsRequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getDomainResult(Lcom/netease/httpdns/request/DomainRequestTask;)Lcom/netease/httpdns/module/NAHttpEntity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 513
    invoke-static {}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getInstance()Lcom/netease/httpdns/request/HttpDnsRequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getDomainResult(Lcom/netease/httpdns/request/DomainRequestTask;)Lcom/netease/httpdns/module/NAHttpEntity;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_3

    .line 517
    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {p1}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getDomainInfoList, httpResponse is null !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    :cond_2
    return-object v1

    .line 522
    :cond_3
    invoke-static {}, Lcom/netease/httpdns/util/NetworkUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-virtual {v2}, Lcom/netease/httpdns/module/NAHttpEntity;->getResponse()Ljava/lang/String;

    move-result-object v7

    .line 527
    sget-object v3, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {v3}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 528
    sget-object v3, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "handlerMultiHttpDNS /d response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    .line 530
    :cond_4
    invoke-static {v7, v0}, Lcom/netease/httpdns/module/DomainInfo;->parseDomainInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 532
    new-instance v8, Ljava/util/HashMap;

    const/16 v3, 0x8

    invoke-direct {v8, v3}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_a

    .line 533
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 537
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/httpdns/module/DomainInfo;

    if-nez v3, :cond_6

    goto :goto_0

    .line 543
    :cond_6
    invoke-virtual {v3}, Lcom/netease/httpdns/module/DomainInfo;->isScore()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    .line 544
    invoke-virtual {v3, v4}, Lcom/netease/httpdns/module/DomainInfo;->setPending(Z)V

    .line 545
    new-instance v4, Lcom/netease/httpdns/module/DomainInfo;

    invoke-direct {v4, v3}, Lcom/netease/httpdns/module/DomainInfo;-><init>(Lcom/netease/httpdns/module/DomainInfo;)V

    .line 547
    new-instance v5, Lcom/netease/httpdns/HttpDnsService$7;

    invoke-direct {v5, p0, v4}, Lcom/netease/httpdns/HttpDnsService$7;-><init>(Lcom/netease/httpdns/HttpDnsService;Lcom/netease/httpdns/module/DomainInfo;)V

    invoke-static {v5}, Lcom/netease/httpdns/configuration/ThreadPool;->submit(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 558
    :cond_7
    invoke-static {v3}, Lcom/netease/httpdns/HttpDnsService;->saveIps(Lcom/netease/httpdns/module/DomainInfo;)Lcom/netease/httpdns/module/DomainInfo;

    move-result-object v3

    .line 562
    :goto_1
    invoke-static {}, Lcom/netease/httpdns/ipc/ResultNotifyService;->getInstance()Lcom/netease/httpdns/ipc/ResultNotifyService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/netease/httpdns/ipc/ResultNotifyService;->notifyDomainResult(Lcom/netease/httpdns/module/DomainInfo;)V

    .line 564
    invoke-virtual {v3}, Lcom/netease/httpdns/module/DomainInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netease/httpdns/module/DomainInfo;->getAvailableIps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 567
    :cond_8
    iget-object v3, p0, Lcom/netease/httpdns/HttpDnsService;->listener:Lcom/netease/httpdns/listener/RequestStatusListener;

    if-eqz v3, :cond_9

    .line 568
    invoke-virtual {v2}, Lcom/netease/httpdns/module/NAHttpEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/netease/httpdns/module/NAHttpEntity;->getResponseCode()I

    move-result v6

    invoke-interface/range {v3 .. v8}, Lcom/netease/httpdns/listener/RequestStatusListener;->requestSuccess(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    :cond_9
    return-object v0

    :cond_a
    :goto_2
    return-object v1
.end method

.method private getDomainServerIpList(Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/httpdns/listener/SingleHttpDnsListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-direct {p0, p1}, Lcom/netease/httpdns/HttpDnsService;->modifyDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 393
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v0, Lcom/netease/httpdns/HttpDnsService$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/httpdns/HttpDnsService$5;-><init>(Lcom/netease/httpdns/HttpDnsService;Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)V

    invoke-direct {p0, v2, v0}, Lcom/netease/httpdns/HttpDnsService;->getDomainAvailableCache(Ljava/util/List;Lcom/netease/httpdns/listener/MultiHttpDnsListener;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 418
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 419
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/httpdns/module/DomainInfo;

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p1}, Lcom/netease/httpdns/module/DomainInfo;->getAvailableIps()Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getInstance()Lcom/netease/httpdns/HttpDnsService;
    .locals 2

    .line 72
    sget-object v0, Lcom/netease/httpdns/HttpDnsService;->instance:Lcom/netease/httpdns/HttpDnsService;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/netease/httpdns/HttpDnsService;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/netease/httpdns/HttpDnsService;->instance:Lcom/netease/httpdns/HttpDnsService;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/netease/httpdns/HttpDnsService;

    invoke-direct {v1}, Lcom/netease/httpdns/HttpDnsService;-><init>()V

    sput-object v1, Lcom/netease/httpdns/HttpDnsService;->instance:Lcom/netease/httpdns/HttpDnsService;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/httpdns/HttpDnsService;->instance:Lcom/netease/httpdns/HttpDnsService;

    return-object v0
.end method

.method private handlerMultiHttpDNS(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/netease/httpdns/module/DomainInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 477
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 481
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    :try_start_0
    invoke-static {}, Lcom/netease/httpdns/request/filter/HttpDnsDomainCompositeFilter;->getInstance()Lcom/netease/httpdns/request/filter/HttpDnsDomainCompositeFilter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/netease/httpdns/request/filter/HttpDnsDomainCompositeFilter;->handler(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 486
    invoke-static {p1}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/httpdns/HttpDnsService;->getDomainInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 491
    invoke-static {}, Lcom/netease/httpdns/request/filter/HttpDnsDomainCompositeFilter;->getInstance()Lcom/netease/httpdns/request/filter/HttpDnsDomainCompositeFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/httpdns/request/filter/HttpDnsDomainCompositeFilter;->release(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 493
    sget-object v0, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {v0}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    sget-object v0, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "handlerMultiHttpDNS error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/android/extension/log/NLogger;->e(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private modifyDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 667
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "http://"

    .line 671
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 672
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "https://"

    .line 675
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public static saveIps(Lcom/netease/httpdns/module/DomainInfo;)Lcom/netease/httpdns/module/DomainInfo;
    .locals 2

    if-eqz p0, :cond_5

    .line 574
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 578
    :cond_0
    invoke-static {}, Lcom/netease/httpdns/cache/ServerCacheManager;->getInstance()Lcom/netease/httpdns/cache/ServerCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/cache/ServerCacheManager;->getCurrentIpStackType()Lcom/netease/httpdns/module/IpStackType;

    move-result-object v0

    .line 579
    sget-object v1, Lcom/netease/httpdns/HttpDnsService$9;->$SwitchMap$com$netease$httpdns$module$IpStackType:[I

    invoke-virtual {v0}, Lcom/netease/httpdns/module/IpStackType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->getScorePrefer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ipv6"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->mergeIpv6Result()V

    .line 591
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->mergeIpv4Result()V

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->mergeIpv4Result()V

    .line 594
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->mergeIpv6Result()V

    goto :goto_0

    .line 585
    :cond_3
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->getIpv6s()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/httpdns/module/DomainInfo;->setAvailableIps(Ljava/util/List;)V

    goto :goto_0

    .line 581
    :cond_4
    invoke-virtual {p0}, Lcom/netease/httpdns/module/DomainInfo;->getIps()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/httpdns/module/DomainInfo;->setAvailableIps(Ljava/util/List;)V

    :goto_0
    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, v0}, Lcom/netease/httpdns/module/DomainInfo;->setPending(Z)V

    return-object p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DomainResolvePreprocessing(Ljava/util/List;Lcom/netease/android/extension/func/NFunc1;Lcom/netease/android/extension/func/NFunc1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/android/extension/func/NFunc1<",
            "Lcom/netease/httpdns/module/DomainInfo;",
            ">;",
            "Lcom/netease/android/extension/func/NFunc1<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-static {p1}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {p1}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "getDomainDispatchEntity domainList isEmpty."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    :cond_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/netease/httpdns/HttpDnsService;->getOptions()Lcom/netease/httpdns/configuration/DnsOptions;

    move-result-object v0

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "getSingleIpByAsync domain :"

    if-eqz v2, :cond_3

    .line 330
    sget-object v2, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {v2}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    sget-object v2, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isEmpty."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {v1}, Lcom/netease/httpdns/cache/DomainCacheManager;->isDomainInBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 336
    sget-object v2, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {v2}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    sget-object v2, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isDomainInBlackList."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_4
    invoke-static {v1}, Lcom/netease/httpdns/cache/DomainCacheManager;->getDomainCache(Ljava/lang/String;)Lcom/netease/httpdns/module/DomainInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 345
    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->isUseless()Z

    move-result v3

    if-nez v3, :cond_8

    .line 346
    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->isCacheExpires()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 354
    :cond_5
    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->isWaiting()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_0

    .line 361
    :cond_6
    invoke-virtual {v0, v1}, Lcom/netease/httpdns/configuration/DnsOptions;->isDomainNeedMergeLocalDNS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 362
    invoke-virtual {v2}, Lcom/netease/httpdns/module/DomainInfo;->mergeLocalDNSResult()V

    .line 364
    :cond_7
    invoke-interface {p2, v2}, Lcom/netease/android/extension/func/NFunc1;->call(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 348
    :cond_8
    :goto_1
    invoke-interface {p3, v1}, Lcom/netease/android/extension/func/NFunc1;->call(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public clearDNSCache()V
    .locals 0

    .line 213
    invoke-static {}, Lcom/netease/httpdns/cache/DomainCacheManager;->clearDomainCache()V

    return-void
.end method

.method public clearServerCache()V
    .locals 1

    .line 220
    invoke-static {}, Lcom/netease/httpdns/cache/ServerCacheManager;->getInstance()Lcom/netease/httpdns/cache/ServerCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/cache/ServerCacheManager;->clearIpv4ServerAddress()V

    .line 221
    invoke-static {}, Lcom/netease/httpdns/cache/ServerCacheManager;->getInstance()Lcom/netease/httpdns/cache/ServerCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/cache/ServerCacheManager;->clearIpv6ServerAddress()V

    return-void
.end method

.method public detectIps(Ljava/util/List;Lcom/netease/httpdns/score/socketScore/DetectIpsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/httpdns/score/socketScore/DetectIpsListener;",
            ")V"
        }
    .end annotation

    .line 721
    invoke-static {}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->getInstance()Lcom/netease/httpdns/score/socketScore/RttScoreManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->detectIps(Ljava/util/List;Lcom/netease/httpdns/score/socketScore/DetectIpsListener;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDomainFromIp(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-static {p1}, Lcom/netease/httpdns/cache/DomainCacheManager;->getDomainFromIp(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getIpListByAsync(Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/httpdns/listener/SingleHttpDnsListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/netease/httpdns/HttpDnsService;->getDomainServerIpList(Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMultIpsWithAsync(Ljava/util/List;Lcom/netease/httpdns/listener/MultHttpDnsListener;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/httpdns/listener/MultHttpDnsListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/httpdns/module/DomainInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 436
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    new-instance v1, Lcom/netease/httpdns/HttpDnsService$6;

    invoke-direct {v1, p0, p2}, Lcom/netease/httpdns/HttpDnsService$6;-><init>(Lcom/netease/httpdns/HttpDnsService;Lcom/netease/httpdns/listener/MultHttpDnsListener;)V

    invoke-direct {p0, p1, v1}, Lcom/netease/httpdns/HttpDnsService;->getDomainAvailableCache(Ljava/util/List;Lcom/netease/httpdns/listener/MultiHttpDnsListener;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 453
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 454
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOptions()Lcom/netease/httpdns/configuration/DnsOptions;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lcom/netease/httpdns/configuration/DnsOptions$Builder;->createSimpler()Lcom/netease/httpdns/configuration/DnsOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    return-object v0
.end method

.method public getRequestStatusListener()Lcom/netease/httpdns/listener/RequestStatusListener;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->listener:Lcom/netease/httpdns/listener/RequestStatusListener;

    return-object v0
.end method

.method public getSingleIpByAsync(Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)Ljava/lang/String;
    .locals 0

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/netease/httpdns/HttpDnsService;->getDomainServerIpList(Ljava/lang/String;Lcom/netease/httpdns/listener/SingleHttpDnsListener;)Ljava/util/List;

    move-result-object p1

    .line 243
    invoke-static {p1}, Lcom/netease/httpdns/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 245
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/netease/httpdns/HttpDnsService;->init(Landroid/content/Context;Lcom/netease/httpdns/configuration/DnsOptions;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/netease/httpdns/configuration/DnsOptions;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 95
    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    goto :goto_0

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    if-nez p2, :cond_1

    .line 100
    invoke-static {}, Lcom/netease/httpdns/configuration/DnsOptions$Builder;->createSimpler()Lcom/netease/httpdns/configuration/DnsOptions;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    .line 105
    :cond_1
    :goto_0
    sget-object p2, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    invoke-virtual {p2}, Lcom/netease/android/extension/log/NLogger;->showLog()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 106
    sget-object p2, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "options: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    invoke-virtual {v1}, Lcom/netease/httpdns/configuration/DnsOptions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netease/android/extension/log/NLogger;->i(Ljava/lang/String;)I

    .line 109
    :cond_2
    iget-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    invoke-virtual {p2}, Lcom/netease/httpdns/configuration/DnsOptions;->getCustomSort()Lcom/netease/httpdns/listener/ISort;

    move-result-object p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    invoke-virtual {p2}, Lcom/netease/httpdns/configuration/DnsOptions;->isOpenScore()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 110
    invoke-static {}, Lcom/netease/httpdns/score/ScoreSort;->getInstance()Lcom/netease/httpdns/score/ScoreSort;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/httpdns/score/ScoreSort;->init(Landroid/content/Context;)V

    .line 114
    :cond_3
    invoke-static {}, Lcom/netease/httpdns/ipc/ResultNotifyService;->getInstance()Lcom/netease/httpdns/ipc/ResultNotifyService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/httpdns/ipc/ResultNotifyService;->start()V

    .line 117
    new-instance p2, Lcom/netease/httpdns/util/NetworkMonitor;

    invoke-direct {p2}, Lcom/netease/httpdns/util/NetworkMonitor;-><init>()V

    iput-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->monitor:Lcom/netease/httpdns/util/NetworkMonitor;

    .line 118
    iget-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->monitor:Lcom/netease/httpdns/util/NetworkMonitor;

    invoke-virtual {p2, p1}, Lcom/netease/httpdns/util/NetworkMonitor;->start(Landroid/content/Context;)V

    .line 120
    new-instance p1, Lcom/netease/httpdns/provider/dal/DNSCacheOpenHelper;

    iget-object p2, p0, Lcom/netease/httpdns/HttpDnsService;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/netease/httpdns/provider/dal/DNSCacheOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/netease/httpdns/provider/dal/DNSCacheOpenHelper;->init()V

    .line 122
    new-instance p1, Lcom/netease/httpdns/HttpDnsService$1;

    invoke-direct {p1, p0}, Lcom/netease/httpdns/HttpDnsService$1;-><init>(Lcom/netease/httpdns/HttpDnsService;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/netease/httpdns/configuration/ThreadPool;->schedule(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 130
    sput-boolean p1, Lcom/netease/httpdns/HttpDnsService;->isSDKStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 133
    sget-object p2, Lcom/netease/httpdns/util/S;->LOG:Lcom/netease/android/extension/log/NLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/netease/httpdns/HttpDnsService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "init, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/netease/android/extension/log/NLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public isSDKStart()Z
    .locals 1

    .line 144
    sget-boolean v0, Lcom/netease/httpdns/HttpDnsService;->isSDKStart:Z

    return v0
.end method

.method public refreshPreDomain()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->preNetworkType:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/httpdns/cache/DomainCacheManager;->updateWhenNetworkChange(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 653
    new-instance v1, Lcom/netease/httpdns/HttpDnsService$8;

    invoke-direct {v1, p0, v0}, Lcom/netease/httpdns/HttpDnsService$8;-><init>(Lcom/netease/httpdns/HttpDnsService;Ljava/util/List;)V

    invoke-static {v1}, Lcom/netease/httpdns/configuration/ThreadPool;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeDetectIpsListener()V
    .locals 1

    .line 711
    invoke-static {}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->getInstance()Lcom/netease/httpdns/score/socketScore/RttScoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->removeDetectIpsListener()V

    return-void
.end method

.method public removeIpStackTypeListener()V
    .locals 1

    .line 695
    invoke-static {}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getInstance()Lcom/netease/httpdns/request/HttpDnsRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->removeIpStackTypeListener()V

    return-void
.end method

.method public removeRequestStatusListener()V
    .locals 1

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->listener:Lcom/netease/httpdns/listener/RequestStatusListener;

    return-void
.end method

.method public setDetectIpsListener(Lcom/netease/httpdns/score/socketScore/DetectIpsListener;)V
    .locals 1

    .line 704
    invoke-static {}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->getInstance()Lcom/netease/httpdns/score/socketScore/RttScoreManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/httpdns/score/socketScore/RttScoreManager;->setDetectIpsListener(Lcom/netease/httpdns/score/socketScore/DetectIpsListener;)V

    return-void
.end method

.method public setIpStackTypeListener(Lcom/netease/httpdns/cache/IpStackTypeListener;)V
    .locals 1

    .line 688
    invoke-static {}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getInstance()Lcom/netease/httpdns/request/HttpDnsRequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->setIpStackTypeListener(Lcom/netease/httpdns/cache/IpStackTypeListener;)V

    return-void
.end method

.method public setOptions(Lcom/netease/httpdns/configuration/DnsOptions;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 205
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService;->options:Lcom/netease/httpdns/configuration/DnsOptions;

    :cond_0
    return-void
.end method

.method public setRequestStatusListener(Lcom/netease/httpdns/listener/RequestStatusListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 164
    iput-object p1, p0, Lcom/netease/httpdns/HttpDnsService;->listener:Lcom/netease/httpdns/listener/RequestStatusListener;

    :cond_0
    return-void
.end method

.method public stopNetworkMonitor()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->monitor:Lcom/netease/httpdns/util/NetworkMonitor;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/netease/httpdns/util/NetworkMonitor;->stop()V

    :cond_0
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 138
    invoke-static {}, Lcom/netease/httpdns/ipc/ResultNotifyService;->getInstance()Lcom/netease/httpdns/ipc/ResultNotifyService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/ipc/ResultNotifyService;->destroy()V

    .line 139
    invoke-virtual {p0}, Lcom/netease/httpdns/HttpDnsService;->stopNetworkMonitor()V

    const/4 v0, 0x0

    .line 140
    sput-boolean v0, Lcom/netease/httpdns/HttpDnsService;->isSDKStart:Z

    return-void
.end method

.method public updateCached()V
    .locals 3

    .line 610
    invoke-static {}, Lcom/netease/httpdns/util/NetworkUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/netease/httpdns/HttpDnsService;->currentNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    sget-boolean v1, Lcom/netease/httpdns/HttpDnsService;->isFirstStart:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 618
    sput-boolean v1, Lcom/netease/httpdns/HttpDnsService;->isFirstStart:Z

    .line 619
    iput-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->currentNetworkType:Ljava/lang/String;

    return-void

    .line 622
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  preNetworkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/httpdns/HttpDnsService;->currentNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/httpdns/log/DNSLog;->i(Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/netease/httpdns/HttpDnsService;->currentNetworkType:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/httpdns/HttpDnsService;->preNetworkType:Ljava/lang/String;

    .line 626
    iput-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->currentNetworkType:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/netease/httpdns/HttpDnsService;->preNetworkType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/httpdns/HttpDnsService;->finishCurrentScore(Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/netease/httpdns/cache/ServerCacheManager;->getInstance()Lcom/netease/httpdns/cache/ServerCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/httpdns/cache/ServerCacheManager;->clearAllServerAddress()V

    .line 634
    invoke-static {}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->getInstance()Lcom/netease/httpdns/request/HttpDnsRequestManager;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/netease/httpdns/request/HttpDnsRequestManager;->serverRequest(J)V

    :cond_2
    :goto_0
    return-void
.end method
