.class public Lcom/netease/download/task/Pre;
.super Ljava/lang/Object;
.source "Pre.java"

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
.field private static final TAG:Ljava/lang/String; = "Pre"

.field private static sPre:Lcom/netease/download/task/Pre;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOverSea:Ljava/lang/String;

.field private mProjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/task/Pre;->sPre:Lcom/netease/download/task/Pre;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static declared-synchronized getInstatnces()Lcom/netease/download/task/Pre;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/netease/download/task/Pre;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/download/task/Pre;->sPre:Lcom/netease/download/task/Pre;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/netease/download/task/Pre;

    invoke-direct {v0}, Lcom/netease/download/task/Pre;-><init>()V

    sput-object v0, Lcom/netease/download/task/Pre;->sPre:Lcom/netease/download/task/Pre;

    .line 69
    :cond_0
    sget-object v0, Lcom/netease/download/task/Pre;->sPre:Lcom/netease/download/task/Pre;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    const/16 v1, 0xb

    .line 145
    .local v1, "result":I
    invoke-static {}, Lcom/netease/download/config2/ConfigProxy;->getInstances()Lcom/netease/download/config2/ConfigProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/ConfigProxy;->getResult()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v12

    .line 147
    .local v12, "configParams2":Lcom/netease/download/config2/ConfigParams2;
    if-nez v12, :cond_5

    .line 148
    invoke-static {}, Lcom/netease/download/config2/ConfigProxy;->getInstances()Lcom/netease/download/config2/ConfigProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/download/task/Pre;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/download/task/Pre;->mProjectId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/config2/ConfigProxy;->start(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 149
    const/4 v14, 0x3

    .line 151
    .local v14, "mRetry":I
    :goto_0
    if-eqz v1, :cond_0

    if-gtz v14, :cond_4

    .line 162
    .end local v14    # "mRetry":I
    :cond_0
    :goto_1
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v6, "__DOWNLOAD_CONFIG__"

    const-string v7, "__DOWNLOAD_CONFIG__"

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/netease/download/config2/ConfigProxy;->getInstances()Lcom/netease/download/config2/ConfigProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/ConfigProxy;->getResult()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v12

    .line 166
    if-eqz v12, :cond_8

    .line 167
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[QAQA]\u9884\u5904\u7406\uff0c\u914d\u7f6e\u6587\u4ef6\u7ed3\u679c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/netease/download/config2/ConfigParams2;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getQuery()V

    .line 169
    invoke-virtual {v12}, Lcom/netease/download/config2/ConfigParams2;->getCndArray()[Ljava/lang/String;

    move-result-object v11

    .line 170
    .local v11, "cdnArray":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/netease/download/dns/CdnUseTimeProxy;->init([Ljava/lang/String;)V

    .line 172
    if-eqz v11, :cond_3

    array-length v0, v11

    if-lez v0, :cond_3

    .line 173
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v0

    invoke-virtual {v12}, Lcom/netease/download/config2/ConfigParams2;->getCndArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/download/dns/DnsCore;->init([Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v13

    .line 175
    .local v13, "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9884\u5904\u7406\uff0cDNS\u7ed3\u679c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 178
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v9, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_2
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 185
    :cond_1
    const-string v0, "Pre"

    const-string v2, "\u9884\u5904\u7406\uff0cDNS\u89e3\u6790\u5931\u8d25\uff0c\u8fdb\u5165Httpdns\u89e3\u6790\u6d41\u7a0b"

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v0

    const-string v2, "httpdns_config_cnd"

    invoke-virtual {v12}, Lcom/netease/download/config2/ConfigParams2;->getCndArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/httpdns2/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v0

    const-string v2, "httpdns_config_cnd"

    invoke-virtual {v0, v2}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 189
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9884\u5904\u7406\uff0cHttpdns\u7ed3\u679c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual {v3, v4}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    :goto_3
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DnsParams.getInstances().getDnsIpNodeUnitList()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConfigParams2.getInstance().getWeights()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/config2/ConfigParams2;->getWeights()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/ConfigParams2;->getWeights()[I

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/netease/download/dns/CdnIpController;->init(Ljava/util/ArrayList;[I)V

    .line 199
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mOriginalMap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/download/dns/CdnIpController;->mOriginalMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mActualTimeMap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v11    # "cdnArray":[Ljava/lang/String;
    .end local v13    # "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    :cond_3
    :goto_4
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[QAQA]\u9884\u5904\u7406\uff0c\u8fd4\u56de\u503c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 152
    .restart local v14    # "mRetry":I
    :cond_4
    const-string v0, "Pre"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u914d\u7f6e\u6587\u4ef6\u91cd\u65b0\u4e0b\u8f7d,\u8fd8\u6709"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b21\u91cd\u8bd5\u673a\u4f1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    add-int/lit8 v14, v14, -0x1

    .line 154
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/Lvsip;->clean()V

    .line 155
    invoke-static {}, Lcom/netease/download/config2/ConfigProxy;->getInstances()Lcom/netease/download/config2/ConfigProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/download/task/Pre;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/download/task/Pre;->mProjectId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/config2/ConfigProxy;->start(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 159
    .end local v14    # "mRetry":I
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 181
    .restart local v11    # "cdnArray":[Ljava/lang/String;
    .restart local v13    # "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    :cond_6
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v2

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "__DOWNLOAD_DNS_RESOLVED__"

    const-string v9, "__DOWNLOAD_DNS_RESOLVED__"

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    :cond_7
    const-string v0, "Pre"

    const-string v2, "\u9884\u5904\u7406\uff0cHttpdns\u7ed3\u679c\u4e3anull"

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 203
    .end local v11    # "cdnArray":[Ljava/lang/String;
    .end local v13    # "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    :cond_8
    const-string v0, "Pre"

    const-string v2, "[QAQA]\u9884\u5904\u7406\uff0c\u914d\u7f6e\u6587\u4ef6\u7ed3\u679c = null"

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
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
    invoke-virtual {p0}, Lcom/netease/download/task/Pre;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectId"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "Pre"

    const-string v1, "\u9884\u5904\u7406---\u521d\u59cb\u5316---\u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/netease/download/task/Pre;->mProjectId:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/netease/download/task/Pre;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/netease/download/task/Pre;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/util/SpUtil;->initialize(Landroid/content/Context;)V

    .line 111
    const-string v0, "Pre"

    const-string v1, "\u9884\u5904\u7406---\u521d\u59cb\u5316---\u7ed3\u675f"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public start()I
    .locals 8

    .prologue
    .line 116
    const-string v5, "Pre"

    const-string v6, "\u9884\u5904\u7406---\u5f00\u59cb"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/16 v4, 0xb

    .line 119
    .local v4, "result":I
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 120
    .local v2, "exs":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    sget-object v5, Lcom/netease/download/task/Pre;->sPre:Lcom/netease/download/task/Pre;

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    const-string v5, "Pre"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u9884\u5904\u7406---\u5f00\u59cb\uff0c\u7ed3\u679c="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return v4

    .line 123
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 126
    .local v3, "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method
