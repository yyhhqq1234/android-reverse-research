.class public Lcom/tencent/midas/plugin/APPluginProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "APPluginProxyBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static sendBroadcastReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "launcherReceiver"    # Ljava/lang/String;
    .param p3, "startIntent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string v1, "pluginsdk_pluginName"

    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "pluginsdk_launchReceiver"

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private startPluginIfNeccessary(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    if-nez p2, :cond_1

    .line 38
    const/4 v1, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 41
    :cond_1
    const-string v4, "pluginsdk_pluginName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "pluginName":Ljava/lang/String;
    const-string v4, "pluginsdk_launchReceiver"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 43
    .local v10, "launchReceiver":Ljava/lang/String;
    const/4 v3, 0x0

    .line 44
    .local v3, "pluginApkFilePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    :try_start_0
    invoke-static {p1, v2}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 47
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 53
    .end local v9    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    const-string v4, "APPLuginProxyBroadcastReciver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPluginIfNeccessary Params:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "receiver":Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 59
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v9    # "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    sget-object v4, Lcom/tencent/midas/plugin/APPluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 62
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_3

    .line 63
    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/tencent/midas/plugin/APApkFileParser;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 65
    sget-object v4, Lcom/tencent/midas/plugin/APPluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3
    :try_start_1
    invoke-static {p1, v2, v3}, Lcom/tencent/midas/plugin/APPluginLoader;->getOrCreateClassLoaderByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v5

    .line 71
    .local v5, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v5, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 72
    .local v11, "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;

    move-object v1, v0

    .line 73
    const/4 v7, 0x0

    move-object v4, p0

    invoke-interface/range {v1 .. v7}, Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;->IInit(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 74
    .end local v5    # "classLoader":Ljava/lang/ClassLoader;
    .end local v11    # "receiverClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v8

    .line 75
    .local v8, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 48
    .end local v1    # "receiver":Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "f":Ljava/io/File;
    :catch_1
    move-exception v8

    .line 49
    .local v8, "e":Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/midas/plugin/APPluginProxyBroadcastReceiver;->startPluginIfNeccessary(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;

    move-result-object v0

    .line 30
    .local v0, "receiver":Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;
    const-string v1, "APPLuginProxyBroadcastReciver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive startPluginIfNeccessary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/tencent/midas/plugin/IAPPluginBroadcastReceiver;->IOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 34
    :cond_0
    return-void
.end method
