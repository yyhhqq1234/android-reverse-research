.class public Lcom/netease/cloud/nos/android/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field private static LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;

.field private static final maxListNum:I = 0x1f4

.field private static prompt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/netease/cloud/nos/android/monitor/Monitor;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .prologue
    .line 69
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isMonitorThreadEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v2, "monitor add item for thread"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->set(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v2, "send monitor data immediately"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorTask;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/android/monitor/MonitorTask;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "task":Lcom/netease/cloud/nos/android/monitor/MonitorTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 80
    .end local v0    # "task":Lcom/netease/cloud/nos/android/monitor/MonitorTask;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {p0, p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->sendStatItem(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    goto :goto_0
.end method

.method public static declared-synchronized clean()V
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/netease/cloud/nos/android/monitor/Monitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const-class v2, Lcom/netease/cloud/nos/android/monitor/Monitor;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/netease/cloud/nos/android/monitor/StatisticItem;>;"
    const/4 v1, 0x0

    sput-object v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    .line 103
    const/4 v1, 0x0

    sput-boolean v1, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v2

    return-object v0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getPostData(Ljava/util/List;)Ljava/io/ByteArrayOutputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/cloud/nos/android/monitor/StatisticItem;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/netease/cloud/nos/android/monitor/StatisticItem;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 60
    :cond_1
    :goto_0
    return-object v1

    .line 33
    :cond_2
    const/4 v3, 0x0

    .line 34
    .local v3, "gos":Ljava/util/zip/GZIPOutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v4, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 38
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 41
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v6, "jo":Lorg/json/JSONObject;
    const-string v7, "items"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "monitor result: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 45
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 46
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    if-eqz v4, :cond_5

    .line 54
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .line 55
    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_0

    .line 38
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "jo":Lorg/json/JSONObject;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    :cond_3
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 39
    .local v5, "item":Lcom/netease/cloud/nos/android/monitor/StatisticItem;
    invoke-static {v5}, Lcom/netease/cloud/nos/android/monitor/Monitor;->toJSON(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 47
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v5    # "item":Lcom/netease/cloud/nos/android/monitor/StatisticItem;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 48
    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v8, "get post data io exception"

    invoke-static {v7, v8, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    if-eqz v3, :cond_1

    .line 54
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 55
    :catch_1
    move-exception v2

    .line 56
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v8, "gos close exception"

    invoke-static {v7, v8, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 49
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 50
    .local v2, "e":Lorg/json/JSONException;
    :goto_3
    :try_start_6
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v8, "get post data json exception"

    invoke-static {v7, v8, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 52
    if-eqz v3, :cond_1

    .line 54
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 55
    :catch_3
    move-exception v2

    .line 56
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v8, "gos close exception"

    invoke-static {v7, v8, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 52
    :goto_4
    if-eqz v3, :cond_4

    .line 54
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 59
    :cond_4
    :goto_5
    throw v7

    .line 55
    :catch_4
    move-exception v2

    .line 56
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v9, "gos close exception"

    invoke-static {v8, v9, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 55
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "jo":Lorg/json/JSONObject;
    :catch_5
    move-exception v2

    .line 56
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v8, "gos close exception"

    invoke-static {v7, v8, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    move-object v3, v4

    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_0

    .line 51
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v6    # "jo":Lorg/json/JSONObject;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_4

    .line 49
    .end local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .line 47
    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method public static declared-synchronized set(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z
    .locals 5
    .param p0, "item"    # Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .prologue
    const/16 v3, 0x1f4

    const/4 v0, 0x1

    .line 83
    const-class v1, Lcom/netease/cloud/nos/android/monitor/Monitor;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    .line 87
    :cond_0
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v3, :cond_1

    sget-boolean v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z

    if-nez v2, :cond_1

    .line 91
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "monitor item num "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/netease/cloud/nos/android/monitor/Monitor;->LIST:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v2, 0x1

    sput-boolean v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->prompt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static toJSON(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "item"    # Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .prologue
    const/16 v6, 0xc8

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "a"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const-string v2, "b"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getClientIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/android/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    :cond_0
    const-string v2, "c"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    const-string v2, "d"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/android/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/android/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    :cond_1
    const-string v2, "e"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderIP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/android/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/cloud/nos/android/utils/Util;->ipToLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    const-string v2, "f"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    const-string v2, "g"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getNetEnv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsUseTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 122
    const-string v2, "h"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsUseTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    :cond_2
    const-string v2, "i"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderUseTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsSucc()I

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    const-string v2, "j"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsSucc()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderSucc()I

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string v2, "k"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderSucc()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsHttpCode()I

    move-result v2

    if-eq v2, v6, :cond_5

    .line 132
    const-string v2, "l"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getLbsHttpCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    :cond_5
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderHttpCode()I

    move-result v2

    if-eq v2, v6, :cond_6

    .line 135
    const-string v2, "m"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploaderHttpCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadRetryCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    const-string v2, "n"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadRetryCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    :cond_7
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v2

    if-eqz v2, :cond_8

    .line 141
    const-string v2, "o"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    :cond_8
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v2

    if-eqz v2, :cond_9

    .line 144
    const-string v2, "p"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    :cond_9
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 147
    const-string v2, "q"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_a
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadType()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_b

    .line 150
    const-string v2, "r"

    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getUploadType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_b
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/Monitor;->LOGTAG:Ljava/lang/String;

    const-string v3, "parse statistic item json exception"

    invoke-static {v2, v3, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
