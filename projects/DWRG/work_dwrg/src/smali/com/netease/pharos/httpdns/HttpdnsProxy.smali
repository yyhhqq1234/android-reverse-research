.class public Lcom/netease/pharos/httpdns/HttpdnsProxy;
.super Ljava/lang/Object;
.source "HttpdnsProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsProxy"

.field private static sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;


# instance fields
.field private mHttpdnsResolved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->mHttpdnsResolved:Z

    .line 51
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;

    invoke-direct {v0}, Lcom/netease/pharos/httpdns/HttpdnsProxy;-><init>()V

    sput-object v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    .line 59
    :cond_0
    sget-object v0, Lcom/netease/pharos/httpdns/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/pharos/httpdns/HttpdnsProxy;

    return-object v0
.end method

.method private start(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "domains"    # [Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Lcom/netease/pharos/util/Util;->isZoneEast8()Z

    move-result v13

    if-nez v13, :cond_1

    .line 82
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u4e0d\u5728\u4e1c\u516b\u533a"

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/16 v10, 0x11

    .line 150
    :cond_0
    :goto_0
    return v10

    .line 86
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v13, v0

    if-gtz v13, :cond_3

    .line 87
    :cond_2
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u53c2\u6570\u9519\u8bef"

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/16 v10, 0xe

    goto :goto_0

    .line 91
    :cond_3
    const/16 v10, 0xb

    .line 92
    .local v10, "result":I
    new-instance v11, Lcom/netease/pharos/httpdns/ServicesNodeCore;

    invoke-direct {v11}, Lcom/netease/pharos/httpdns/ServicesNodeCore;-><init>()V

    .line 93
    .local v11, "servicesNodeCore":Lcom/netease/pharos/httpdns/ServicesNodeCore;
    invoke-virtual {v11}, Lcom/netease/pharos/httpdns/ServicesNodeCore;->init()V

    .line 94
    invoke-virtual {v11}, Lcom/netease/pharos/httpdns/ServicesNodeCore;->start()I

    move-result v10

    .line 97
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0c\u8bf7\u6c42\u8fd4\u56de\u503c="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v13, "HttpdnsProxy"

    const-string v14, "==============================================="

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 101
    .local v5, "exs":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    if-nez v10, :cond_0

    .line 104
    const-string v13, "Httpdns\u73af\u8282--\u901a\u8fc7Httpdns\u89e3\u6790\u57df\u540d"

    invoke-static {v13}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/netease/pharos/httpdns/ServicesNodeParams;->getInstances()Lcom/netease/pharos/httpdns/ServicesNodeParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/pharos/httpdns/ServicesNodeParams;->getHttpdnsServicesUnitList()Ljava/util/ArrayList;

    move-result-object v3

    .line 106
    .local v3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;>;"
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/pharos/PharosProxy;->ismEB()Z

    move-result v9

    .line 107
    .local v9, "overSea":Z
    const/4 v12, 0x0

    .line 109
    .local v12, "unit":Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;
    if-eqz v9, :cond_4

    .line 110
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u6d77\u5916"

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/netease/pharos/httpdns/ServicesNodeParams;->getInstances()Lcom/netease/pharos/httpdns/ServicesNodeParams;

    move-result-object v13

    const-string v14, "oversea"

    invoke-virtual {v13, v14}, Lcom/netease/pharos/httpdns/ServicesNodeParams;->get(Ljava/lang/String;)Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;

    move-result-object v12

    .line 118
    :goto_1
    const/4 v7, 0x0

    .line 120
    .local v7, "httpdnsDomain2IpCore":Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v13, v0

    if-lt v8, v13, :cond_5

    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 142
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282--\u901a\u8fc7Httpdns\u89e3\u6790\u57df\u540d, \u89e3\u6790\u8fd4\u56de\u503c="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282--\u7ed3\u679c\u6570\u636e\uff0chttpdns\u89e3\u6790\u57df\u540d\u83b7\u53d6ip\u6570\u636e="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams;->getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;

    move-result-object v1

    .line 147
    .local v1, "HttpdnsDomain2IpUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;>;"
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->init(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 114
    .end local v1    # "HttpdnsDomain2IpUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/httpdns/HttpdnsDomain2IpParams$Unit;>;"
    .end local v7    # "httpdnsDomain2IpCore":Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
    .end local v8    # "i":I
    :cond_4
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u5927\u9646"

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/netease/pharos/httpdns/ServicesNodeParams;->getInstances()Lcom/netease/pharos/httpdns/ServicesNodeParams;

    move-result-object v13

    const-string v14, "mainland"

    invoke-virtual {v13, v14}, Lcom/netease/pharos/httpdns/ServicesNodeParams;->get(Ljava/lang/String;)Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;

    move-result-object v12

    goto :goto_1

    .line 121
    .restart local v7    # "httpdnsDomain2IpCore":Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
    .restart local v8    # "i":I
    :cond_5
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282-- i="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", unit="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", \u57df\u540d="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p2, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v7, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;

    .end local v7    # "httpdnsDomain2IpCore":Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
    invoke-direct {v7}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;-><init>()V

    .line 123
    .restart local v7    # "httpdnsDomain2IpCore":Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;
    aget-object v13, p2, v8

    invoke-virtual {v7, v12, v13}, Lcom/netease/pharos/httpdns/HttpdnsDomain2IpCore;->init(Lcom/netease/pharos/httpdns/ServicesNodeParams$HttpdnsServicesUnit;Ljava/lang/String;)V

    .line 124
    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 127
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 130
    .local v6, "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    const-string v14, "HttpdnsProxy"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Httpdns\u73af\u8282--\u8bf7\u6c42httpdns\u670d\u52a1\u5668\uff0c\u89e3\u6790\u57df\u540d\uff0c\u83b7\u53d6\u7ed3\u679c="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 132
    :catch_0
    move-exception v4

    .line 134
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto/16 :goto_3

    .line 136
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v4

    .line 138
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3
.end method


# virtual methods
.method public getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    .locals 2
    .param p1, "identify"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "result":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    check-cast v0, Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    .line 178
    .restart local v0    # "result":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_0
    return-object v0
.end method

.method public declared-synchronized synStart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "domains"    # [Ljava/lang/String;

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    .line 66
    .local v0, "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-nez v0, :cond_0

    .line 67
    const-string v1, "Httpdns\u73af\u8282--\u5f00\u59cbhttpdns\u6d41\u7a0b"

    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/pharos/httpdns/HttpdnsProxy;

    move-result-object v1

    invoke-direct {v1, p1, p2}, Lcom/netease/pharos/httpdns/HttpdnsProxy;->start(Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    const-string v1, "Httpdns\u73af\u8282--\u7ed3\u675fhttpdns\u6d41\u7a0b"

    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    const-string v1, "HttpdnsProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Httpdns\u73af\u8282--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5df2\u7ecf\u8bf7\u6c42\u8fc7httpdns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "unit":Lcom/netease/pharos/httpdns/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
