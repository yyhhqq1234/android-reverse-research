.class public Lcom/netease/download/httpdns2/HttpdnsProxy;
.super Ljava/lang/Object;
.source "HttpdnsProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpdnsProxy"

.field private static sHttpdnsProxy:Lcom/netease/download/httpdns2/HttpdnsProxy;


# instance fields
.field private mHttpdnsResolved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/httpdns2/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/download/httpdns2/HttpdnsProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/download/httpdns2/HttpdnsProxy;->mHttpdnsResolved:Z

    .line 59
    return-void
.end method

.method public static getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/netease/download/httpdns2/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/download/httpdns2/HttpdnsProxy;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/netease/download/httpdns2/HttpdnsProxy;

    invoke-direct {v0}, Lcom/netease/download/httpdns2/HttpdnsProxy;-><init>()V

    sput-object v0, Lcom/netease/download/httpdns2/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/download/httpdns2/HttpdnsProxy;

    .line 67
    :cond_0
    sget-object v0, Lcom/netease/download/httpdns2/HttpdnsProxy;->sHttpdnsProxy:Lcom/netease/download/httpdns2/HttpdnsProxy;

    return-object v0
.end method

.method private start(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "domains"    # [Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lcom/netease/download/util/TimeZoneUtil;->isZoneEast8()Z

    move-result v13

    if-nez v13, :cond_1

    .line 91
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u4e0d\u5728\u4e1c\u516b\u533a"

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/16 v10, 0x11

    .line 159
    :cond_0
    :goto_0
    return v10

    .line 95
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v13, v0

    if-gtz v13, :cond_3

    .line 96
    :cond_2
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u53c2\u6570\u9519\u8bef"

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v10, 0xe

    goto :goto_0

    .line 100
    :cond_3
    const/16 v10, 0xb

    .line 101
    .local v10, "result":I
    new-instance v11, Lcom/netease/download/httpdns2/ServicesNodeCore;

    invoke-direct {v11}, Lcom/netease/download/httpdns2/ServicesNodeCore;-><init>()V

    .line 102
    .local v11, "servicesNodeCore":Lcom/netease/download/httpdns2/ServicesNodeCore;
    invoke-virtual {v11}, Lcom/netease/download/httpdns2/ServicesNodeCore;->init()V

    .line 103
    invoke-virtual {v11}, Lcom/netease/download/httpdns2/ServicesNodeCore;->start()I

    move-result v10

    .line 106
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Htttpdns\u670d\u52a1\u5668ip\uff0c\u8bf7\u6c42\u8fd4\u56de\u503c="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v13, "HttpdnsProxy"

    const-string v14, "==============================================="

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 110
    .local v5, "exs":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    if-nez v10, :cond_0

    .line 113
    const-string v13, "Httpdns\u73af\u8282--\u901a\u8fc7Httpdns\u89e3\u6790\u57df\u540d"

    invoke-static {v13}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/netease/download/httpdns2/ServicesNodeParams;->getInstances()Lcom/netease/download/httpdns2/ServicesNodeParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/download/httpdns2/ServicesNodeParams;->getHttpdnsServicesUnitList()Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;>;"
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "overSea":Ljava/lang/String;
    const/4 v12, 0x0

    .line 118
    .local v12, "unit":Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;
    const-string v13, "1"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "2"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 119
    :cond_4
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u6d77\u5916"

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/netease/download/httpdns2/ServicesNodeParams;->getInstances()Lcom/netease/download/httpdns2/ServicesNodeParams;

    move-result-object v13

    const-string v14, "oversea"

    invoke-virtual {v13, v14}, Lcom/netease/download/httpdns2/ServicesNodeParams;->get(Ljava/lang/String;)Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;

    move-result-object v12

    .line 127
    :goto_1
    const/4 v7, 0x0

    .line 129
    .local v7, "httpdnsDomain2IpCore":Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v13, v0

    if-lt v8, v13, :cond_6

    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 151
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282--\u901a\u8fc7Httpdns\u89e3\u6790\u57df\u540d, \u89e3\u6790\u8fd4\u56de\u503c="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282--\u7ed3\u679c\u6570\u636e\uff0chttpdns\u89e3\u6790\u57df\u540d\u83b7\u53d6ip\u6570\u636e="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->getInstances()Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->getInstances()Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams;->getHttpdnsDomain2IpUnitList()Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    .local v1, "HttpdnsDomain2IpUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;>;"
    invoke-static {}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->init(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "HttpdnsDomain2IpUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/httpdns2/HttpdnsDomain2IpParams$Unit;>;"
    .end local v7    # "httpdnsDomain2IpCore":Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;
    .end local v8    # "i":I
    :cond_5
    const-string v13, "HttpdnsProxy"

    const-string v14, "Httpdns\u73af\u8282--\u5927\u9646"

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/netease/download/httpdns2/ServicesNodeParams;->getInstances()Lcom/netease/download/httpdns2/ServicesNodeParams;

    move-result-object v13

    const-string v14, "mainland"

    invoke-virtual {v13, v14}, Lcom/netease/download/httpdns2/ServicesNodeParams;->get(Ljava/lang/String;)Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;

    move-result-object v12

    goto :goto_1

    .line 130
    .restart local v7    # "httpdnsDomain2IpCore":Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;
    .restart local v8    # "i":I
    :cond_6
    const-string v13, "HttpdnsProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Httpdns\u73af\u8282-- i="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", unit="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;->toString()Ljava/lang/String;

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

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v7, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;

    .end local v7    # "httpdnsDomain2IpCore":Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;
    invoke-direct {v7}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;-><init>()V

    .line 132
    .restart local v7    # "httpdnsDomain2IpCore":Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;
    aget-object v13, p2, v8

    invoke-virtual {v7, v12, v13}, Lcom/netease/download/httpdns2/HttpdnsDomain2IpCore;->init(Lcom/netease/download/httpdns2/ServicesNodeParams$HttpdnsServicesUnit;Ljava/lang/String;)V

    .line 133
    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 136
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 139
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

    invoke-static {v14, v15}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 141
    :catch_0
    move-exception v4

    .line 143
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto/16 :goto_3

    .line 145
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3
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
.method public clean()V
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    return-void
.end method

.method public containKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "identify"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "result":Z
    invoke-static {}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v0, 0x1

    .line 169
    :cond_0
    return v0
.end method

.method public getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    .locals 2
    .param p1, "identify"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "result":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    invoke-static {}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    check-cast v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    .line 187
    .restart local v0    # "result":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_0
    return-object v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 3
    .param p1, "identify"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    .line 196
    .local v0, "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->hasNext()Z

    move-result v1

    .line 201
    .end local v0    # "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_0
    return v1
.end method

.method public isLast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, "result":Z
    const/4 v0, 0x0

    .line 208
    .local v0, "count":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v3

    .line 211
    .local v3, "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v3, :cond_1

    .line 212
    iget-object v2, v3, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->mHttpdnsUrlUnitList:Ljava/util/ArrayList;

    .line 214
    .local v2, "httpdnsUrlUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 223
    .end local v2    # "httpdnsUrlUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .end local v3    # "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_1
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 224
    const/4 v4, 0x1

    .line 227
    :cond_2
    return v4

    .line 214
    .restart local v2    # "httpdnsUrlUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;>;"
    .restart local v3    # "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 216
    .local v1, "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v6, v1, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    invoke-static {v6}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public next(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    .locals 3
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 237
    .local v1, "result":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    .line 240
    .local v0, "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->mHttpdnsUrlUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 241
    invoke-virtual {v0, p2}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->next(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v1

    .line 245
    .end local v0    # "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_0
    return-object v1
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "removeIp"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v3

    .line 254
    .local v3, "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-eqz v3, :cond_0

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, v3, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->mHttpdnsUrlUnitList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 267
    .end local v1    # "i":I
    .end local v3    # "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_0
    return-void

    .line 257
    .restart local v1    # "i":I
    .restart local v3    # "keyHttpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :cond_1
    iget-object v5, v3, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->mHttpdnsUrlUnitList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    .line 258
    .local v0, "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    iget-object v2, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    .line 259
    .local v2, "ip":Ljava/lang/String;
    iget-object v5, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    invoke-static {v5}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "pChannel":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 262
    iget-object v5, v3, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->mHttpdnsUrlUnitList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 256
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "identify"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->getInstances()Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore;->mHttpdnsUrlUnitMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-void
.end method

.method public declared-synchronized synStart(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "domains"    # [Ljava/lang/String;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    .line 74
    .local v0, "unit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    if-nez v0, :cond_0

    .line 75
    const-string v1, "Httpdns\u73af\u8282--\u5f00\u59cbhttpdns\u6d41\u7a0b"

    invoke-static {v1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v1

    invoke-direct {v1, p1, p2}, Lcom/netease/download/httpdns2/HttpdnsProxy;->start(Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/netease/download/reporter/ReportInfo;->mHttpDns:I

    .line 78
    const-string v1, "Httpdns\u73af\u8282--\u7ed3\u675fhttpdns\u6d41\u7a0b"

    invoke-static {v1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    .line 81
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

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v0    # "unit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
