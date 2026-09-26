.class public Lcom/netease/download/progress/ProgressProxy;
.super Ljava/lang/Object;
.source "ProgressProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressProxy"

.field private static sProgressProxy:Lcom/netease/download/progress/ProgressProxy;


# instance fields
.field private isNewTask:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/progress/ProgressProxy;->sProgressProxy:Lcom/netease/download/progress/ProgressProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/progress/ProgressProxy;->mContext:Landroid/content/Context;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/download/progress/ProgressProxy;->isNewTask:Z

    .line 42
    return-void
.end method

.method private getInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "data":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 175
    const-string v3, "ProgressProxy"

    const-string v4, "setInfo context is null"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 183
    .end local v0    # "data":Ljava/lang/String;
    .local v1, "data":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 180
    .end local v1    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    :cond_0
    const-string v3, "download_downloadid_file"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    .local v2, "pref":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v3, "ProgressProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4ece\u6301\u4e45\u5316\u83b7\u53d6 key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 183
    .end local v0    # "data":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInstances()Lcom/netease/download/progress/ProgressProxy;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/netease/download/progress/ProgressProxy;->sProgressProxy:Lcom/netease/download/progress/ProgressProxy;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/netease/download/progress/ProgressProxy;

    invoke-direct {v0}, Lcom/netease/download/progress/ProgressProxy;-><init>()V

    sput-object v0, Lcom/netease/download/progress/ProgressProxy;->sProgressProxy:Lcom/netease/download/progress/ProgressProxy;

    .line 50
    :cond_0
    sget-object v0, Lcom/netease/download/progress/ProgressProxy;->sProgressProxy:Lcom/netease/download/progress/ProgressProxy;

    return-object v0
.end method

.method private setInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const-string v2, "ProgressProxy"

    const-string v3, "setInfo context is null"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v2, "ProgressProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6301\u4e45\u5316 key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "download_downloadid_file"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
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
.method public clearAllDownloadId(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const-string v1, "ProgressProxy"

    const-string v2, "clearAllDownloadId context is null"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v1, "ProgressProxy"

    const-string v2, "\u6e05\u9664\u6240\u6709downloadId"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "download_downloadid_file"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public getDownloadedSize(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "taskparams":Ljava/util/List;, "Ljava/util/List<Lcom/netease/download/downloader/DownloadParams;>;"
    const/4 v12, 0x0

    .line 81
    .local v12, "size":I
    const/4 v0, 0x0

    .line 82
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v1

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getAllSize()J

    move-result-wide v2

    int-to-long v4, v12

    const-string v6, "xxxx"

    const-string v7, "xxxx"

    invoke-virtual/range {v1 .. v7}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;)V

    .line 154
    return v12

    .line 82
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/download/downloader/DownloadParams;

    .line 83
    .local v8, "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    add-int/lit8 v0, v0, 0x1

    .line 84
    const-string v1, "ProgressProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u626b\u63cf \u7b2c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a\u6587\u4ef6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "path":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v9, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 90
    .local v10, "md5":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    int-to-long v4, v12

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v12, v4

    .line 104
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/netease/download/reporter/KeyConst;->KEY_VALIDATE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/netease/download/reporter/KeyConst;->KEY_VALIDATE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 105
    .local v13, "validateCount":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 106
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/netease/download/reporter/KeyConst;->KEY_VALIDATE:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 104
    .end local v13    # "validateCount":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 111
    :cond_3
    const-string v1, "ProgressProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u53c2\u6570MD5="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u771f\u5b9e\u6587\u4ef6md5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u6587\u4ef6\u8def\u5f84="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getParentTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "downloadid"    # Ljava/lang/String;
    .param p2, "taskparams"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "taskParams":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/download/progress/ProgressProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/netease/download/progress/ProgressProxy;->getInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "ProgressProxy"

    const-string v2, "\u6ca1\u6709\u6301\u4e45\u5316\u8fc7\u8be5\u4efb\u52a1\uff0c\u8fdb\u884c\u6301\u4e45\u5316"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/netease/download/progress/ProgressProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p2}, Lcom/netease/download/progress/ProgressProxy;->setInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netease/download/progress/ProgressProxy;->isNewTask:Z

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/netease/download/progress/ProgressProxy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/netease/download/progress/ProgressProxy;->getInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "ProgressProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4ece\u6301\u4e45\u5316\u4e2d\u83b7\u53d6\u7684\u6570\u636e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0

    .line 68
    :cond_0
    const-string v1, "ProgressProxy"

    const-string v2, "\u5df2\u7ecf\u6301\u4e45\u5316\u8fc7\u8be5\u4efb\u52a1"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/download/progress/ProgressProxy;->isNewTask:Z

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netease/download/progress/ProgressProxy;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public removeInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const-string v2, "ProgressProxy"

    const-string v3, "removeInfo context is null"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v2, "ProgressProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u79fb\u9664\u6301\u4e45\u5316 key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "download_downloadid_file"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
