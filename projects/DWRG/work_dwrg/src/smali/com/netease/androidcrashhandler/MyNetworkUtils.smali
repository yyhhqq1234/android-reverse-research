.class public Lcom/netease/androidcrashhandler/MyNetworkUtils;
.super Ljava/lang/Object;
.source "MyNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/MyNetworkUtils$MyNetworkUtilsHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

.field private final postEntityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/netease/androidcrashhandler/MyPostEntity;",
            ">;"
        }
    .end annotation
.end field

.field postThread:Lcom/netease/androidcrashhandler/MyPostThread;

.field private postedEntities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTime:J

.field private waitingTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "MyNetworkUtils"

    sput-object v0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v2, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    .line 35
    iput-object v2, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postedEntities:Ljava/util/HashSet;

    .line 41
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->waitingTime:J

    .line 44
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->sleepTime:J

    .line 47
    iput-object v2, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postEntityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 54
    new-instance v0, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postedEntities:Ljava/util/HashSet;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/androidcrashhandler/MyNetworkUtils;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netease/androidcrashhandler/MyNetworkUtils;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/netease/androidcrashhandler/MyNetworkUtils;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postedEntities:Ljava/util/HashSet;

    return-object v0
.end method

.method private filterPost(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 6
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    .line 249
    const-string v3, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "postedEntities="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postedEntities:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", entity.getParams()="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    const-string v5, "identify"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postedEntities:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v3

    const-string v4, "identify"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getCallBack()Lcom/netease/androidcrashhandler/MyPostCallBack;

    move-result-object v0

    .line 252
    .local v0, "callBack":Lcom/netease/androidcrashhandler/MyPostCallBack;
    if-eqz v0, :cond_1

    .line 253
    const/4 v2, 0x1

    invoke-interface {v0, v2, p1}, Lcom/netease/androidcrashhandler/MyPostCallBack;->postCallBack(ZLcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 266
    .end local v0    # "callBack":Lcom/netease/androidcrashhandler/MyPostCallBack;
    :cond_0
    :goto_0
    return-void

    .line 255
    .restart local v0    # "callBack":Lcom/netease/androidcrashhandler/MyPostCallBack;
    :cond_1
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 260
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 256
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v4

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    invoke-virtual {v4, v5, v2}, Lcom/netease/androidcrashhandler/MyFileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v0    # "callBack":Lcom/netease/androidcrashhandler/MyPostCallBack;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    :cond_3
    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->post(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    goto :goto_0
.end method

.method static getInstance()Lcom/netease/androidcrashhandler/MyNetworkUtils;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/netease/androidcrashhandler/MyNetworkUtils$MyNetworkUtilsHolder;->INSTANCE:Lcom/netease/androidcrashhandler/MyNetworkUtils;

    return-object v0
.end method


# virtual methods
.method public getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    return-object v0
.end method

.method getPostEntityQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/netease/androidcrashhandler/MyPostEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postEntityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getSleepTime()J
    .locals 2

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->sleepTime:J

    return-wide v0
.end method

.method public getWaitingTime()J
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->waitingTime:J

    return-wide v0
.end method

.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 84
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 85
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 86
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x1

    .line 89
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public post(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 11
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    const/4 v10, 0x0

    .line 134
    const-string v5, "trace"

    const-string v6, "[post]"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-nez p1, :cond_1

    .line 136
    const-string v5, "trace"

    const-string v6, "[post] entity null"

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "is_zip"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 145
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v7

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v6

    const-string v9, "identify"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".zip"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    invoke-virtual {v7, v5, v6}, Lcom/netease/androidcrashhandler/MyFileUtils;->zip([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 157
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v8, "identify"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".zip"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-direct {v0, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v0, "ZIPFile":Ljava/io/File;
    const-string v5, "md5"

    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/netease/androidcrashhandler/MyFileUtils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v7, "identify"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".zip"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    const-string v6, "application/octet-stream"

    .line 161
    invoke-virtual {p1, v0, v5, v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v5, "is_zip"

    const-string v6, "true"

    invoke-virtual {p1, v5, v6, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "identify"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ".javacfg"

    invoke-virtual {p0, p1, v5, v6}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->saveParams(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[post] saveParams params:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v0    # "ZIPFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "client_v"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 171
    const-string v5, "client_v"

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post set client_v:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_3
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "error_type"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "error_type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 177
    .local v3, "errorType":Ljava/lang/String;
    :goto_2
    const-string v5, "ANDROID_NATIVE_ERROR"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "identify"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 179
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "identify"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string v6, "identify"

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v5, "name"

    invoke-virtual {p1, v5, v4, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "post setParam name:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "entity.getParams():"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getCallBack()Lcom/netease/androidcrashhandler/MyPostCallBack;

    move-result-object v5

    if-nez v5, :cond_5

    .line 186
    new-instance v5, Lcom/netease/androidcrashhandler/MyNetworkUtils$1;

    invoke-direct {v5, p0}, Lcom/netease/androidcrashhandler/MyNetworkUtils$1;-><init>(Lcom/netease/androidcrashhandler/MyNetworkUtils;)V

    invoke-virtual {p1, v5}, Lcom/netease/androidcrashhandler/MyPostEntity;->setCallBack(Lcom/netease/androidcrashhandler/MyPostCallBack;)V

    .line 241
    :cond_5
    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postEntityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 242
    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyPostThread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    sget-object v6, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v5, v6, :cond_0

    .line 243
    :cond_6
    new-instance v5, Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-direct {v5}, Lcom/netease/androidcrashhandler/MyPostThread;-><init>()V

    iput-object v5, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    .line 244
    iget-object v5, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyPostThread;->start()V

    goto/16 :goto_0

    .line 147
    .end local v3    # "errorType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v7

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 153
    invoke-virtual {v7, v8, v5}, Lcom/netease/androidcrashhandler/MyFileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v7, "trace"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "post deleteFile\uff1a"

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 175
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/androidcrashhandler/MyPostEntity$FileForm;>;"
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public postErrorWithDeviceInfo(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 8
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    .line 270
    :try_start_0
    const-string v2, "crash_time"

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    sget-wide v6, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sResumeTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 270
    invoke-virtual {p1, v2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    invoke-static {}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 274
    .local v0, "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "defaultErrorFileName"

    .line 275
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "identify"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "identify"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 277
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".di"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {p1, v2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->filterPost(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0    # "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public postException(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    :try_start_0
    new-instance v1, Lcom/netease/androidcrashhandler/MyPostEntity;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {v1, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 313
    .local v1, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    invoke-static {}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 314
    .local v0, "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v2

    .line 316
    .local v2, "exInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "je_md5"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 317
    .local v3, "name":Ljava/lang/String;
    const-string v4, "trace"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "je_md5="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".aci"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/plain"

    invoke-virtual {v1, v4, v5, v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".di"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/plain"

    invoke-virtual {v1, v4, v5, v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v4, "identify"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 321
    const-string v4, "error_type"

    const-string v5, "ANDROID_JAVA_EXCEPTION"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    invoke-direct {p0, v1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->filterPost(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0    # "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    .end local v2    # "exInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public postScriptError(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 8
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    .line 286
    const-string v2, "trace"

    const-string v3, "------------------------------------------------------------"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "trace"

    const-string v3, "[postScriptError]"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :try_start_0
    const-string v2, "error_type"

    const-string v3, "SCRIPT_ERROR"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    const-string v2, "crash_time"

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    sget-wide v6, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->sResumeTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 290
    invoke-virtual {p1, v2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 292
    invoke-static {}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 294
    .local v0, "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "defaultScpiptErrorFileName"

    .line 295
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "identify"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "identify"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 297
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/MyFileUtils;->getInstance()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netease/androidcrashhandler/MyFileUtils;->info2str(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".di"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {p1, v2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v2, "trace"

    const-string v3, "------------------------------------------------------------"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v2, "trace"

    const-string v3, "post Script Error"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "trace"

    const-string v3, "entity info:"

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v2, "trace"

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->filterPost(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0    # "diInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public postUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "user_name"    # Ljava/lang/String;
    .param p3, "server_name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Lcom/netease/androidcrashhandler/MyPostEntity;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 115
    .local v0, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 116
    const-string v1, "error_type"

    const-string v2, "USER_INFO"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    const-string v1, "urs"

    invoke-virtual {v0, v1, p2, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    const-string v1, "server_name"

    invoke-virtual {v0, v1, p3, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postEntityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/MyPostThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    .line 122
    :cond_0
    new-instance v1, Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/MyPostThread;-><init>()V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    .line 123
    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/MyPostThread;->start()V

    .line 125
    :cond_1
    return-void
.end method

.method public postUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "urs"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "user_name"    # Ljava/lang/String;
    .param p4, "server_name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcom/netease/androidcrashhandler/MyPostEntity;

    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-direct {v0, v1}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 100
    .local v0, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyPostEntity;->getFiles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 101
    const-string v1, "error_type"

    const-string v2, "USER_INFO"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    const-string v1, "urs"

    invoke-virtual {v0, v1, p1, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    const-string v1, "urs"

    invoke-virtual {v0, v1, p3, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    const-string v1, "server_name"

    invoke-virtual {v0, v1, p4, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postEntityQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/MyPostThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    .line 108
    :cond_0
    new-instance v1, Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-direct {v1}, Lcom/netease/androidcrashhandler/MyPostThread;-><init>()V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    .line 109
    iget-object v1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/MyPostThread;->start()V

    .line 111
    :cond_1
    return-void
.end method

.method public saveParams(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "result":Z
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getFileUtils()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getFileUtils()Lcom/netease/androidcrashhandler/MyFileUtils;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/androidcrashhandler/MyFileUtils;->config2File(Lcom/netease/androidcrashhandler/MyPostEntity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 414
    :cond_0
    return v0
.end method

.method public setDefaultPostEntity(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 0
    .param p1, "defaultPostEntity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    .line 400
    return-void
.end method

.method public declared-synchronized setSleepTime(J)V
    .locals 3
    .param p1, "sleepTime"    # J

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->sleepTime:J

    .line 376
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyPostThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyPostThread;->resetClcok()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWaitingTime(J)V
    .locals 3
    .param p1, "waitingTime"    # J

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->waitingTime:J

    .line 355
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyPostThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postThread:Lcom/netease/androidcrashhandler/MyPostThread;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyPostThread;->resetClcok()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method uploadCrashReportSystem(Lcom/netease/androidcrashhandler/MyPostEntity;)V
    .locals 2
    .param p1, "entity"    # Lcom/netease/androidcrashhandler/MyPostEntity;

    .prologue
    .line 93
    const-string v0, "trace"

    const-string v1, "[uploadCrashReportSystem]"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyNetworkUtils;->defaultPostEntity:Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/MyPostEntity;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/MyPostEntity;->setURL(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->post(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 96
    return-void
.end method
