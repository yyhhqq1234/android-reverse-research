.class public Lcom/netease/download/config2/ConfigProxy;
.super Ljava/lang/Object;
.source "ConfigProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigProxy"

.field private static sConfigProxy:Lcom/netease/download/config2/ConfigProxy;


# instance fields
.field private mRetry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/config2/ConfigProxy;->sConfigProxy:Lcom/netease/download/config2/ConfigProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/download/config2/ConfigProxy;->mRetry:I

    .line 43
    return-void
.end method

.method public static getInstances()Lcom/netease/download/config2/ConfigProxy;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/netease/download/config2/ConfigProxy;->sConfigProxy:Lcom/netease/download/config2/ConfigProxy;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/netease/download/config2/ConfigProxy;

    invoke-direct {v0}, Lcom/netease/download/config2/ConfigProxy;-><init>()V

    sput-object v0, Lcom/netease/download/config2/ConfigProxy;->sConfigProxy:Lcom/netease/download/config2/ConfigProxy;

    .line 49
    :cond_0
    sget-object v0, Lcom/netease/download/config2/ConfigProxy;->sConfigProxy:Lcom/netease/download/config2/ConfigProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/ConfigParams2;->clean()V

    .line 135
    :cond_0
    return-void
.end method

.method public getResult()Lcom/netease/download/config2/ConfigParams2;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;)I
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectId"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 55
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/dns/DnsCore;->start()Ljava/util/ArrayList;

    move-result-object v12

    .line 61
    .local v12, "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    const-string v2, "ConfigProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u914d\u7f6e\u6587\u4ef6\u505aDNS\u89e3\u6790\uff0cDNS\u7ed3\u679c="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 63
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

    .line 68
    :goto_1
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/netease/download/reporter/KeyConst;->KEY_COLLECT_CONDITION:Ljava/lang/String;

    const-string v4, "46"

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/16 v16, 0xb

    .line 71
    .local v16, "result":I
    new-instance v11, Lcom/netease/download/config2/ConfigCore2;

    invoke-direct {v11}, Lcom/netease/download/config2/ConfigCore2;-><init>()V

    .line 74
    .local v11, "configCore2":Lcom/netease/download/config2/ConfigCore2;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 75
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/dns/DnsParams$Unit;

    iget-object v2, v2, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/netease/download/reporter/ReportInfo;->mUpdateSvrIps:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 91
    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u6c42\u914d\u7f6e\u6587\u4ef6\uff0c\u91c7\u7528dns\u8bf7\u6c42\uff0c\u8bf7\u6c42\u7ed3\u679c="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 93
    if-eqz v16, :cond_4

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u6c42\u914d\u7f6e\u6587\u4ef6\uff0c\u91c7\u7528lvsip, \u662f\u5426\u521b\u5efa\u8fc7ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/config2/Lvsip;->isCteateIp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->isCteateIp()Z

    move-result v2

    if-nez v2, :cond_3

    .line 98
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v15

    .line 99
    .local v15, "oversea":Ljava/lang/String;
    const-string v2, "ConfigProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6d77\u5916="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "1"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "2"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 101
    :cond_2
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    sget-object v3, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/download/config2/Lvsip;->init([Ljava/lang/String;)V

    .line 108
    :goto_3
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->createLvsip()V

    .line 111
    .end local v15    # "oversea":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v16, :cond_e

    .line 123
    :cond_4
    :goto_4
    if-eqz v16, :cond_5

    .line 124
    const/4 v2, 0x0

    sput-boolean v2, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 128
    :cond_5
    return v16

    .line 57
    .end local v11    # "configCore2":Lcom/netease/download/config2/ConfigCore2;
    .end local v12    # "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    .end local v16    # "result":I
    :cond_6
    invoke-static {}, Lcom/netease/download/dns/DnsCore;->getInstances()Lcom/netease/download/dns/DnsCore;

    move-result-object v2

    const-string v3, "https://mbdl.update.netease.com/%s.mbdl"

    invoke-virtual {v2, v3}, Lcom/netease/download/dns/DnsCore;->init(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    .restart local v12    # "dnsIpNodeUnitList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/dns/DnsParams$Unit;>;"
    :cond_7
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

    goto/16 :goto_1

    .line 77
    .restart local v11    # "configCore2":Lcom/netease/download/config2/ConfigCore2;
    .restart local v16    # "result":I
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/dns/DnsParams$Unit;

    .line 78
    .local v17, "unit":Lcom/netease/download/dns/DnsParams$Unit;
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/netease/download/dns/DnsParams$Unit;->ipArrayList:Ljava/util/ArrayList;

    .line 79
    .local v14, "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 85
    :goto_5
    if-nez v16, :cond_0

    goto/16 :goto_2

    .line 79
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 80
    .local v13, "ip":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1, v13}, Lcom/netease/download/config2/ConfigCore2;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 81
    if-nez v16, :cond_9

    goto :goto_5

    .line 102
    .end local v13    # "ip":Ljava/lang/String;
    .end local v14    # "ipArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "unit":Lcom/netease/download/dns/DnsParams$Unit;
    .restart local v15    # "oversea":Ljava/lang/String;
    :cond_b
    const-string v2, "0"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "-1"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 103
    :cond_c
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    sget-object v3, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/download/config2/Lvsip;->init([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 105
    :cond_d
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    sget-object v3, Lcom/netease/download/Const;->REQ_IPS_WS:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/download/config2/Lvsip;->init([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 112
    .end local v15    # "oversea":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/config2/Lvsip;->getNewIpFromArray()Ljava/lang/String;

    move-result-object v13

    .line 113
    .restart local v13    # "ip":Ljava/lang/String;
    const-string v2, "ConfigProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u6c42\u914d\u7f6e\u6587\u4ef6\u73af\u8282--\u91c7\u7528lvsip\uff0c\u5c06\u8981\u4f7f\u7528\u7684ip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 115
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1, v13}, Lcom/netease/download/config2/ConfigCore2;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 116
    if-nez v16, :cond_3

    goto/16 :goto_4
.end method
