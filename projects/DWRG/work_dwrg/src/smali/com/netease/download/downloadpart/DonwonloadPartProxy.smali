.class public Lcom/netease/download/downloadpart/DonwonloadPartProxy;
.super Ljava/lang/Object;
.source "DonwonloadPartProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DonwonloadPartProxy"


# instance fields
.field private mParamsList:[Lcom/netease/download/downloader/DownloadParams;

.field private mState:Lcom/netease/download/Const$Stage;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mType:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mState:Lcom/netease/download/Const$Stage;

    .line 27
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public init([Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)V
    .locals 0
    .param p1, "paramsList"    # [Lcom/netease/download/downloader/DownloadParams;
    .param p2, "stage"    # Lcom/netease/download/Const$Stage;
    .param p3, "type"    # I

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mParamsList:[Lcom/netease/download/downloader/DownloadParams;

    .line 40
    iput p3, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mType:I

    .line 41
    iput-object p2, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mState:Lcom/netease/download/Const$Stage;

    .line 42
    return-void
.end method

.method public start()I
    .locals 13

    .prologue
    .line 45
    const-string v8, "\u5206\u7247\u4e0b\u8f7d\u6a21\u5757"

    invoke-static {v8}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 46
    const-string v8, "DonwonloadPartProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5206\u7247\u6570="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mParamsList:[Lcom/netease/download/downloader/DownloadParams;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v7, 0x0

    .line 49
    .local v7, "result":I
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 51
    .local v4, "exs":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<Ljava/lang/Integer;>;>;"
    iget-object v9, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mParamsList:[Lcom/netease/download/downloader/DownloadParams;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_2

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 87
    const-string v8, "DonwonloadPartProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5206\u7247\u603b\u4e0b\u8f7d\u7ed3\u679c="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 90
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 92
    :cond_1
    return v7

    .line 53
    :cond_2
    aget-object v1, v9, v8

    .line 54
    .local v1, "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    new-instance v2, Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-direct {v2}, Lcom/netease/download/downloadpart/DownloadPartCore;-><init>()V

    .line 55
    .local v2, "downloadPartCore":Lcom/netease/download/downloadpart/DownloadPartCore;
    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v6

    .line 56
    .local v6, "part":I
    iget-object v11, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mState:Lcom/netease/download/Const$Stage;

    iget v12, p0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->mType:I

    invoke-virtual {v2, v1, v11, v12}, Lcom/netease/download/downloadpart/DownloadPartCore;->init(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)V

    .line 57
    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    .end local v2    # "downloadPartCore":Lcom/netease/download/downloadpart/DownloadPartCore;
    .end local v6    # "part":I
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    .line 64
    .local v5, "fs":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_0

    .line 65
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    goto :goto_1

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 71
    const/16 v7, 0xb

    .line 72
    const-string v8, "DonwonloadPartProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DonwonloadPartProxy ExecutionException e="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 76
    const/16 v7, 0xb

    .line 77
    const-string v8, "DonwonloadPartProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DonwonloadPartProxy InterruptedException e="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const/16 v7, 0xb

    .line 82
    const-string v8, "DonwonloadPartProxy"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DonwonloadPartProxy Exception e="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
