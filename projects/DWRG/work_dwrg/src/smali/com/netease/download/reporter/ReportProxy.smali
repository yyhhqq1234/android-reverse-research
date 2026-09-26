.class public Lcom/netease/download/reporter/ReportProxy;
.super Ljava/lang/Object;
.source "ReportProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportProxy"

.field private static sReportProxy:Lcom/netease/download/reporter/ReportProxy;


# instance fields
.field private hasReport:Z

.field private mContext:Landroid/content/Context;

.field private mNeedDeleteFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReportProxy;->sReportProxy:Lcom/netease/download/reporter/ReportProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/netease/download/reporter/ReportProxy;->hasReport:Z

    .line 32
    iput-boolean v0, p0, Lcom/netease/download/reporter/ReportProxy;->mNeedDeleteFile:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/reporter/ReportProxy;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/netease/download/reporter/ReportProxy;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/netease/download/reporter/ReportProxy;->mNeedDeleteFile:Z

    return v0
.end method

.method static synthetic access$1(Lcom/netease/download/reporter/ReportProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/download/reporter/ReportProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/netease/download/reporter/ReportProxy;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netease/download/reporter/ReportProxy;->sReportProxy:Lcom/netease/download/reporter/ReportProxy;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/netease/download/reporter/ReportProxy;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportProxy;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportProxy;->sReportProxy:Lcom/netease/download/reporter/ReportProxy;

    .line 44
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportProxy;->sReportProxy:Lcom/netease/download/reporter/ReportProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method


# virtual methods
.method public close(J)V
    .locals 1
    .param p1, "delaytime"    # J

    .prologue
    .line 85
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/download/reporter/ReporetCore;->close(J)V

    .line 86
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v0, "ReportProxy"

    const-string v1, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u65e5\u5fd7\u6a21\u5757\u4ee3\u7406\u7c7b\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/netease/download/reporter/ReportProxy;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportInfo;->clear()V

    .line 63
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/reporter/ReportProxy;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/netease/download/reporter/ReportProxy$1;

    invoke-direct {v2, p0}, Lcom/netease/download/reporter/ReportProxy$1;-><init>(Lcom/netease/download/reporter/ReportProxy;)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/reporter/ReportFile;->init(Landroid/content/Context;Lcom/netease/download/reporter/ReportFile$FileCallBack;)V

    .line 77
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportFile;->start()V

    .line 78
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReporetCore;->init()V

    .line 82
    return-void
.end method

.method public isNeedDeleteFile()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/netease/download/reporter/ReportProxy;->mNeedDeleteFile:Z

    return v0
.end method

.method public report(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reportInfo"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 153
    .local v0, "ips":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v3

    if-nez v3, :cond_4

    .line 154
    const-string v3, "ReportProxy"

    const-string v4, "\u91c7\u7528hardcode ip"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "https://udt-sigma.proxima.nie.netease.com/query"

    .line 156
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "oversea":Ljava/lang/String;
    const-string v3, "ReportProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6d77\u5916="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    .line 177
    .end local v1    # "oversea":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/netease/download/reporter/ReportUrlController;->init(Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 180
    const-string v3, "ReportProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u4fe1\u606f---\u4e0a\u4f20\u65e5\u5fd7\u5185\u5bb9="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/netease/download/reporter/ReportNet;->getInstances()Lcom/netease/download/reporter/ReportNet;

    move-result-object v3

    new-instance v4, Lcom/netease/download/reporter/ReportProxy$3;

    invoke-direct {v4, p0}, Lcom/netease/download/reporter/ReportProxy$3;-><init>(Lcom/netease/download/reporter/ReportProxy;)V

    invoke-virtual {v3, v4}, Lcom/netease/download/reporter/ReportNet;->init(Lcom/netease/download/reporter/ReportNet$ReportCallBack;)V

    .line 203
    invoke-static {}, Lcom/netease/download/reporter/ReportNet;->getInstances()Lcom/netease/download/reporter/ReportNet;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/netease/download/reporter/ReportNet;->report(Ljava/lang/String;)V

    .line 209
    :goto_1
    return-void

    .line 163
    .restart local v1    # "oversea":Ljava/lang/String;
    :cond_1
    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    const-string v2, "https://udt-sigma.proxima.nie.easebar.com/query"

    .line 166
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    .line 168
    goto :goto_0

    :cond_2
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    :cond_3
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String;

    .line 172
    goto :goto_0

    .line 173
    .end local v1    # "oversea":Ljava/lang/String;
    :cond_4
    const-string v3, "ReportProxy"

    const-string v4, "\u91c7\u7528\u914d\u7f6e\u6587\u4ef6 ip"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/config2/ConfigParams2;->getReportUrl()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/config2/ConfigParams2;->getReportIpArray()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_5
    const-string v3, "ReportProxy"

    const-string v4, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u4fe1\u606f\uff0c\u4e0d\u9700\u8981\u4e0a\u4f20"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public report(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteFile"    # Z

    .prologue
    .line 89
    const-string v4, "ReportProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u662f\u5426\u5220\u9664\u6587\u4ef6="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 93
    .local v0, "ips":[Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v4

    if-nez v4, :cond_4

    .line 94
    const-string v4, "ReportProxy"

    const-string v5, "\u91c7\u7528hardcode ip"

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "https://udt-sigma.proxima.nie.netease.com/query"

    .line 96
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "oversea":Ljava/lang/String;
    const-string v4, "ReportProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6d77\u5916="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    .line 117
    .end local v1    # "oversea":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/netease/download/reporter/ReportUrlController;->getInstance()Lcom/netease/download/reporter/ReportUrlController;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/netease/download/reporter/ReportUrlController;->init(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/netease/download/reporter/ReportFile;->getInstances()Lcom/netease/download/reporter/ReportFile;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/netease/download/reporter/ReportFile;->readFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "reportInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 121
    const-string v4, "ReportProxy"

    const-string v5, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\u4e0d\u4e3a\u7a7a\uff0c\u9700\u8981\u4e0a\u4f20"

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v4, "ReportProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\u5185\u5bb9="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/netease/download/reporter/ReportNet;->getInstances()Lcom/netease/download/reporter/ReportNet;

    move-result-object v4

    new-instance v5, Lcom/netease/download/reporter/ReportProxy$2;

    invoke-direct {v5, p0, p2}, Lcom/netease/download/reporter/ReportProxy$2;-><init>(Lcom/netease/download/reporter/ReportProxy;Z)V

    invoke-virtual {v4, v5}, Lcom/netease/download/reporter/ReportNet;->init(Lcom/netease/download/reporter/ReportNet$ReportCallBack;)V

    .line 142
    invoke-static {}, Lcom/netease/download/reporter/ReportNet;->getInstances()Lcom/netease/download/reporter/ReportNet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/netease/download/reporter/ReportNet;->report(Ljava/lang/String;)V

    .line 147
    :goto_1
    return-void

    .line 104
    .end local v2    # "reportInfo":Ljava/lang/String;
    .restart local v1    # "oversea":Ljava/lang/String;
    :cond_1
    const-string v4, "2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    const-string v3, "https://udt-sigma.proxima.nie.easebar.com/query"

    .line 106
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    .line 108
    goto :goto_0

    :cond_2
    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "-1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    :cond_3
    sget-object v0, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String;

    .line 112
    goto :goto_0

    .line 113
    .end local v1    # "oversea":Ljava/lang/String;
    :cond_4
    const-string v4, "ReportProxy"

    const-string v5, "\u91c7\u7528\u914d\u7f6e\u6587\u4ef6 ip"

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/config2/ConfigParams2;->getReportUrl()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/config2/ConfigParams2;->getReportIpArray()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    .restart local v2    # "reportInfo":Ljava/lang/String;
    :cond_5
    const-string v4, "ReportProxy"

    const-string v5, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u4e0a\u4f20\u65e5\u5fd7\u4e3a\u7a7a\uff0c\u4e0d\u9700\u8981\u4e0a\u4f20"

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reportInfo(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReportProxy$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/download/reporter/ReportProxy$4;-><init>(Lcom/netease/download/reporter/ReportProxy;ILandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    return-void
.end method

.method public setNeedDeleteFile(Z)V
    .locals 0
    .param p1, "needDeleteFile"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/netease/download/reporter/ReportProxy;->mNeedDeleteFile:Z

    .line 56
    return-void
.end method

.method public setOpen(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 248
    invoke-static {}, Lcom/netease/download/reporter/ReporetCore;->getInstance()Lcom/netease/download/reporter/ReporetCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/download/reporter/ReporetCore;->setOpen(Z)V

    .line 249
    return-void
.end method
