.class public Lcom/netease/download/config2/ConfigCore2;
.super Ljava/lang/Object;
.source "ConfigCore2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigCore2"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/config2/ConfigCore2;->mLogData:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/config2/ConfigCore2;->mHost:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/netease/download/config2/ConfigCore2$1;

    invoke-direct {v0, p0}, Lcom/netease/download/config2/ConfigCore2$1;-><init>(Lcom/netease/download/config2/ConfigCore2;)V

    iput-object v0, p0, Lcom/netease/download/config2/ConfigCore2;->dealer:Lcom/netease/download/network/NetworkDealer;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/netease/download/config2/ConfigCore2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netease/download/config2/ConfigCore2;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method private downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectId"    # Ljava/lang/String;
    .param p3, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v5, "\u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 131
    iget-object v5, p0, Lcom/netease/download/config2/ConfigCore2;->mLogData:Ljava/util/HashMap;

    const-string v6, "state"

    const-string v7, "start"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v5, p0, Lcom/netease/download/config2/ConfigCore2;->mLogData:Ljava/util/HashMap;

    const-string v6, "filetype"

    const-string v7, "CFG"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "configUrl":Ljava/lang/String;
    const-string v5, "ConfigCore2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u63a5\u5165\u65b9\u8bbe\u7f6e\u7684config="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v5

    iget-object v0, v5, Lcom/netease/download/downloader/DownloadInitInfo;->mConfigurl:Ljava/lang/String;

    .line 145
    :goto_0
    invoke-static {v0}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "domain":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Lcom/netease/download/reporter/KeyConst;->KEY_SERVER_LIST_HOST:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    const-string v5, "ConfigCore2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ipAddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v5, "/"

    invoke-static {v0, p3, v5}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    .restart local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v1, p0, Lcom/netease/download/config2/ConfigCore2;->mHost:Ljava/lang/String;

    .line 155
    const-string v5, "Host"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    const-string v5, "ConfigCore2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u8bf7\u6c42\u94fe\u63a5="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0c\u57df\u540d="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/16 v4, 0xb

    .line 163
    .local v4, "result":I
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    const/4 v5, 0x0

    const-string v6, "GET"

    iget-object v7, p0, Lcom/netease/download/config2/ConfigCore2;->dealer:Lcom/netease/download/network/NetworkDealer;

    invoke-static {v0, v5, v6, v3, v7}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 165
    const-string v5, "ConfigCore2"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4e0b\u8f7d\u7ed3\u679c="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0c\u8bf7\u6c42\u94fe\u63a5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    :cond_1
    :goto_1
    return v4

    .line 141
    .end local v1    # "domain":Ljava/lang/String;
    .end local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "result":I
    :cond_2
    const-string v5, "https://mbdl.update.netease.com/%s.mbdl"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    .restart local v1    # "domain":Ljava/lang/String;
    .restart local v3    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "result":I
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const/16 v4, 0xd

    .line 170
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x4

    .line 174
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 176
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    const/16 v4, 0xb

    .line 178
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projectId"    # Ljava/lang/String;
    .param p3, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/netease/download/config2/ConfigCore2;->mLogData:Ljava/util/HashMap;

    const-string v2, "lvsip"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/download/config2/ConfigCore2;->downloadConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "result":I
    return v0
.end method
