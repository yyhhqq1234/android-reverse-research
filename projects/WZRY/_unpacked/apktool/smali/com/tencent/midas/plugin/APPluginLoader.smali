.class public Lcom/tencent/midas/plugin/APPluginLoader;
.super Ljava/lang/Object;
.source "APPluginLoader.java"


# static fields
.field private static parentClassLoader:Ldalvik/system/DexClassLoader;

.field private static final sClassLoaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldalvik/system/DexClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/midas/plugin/APPluginLoader;->sClassLoaderMap:Ljava/util/HashMap;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/midas/plugin/APPluginLoader;->parentClassLoader:Ldalvik/system/DexClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 4
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "MD5"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v1, Lcom/tencent/midas/plugin/APPluginLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/midas/plugin/APPluginLoader;->sClassLoaderMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getOrCreateClassLoader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    const-class v4, Lcom/tencent/midas/plugin/APPluginLoader;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 51
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "apkFilePath":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/tencent/midas/plugin/APPluginLoader;->getOrCreateClassLoaderByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    .line 53
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v3, "APPluginStatic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClassLoader getOrCreateClassLoader midasClassLoader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-static {v3, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v4

    return-object v1

    .line 50
    .end local v0    # "apkFilePath":Ljava/lang/String;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static declared-synchronized getOrCreateClassLoaderByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    const-class v10, Lcom/tencent/midas/plugin/APPluginLoader;

    monitor-enter v10

    :try_start_0
    invoke-static {p2}, Lcom/tencent/midas/plugin/APPluginUtils;->getMD5FromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "MD5":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "key":Ljava/lang/String;
    sget-object v9, Lcom/tencent/midas/plugin/APPluginLoader;->sClassLoaderMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldalvik/system/DexClassLoader;

    .line 72
    .local v4, "dexClassLoader":Ldalvik/system/DexClassLoader;
    const-string v9, "APPluginStatic"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOrCreateClassLoader apkFilePath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", MD5: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dexClassLoader: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v4, :cond_0

    move-object v5, v4

    .end local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .local v5, "dexClassLoader":Ldalvik/system/DexClassLoader;
    move-object v6, v4

    .line 108
    .end local v5    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .local v6, "dexClassLoader":Ldalvik/system/DexClassLoader;
    :goto_0
    monitor-exit v10

    return-object v6

    .line 83
    .end local v6    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getOptimizedDexPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "cache":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 88
    .local v2, "dateStart":J
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getLibPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-static {p2, v9}, Lcom/tencent/midas/plugin/APPluginUtils;->extractLibs(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v9

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-static {v11}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "sdk.plugin.init.unzip.so.time"

    .line 89
    invoke-virtual {v9, v11, v12, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V

    .line 94
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getLibPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "libDir":Ljava/lang/String;
    sget-object v9, Lcom/tencent/midas/plugin/APPluginLoader;->parentClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v9, :cond_1

    .line 96
    new-instance v4, Ldalvik/system/DexClassLoader;

    .end local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    sget-object v9, Lcom/tencent/midas/plugin/APPluginLoader;->parentClassLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {v4, p2, v1, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 102
    .restart local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    :goto_1
    const-string v9, "APPluginStatic"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getOrCreateClassLoader new DexClassLoader cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " libDir: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v9, Lcom/tencent/midas/plugin/APPluginLoader;->sClassLoaderMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .end local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v5    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    move-object v6, v4

    .line 108
    .end local v5    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v6    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    goto :goto_0

    .line 98
    .end local v6    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .restart local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    :cond_1
    new-instance v4, Ldalvik/system/DexClassLoader;

    .line 99
    .end local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v4, p2, v1, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    goto :goto_1

    .line 67
    .end local v0    # "MD5":Ljava/lang/String;
    .end local v1    # "cache":Ljava/lang/String;
    .end local v2    # "dateStart":J
    .end local v4    # "dexClassLoader":Ldalvik/system/DexClassLoader;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "libDir":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public static declared-synchronized preCreateClassLoaderByPath(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const-class v7, Lcom/tencent/midas/plugin/APPluginLoader;

    monitor-enter v7

    :try_start_0
    const-string v4, ""

    .line 119
    .local v4, "pluginName":Ljava/lang/String;
    const-string v0, ""

    .line 120
    .local v0, "apkFilePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 121
    .local v5, "pluginPath":Ljava/io/File;
    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 123
    .local v2, "fileList":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 124
    aget-object v1, v2, v3

    .line 125
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "MidasPay"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    const-string v4, "MidasPay"

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 132
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 133
    invoke-static {p0, v4, v0}, Lcom/tencent/midas/plugin/APPluginLoader;->getOrCreateClassLoaderByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_1
    monitor-exit v7

    return-void

    .line 123
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileList":[Ljava/io/File;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "apkFilePath":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "pluginName":Ljava/lang/String;
    .end local v5    # "pluginPath":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method static release()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/tencent/midas/plugin/APPluginLoader;->sClassLoaderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    return-void
.end method

.method public static setParentClassLoader(Ldalvik/system/DexClassLoader;)V
    .locals 0
    .param p0, "classLoader"    # Ldalvik/system/DexClassLoader;

    .prologue
    .line 29
    sput-object p0, Lcom/tencent/midas/plugin/APPluginLoader;->parentClassLoader:Ldalvik/system/DexClassLoader;

    .line 30
    return-void
.end method
