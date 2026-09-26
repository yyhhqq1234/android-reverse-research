.class public Lcom/netease/environment/http/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/netease/environment/http/DownloadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/http/DownloadUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/netease/environment/http/DownloadUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/listener/OnDownloadListener;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "onDownloadListener"    # Lcom/netease/environment/listener/OnDownloadListener;

    .prologue
    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/netease/environment/http/DownloadUtils$1;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/netease/environment/http/DownloadUtils$1;-><init>(Lcom/netease/environment/listener/OnDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public static downloadRegularFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regexFileUrl"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/netease/environment/config/SdkConfig;->saveDownloadState(Landroid/content/Context;Z)V

    .line 161
    sget-object v0, Lcom/netease/environment/http/DownloadUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http get:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lcom/netease/environment/utils/FileUtils;->getTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/environment/utils/FileUtils;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/environment/http/DownloadUtils$2;

    invoke-direct {v2, p0, p1}, Lcom/netease/environment/http/DownloadUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/netease/environment/http/DownloadUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/listener/OnDownloadListener;)V

    .line 208
    return-void
.end method
