.class public Lcom/netease/download/config2/PatchListCore;
.super Ljava/lang/Object;
.source "PatchListCore.java"

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
.field private static final TAG:Ljava/lang/String; = "PatchListCore"


# instance fields
.field private dealer:Lcom/netease/download/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/download/network/NetworkDealer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mLogData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMd5:Ljava/lang/String;

.field private mUrlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mContext:Landroid/content/Context;

    .line 56
    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mUrlPath:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mFileName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mMd5:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mFilePath:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mHost:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mLogData:Ljava/util/HashMap;

    .line 168
    new-instance v0, Lcom/netease/download/config2/PatchListCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/config2/PatchListCore$1;-><init>(Lcom/netease/download/config2/PatchListCore;)V

    iput-object v0, p0, Lcom/netease/download/config2/PatchListCore;->dealer:Lcom/netease/download/network/NetworkDealer;

    .line 52
    return-void
.end method

.method static synthetic access$1(Lcom/netease/download/config2/PatchListCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/download/config2/PatchListCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netease/download/config2/PatchListCore;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "ipAddr"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xb

    .line 251
    const-string v7, "\u4e0b\u8f7d\u914d\u7f6e\u5217\u8868\u6587\u4ef6"

    invoke-static {v7}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 252
    move-object v1, p2

    .line 254
    .local v1, "configUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 255
    .local v4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "domain":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 257
    const-string v7, "PatchListCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ipAddr="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v7, "/"

    invoke-static {v1, p3, v7}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 260
    .restart local v4    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v2, p0, Lcom/netease/download/config2/PatchListCore;->mHost:Ljava/lang/String;

    .line 261
    const-string v7, "Host"

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_0
    const-string v7, "PatchListCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "configUrl="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", domain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v5, 0x0

    .line 266
    .local v5, "lvsip":Z
    const-string v7, "Not_MD5_BUT_LVSIP"

    iget-object v8, p0, Lcom/netease/download/config2/PatchListCore;->mMd5:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    const-string v7, "PatchListCore"

    const-string v8, "\u6ca1\u6709\u8bbe\u7f6eMD5\uff0c\u76f4\u63a5\u8d70lvsip"

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v5, 0x1

    .line 269
    iput-object v11, p0, Lcom/netease/download/config2/PatchListCore;->mMd5:Ljava/lang/String;

    .line 271
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 276
    .local v6, "result":Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 278
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 279
    const/4 v7, 0x0

    const-string v8, "GET"

    iget-object v9, p0, Lcom/netease/download/config2/PatchListCore;->dealer:Lcom/netease/download/network/NetworkDealer;

    invoke-static {v1, v7, v8, v4, v9}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 280
    const-string v7, "PatchListCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "result="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff0cconfigUrl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 294
    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    return v7

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/net/SocketTimeoutException;
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 286
    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 288
    .local v3, "e":Ljava/io/FileNotFoundException;
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 289
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 291
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 292
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/netease/download/config2/PatchListCore;->start()I

    move-result v1

    .line 305
    .local v1, "result":I
    const/4 v0, 0x3

    .line 306
    .local v0, "mRetry":I
    :goto_0
    if-eqz v1, :cond_0

    if-gtz v0, :cond_1

    .line 312
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 307
    :cond_1
    const-string v2, "PatchListCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5217\u8868\u6587\u4ef6\u91cd\u65b0\u4e0b\u8f7d,\u8fd8\u6709"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6b21\u91cd\u8bd5\u673a\u4f1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    add-int/lit8 v0, v0, -0x1

    .line 309
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->clean()V

    .line 310
    invoke-virtual {p0}, Lcom/netease/download/config2/PatchListCore;->start()I

    move-result v1

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/netease/download/config2/PatchListCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "urlPath"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netease/download/config2/PatchListCore;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/netease/download/config2/PatchListCore;->mUrlPath:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/netease/download/config2/PatchListCore;->mMd5:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/netease/download/config2/PatchListCore;->mFilePath:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/netease/download/config2/PatchListCore;->mFileName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public start()I
    .locals 20

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v3, "state"

    const-string v4, "start"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v3, "filetype"

    const-string v4, "CFG"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/config2/PatchListCore;->mUrlPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v11

    .line 78
    .local v11, "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    const-string v2, "PatchListCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5217\u8868\u6587\u4ef6\u505aDNS\u89e3\u6790\uff0cDNS\u7ed3\u679c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 80
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v9, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/netease/download/reporter/KeyConst;->KEY_SERVER_LIST_HOST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/config2/PatchListCore;->mUrlPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/16 v18, 0xb

    .line 88
    .local v18, "result":I
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 89
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/dns/DnsParams$Unit;

    iget-object v2, v2, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/netease/download/reporter/ReportInfo;->mUpdateSvrIps:Ljava/util/ArrayList;

    .line 90
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    iget-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Lcom/netease/download/reporter/KeyConst;->KEY_SERVER_LIST_HOST:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/dns/DnsParams$Unit;

    iget-object v2, v2, Lcom/netease/download/dns/DnsParams$Unit;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 109
    :cond_1
    :goto_1
    if-eqz v18, :cond_6

    .line 110
    const-string v2, "\u91c7\u7528lvsip"

    invoke-static {v2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->isCteateIp()Z

    move-result v2

    if-nez v2, :cond_5

    .line 113
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/ConfigParams2;->getLvsipArray()[Ljava/lang/String;

    move-result-object v15

    .line 115
    .local v15, "ips":[Ljava/lang/String;
    :goto_2
    if-eqz v15, :cond_2

    array-length v2, v15

    if-gtz v2, :cond_4

    .line 117
    :cond_2
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v16

    .line 118
    .local v16, "oversea":Ljava/lang/String;
    const-string v2, "1"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 119
    :cond_3
    sget-object v15, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    .line 128
    .end local v16    # "oversea":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/netease/download/config2/Lvsip;->init([Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->createLvsip()V

    .line 132
    .end local v15    # "ips":[Ljava/lang/String;
    :cond_5
    :goto_4
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v18, :cond_10

    .line 142
    :cond_6
    new-instance v17, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/config2/PatchListCore;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v17, "pfile":Ljava/io/File;
    const-string v2, "PatchListCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u4e34\u65f6\u6587\u4ef6\u662f\u5426\u5b58\u5728="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-nez v18, :cond_11

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v3, "state"

    const-string v4, "finish"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v3, "filetype"

    const-string v4, "CFG"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mFilePath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v12, "file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 151
    const-string v2, "PatchListCore"

    const-string v3, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u4e0b\u8f7d\u6210\u529f\uff0c\u547d\u540d\u4e3a\u6b63\u5f0f\u6587\u4ef6"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 164
    .end local v12    # "file":Ljava/io/File;
    :cond_7
    :goto_5
    return v18

    .line 82
    .end local v17    # "pfile":Ljava/io/File;
    .end local v18    # "result":I
    :cond_8
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v2

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v9, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    .restart local v18    # "result":I
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/netease/download/dns/DnsParams$Unit;

    .line 92
    .local v19, "unit":Lcom/netease/download/dns/DnsParams$Unit;
    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 94
    .local v14, "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 102
    :goto_6
    const-string v3, "PatchListCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadConfig result2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-nez v18, :cond_0

    goto/16 :goto_1

    .line 94
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 95
    .local v13, "ip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/config2/PatchListCore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/config2/PatchListCore;->mUrlPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v13}, Lcom/netease/download/config2/PatchListCore;->downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 96
    const-string v4, "PatchListCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "downloadConfig result1="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-nez v18, :cond_a

    goto :goto_6

    .line 113
    .end local v13    # "ip":Ljava/lang/String;
    .end local v14    # "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "unit":Lcom/netease/download/dns/DnsParams$Unit;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 121
    .restart local v15    # "ips":[Ljava/lang/String;
    .restart local v16    # "oversea":Ljava/lang/String;
    :cond_d
    const-string v2, "0"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "-1"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 122
    :cond_e
    sget-object v15, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    .line 124
    goto/16 :goto_3

    .line 125
    :cond_f
    sget-object v15, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    goto/16 :goto_3

    .line 133
    .end local v15    # "ips":[Ljava/lang/String;
    .end local v16    # "oversea":Ljava/lang/String;
    :cond_10
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->getNewIpFromArray()Ljava/lang/String;

    move-result-object v13

    .line 134
    .restart local v13    # "ip":Ljava/lang/String;
    const-string v2, "PatchListCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684ip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/config2/PatchListCore;->mUrlPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v13}, Lcom/netease/download/config2/PatchListCore;->downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_4

    .line 156
    .end local v13    # "ip":Ljava/lang/String;
    .restart local v17    # "pfile":Ljava/io/File;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v3, "state"

    const-string v4, "error"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/download/config2/PatchListCore;->mLogData:Ljava/util/HashMap;

    const-string v3, "filetype"

    const-string v4, "CFG"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 160
    const-string v2, "PatchListCore"

    const-string v3, "\u5217\u8868\u8bf7\u6c42\u73af\u8282--\u4e0b\u8f7d\u5931\u8d25\uff0c\u5220\u9664\u4e34\u65f6\u6587\u4ef6"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    goto/16 :goto_5
.end method
