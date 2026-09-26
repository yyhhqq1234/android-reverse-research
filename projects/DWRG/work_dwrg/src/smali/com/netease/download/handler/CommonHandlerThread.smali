.class public Lcom/netease/download/handler/CommonHandlerThread;
.super Landroid/os/HandlerThread;
.source "CommonHandlerThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonHandlerThread"

.field private static sThread:Lcom/netease/download/handler/CommonHandlerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/netease/download/handler/CommonHandlerThread;->start()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/netease/download/handler/CommonHandlerThread;
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/netease/download/handler/CommonHandlerThread;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netease/download/handler/CommonHandlerThread;

    const-string v2, "CommonHandlerThread"

    invoke-direct {v0, v2}, Lcom/netease/download/handler/CommonHandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/netease/download/handler/CommonHandlerThread;->sThread:Lcom/netease/download/handler/CommonHandlerThread;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
