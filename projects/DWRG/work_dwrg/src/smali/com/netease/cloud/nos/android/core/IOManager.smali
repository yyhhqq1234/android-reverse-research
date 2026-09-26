.class public Lcom/netease/cloud/nos/android/core/IOManager;
.super Ljava/lang/Object;
.source "IOManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/netease/cloud/nos/android/core/IOManager;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private static executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/android/http/HttpResult;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v2, v4, [Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 61
    .local v2, "result":[Lcom/netease/cloud/nos/android/http/HttpResult;
    invoke-static {}, Lcom/netease/cloud/nos/android/utils/Util;->acquireLock()Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    .line 63
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/netease/cloud/nos/android/http/HttpGetTask;

    .line 64
    new-instance v4, Lcom/netease/cloud/nos/android/core/IOManager$1;

    invoke-direct {v4, v2, v1}, Lcom/netease/cloud/nos/android/core/IOManager$1;-><init>([Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/util/concurrent/CountDownLatch;)V

    .line 63
    invoke-direct {v3, p0, p1, p2, v4}, Lcom/netease/cloud/nos/android/http/HttpGetTask;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/netease/cloud/nos/android/core/RequestCallback;)V

    .line 77
    .local v3, "task":Lcom/netease/cloud/nos/android/http/HttpGetTask;
    invoke-static {}, Lcom/netease/cloud/nos/android/utils/Util;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 78
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    invoke-static {v1}, Lcom/netease/cloud/nos/android/utils/Util;->setLock(Ljava/util/concurrent/CountDownLatch;)V

    .line 80
    const/4 v4, 0x0

    aget-object v4, v2, v4

    return-object v4
.end method

.method public static getLBSAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "useLBSKey"    # Z

    .prologue
    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getLbsIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, "urls":Ljava/lang/String;
    const/4 v2, 0x0

    .line 25
    .local v2, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "netease_pomelo_nos_lbs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "lbsIP":Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    :cond_0
    sget-object v7, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get lbs address with multiple urls: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "urlArray":[Ljava/lang/String;
    array-length v8, v5

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_2

    .line 51
    if-nez v2, :cond_1

    .line 52
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    .end local v2    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/16 v7, 0x190

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const/4 v9, 0x0

    invoke-direct {v2, v7, v8, v9}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .restart local v2    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    move-object v3, v2

    .line 55
    .end local v2    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .local v3, "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_1
    return-object v3

    .line 34
    .end local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v2    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    aget-object v4, v5, v7

    .line 35
    .local v4, "url":Ljava/lang/String;
    sget-object v9, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get lbs address with url: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v4, p1}, Lcom/netease/cloud/nos/android/utils/Util;->buildLBSUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 36
    invoke-static {v9, p0, v10}, Lcom/netease/cloud/nos/android/core/IOManager;->executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    .line 39
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    .local v1, "msg":Lorg/json/JSONObject;
    sget-object v9, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "LBS address result: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0, p1, v1}, Lcom/netease/cloud/nos/android/utils/Util;->setLBSData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    move-object v3, v2

    .line 43
    .end local v2    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_1

    .line 46
    .end local v1    # "msg":Lorg/json/JSONObject;
    .end local v3    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v2    # "result":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_3
    sget-object v9, Lcom/netease/cloud/nos/android/core/IOManager;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "failed to query LBS url "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 47
    const-string v11, " result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 48
    const-string v11, " msg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 46
    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method
