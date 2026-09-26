.class public Lcom/netease/environment/EnvManager;
.super Ljava/lang/Object;
.source "EnvManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/netease/environment/EnvManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 76
    invoke-static {p0}, Lcom/netease/environment/utils/LogUtils;->enableLog(Z)V

    .line 77
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable log : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v1, "int SDK"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 38
    :cond_0
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v1, "parameter is null"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    :cond_2
    sget-object v0, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v1, "parameter is empty"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-static {p0}, Lcom/netease/environment/config/SdkData;->setContext(Landroid/content/Context;)V

    .line 50
    invoke-static {p1}, Lcom/netease/environment/config/SdkData;->setGameId(Ljava/lang/String;)V

    .line 51
    invoke-static {p2}, Lcom/netease/environment/config/SdkData;->setRC4Key(Ljava/lang/String;)V

    .line 52
    invoke-static {p3}, Lcom/netease/environment/config/SdkData;->setHost(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/environment/model/RegexGetter;->setPatternMap(Landroid/content/Context;)V

    .line 58
    new-instance v0, Lcom/netease/environment/task/InitialTask;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/environment/task/InitialTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/environment/task/InitialTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static initSDKWithTestEnable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "ifTest"    # Z

    .prologue
    .line 67
    invoke-static {p4}, Lcom/netease/environment/config/SdkData;->setIfTest(Z)V

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/netease/environment/EnvManager;->initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static reviewNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "nickname"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 95
    .local v12, "start":J
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "review nickname : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_0

    .line 98
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v14, "context is null"

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/16 v11, 0x64

    const-string v14, "context is null"

    const-string v15, "-1"

    invoke-static {v11, v14, v15}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 172
    :goto_0
    return-object v10

    .line 102
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 103
    :cond_1
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v14, "parameter is null or empty"

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v11, 0x64

    const-string v14, "param is null or empty"

    const-string v15, "-1"

    invoke-static {v11, v14, v15}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v14, 0x1

    invoke-static {v11, v14}, Lcom/netease/environment/config/SdkConfig;->isEnable(Landroid/content/Context;Z)Z

    move-result v11

    if-nez v11, :cond_3

    .line 109
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v14, "sdk is disable"

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v11, 0xc8

    const-string v14, "pass"

    const-string v15, "-1"

    invoke-static {v11, v14, v15}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 119
    .local v7, "executor":Ljava/util/concurrent/ExecutorService;
    const/16 v11, 0x64

    const-string v14, "error"

    const-string v15, "-1"

    invoke-static {v11, v14, v15}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, "result":Ljava/lang/String;
    new-instance v11, Lcom/netease/environment/task/ReviewNicknameCallable;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v11, v14, v0}, Lcom/netease/environment/task/ReviewNicknameCallable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 122
    .local v8, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v11

    const-wide/16 v14, 0x3e8

    invoke-static {v11, v14, v15}, Lcom/netease/environment/config/SdkConfig;->getTaskTimeout(Landroid/content/Context;J)J

    move-result-wide v14

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v14, v15, v11}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 123
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :try_start_1
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :goto_1
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v14, "shut down executor"

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_2
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "review nickname result : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {v10}, Lcom/netease/environment/config/LogConfig;->saveReviewLog(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v2, v14, v12

    .line 171
    .local v2, "cost":J
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "it cost "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms to review nickname "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v2    # "cost":J
    :catch_0
    move-exception v5

    .line 164
    .local v5, "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v5    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 126
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    const/4 v11, 0x1

    :try_start_2
    invoke-interface {v8, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :goto_3
    const/16 v11, 0x64

    :try_start_3
    const-string v14, "time out"

    const-string v15, "-1"

    invoke-static {v11, v14, v15}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    :try_start_4
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 166
    :goto_4
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v14, "shut down executor"

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :catch_2
    move-exception v5

    .line 128
    .restart local v5    # "e2":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 161
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v5    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 162
    :try_start_6
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    .line 166
    :goto_5
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "shut down executor"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v11

    .line 163
    .restart local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v5

    .line 164
    .restart local v5    # "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 132
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v5    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 134
    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    const/4 v11, 0x1

    :try_start_7
    invoke-interface {v8, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 138
    :goto_7
    :try_start_8
    const-string v9, "exception"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    .local v9, "message":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v9

    .line 144
    :goto_8
    const/16 v11, 0x64

    :try_start_a
    const-string v14, "-1"

    invoke-static {v11, v9, v14}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 145
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 162
    :try_start_b
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 166
    :goto_9
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v14, "shut down executor"

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 135
    .end local v9    # "message":Ljava/lang/String;
    :catch_5
    move-exception v5

    .line 136
    .restart local v5    # "e2":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 141
    .end local v5    # "e2":Ljava/lang/Exception;
    .restart local v9    # "message":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 142
    .local v6, "e3":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    .line 163
    .end local v6    # "e3":Ljava/lang/Exception;
    :catch_7
    move-exception v5

    .line 164
    .restart local v5    # "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 146
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e2":Ljava/lang/Exception;
    .end local v9    # "message":Ljava/lang/String;
    :catch_8
    move-exception v4

    .line 148
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v11, 0x1

    :try_start_d
    invoke-interface {v8, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 152
    :goto_a
    :try_start_e
    const-string v9, "exception"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 154
    .restart local v9    # "message":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v9

    .line 158
    :goto_b
    const/16 v11, 0x64

    :try_start_10
    const-string v14, "-1"

    invoke-static {v11, v9, v14}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 159
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 162
    :try_start_11
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 166
    :goto_c
    sget-object v11, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v14, "shut down executor"

    invoke-static {v11, v14}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 149
    .end local v9    # "message":Ljava/lang/String;
    :catch_9
    move-exception v5

    .line 150
    .restart local v5    # "e2":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 155
    .end local v5    # "e2":Ljava/lang/Exception;
    .restart local v9    # "message":Ljava/lang/String;
    :catch_a
    move-exception v6

    .line 156
    .restart local v6    # "e3":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_b

    .line 163
    .end local v6    # "e3":Ljava/lang/Exception;
    :catch_b
    move-exception v5

    .line 164
    .restart local v5    # "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 163
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e2":Ljava/lang/Exception;
    .end local v9    # "message":Ljava/lang/String;
    :catch_c
    move-exception v5

    .line 164
    .restart local v5    # "e2":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 132
    .end local v5    # "e2":Ljava/lang/Exception;
    :catch_d
    move-exception v4

    goto :goto_6
.end method

.method public static reviewWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "level"    # Ljava/lang/String;
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 185
    .local v12, "start":J
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "review words : level="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "channel="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "content="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v14

    if-nez v14, :cond_0

    .line 188
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "context is null"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v14, 0x64

    const-string v15, "context is null"

    const-string v16, "-1"

    invoke-static/range {v14 .. v16}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 264
    :goto_0
    return-object v11

    .line 192
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 193
    :cond_1
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "parameter is null or empty"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v14, 0x64

    const-string v15, "param is null or empty"

    const-string v16, "-1"

    invoke-static/range {v14 .. v16}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 198
    :cond_2
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/netease/environment/config/SdkConfig;->isEnable(Landroid/content/Context;Z)Z

    move-result v14

    if-nez v14, :cond_3

    .line 199
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "sdk is disable"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v14, 0xc8

    const-string v15, "pass"

    const-string v16, "-1"

    invoke-static/range {v14 .. v16}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 208
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "level="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "channel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "content="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "composeContent":Ljava/lang/String;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 211
    .local v8, "executor":Ljava/util/concurrent/ExecutorService;
    const/16 v14, 0x64

    const-string v15, "error"

    const-string v16, "-1"

    invoke-static/range {v14 .. v16}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, "result":Ljava/lang/String;
    new-instance v14, Lcom/netease/environment/task/ReviewWordsCallable;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v2}, Lcom/netease/environment/task/ReviewWordsCallable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v8, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 214
    .local v9, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getContext()Landroid/content/Context;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/netease/environment/config/SdkConfig;->getTaskTimeout(Landroid/content/Context;J)J

    move-result-wide v14

    sget-object v16, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-interface {v9, v14, v15, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 215
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :try_start_1
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    :goto_1
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "shut down executor"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_2
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "review words result : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {v11}, Lcom/netease/environment/config/LogConfig;->saveReviewLog(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v4, v14, v12

    .line 263
    .local v4, "cost":J
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "it cost "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ms to review words "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    .end local v4    # "cost":J
    :catch_0
    move-exception v6

    .line 256
    .local v6, "e2":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 218
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    const/4 v14, 0x1

    :try_start_2
    invoke-interface {v9, v14}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :goto_3
    const/16 v14, 0x64

    :try_start_3
    const-string v15, "time out"

    const-string v16, "-1"

    invoke-static/range {v14 .. v16}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 223
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    :try_start_4
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 258
    :goto_4
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "shut down executor"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :catch_2
    move-exception v6

    .line 220
    .restart local v6    # "e2":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 253
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 254
    :try_start_6
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    .line 258
    :goto_5
    sget-object v15, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v16, "shut down executor"

    invoke-static/range {v15 .. v16}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    throw v14

    .line 255
    .restart local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v6

    .line 256
    .restart local v6    # "e2":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 224
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    const/4 v14, 0x1

    :try_start_7
    invoke-interface {v9, v14}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 230
    :goto_7
    :try_start_8
    const-string v10, "exception"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 232
    .local v10, "message":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v10

    .line 236
    :goto_8
    const/16 v14, 0x64

    :try_start_a
    const-string v15, "-1"

    invoke-static {v14, v10, v15}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 237
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 254
    :try_start_b
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 258
    :goto_9
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "shut down executor"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 227
    .end local v10    # "message":Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 228
    .restart local v6    # "e2":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 233
    .end local v6    # "e2":Ljava/lang/Exception;
    .restart local v10    # "message":Ljava/lang/String;
    :catch_6
    move-exception v7

    .line 234
    .local v7, "e3":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    .line 255
    .end local v7    # "e3":Ljava/lang/Exception;
    :catch_7
    move-exception v6

    .line 256
    .restart local v6    # "e2":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    .end local v10    # "message":Ljava/lang/String;
    :catch_8
    move-exception v3

    .line 240
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    :try_start_d
    invoke-interface {v9, v14}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 244
    :goto_a
    :try_start_e
    const-string v10, "exception"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 246
    .restart local v10    # "message":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v10

    .line 250
    :goto_b
    const/16 v14, 0x64

    :try_start_10
    const-string v15, "-1"

    invoke-static {v14, v10, v15}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 251
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 254
    :try_start_11
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    .line 258
    :goto_c
    sget-object v14, Lcom/netease/environment/EnvManager;->TAG:Ljava/lang/String;

    const-string v15, "shut down executor"

    invoke-static {v14, v15}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 241
    .end local v10    # "message":Ljava/lang/String;
    :catch_9
    move-exception v6

    .line 242
    .restart local v6    # "e2":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 247
    .end local v6    # "e2":Ljava/lang/Exception;
    .restart local v10    # "message":Ljava/lang/String;
    :catch_a
    move-exception v7

    .line 248
    .restart local v7    # "e3":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_b

    .line 255
    .end local v7    # "e3":Ljava/lang/Exception;
    :catch_b
    move-exception v6

    .line 256
    .restart local v6    # "e2":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 255
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/lang/Exception;
    .end local v10    # "message":Ljava/lang/String;
    :catch_c
    move-exception v6

    .line 256
    .restart local v6    # "e2":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 224
    .end local v6    # "e2":Ljava/lang/Exception;
    :catch_d
    move-exception v3

    goto :goto_6
.end method
