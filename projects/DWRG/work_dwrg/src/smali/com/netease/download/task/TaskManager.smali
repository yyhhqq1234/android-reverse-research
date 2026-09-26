.class public Lcom/netease/download/task/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startSynNewTask(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "paramsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/downloader/DownloadParams;>;"
    const-string v0, "TaskManager"

    const-string v1, "startSynNewTask"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/netease/download/downloadpart/DownloadAllProxy;->getInstances()Lcom/netease/download/downloadpart/DownloadAllProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/download/downloadpart/DownloadAllProxy;->init(Ljava/util/ArrayList;)V

    .line 39
    invoke-static {}, Lcom/netease/download/downloadpart/DownloadAllProxy;->getInstances()Lcom/netease/download/downloadpart/DownloadAllProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->start()V

    .line 40
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
