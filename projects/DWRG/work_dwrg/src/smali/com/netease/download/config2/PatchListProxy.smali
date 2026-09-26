.class public Lcom/netease/download/config2/PatchListProxy;
.super Ljava/lang/Object;
.source "PatchListProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PatchListProxy"

.field private static sPatchListProxy:Lcom/netease/download/config2/PatchListProxy;


# instance fields
.field private mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mPatchListCore:Lcom/netease/download/config2/PatchListCore;

.field private mRetry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/config2/PatchListProxy;->sPatchListProxy:Lcom/netease/download/config2/PatchListProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/netease/download/config2/PatchListProxy;->mPatchListCore:Lcom/netease/download/config2/PatchListCore;

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/download/config2/PatchListProxy;->mRetry:I

    .line 43
    iput-object v1, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/netease/download/config2/PatchListProxy;->mFileName:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/netease/download/config2/PatchListProxy;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 51
    return-void
.end method

.method public static getInstances()Lcom/netease/download/config2/PatchListProxy;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netease/download/config2/PatchListProxy;->sPatchListProxy:Lcom/netease/download/config2/PatchListProxy;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/netease/download/config2/PatchListProxy;

    invoke-direct {v0}, Lcom/netease/download/config2/PatchListProxy;-><init>()V

    sput-object v0, Lcom/netease/download/config2/PatchListProxy;->sPatchListProxy:Lcom/netease/download/config2/PatchListProxy;

    .line 57
    :cond_0
    sget-object v0, Lcom/netease/download/config2/PatchListProxy;->sPatchListProxy:Lcom/netease/download/config2/PatchListProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method


# virtual methods
.method public getResult()Lcom/netease/download/config2/ConfigParams2;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/netease/download/downloader/DownloadParams;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadParams"    # Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 79
    :goto_0
    return-void

    .line 69
    :cond_0
    iput-object p2, p0, Lcom/netease/download/config2/PatchListProxy;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 71
    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "urlPath":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/config2/PatchListProxy;->mFileName:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/netease/download/config2/PatchListCore;

    invoke-direct {v0}, Lcom/netease/download/config2/PatchListCore;-><init>()V

    iput-object v0, p0, Lcom/netease/download/config2/PatchListProxy;->mPatchListCore:Lcom/netease/download/config2/PatchListCore;

    .line 76
    iget-object v0, p0, Lcom/netease/download/config2/PatchListProxy;->mPatchListCore:Lcom/netease/download/config2/PatchListCore;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/download/config2/PatchListProxy;->mFileName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/netease/download/config2/PatchListCore;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public needDownload()Z
    .locals 9

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 156
    .local v3, "result":Z
    iget-object v6, p0, Lcom/netease/download/config2/PatchListProxy;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    if-nez v6, :cond_0

    .line 157
    const-string v6, "PatchListProxy"

    const-string v7, "PatchListProxy [needDownload] mDownloadParams is null"

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 190
    .end local v3    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 162
    .end local v4    # "result":I
    .restart local v3    # "result":Z
    :cond_0
    iget-object v6, p0, Lcom/netease/download/config2/PatchListProxy;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "md5":Ljava/lang/String;
    iget-object v6, p0, Lcom/netease/download/config2/PatchListProxy;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "urlPath":Ljava/lang/String;
    const-string v6, "PatchListProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PatchListProxy [needDownload] urlPath="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    const-string v6, "NotMD5"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 172
    const-string v6, "MD5"

    invoke-static {v6, v5}, Lcom/netease/download/util/HashUtil;->calculateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "configFileMd5":Ljava/lang/String;
    const-string v6, "PatchListProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PatchListProxy [needDownload] configFileMd5="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", md5="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    const-string v6, "PatchListProxy"

    const-string v7, "PatchListProxy [needDownload] \u6587\u4ef6\u5b58\u5728\uff0c\u4f46\u662fmd5\u4e0d\u4e00\u6837\uff0c\u9700\u8981\u4e0b\u8f7d"

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "configFile":Ljava/io/File;
    .end local v1    # "configFileMd5":Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v3

    .line 190
    .restart local v4    # "result":I
    goto :goto_0

    .line 180
    .end local v4    # "result":I
    .restart local v0    # "configFile":Ljava/io/File;
    .restart local v1    # "configFileMd5":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    .line 184
    goto :goto_1

    .line 185
    .end local v1    # "configFileMd5":Ljava/lang/String;
    :cond_3
    const-string v6, "PatchListProxy"

    const-string v7, "PatchListProxy [needDownload] \u6587\u4ef6\u4e0d\u5b58\u5728\uff0c\u9700\u8981\u4e0b\u8f7d"

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public start()I
    .locals 14

    .prologue
    .line 84
    const/16 v1, 0xb

    .line 86
    .local v1, "result":I
    iget-object v0, p0, Lcom/netease/download/config2/PatchListProxy;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "PatchListProxy"

    const-string v2, "PatchListProxy [start] mDownloadParams is null"

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 89
    const-string v0, "PatchListProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list\u6587\u4ef6\u4e0b\u8f7d\u7ed3\u675f\uff0cresult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v0

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getAllSize()J

    move-result-wide v2

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/listener/DownloadListenerCore;->getTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v13, v1

    .line 150
    .end local v1    # "result":I
    .local v13, "result":I
    :goto_0
    return v13

    .line 94
    .end local v13    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-virtual {p0}, Lcom/netease/download/config2/PatchListProxy;->needDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const-string v0, "PatchListProxy"

    const-string v2, "PatchListProxy [start] \u4e0d\u9700\u8981\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 98
    const-string v0, "PatchListProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list\u6587\u4ef6\u4e0b\u8f7d\u7ed3\u675f\uff0cresult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v0

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getAllSize()J

    move-result-wide v2

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/listener/DownloadListenerCore;->getTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v13, v1

    .line 100
    .end local v1    # "result":I
    .restart local v13    # "result":I
    goto :goto_0

    .line 103
    .end local v13    # "result":I
    .restart local v1    # "result":I
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    .line 105
    .local v11, "exs":Ljava/util/concurrent/ExecutorService;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v9, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/netease/download/reporter/KeyConst;->KEY_COLLECT_CONDITION:Ljava/lang/String;

    const-string v3, "42"

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/netease/download/config2/PatchListProxy;->mPatchListCore:Lcom/netease/download/config2/PatchListCore;

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 128
    const-string v0, "PatchListProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list\u6587\u4ef6\u4e0b\u8f7d\u7ed3\u675f\uff0cresult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v0

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getAllSize()J

    move-result-wide v2

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/listener/DownloadListenerCore;->getTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/download/config2/PatchListProxy;->mFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-nez v1, :cond_3

    .line 134
    const-string v0, "PatchListProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5220\u9664\u6301\u4e45\u5316key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadInitInfo;->getmDownloadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v0

    sget-object v2, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadInitInfo;->getmDownloadId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/progress/ProgressProxy;->removeInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v0

    const/4 v2, 0x0

    iput v2, v0, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    .line 146
    :goto_2
    const-string v0, "PatchListProxy"

    const-string v2, "PatchListProxy [start] \u4e0b\u8f7d\u540e\u671f\uff0c\u53d1\u9001\u65e5\u5fd7\uff08List\u6587\u4ef6\uff09"

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/netease/download/reporter/ReportProxy;->setNeedDeleteFile(Z)V

    .line 148
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/reporter/ReportProxy;->close(J)V

    move v13, v1

    .line 150
    .end local v1    # "result":I
    .restart local v13    # "result":I
    goto/16 :goto_0

    .line 109
    .end local v13    # "result":I
    .restart local v1    # "result":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Future;

    .line 111
    .local v12, "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v12}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto/16 :goto_1

    .line 112
    :catch_0
    move-exception v10

    .line 113
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 114
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v10

    .line 116
    .local v10, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v10}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto/16 :goto_1

    .line 138
    .end local v10    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v12    # "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :cond_3
    const/16 v0, 0xc

    if-ne v0, v1, :cond_4

    .line 140
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    goto :goto_2

    .line 143
    :cond_4
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    goto :goto_2
.end method
