.class public Lcom/netease/download/handler/Dispatcher;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/handler/Dispatcher$Property;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dispatcher"

.field private static sDispatcherInstance:Lcom/netease/download/handler/Dispatcher;

.field private static sTaskParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/downloader/TaskParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field public mSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/download/handler/Dispatcher;->sTaskParamsMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/netease/download/handler/CommonHandlerThread;->getInstance()Lcom/netease/download/handler/CommonHandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/handler/CommonHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/netease/download/handler/Dispatcher;->mSessionId:Ljava/lang/String;

    .line 52
    iget-object v3, p0, Lcom/netease/download/handler/Dispatcher;->mSessionId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 54
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "time":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/netease/download/util/StrUtil;->getFixLenthString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/download/handler/Dispatcher;->mSessionId:Ljava/lang/String;

    .line 58
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "format":Ljava/text/DateFormat;
    .end local v2    # "time":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/netease/download/handler/Dispatcher;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/netease/download/handler/Dispatcher;->sDispatcherInstance:Lcom/netease/download/handler/Dispatcher;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/netease/download/handler/Dispatcher;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/netease/download/handler/Dispatcher;->sDispatcherInstance:Lcom/netease/download/handler/Dispatcher;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/netease/download/handler/Dispatcher;

    invoke-direct {v0}, Lcom/netease/download/handler/Dispatcher;-><init>()V

    sput-object v0, Lcom/netease/download/handler/Dispatcher;->sDispatcherInstance:Lcom/netease/download/handler/Dispatcher;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/netease/download/handler/Dispatcher;->sDispatcherInstance:Lcom/netease/download/handler/Dispatcher;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getTaskParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/download/downloader/TaskParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/netease/download/handler/Dispatcher;->sTaskParamsMap:Ljava/util/Map;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method


# virtual methods
.method public forceFinish()V
    .locals 4

    .prologue
    .line 124
    const/16 v0, 0x9

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/netease/download/handler/Dispatcher;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "pMsg"    # Landroid/os/Message;

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "property":Lcom/netease/download/handler/Dispatcher$Property;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 185
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 188
    .local v0, "paramList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/downloader/DownloadParams;>;"
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/netease/download/handler/Dispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/netease/download/task/TaskManager;->startSynNewTask(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyNetworkChanged()V
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/netease/download/handler/Dispatcher;->sendEmptyMessage(I)Z

    .line 129
    return-void
.end method

.method public restartPaused(Z)V
    .locals 3
    .param p1, "pNowIsMobile"    # Z

    .prologue
    const/4 v1, 0x0

    .line 120
    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/netease/download/handler/Dispatcher;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/handler/Dispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public start(Landroid/content/Context;Lcom/netease/download/downloader/DownloadParams;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pParams"    # Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 76
    const-string v0, "Dispatcher"

    const-string v1, "Dispatcher [start]"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/netease/download/handler/Dispatcher;->mContext:Landroid/content/Context;

    .line 78
    const/4 v0, 0x1

    new-instance v1, Lcom/netease/download/handler/Dispatcher$Property;

    invoke-direct {v1, p1, p2}, Lcom/netease/download/handler/Dispatcher$Property;-><init>(Landroid/content/Context;Lcom/netease/download/downloader/DownloadParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/netease/download/handler/Dispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/handler/Dispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 79
    return-void
.end method

.method public varargs startPart(Landroid/content/Context;[Lcom/netease/download/downloader/DownloadParams;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pParams"    # [Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 88
    const/4 v0, 0x1

    .line 90
    .local v0, "i":I
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 94
    return-void

    .line 90
    :cond_0
    aget-object v1, p2, v2

    .line 91
    .local v1, "params":Lcom/netease/download/downloader/DownloadParams;
    add-int/lit8 v0, v0, 0x1

    .line 92
    const/4 v4, 0x1

    new-instance v5, Lcom/netease/download/handler/Dispatcher$Property;

    invoke-direct {v5, p1, v1}, Lcom/netease/download/handler/Dispatcher$Property;-><init>(Landroid/content/Context;Lcom/netease/download/downloader/DownloadParams;)V

    invoke-virtual {p0, v4, v5}, Lcom/netease/download/handler/Dispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/netease/download/handler/Dispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public startSyn(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "listParams":Ljava/util/List;, "Ljava/util/List<Lcom/netease/download/downloader/DownloadParams;>;"
    const-string v0, "Dispatcher"

    const-string v1, "Dispatcher [startSyn]"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/netease/download/handler/Dispatcher;->mContext:Landroid/content/Context;

    .line 84
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2}, Lcom/netease/download/handler/Dispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/handler/Dispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method public varargs stop([Lcom/netease/download/downloader/DownloadParams;)V
    .locals 4
    .param p1, "pParams"    # [Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 98
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 101
    return-void

    .line 98
    :cond_0
    aget-object v0, p1, v1

    .line 99
    .local v0, "param":Lcom/netease/download/downloader/DownloadParams;
    const/4 v3, 0x6

    invoke-virtual {p0, v3, v0}, Lcom/netease/download/handler/Dispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/netease/download/handler/Dispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public stopTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "pParams":Ljava/util/List;, "Ljava/util/List<Lcom/netease/download/downloader/DownloadParams;>;"
    const-string v1, "Dispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e00\u5171\u9700\u8981\u505c\u6b62\u7684\u4e2a\u6570= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    return-void

    .line 110
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/downloader/DownloadParams;

    .line 111
    .local v0, "param":Lcom/netease/download/downloader/DownloadParams;
    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0}, Lcom/netease/download/handler/Dispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netease/download/handler/Dispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
