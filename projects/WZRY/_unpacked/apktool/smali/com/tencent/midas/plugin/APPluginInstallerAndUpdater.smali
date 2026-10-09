.class public Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;
.super Ljava/lang/Object;
.source "APPluginInstallerAndUpdater.java"


# static fields
.field private static final BUFFER_LENGTH:I = 0x2000

.field private static final INSTALL_ERR_LOSTZIPFILE:I = -0x2

.field private static final INSTALL_ERR_MD5CHECKFAIL:I = -0x3

.field static final INSTALL_ERR_SYSTEM:I = -0x1

.field static final INSTALL_FROM_ASSETS:I = 0x1

.field static final INSTALL_FROM_LOCAL:I = 0x2

.field private static final INSTALL_SUCC:I = 0x0

.field private static final TAG:Ljava/lang/String; = "APPluginInstallerAndUpdater"

.field static sInstallPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static sPackageInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sInstallPathMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sPackageInfoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-object v0

    .line 387
    :cond_1
    sget-object v5, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sInstallPathMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 389
    .local v3, "installFile":Ljava/io/File;
    if-nez v3, :cond_3

    .line 390
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 391
    .local v4, "pluginDir":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 395
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 396
    .local v1, "fileList":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 397
    aget-object v0, v1, v2

    .line 398
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    sget-object v5, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sInstallPathMap:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 396
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "i":I
    .end local v4    # "pluginDir":Ljava/io/File;
    :cond_3
    move-object v0, v3

    .line 404
    goto :goto_0
.end method

.method public static getInstallPathString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v2, ""

    .line 121
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 122
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static installFromAssets(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 577
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->copyEmtpyResAPKFromAssets(Landroid/content/Context;)V

    .line 579
    const-string v2, "MidasPay.zip"

    .line 580
    .local v2, "sUnzipMidasPayFile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    const/4 v3, -0x2

    .line 600
    :cond_0
    :goto_0
    return v3

    .line 584
    :cond_1
    const/4 v1, 0x0

    .line 586
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 587
    invoke-static {p0, v1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installFromZipStream(Landroid/content/Context;Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    if-eqz v1, :cond_2

    .line 594
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    :cond_2
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 588
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 589
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    const/4 v3, -0x1

    .line 593
    if-eqz v1, :cond_0

    .line 594
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 596
    :catch_2
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 592
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 593
    if-eqz v1, :cond_3

    .line 594
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 598
    :cond_3
    :goto_2
    throw v3

    .line 596
    :catch_3
    move-exception v0

    .line 597
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static installFromData(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->copyEmtpyResAPKFromAssets(Landroid/content/Context;)V

    .line 445
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->getDataZipFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 446
    .local v3, "zipFile":Ljava/io/File;
    const-string v4, "APPluginUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installFromData zipFile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-nez v3, :cond_1

    .line 448
    const/4 v4, -0x2

    .line 469
    :cond_0
    :goto_0
    return v4

    .line 451
    :cond_1
    const/4 v1, 0x0

    .line 454
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    const-string v4, "APPluginUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installFromData filePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {p0, v2}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installFromZipStream(Landroid/content/Context;Ljava/io/InputStream;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 462
    if-eqz v2, :cond_2

    .line 463
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 469
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 457
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 458
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 459
    const/4 v4, -0x1

    .line 462
    if-eqz v1, :cond_0

    .line 463
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 465
    :catch_2
    move-exception v0

    .line 466
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 462
    :goto_3
    if-eqz v1, :cond_3

    .line 463
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 467
    :cond_3
    :goto_4
    throw v4

    .line 465
    :catch_3
    move-exception v0

    .line 466
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 457
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static installFromLocal(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v3, "APPluginInstallerAndUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling into installFromLocal "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    .line 70
    .local v2, "state":I
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteBKPlugin(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginUpdatePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 74
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginBackUpPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 71
    invoke-static {p0, v3, v4}, Lcom/tencent/midas/plugin/APPluginUtils;->copyDirect(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginUpdatePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "installSrc":Ljava/io/File;
    invoke-static {p0, v1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installFromLocalByPath(Landroid/content/Context;Ljava/io/File;)I

    move-result v2

    .line 82
    const-string v3, "APPluginInstallerAndUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling into installFromLocal, installFromLocalByPath result state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " install src = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "installSrc":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_1

    .line 92
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    .line 95
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginBackUpPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 96
    .restart local v1    # "installSrc":Ljava/io/File;
    invoke-static {p0, v1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installFromLocalByPath(Landroid/content/Context;Ljava/io/File;)I

    move-result v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    .line 105
    .end local v1    # "installSrc":Ljava/io/File;
    :cond_0
    :goto_1
    const-string v3, "APPluginUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installFromLocal state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteUpdatePlugin(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private static installFromLocalByPath(Landroid/content/Context;Ljava/io/File;)I
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installSrc"    # Ljava/io/File;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string v23, "APPluginInstallerAndUpdater"

    const-string v24, "Cannot install plugin with null path!"

    invoke-static/range {v23 .. v24}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v22, -0x1

    .line 231
    :goto_0
    return v22

    .line 145
    :cond_0
    const/16 v20, 0x0

    .line 146
    .local v20, "outputStream":Ljava/io/BufferedOutputStream;
    const/4 v14, 0x0

    .line 147
    .local v14, "inputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 149
    .local v11, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v22, 0x0

    .line 154
    .local v22, "state":I
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v16

    .line 157
    .local v16, "installDest":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    .line 158
    .local v9, "fileList":[Ljava/io/File;
    const/4 v13, 0x0

    .local v13, "i":I
    move-object v12, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v12, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v15, v14

    .end local v14    # "inputStream":Ljava/io/InputStream;
    .local v15, "inputStream":Ljava/io/InputStream;
    move-object/from16 v21, v20

    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v21, "outputStream":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_1
    array-length v0, v9

    move/from16 v23, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v0, v23

    if-ge v13, v0, :cond_10

    .line 161
    :try_start_2
    aget-object v8, v9, v13

    .line 162
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, "fileName":Ljava/lang/String;
    const-string v23, "APPluginUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "installFromLocal src fileName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v23, ".apk"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5

    const-string v23, ".ini"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v23

    if-nez v23, :cond_5

    .line 206
    if-eqz v21, :cond_1

    .line 207
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedOutputStream;->close()V

    .line 209
    :cond_1
    if-eqz v15, :cond_2

    .line 210
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 212
    :cond_2
    if-eqz v12, :cond_3

    .line 213
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_3
    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .line 158
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object v12, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v15, v14

    .end local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v21, v20

    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 215
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 216
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .line 217
    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 171
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_5
    :try_start_5
    const-string v23, "\\_"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v19, v23, v24

    .line 172
    .local v19, "name":Ljava/lang/String;
    const-string v23, "APPluginUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "installFromLocal name:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz v16, :cond_7

    .line 174
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 175
    .local v6, "destfileList":[Ljava/io/File;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    array-length v0, v6

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 176
    aget-object v4, v6, v17

    .line 177
    .local v4, "destFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "destFileName":Ljava/lang/String;
    const-string v23, "APPluginUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "installFromLocal destFileName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 175
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 186
    .end local v4    # "destFile":Ljava/io/File;
    .end local v5    # "destFileName":Ljava/lang/String;
    .end local v6    # "destfileList":[Ljava/io/File;
    .end local v17    # "j":I
    :cond_7
    new-instance v4, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v4    # "destFile":Ljava/io/File;
    const-string v23, "APPluginUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "installFromLocal destfileName:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 192
    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_7
    new-instance v14, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 194
    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    const/16 v18, 0x0

    .line 195
    .local v18, "length":I
    const/16 v23, 0x2000

    :try_start_8
    move/from16 v0, v23

    new-array v3, v0, [B

    .line 196
    .local v3, "datas":[B
    :goto_4
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 197
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    .line 202
    .end local v3    # "datas":[B
    :catch_1
    move-exception v23

    .line 206
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v18    # "length":I
    .end local v19    # "name":Ljava/lang/String;
    :goto_5
    if-eqz v20, :cond_8

    .line 207
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 209
    :cond_8
    if-eqz v14, :cond_9

    .line 210
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 212
    :cond_9
    if-eqz v11, :cond_4

    .line 213
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 215
    :catch_2
    move-exception v7

    .line 216
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_2

    .line 221
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "fileList":[Ljava/io/File;
    .end local v13    # "i":I
    .end local v16    # "installDest":Ljava/io/File;
    :catch_3
    move-exception v7

    .line 222
    .local v7, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    invoke-static {v7}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;

    .line 224
    const/16 v22, -0x1

    .line 227
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_7
    const-string v23, "APPluginInstallerAndUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "installFromLocalByPath finish result = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " install src = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " About to clear pluginsTemp dir!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginUpdatePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/tencent/midas/plugin/APPluginUtils;->clearDirContent(Ljava/io/File;)V

    goto/16 :goto_0

    .line 201
    .restart local v3    # "datas":[B
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileList":[Ljava/io/File;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v16    # "installDest":Ljava/io/File;
    .restart local v18    # "length":I
    .restart local v19    # "name":Ljava/lang/String;
    :cond_a
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 206
    if-eqz v20, :cond_b

    .line 207
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 209
    :cond_b
    if-eqz v14, :cond_c

    .line 210
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 212
    :cond_c
    if-eqz v11, :cond_4

    .line 213
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 215
    :catch_4
    move-exception v7

    .line 216
    .local v7, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_2

    .line 205
    .end local v3    # "datas":[B
    .end local v4    # "destFile":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "length":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v23

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .line 206
    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    :goto_8
    if-eqz v20, :cond_d

    .line 207
    :try_start_e
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 209
    :cond_d
    if-eqz v14, :cond_e

    .line 210
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 212
    :cond_e
    if-eqz v11, :cond_f

    .line 213
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 217
    :cond_f
    :goto_9
    :try_start_f
    throw v23

    .line 215
    :catch_5
    move-exception v7

    .line 216
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_9

    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_10
    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .line 225
    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_7

    .line 221
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v7

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    goto/16 :goto_6

    .line 205
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v23

    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_8

    .end local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v23

    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    goto :goto_8

    .restart local v18    # "length":I
    :catchall_3
    move-exception v23

    goto :goto_8

    .line 202
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "length":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v23

    move-object v11, v12

    .end local v12    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    goto/16 :goto_5

    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v23

    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    move-object/from16 v20, v21

    .end local v21    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v20    # "outputStream":Ljava/io/BufferedOutputStream;
    goto/16 :goto_5

    .end local v14    # "inputStream":Ljava/io/InputStream;
    .restart local v15    # "inputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v23

    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/InputStream;
    .restart local v14    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_5
.end method

.method static installFromZipStream(Landroid/content/Context;Ljava/io/InputStream;)I
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 474
    invoke-static/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginUtils;->copyEmtpyResAPKFromAssets(Landroid/content/Context;)V

    .line 479
    if-nez p1, :cond_1

    .line 480
    const/16 v20, -0x2

    .line 561
    :cond_0
    :goto_0
    return v20

    .line 483
    :cond_1
    const/16 v18, 0x0

    .line 484
    .local v18, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v17, 0x0

    .line 487
    .local v17, "zipEntry":Ljava/util/zip/ZipEntry;
    :try_start_0
    new-instance v19, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 488
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v19, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v17

    .line 491
    invoke-static/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 493
    .local v10, "intallDestPath":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v17, :cond_e

    .line 494
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, "fileName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, "../"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 498
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v17

    .line 499
    goto :goto_1

    .line 502
    :cond_4
    const/4 v11, 0x1

    .line 503
    .local v11, "isNeedCheckMD5":Z
    const-string v2, ""

    .line 504
    .local v2, "MD5":Ljava/lang/String;
    const-string v5, ""

    .line 506
    .local v5, "destFileName":Ljava/lang/String;
    const-string v20, ".jar"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 508
    const-string v20, ".jar"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 509
    .local v16, "pos":I
    move-object v13, v7

    .line 510
    .local v13, "name":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 511
    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 513
    :cond_5
    const-string v20, "_"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    aget-object v2, v20, v21

    .line 514
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".apk"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 521
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "pos":I
    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    .local v4, "destFile":Ljava/io/File;
    const/4 v14, 0x0

    .line 524
    .local v14, "outputStream":Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 526
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 527
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v9, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v15, Ljava/io/BufferedOutputStream;

    invoke-direct {v15, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 528
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v15, "outputStream":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 529
    .local v12, "length":I
    const/16 v20, 0x2000

    :try_start_4
    move/from16 v0, v20

    new-array v3, v0, [B

    .line 530
    .local v3, "datas":[B
    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v12

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v12, v0, :cond_9

    .line 531
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v3, v0, v12}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    .line 539
    .end local v3    # "datas":[B
    :catch_0
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .line 540
    .end local v12    # "length":I
    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    invoke-static {v6}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 542
    const/16 v20, -0x1

    .line 545
    if-eqz v14, :cond_6

    .line 546
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 548
    :cond_6
    if-eqz v8, :cond_7

    .line 549
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 566
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_5
    if-eqz v19, :cond_0

    .line 567
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 569
    :catch_1
    move-exception v6

    .line 570
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 516
    .end local v4    # "destFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_8
    :try_start_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    .line 517
    const/4 v11, 0x0

    goto :goto_2

    .line 533
    .restart local v3    # "datas":[B
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_9
    :try_start_9
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->flush()V

    .line 535
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v11, v7, v2, v0}, Lcom/tencent/midas/plugin/APPluginUtils;->backUp(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v17

    .line 545
    if-eqz v15, :cond_a

    .line 546
    :try_start_a
    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V

    .line 548
    :cond_a
    if-eqz v9, :cond_2

    .line 549
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 551
    :catch_2
    move-exception v6

    .line 552
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 558
    .end local v2    # "MD5":Ljava/lang/String;
    .end local v3    # "datas":[B
    .end local v4    # "destFile":Ljava/io/File;
    .end local v5    # "destFileName":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v10    # "intallDestPath":Ljava/lang/String;
    .end local v11    # "isNeedCheckMD5":Z
    .end local v12    # "length":I
    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v6

    move-object/from16 v18, v19

    .line 559
    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_6
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    invoke-static {v6}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 561
    const/16 v20, -0x1

    .line 566
    if-eqz v18, :cond_0

    .line 567
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 569
    :catch_4
    move-exception v6

    .line 570
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 551
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "MD5":Ljava/lang/String;
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v5    # "destFileName":Ljava/lang/String;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "intallDestPath":Ljava/lang/String;
    .restart local v11    # "isNeedCheckMD5":Z
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v6

    .line 552
    .local v6, "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    .line 565
    .end local v2    # "MD5":Ljava/lang/String;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v5    # "destFileName":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v10    # "intallDestPath":Ljava/lang/String;
    .end local v11    # "isNeedCheckMD5":Z
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v20

    move-object/from16 v18, v19

    .line 566
    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_7
    if-eqz v18, :cond_b

    .line 567
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 571
    :cond_b
    :goto_8
    throw v20

    .line 544
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "MD5":Ljava/lang/String;
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v5    # "destFileName":Ljava/lang/String;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "intallDestPath":Ljava/lang/String;
    .restart local v11    # "isNeedCheckMD5":Z
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v20

    .line 545
    :goto_9
    if-eqz v14, :cond_c

    .line 546
    :try_start_10
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V

    .line 548
    :cond_c
    if-eqz v8, :cond_d

    .line 549
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 553
    :cond_d
    :goto_a
    :try_start_11
    throw v20

    .line 551
    :catch_6
    move-exception v6

    .line 552
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_a

    .line 557
    .end local v2    # "MD5":Ljava/lang/String;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v5    # "destFileName":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "isNeedCheckMD5":Z
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    :cond_e
    const/16 v20, 0x0

    .line 566
    if-eqz v19, :cond_0

    .line 567
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_0

    .line 569
    :catch_7
    move-exception v6

    .line 570
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 569
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "intallDestPath":Ljava/lang/String;
    .end local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_8
    move-exception v6

    .line 570
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 565
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v20

    goto :goto_7

    .line 558
    :catch_9
    move-exception v6

    goto :goto_6

    .line 544
    .end local v18    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "MD5":Ljava/lang/String;
    .restart local v4    # "destFile":Ljava/io/File;
    .restart local v5    # "destFileName":Ljava/lang/String;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "intallDestPath":Ljava/lang/String;
    .restart local v11    # "isNeedCheckMD5":Z
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v19    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_3
    move-exception v20

    move-object v8, v9

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "length":I
    .restart local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_4
    move-exception v20

    move-object v8, v9

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v14    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_9

    .line 539
    .end local v12    # "length":I
    :catch_a
    move-exception v6

    goto/16 :goto_4

    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v6

    move-object v8, v9

    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method public static installPlugin(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installFrom"    # I

    .prologue
    .line 414
    const/4 v1, 0x0

    .line 416
    .local v1, "ret":I
    const-string v2, "APPluginInstallerAndUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installPlugin from = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :try_start_0
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    .line 423
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 424
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installFromAssets(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 433
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 435
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    .line 439
    :cond_1
    :goto_1
    return v1

    .line 425
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 426
    :try_start_1
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->installFromData(Landroid/content/Context;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "APPluginUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installPlugin Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {v0}, Lcom/tencent/midas/plugin/APPluginUtils;->getFullExceptionStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/midas/plugin/APPluginUtils;->installErrMsg:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    if-eqz v1, :cond_1

    .line 435
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    goto :goto_1

    .line 433
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 435
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->unInstallPlugin(Landroid/content/Context;)V

    :cond_3
    throw v2
.end method

.method public static isNeedUpdateFromAssets(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 612
    .local v1, "coreVersionCode":I
    const/4 v0, 0x0

    .line 613
    .local v0, "assetsVersionCode":I
    const-string v4, ""

    .line 616
    .local v4, "sMidasCoreFile":Ljava/lang/String;
    :try_start_0
    const-string v6, "MidasCore"

    invoke-static {p0, v6}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 623
    :goto_0
    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    invoke-static {p0, v4}, Lcom/tencent/midas/plugin/APPluginUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 625
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 629
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->getAssetsVersionCode(Landroid/content/Context;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 632
    :goto_1
    const-string v6, "APPluginUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedUpdateFromAssets coreVC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " assetsVC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    if-le v0, v1, :cond_1

    .line 639
    const/4 v6, 0x1

    .line 653
    :goto_2
    return v6

    .line 642
    :cond_1
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->getDataZipFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 643
    .local v5, "zipFile":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 646
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 645
    invoke-static {p0, v6}, Lcom/tencent/midas/plugin/APPluginUtils;->getZipVersionCodeWtihFileName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 647
    .local v2, "dataVersionCode":I
    const-string v6, "APPluginUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedUpdateFromAssets dataVC:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    if-le v2, v1, :cond_2

    .line 649
    const/4 v6, 0x2

    goto :goto_2

    .line 653
    .end local v2    # "dataVersionCode":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 630
    .end local v5    # "zipFile":Ljava/io/File;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 617
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static isNeedUpdateFromLocal(Landroid/content/Context;)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginUpdatePath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    .line 249
    .local v14, "updateFile":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/File;

    sget-object v16, Lcom/tencent/midas/plugin/APPluginConfig;->SIGN_FILE_NAME:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v10, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v10, "sigIni":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 252
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, sign file not exist, return false!"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/16 v16, 0x0

    .line 370
    .end local v10    # "sigIni":Ljava/io/File;
    :goto_0
    return v16

    .line 255
    .restart local v10    # "sigIni":Ljava/io/File;
    :cond_0
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, sign file exist!"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v11, "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/midas/plugin/APSignIniItem;>;"
    invoke-static {v11, v10}, Lcom/tencent/midas/plugin/APPluginUtils;->readSingInfoItems(Ljava/util/HashMap;Ljava/io/File;)V

    .line 262
    const/4 v5, 0x0

    .line 264
    .local v5, "hasMidasCoreFile":Z
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 266
    .local v3, "fileList":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 267
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, cannot get local file list, return false!"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/16 v16, 0x0

    goto :goto_0

    .line 272
    :cond_1
    array-length v0, v3

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 273
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, empty local file list, return false!"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/16 v16, 0x0

    goto :goto_0

    .line 278
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_6

    .line 279
    aget-object v2, v3, v6

    .line 280
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "fileName":Ljava/lang/String;
    const-string v16, "APPluginInstallerAndUpdater"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNeedUpdateFromLocal, iterating update dir file list, current = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v16, "MidasCore"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 287
    const/4 v5, 0x1

    .line 290
    :cond_3
    const-string v16, ".apk"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 291
    const-string v16, "APPluginInstallerAndUpdater"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNeedUpdateFromLocal, iterating update dir file list, current = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", not apk file, continue!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 297
    :cond_4
    const-string v16, "\\_"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/midas/plugin/APSignIniItem;

    .line 298
    .local v12, "signIniItem":Lcom/tencent/midas/plugin/APSignIniItem;
    iget-object v13, v12, Lcom/tencent/midas/plugin/APSignIniItem;->md5:Ljava/lang/String;

    .line 301
    .local v13, "targetMD5":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/tencent/midas/plugin/APPluginUtils;->checkFileMD5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 302
    .local v15, "valid":Z
    const-string v16, "APPluginInstallerAndUpdater"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNeedUpdateFromLocal, iterating update dir file list, current = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " valid = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-nez v15, :cond_5

    .line 306
    invoke-static {v14}, Lcom/tencent/midas/plugin/APPluginUtils;->clearDirContent(Ljava/io/File;)V

    .line 308
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 313
    :cond_5
    const-string v16, "\\_"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 361
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileList":[Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "hasMidasCoreFile":Z
    .end local v6    # "i":I
    .end local v10    # "sigIni":Ljava/io/File;
    .end local v11    # "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/midas/plugin/APSignIniItem;>;"
    .end local v12    # "signIniItem":Lcom/tencent/midas/plugin/APSignIniItem;
    .end local v13    # "targetMD5":Ljava/lang/String;
    .end local v15    # "valid":Z
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    const-string v16, "APPluginInstallerAndUpdater"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNeedUpdateFromLocal, got exception = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 319
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileList":[Ljava/io/File;
    .restart local v5    # "hasMidasCoreFile":Z
    .restart local v6    # "i":I
    .restart local v10    # "sigIni":Ljava/io/File;
    .restart local v11    # "sigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/midas/plugin/APSignIniItem;>;"
    :cond_6
    :try_start_1
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v16

    if-lez v16, :cond_8

    .line 320
    const-string v16, "APPluginInstallerAndUpdater"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNeedUpdateFromLocal, update dir file list iterate finish! sigMap size = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 321
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 320
    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginConfig;->getPluginPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    .line 325
    .local v9, "pluginDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/midas/plugin/APSignIniItem;

    .line 326
    .local v7, "key":Lcom/tencent/midas/plugin/APSignIniItem;
    const-string v17, "APPluginInstallerAndUpdater"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isNeedUpdateFromLocal, iterating sigMap left, current = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v7, Lcom/tencent/midas/plugin/APSignIniItem;->fullName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v8, Ljava/io/File;

    iget-object v0, v7, Lcom/tencent/midas/plugin/APSignIniItem;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 330
    .local v8, "missingFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_7

    .line 331
    const-string v16, "APPluginInstallerAndUpdater"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isNeedUpdateFromLocal, iterating sigMap left, current = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v7, Lcom/tencent/midas/plugin/APSignIniItem;->fullName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " missing in midasplugins!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {v14}, Lcom/tencent/midas/plugin/APPluginUtils;->clearDirContent(Ljava/io/File;)V

    .line 339
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 341
    :cond_7
    const-string v17, "APPluginInstallerAndUpdater"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isNeedUpdateFromLocal, iterating sigMap left, current = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v7, Lcom/tencent/midas/plugin/APSignIniItem;->fullName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " exist in midasplugins!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 349
    .end local v7    # "key":Lcom/tencent/midas/plugin/APSignIniItem;
    .end local v8    # "missingFile":Ljava/io/File;
    .end local v9    # "pluginDir":Ljava/io/File;
    :cond_8
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, update dir file list iterate finish! sigMap size is 0"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_9
    if-nez v5, :cond_a

    .line 356
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, hasMidasCoreFile == false!"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 359
    :cond_a
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, hasMidasCoreFile == true!"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    const-string v16, "APPluginInstallerAndUpdater"

    const-string v17, "isNeedUpdateFromLocal, return true!"

    invoke-static/range {v16 .. v17}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method public static unInstallPlugin(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 662
    const-string v0, "APPluginInstallerAndUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInstallPlugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 663
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->deletePlugin(Landroid/content/Context;)V

    .line 666
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteDex(Landroid/content/Context;)V

    .line 667
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginUtils;->deleteLibs(Landroid/content/Context;)V

    .line 668
    sget-object v0, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sInstallPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 669
    sget-object v0, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->sPackageInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 670
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->release()V

    .line 672
    sget v0, Lcom/tencent/midas/plugin/APPluginConfig;->libExtend:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/midas/plugin/APPluginConfig;->libExtend:I

    .line 673
    return-void
.end method
